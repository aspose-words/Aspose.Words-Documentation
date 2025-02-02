---
title: Insert Image using Apache POI and Aspose.Words
second_title: Aspose.Words for Java
articleTitle: Insert Image using Apache POI and Aspose.Words
linktitle: Insert Image using Apache POI and Aspose.Words
description: "Add image into a document easily and fast instead of using Apache POI."
type: docs
weight: 40
url: /java/insert-image-using-apache-poi-and-aspose-words/
timestamp: 2024-01-27-14-07-04
---

## Aspose.Words - Insert Image

This example inserts a floating image from a file or `URL` at a specified position and size.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(AsposeInsertImage.class);

Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.insertImage(dataDir + "background.jpg");
builder.insertImage(dataDir + "background.jpg",
        RelativeHorizontalPosition.MARGIN,
        100,
        RelativeVerticalPosition.MARGIN,
        200,
        200,
        100,
        WrapType.SQUARE);

doc.save(dataDir + "Aspose_InsertImage.docx");
{{< /highlight >}}

## Apache POI HWPF XWPF - Insert Image

XWPFRun.addPicture is used to add an image to document.

**Java**

{{< highlight csharp >}}
// The path to the documents directory.
String dataDir = Utils.getDataDir(ApacheInsertImage.class);

XWPFDocument doc = new XWPFDocument();
XWPFParagraph p = doc.createParagraph();

String imgFile = dataDir + "aspose.jpg";
XWPFRun r = p.createRun();

int format = XWPFDocument.PICTURE_TYPE_JPEG;
r.setText(imgFile);
r.addBreak();
r.addPicture(new FileInputStream(imgFile), format, imgFile, Units.toEMU(200), Units.toEMU(200)); // 200x200 pixels
r.addBreak(BreakType.PAGE);

FileOutputStream out = new FileOutputStream(dataDir + "Apache_ImagesInDoc.docx");
doc.write(out);
out.close();
{{< /highlight >}}

## Download Running Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/featurescomparison/images)

{{% alert color="primary" %}}

For more details, visit [Inserting Document Elements](/words/java/use-documentbuilder-to-insert-document-elements/#inserting-document-elements).

{{% /alert %}}
