---
title: Mail Merge from XML Data Source
type: docs
weight: 10
url: /net/mail-merge-from-xml-data-source/
---

## **Aspose.Words - Mail Merge from XML Data Source**
Given the widespread use and support of the XML markup language, the ability to run a mail merge from an XML file to a Word template document has become a common requirement.

This page provides a simple example of how, using Aspose.Words, you can execute mail merge from XML using a custom data source which implements the IMailMergeDataSource interface .

**C#**

{{< highlight csharp >}}

// Create the Dataset and read the XML.
DataSet customersDs = new DataSet();
customersDs.ReadXml("../../data/Customers.xml");

// Open a template document.
Document doc = new Document("../../data/TestFile XML.doc");

// Execute mail merge to fill the template with data from XML using DataTable.
doc.MailMerge.Execute(customersDs.Tables["Customer"]);

// Save the output document.
doc.Save("TestFile XML Out.doc");
{{< /highlight >}}
## **Download Running Code**
Download **Mail Merge from XML Data Source** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475293)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/MailMerge.from.XML.DataSource.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [How to Execute Mail Merge](https://docs.aspose.com/words/net/how-to-execute-mail-merge/).

{{% /alert %}}
