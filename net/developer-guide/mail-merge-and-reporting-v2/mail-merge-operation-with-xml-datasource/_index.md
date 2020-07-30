---
title: Mail Merge Operation with XML DataSource
type: docs
weight: 30
url: /net/mail-merge-operation-with-xml-datasource/
---

Aspose.Words allows you to perform a mail merge operation with data from an XML datasource using DataSet or LINQ. The XML document type can be varied and the data will still be read correctly. This allows you to merge different types of XML documents. The mail merge operation will replace the merge fields in the merge template with the values from the XML datasource.
## **Fill Data in a Merge Template from XML DataSource using DataSet**
You can fill data into your merge template using the [.NET DataSet](https://docs.microsoft.com/en-us/dotnet/api/system.data.dataset?view=netcore-3.1) class. Use the [ReadXML](https://docs.microsoft.com/en-us/dotnet/api/system.data.dataset.readxml?view=netcore-3.1) method of the DataSet class to read the data in the XML file and put it into the DataSet object. You can use this DataSet object as the datasource for your mail merge operation.

The following code example shows you how to create the Dataset, read the XML data and perform the mail merge operation using [MailMerge.Execute](http://www.aspose.com/api/net/words/aspose.words.mailmerging/mailmerge/methods/execute) method:

{{< highlight csharp >}}

 //Path of file

string exeDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + Path.DirectorySeparatorChar;

string dataDir = new Uri(new Uri(exeDir), @"../../Data/").LocalPath;

// Create the Dataset and read the XML.

DataSet customersDs = new DataSet();

customersDs.ReadXml(dataDir + "Customers.xml");

// Open a template document.

Document doc = new Document(dataDir + "Customer Info.doc");

// Execute mail merge to fill the template with data from XML using DataTable.

doc.MailMerge.Execute(customersDs.Tables["Customer"]);

// Save the output document.

doc.Save(dataDir + "Customer Info.doc");

{{< /highlight >}}

{{% alert color="primary" %}} 

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/Customers.xml).

{{% /alert %}} 



Fill Data in a Merge Template from XML DataSource using LINQ

You can fill data into your merge template using [LINQ](https://docs.microsoft.com/en-us/dotnet/csharp/linq/) if you need to filter and sort the data in your XML datasource before performing a mail merge operation.

The following code example shows you how to create a custom data source that accepts LINQ query results and perform the mail merge operation using [MailMerge.Execute](http://www.aspose.com/api/net/words/aspose.words.mailmerging/mailmerge/methods/execute) method:

{{< highlight csharp >}}

 // The path to the documents directory.

string dataDir = RunExamples.GetDataDir_MailMergeAndReporting(); 

// Load the XML document.

XElement orderXml = XElement.Load(dataDir + "PurchaseOrder.xml");

// Query the purchase order xml file using LINQ to extract the order items into an object of an anonymous type. 

// Make sure you give the properties of the anonymous type the same names as the MERGEFIELD fields in the document.

// To pass the actual values stored in the XML element to Aspose.Words, 

// You will need to cast them to string. This is to prevent the XML tags being inserted into the final document when

// The XElement objects are passed to Aspose.Words.

var orderItems =

from order in orderXml.Descendants("Item")

select new

{

	PartNumber = (string)order.Attribute("PartNumber"),

	ProductName = (string)order.Element("ProductName"),

	Quantity = (string)order.Element("Quantity"),

	USPrice = (string)order.Element("USPrice"),

	Comment = (string)order.Element("Comment"),

	ShipDate = (string)order.Element("ShipDate")

};

var deliveryAddress =

from delivery in orderXml.Elements("Address")

where ((string)delivery.Attribute("Type") == "Shipping")

select new

{

	Name = (string)delivery.Element("Name"),

	Country = (string)delivery.Element("Country"),

	Zip = (string)delivery.Element("Zip"),

	State = (string)delivery.Element("State"),

	City = (string)delivery.Element("City"),

	Street = (string)delivery.Element("Street")

};

// Create custom mail merge data sources based on the LINQ queries.

MyMailMergeDataSource orderItemsDataSource = new MyMailMergeDataSource(orderItems, "Items");

MyMailMergeDataSource deliveryDataSource = new MyMailMergeDataSource(deliveryAddress);

// Open the template document.

string fileName = "TestFile.LINQ.doc";

Document doc = new Document(dataDir + fileName);

// Perform mail merge with regions for populating the order items to fill the document with data from the data source.

doc.MailMerge.ExecuteWithRegions(orderItemsDataSource);

// Perform simple mail merge for the delivery address.

doc.MailMerge.Execute(deliveryDataSource);

dataDir = dataDir + RunExamples.GetOutputFilePath(fileName);

// Save the output document.

doc.Save(dataDir);

Console.WriteLine("\nMail merge performed successfully.\nFile saved at " + dataDir);

{{< /highlight >}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail-Merge/PurchaseOrder.xml).

{{% alert color="primary" %}} 

When Aspose.Words performs the mail merge operation, it requests the data source using the MERGEFIELD field name. The LINQ query result must have exactly the same names to enable successful access to the data. Aspose.Words does not accept the results of the LINQ query directly. So, you need to implement a custom mail merge data source interface that accepts a LINQ query by [creating a new class](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/CSharp/Mail-Merge/LINQtoXMLMailMerge.cs) that implements the [IMailMergeDataSource](https://apireference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource) interface.

{{% /alert %}}
