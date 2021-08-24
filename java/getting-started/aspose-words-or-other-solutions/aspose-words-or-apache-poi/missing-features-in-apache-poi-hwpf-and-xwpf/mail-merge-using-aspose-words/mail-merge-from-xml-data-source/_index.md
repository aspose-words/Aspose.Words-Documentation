---
title: Mail Merge from XML Data Source
type: docs
weight: 10
url: /java/mail-merge-from-xml-data-source/
---

## Aspose.Words - Mail Merge from XML Data Source

Given the widespread use and support of the XML markup language, the ability to run a mail merge from an XML file to a Word template document has become a common requirement.

This page provides a simple example of how, using Aspose.Words, you can execute mail merge from XML using a custom data source which implements the IMailMergeDataSource interface .

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(XMLMailMerge.class);

// Use DocumentBuilder from the javax.xml.parsers package and Document class from the org.w3c.dom package to read

// the XML data file and store it in memory.
DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();

// Parse the XML data.
org.w3c.dom.Document xmlData = db.parse(dataDir + "Customers.xml");

// Open a template document.
Document doc = new Document(dataDir + "mergeDoc.doc");

// Note that this class also works with a single repeatable region (and any nested regions).

// To merge multiple regions at the same time from a single XML data source, use the XmlMailMergeDataSet class.

// e.g doc.getMailMerge().executeWithRegions(new XmlMailMergeDataSet(xmlData));
doc.getMailMerge().execute(new XmlMailMergeDataTable(xmlData, "customer"));
{{< /highlight >}}

## Download Running Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/mailmerge/mailmergefromxmldatasource/XMLMailMerge.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/mailmerge/mailmergefromxmldatasource/XMLMailMerge.java)

{{% alert color="primary" %}} 

For more details, visit [How to Mail Merge from XML using IMailMergeDataSource](/words/java/how-to-mail-merge-from-xml-using-imailmergedatasource/).

{{% /alert %}}
