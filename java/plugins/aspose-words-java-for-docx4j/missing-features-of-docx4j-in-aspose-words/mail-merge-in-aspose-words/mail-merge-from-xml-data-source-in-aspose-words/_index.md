---
title: Mail Merge from XML Data Source in Aspose.Words
type: docs
weight: 10
url: /java/mail-merge-from-xml-data-source-in-aspose-words/
---

## Aspose.Words - Mail Merge from XML Data Source

Given the widespread use and support of the XML markup language, the ability to run a mail merge from an XML file to a Word template document has become a common requirement.

This page provides a simple example of how, using Aspose.Words, you can execute mail merge from XML using a custom data source which implements the IMailMergeDataSource interface.

**Java**

{{< highlight csharp >}}

// Use DocumentBuilder from the javax.xml.parsers package and Document class from the org.w3c.dom package to read

// the XML data file and store it in memory.
DocumentBuilder db = DocumentBuilderFactory.newInstance().newDocumentBuilder();

// Parse the XML data.
org.w3c.dom.Document xmlData = db.parse("Customers.xml");

// Open a template document.
Document doc = new Document("TestFile.doc");

// Note that this class also works with a single repeatable region (and any nested regions).

// To merge multiple regions at the same time from a single XML data source, use the XmlMailMergeDataSet class.

// e.g doc.getMailMerge().executeWithRegions(new XmlMailMergeDataSet(xmlData));
doc.getMailMerge().execute(new XmlMailMergeDataTable(xmlData, "customer"));
{{< /highlight >}}

## Download Running Code

- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)

## Download Sample Code

- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/mailmerge/mailmergefromxmldatasource/)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/mailmerge/mailmergefromxmldatasource)

{{% alert color="primary" %}} 

For more details, visit [How to Mail Merge from XML using IMailMergeDataSource](/words/java/how-to-mail-merge-from-xml-using-imailmergedatasource/).

{{% /alert %}}
