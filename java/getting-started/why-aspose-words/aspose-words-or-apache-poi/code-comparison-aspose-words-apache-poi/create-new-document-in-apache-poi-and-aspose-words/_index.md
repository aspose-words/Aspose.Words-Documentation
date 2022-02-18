---
title: Create New Document in Apache POI and Aspose.Words – Aspose.Words for Java
articleTitle: Create New Document in Apache POI and Aspose.Words
linktitle: Create New Document in Apache POI and Aspose.Words
description: "Aspose.Words for Java allows you to create a new document easily and fast instead of using Apache POI."
type: docs
weight: 35
url: /java/create-new-document-in-apache-poi-and-aspose-words/
---

## Aspose.Words - Create New Document

Call the Document constructor without parameters to create a new blank document.

If you want to generate a document programmatically, the most reasonable step after creation is to use DocumentBuilder to add document contents.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeNewDocument.class);

Document doc = new Document();

// DocumentBuilder provides members to easily add content to a document.
DocumentBuilder builder = new DocumentBuilder(doc);

// Write a new paragraph in the document with some text as "Sample Content..."
builder.setBold(true);

builder.writeln("Aspose Sample Content for Word file.");

// Save the document in DOCX format. The format to save as is inferred from the extension of the file name.
// Aspose.Words supports saving any document in many more formats.
doc.save(dataDir + "Aspose_NewDoc.docx",SaveFormat.DOCX);
{{< /highlight >}}

## Apache POI HWPF XWPF - Create New Document

The code example given below shows how to create a new document using Apache POI XWPF.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheNewDocument.class);

XWPFDocument document = new XWPFDocument();
XWPFParagraph tmpParagraph = document.createParagraph();
XWPFRun tmpRun = tmpParagraph.createRun();
tmpRun.setText("Apache Sample Content for Word file.");
tmpRun.setFontSize(18);

FileOutputStream fos = new FileOutputStream(dataDir + "Apache_newWordDoc.doc");
document.write(fos);
fos.close();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/document)

{{% alert color="primary" %}}

For more details, visit [Creating a New Document](/words/java/create-or-load-a-document/#create-a-new-document).

{{% /alert %}}
