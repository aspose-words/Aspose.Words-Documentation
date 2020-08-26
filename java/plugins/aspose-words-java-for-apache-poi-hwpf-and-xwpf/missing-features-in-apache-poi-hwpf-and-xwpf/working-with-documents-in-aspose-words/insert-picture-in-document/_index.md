---
title: Insert Picture in Document
type: docs
weight: 60
url: /java/insert-picture-in-document/
---

## **Aspose.Words - Insert Picture in Document**
DocumentBuilder provides several overloads of the DocumentBuilder.InsertImage method that allows you to insert an inline or floating image. If the image is an EMF or WMF metafile, it will be inserted into the document in metafile format. All other images will be stored in PNG format.

**Java**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

builder.insertImage("image.jpg");

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/insertpicture/AsposeInsertImage.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/insertpicture/AsposeInsertImage.java)

{{% alert color="primary" %}} 

For more details, visit [Inserting Document Elements](/words/java/use-documentbuilder-to-insert-document-elements/#usedocumentbuildertoinsertdocumentelements-insertingdocumentelements).

{{% /alert %}}
