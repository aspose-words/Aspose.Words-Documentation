---
title: Integrating Aspose.Words with Azure Data Lake
type: docs
description: "Aspose.Words can be integrated with Azure Data Lake Analytics and Azure Data Lake Storage. This enables you to combine the big data analytics capabilities of the Azure Data Lake cloud storage solution with the power of Aspose.Words."
keywords: "Aspose.Words to create a user-defined outputter, outputs data from ADLS in MS Word and other formats, Aspose.Words with Azure Data Lake"
weight: 30
url: /net/integrating-aspose-words-with-azure-data-lake/
---

Aspose.Words can be integrated with the Microsoft Azure Data Lake services: Azure Data Lake Analytics (ADLA) and Azure Data Lake Storage (ADLS). This allows you to combine the big data analytics capabilities of the Azure Data Lake cloud storage solution with the power of Aspose.Words, which allows your applications to programmatically perform various document processing tasks, such as generating, modifying, rendering, reading, or converting documents between different formats.

This article explains how to configure a C# project in Visual Studio with ADLA, and provides an example that demonstrates the integration of Aspose.Words and Azure Data Lake.

## Prerequisites

* Active Microsoft Azure subscription. If you don’t have one, create a free account before you begin.

* Visual Studio 2019 or Visual Studio 2017 with installed Azure development.

* Installed Azure Data Lake Tools for Visual Studio.

* Configured Visual Studio with ADLA account.

## Create a Document with Data from Azure Data Lake

