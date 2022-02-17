---
title: Save Documents in Apache POI and Aspose.Words – Aspose.Words for Java
articleTitle: Save Documents in Apache POI and Aspose.Words
linktitle: Save Documents in Apache POI and Aspose.Words
description: "Aspose.Words for Java allows you to save documents easily and fast instead of using Apache POI."
type: docs
weight: 60
url: /java/save-documents-in-apache-poi-and-aspose-words/

---

## Aspose.Words - Save Document

Simply use the Document.Save method with a file name as a string. Aspose.Words will infer the save format from the file extension that you specify.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeSaveDocument.class);

Document doc = new Document();

// DocumentBuilder provides members to easily add content to a document.
DocumentBuilder builder = new DocumentBuilder(doc);

// Write a new paragraph in the document with some text as "Sample Content..."
builder.writeln("Aspose Sample Content for Word file.");

// Save the document in DOCX format. The format to save as is inferred from the extension of the file name.
// Aspose.Words supports saving any document in many more formats.
doc.save(dataDir + "Aspose_SaveDoc.docx",SaveFormat.DOCX);
{{< /highlight >}}

## Apache POI HWPF XWPF - Save Document

FileOutputStream is used to write the data in document when using Apache POI. Sample is shown below:

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheSaveDocument.class);

XWPFDocument document = new XWPFDocument();
XWPFParagraph tmpParagraph = document.createParagraph();

XWPFRun tmpRun = tmpParagraph.createRun();
tmpRun.setText("Apache Sample Content for Word file.");

FileOutputStream fos = new FileOutputStream(dataDir + "Apache_SaveDoc.doc");
document.write(fos);
fos.close();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/document)

{{% alert color="primary" %}}

For more details, visit [Save a Document](/words/java/save-a-document/).

{{% /alert %}}
