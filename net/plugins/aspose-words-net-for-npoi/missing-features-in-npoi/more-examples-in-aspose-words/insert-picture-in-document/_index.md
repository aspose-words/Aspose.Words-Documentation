---
title: Insert Picture in Document
type: docs
weight: 10
url: /net/insert-picture-in-document/
---

## **Aspose.Words - Insert Picture in Document**
DocumentBuilder provides several overloads of the DocumentBuilder.InsertImage method that allow you to insert an inline or floating image. If the image is an EMF or WMF metafile, it will be inserted into the document in metafile format. All other images will be stored in PNG format.

**C#**

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertImage("../../data/HumpbackWhale.jpg");
doc.Save("insertedImage.docx");
{{< /highlight >}}
## **Download Running Code**
Download **Insert Picture in Document** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475294)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Insert.Picture.in.Word.Document.Aspose.Words.zip)
