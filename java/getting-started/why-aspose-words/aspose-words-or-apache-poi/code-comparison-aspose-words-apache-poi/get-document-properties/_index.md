---
title: Get Document Properties – Aspose.Words for Java
articleTitle: Get Document Properties
linktitle: Get Document Properties
description: "Get document properties easily and fast instead of using Apache POI."
type: docs
weight: 40
url: /java/get-document-properties/
---

## Aspose.Words - Get Document Properties

Document properties allow some useful information to be stored along with the document. There are system (built-in) and user defined (custom) properties. Built-in properties contain such things as document title, author's name, document statistics, and so on. Custom properties are just name-value pairs where user defines both the name and value.

You can use document properties in your document automation project to store some useful info along with the document such as when the document was received/processed/time stamped and so on.

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeDocumentProperties.class);
Document doc = new Document(dataDir + "document.doc");
System.out.println("============ Built-in Properties ============");
for (DocumentProperty prop : doc.getBuiltInDocumentProperties())
    System.out.println(MessageFormat.format("{0} : {1}", prop.getName(), prop.getValue()));
System.out.println("============ Custom Properties ============");
for (DocumentProperty prop : doc.getCustomDocumentProperties())
    System.out.println(MessageFormat.format("{0} : {1}", prop.getName(), prop.getValue()));
FileFormatInfo info = FileFormatUtil.detectFileFormat(dataDir + "document.doc");
System.out.println("The document format is: " + FileFormatUtil.loadFormatToExtension(info.getLoadFormat()));
System.out.println("Document is encrypted: " + info.isEncrypted());
System.out.println("Document has a digital signature: " + info.hasDigitalSignature());
{{< /highlight >}}

## Apache POI HWPF XWPF - Get Document Properties

SummaryInformation class is used to access various properties of HWPF document.

**Java**

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheDocumentProperties.class);
HWPFDocument doc = new HWPFDocument(new FileInputStream(
                dataDir + "document.doc"));
SummaryInformation summaryInfo = doc.getSummaryInformation();
System.out.println(summaryInfo.getApplicationName());
System.out.println(summaryInfo.getAuthor());
System.out.println(summaryInfo.getComments());
System.out.println(summaryInfo.getCharCount());
System.out.println(summaryInfo.getEditTime());
System.out.println(summaryInfo.getKeywords());
System.out.println(summaryInfo.getLastAuthor());
System.out.println(summaryInfo.getPageCount());
System.out.println(summaryInfo.getRevNumber());
System.out.println(summaryInfo.getSecurity());
System.out.println(summaryInfo.getSubject());
System.out.println(summaryInfo.getTemplate());
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/document)

{{% alert color="primary" %}}

For more details, visit [Working with Document Properties](/words/java/working-with-document/#workingwithdocument-workingwithdocumentproperties).

{{% /alert %}}