This topic shows how to use Aspose.Words for building a document with a table from a database on Azure Data Lake. This requires creating a simple database and implementing the IOutputter interface to create a user-defined outputter, which outputs data from ADLS in [formats supported by Aspose.Words](https://docs.aspose.com/words/net/supported-document-formats/).

{{% alert color="primary" %}}

In this article, the document is created by the [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) class for demonstration purposes, which is not always convenient to generate reports. With Aspose.Words you can also generate reports using the [Mail Merge](https://docs.aspose.com/display/wordsnet/Mail+Merge+and+Reporting) and [LINQ Reporting Engine](https://docs.aspose.com/display/wordsnet/LINQ+Reporting+Engine) features.

{{% /alert %}}

### Create a Database in Azure Data Lake Storage (ADLS)

For demonstration purposes, it is required to create a simple database containing sample data used for populating the resulting document.

The **Customers** sample table resides in the **sample_db** database on ADLS. To create this sample database, sign in to your ADLA account, click **New job**, and then submit the following script:

**U-SQL**
{{< highlight csharp >}}
CREATE DATABASE IF NOT EXISTS sample_db;
USE DATABASE sample_db;
CREATE SCHEMA IF NOT EXISTS dbo;

DROP TABLE IF EXISTS dbo.Customers;

CREATE TABLE dbo.Customers (
Customer_id int,
Customer_name string,
Customer_domain string,
Customer_city string,
INDEX idx_customer_id CLUSTERED (Customer_id ASC) )
DISTRIBUTED BY RANGE (Customer_id);

INSERT INTO sample_db.dbo.Customers
(Customer_id, Customer_name, Customer_domain, Customer_city)

VALUES
(1, "John Smith", "History", "Boston"),
(2, "Lisa Jaine", "Chemistry", "LA"),
(3, "James Johnson", "Heraldry", "Milwaukee"),
(4, "Sara Soyer", "IT", "Miami");
{{< /highlight >}}

### Implement the IOutputter Interface

In Visual Studio, create a new project by adding **C# Class Library (For U-SQL Application)** and add the NuGet reference to [Aspose.Words](https://www.nuget.org/packages/Aspose.Words/).

The following code example shows how to implement the IOutputter interface:

**.NET**

{{< highlight csharp >}}
using Microsoft.Analytics.Interfaces;
using System;
using System.IO;
using System.Linq;
using Aspose.Words;

namespace AsposeWordsOutputterUSql
{
	[SqlUserDefinedOutputter(AtomicFileProcessing = true)]
	public class AsposeWordsOutputer : IOutputter
	{
		public AsposeWordsOutputer(SaveFormat saveFormat)
		{
			// Pass the specified save format.
			mSaveFormat = saveFormat;

			// Create an instance of DocumentBuilder, which will be used to build the document.
			mDocumentBuilder = new DocumentBuilder();
		}
	
		/// <summary>
		/// The Close method is used to write the document to the file. It is executed only once, after all rows.
		/// </summary>
		public override void Close()
		{
			// End the table.
			mDocumentBuilder.EndTable();
	
			// The stream passed from IUnstructuredWriter.BaseStream does not support seeking.
			// This causes an exception when saving to PDF.
			// To avoid problems, save the output document into MemoryStream first
			// and then write its content to the IUnstructuredWriter.BaseStream.
			using (BinaryWriter writer = new BinaryWriter(mOutputStream))
			{
				// Save the document and close the stream.
				using (MemoryStream ms = new MemoryStream())
				{
					mDocumentBuilder.Document.Save(ms, mSaveFormat);
					writer.Write(ms.ToArray());
				}
			}
		}
	
		public override void Output(IRow row, IUnstructuredWriter output)
		{
			// Table with header row output--runs only once.
			if (mIsHeaderRow)
				ProcessHeaderRow(row.Schema);
	
			ProcessRow(row);
	
			// Reference to the instance of the IO.Stream object for saving document.
			mOutputStream = output.BaseStream;
		}
	
		/// <summary>
		/// Create HeaderRow of the table.
		/// </summary>
		private void ProcessHeaderRow(ISchema schema)
		{
			// Start the table before building it.
			mDocumentBuilder.StartTable();
	
			// Build the table.
			for (int i = 0; i < schema.Count(); i++)
			{
				IColumn col = schema[i];
				mDocumentBuilder.InsertCell();
	
				// Write a header with bold font.
				mDocumentBuilder.Font.Bold = true;
				mDocumentBuilder.Write(col.Name);
			}
	
			mDocumentBuilder.EndRow();
	
			// Write data with normal font.
			mDocumentBuilder.Font.Bold = false;
	
			// Table with header row output--runs only once.
			mIsHeaderRow = false;
		}
	
		/// <summary>
		/// Create Row of the table.
		/// </summary>
		private void ProcessRow(IRow row)
		{
			// Metadata schema initialization to enumerate column names.
			ISchema schema = row.Schema;
	
			// Data row output.
			for (int i = 0; i < schema.Count(); i++)
			{
				IColumn col = schema[i];
				string val = "";
	
				Type type = col.Type;
	
				// Get the cell value in the current row by column name and cast it to the column type.
				if (type == typeof(string))
					val = row.Get<string>(col.Name);
				else 
				if (type == typeof(int))
					val = row.Get<int>(col.Name).ToString();
				else
					val = "Column type is not supported.";
	
				mDocumentBuilder.InsertCell();
				mDocumentBuilder.Write(val);
			}
	
			mDocumentBuilder.EndRow();
		}
	
		private readonly DocumentBuilder mDocumentBuilder;
		private readonly SaveFormat mSaveFormat;
		private Stream mOutputStream;
		private bool mIsHeaderRow = true;
	
		static AsposeWordsOutputer()
		{
			// Note: The Aspose.Words license needs to be applied only once before any Document instance is created.
			// To execute the code only once, a static constructor is used. The below code will find and activate the license.
			// Uncomment the following code and add your license file as an embedded resource in the project.
			// Aspose.Words.License lic = new Aspose.Words.License();
			// lic.SetLicense("Aspose.Words.lic");
		}
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Pay attention to the licensing nuances described in the code example above. For details on applying the Aspose.Words license, see the "[Licensing](https://docs.aspose.com/display/wordsnet/Licensing)" article.

{{% /alert %}}

### Register Assembly in Azure Data Lake Analytics (ADLA)

To integrate the C# class library of your project with the ADLA account, register the assembly with the ADLA account:

1. In Visual Studio, right-click the project name and select Register Assembly.
2. Select the ADLA account name and the database name.
3. Expand the Managed Dependencies panel and check Aspose.Words as shown on the screenshot below.

<img src="register-assembly.png" alt="register-assembly-aspose-words-net" style="width:615px"/>

### Run U-SQL Job in Azure Portal

To start the application, you need to run in ADLA the following U-SQL code that contains necessary references and invokes your user-defined outputter:

**U-SQL**
{{< highlight csharp >}}
USE DATABASE [sample_db];

REFERENCE ASSEMBLY AsposeWordsOutputterUSQL;
REFERENCE ASSEMBLY [Aspose.Words];

@test = SELECT * FROM dbo.Customers;

OUTPUT @test TO "/output/Customers_AW.docx" USING new AsposeWordsOutputterUSql.AsposeWordsOutputer(Aspose.Words.SaveFormat.Docx);
{{< /highlight >}}

You can output a document using various formats appropriate for a particular project, such as Docx, Doc, Pdf, Rtf, Text, Jpeg, and others. For details, see the [SaveFormat](https://apireference.aspose.com/words/net/aspose.words/saveformat) enumeration.

{{% alert color="primary" %}}

Make sure that names with special characters, such as dot in Aspose.Words, are enclosed in square brackets in the U-SQL code.

{{% /alert %}}

Locate the file in the output folder on your ADLS and download it.

<img src="locate-file-in-output-folder-adls.png" alt="locate-file-in-output-folder-adls-aspose-words-net" style="width:615px"/>

The following screenshot demonstrates how the output document looks after executing the application.

<img src="run-u-sql-job-in-azure.png" alt="run-u-sql-job-in-azure-aspose-words-net" style="width:615px"/>

## See Also

* Create a [free account](https://azure.microsoft.com/en-us/free/) in Microsoft Azure
* [U-SQL Identifiers](https://docs.microsoft.com/en-us/u-sql/concepts/identifiers/identifiers)
