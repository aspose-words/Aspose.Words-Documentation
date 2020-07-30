---
title: Mail Merge from XML using DataSet
type: docs
weight: 20
url: /net/mail-merge-from-xml-using-dataset/
---

For this example we’re going to use the **ReadXML** method of the DataSet class to read the XML schema and data into the DataSet object, and then use this object for the data source for the mail merge.

We’ll use this simple XML file which contains the customer information we want to use in the mail merge.

**XML**

{{< highlight csharp >}}

 <?xml version="1.0" encoding="utf-8"?>

<customers>

<customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>

<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>

<customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>

<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>

</customers>


{{< /highlight >}}

Note that the structure of the XML document can also be varied and the data will still be read correctly. This allows different types of XML documents to be merged easily. The XML can be changed so that each table represented as an element in the XML with each field of the table being a child element and the field value being the text node of this element.

The **basic steps** we’ll employ are :

1. Create the Dataset, and then read the XML data.
1. Run the Aspose.Words MailMerge.Execute method.

It’s really pretty simple. Using **Aspose.Words**, the mail merge operation will replace the merge fields in the document with the values from the XML file.

{{< highlight csharp >}}

 // Sample infrastructure.

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
## **Download Sample Code**
- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
