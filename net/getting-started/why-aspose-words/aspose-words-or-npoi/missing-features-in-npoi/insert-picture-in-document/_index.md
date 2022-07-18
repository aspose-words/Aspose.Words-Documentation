---
title: Insert Picture into a Document
second_title: Aspose.Words for .NET
articleTitle: Insert Picture into a Document
linktitle: Insert Picture into a Document
description: "Insert picture into a document. NPOI does not provide an opportunity to insert picture into a document using C#."
type: docs
weight: 30
url: /net/insert-picture-in-document/
---

{{% alert color="primary" %}}

See more details in the ["Working with Images"](/words/net/working-with-images/) documentation section.

{{% /alert %}}

The [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder) provides several overloads of the [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertimage/index) method that allow you to insert an inline or floating image. If the image is an EMF or WMF metafile, it will be inserted into the document in metafile format. All other images will be saved in PNG format.

The following code example shows how to insert an image info a document:

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");
DocumentBuilder builder = new DocumentBuilder(doc);

builder.InsertImage("../../data/HumpbackWhale.jpg");
doc.Save("insertedImage.docx");
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Insert.Picture.in.Word.Document.Aspose.Words.zip) for running code
