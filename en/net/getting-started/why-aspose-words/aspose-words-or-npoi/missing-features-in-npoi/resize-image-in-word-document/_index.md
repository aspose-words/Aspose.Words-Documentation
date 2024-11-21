---
title: Resize Image in a Word Document
second_title: Aspose.Words for .NET
articleTitle: Resize Image in a Word Document
linktitle: Resize Image in a Word Document
description: "Resize an image in a Word document. NPOI does not provide an opportunity to resize an image using C#."
type: docs
weight: 40
url: /net/resize-image-in-word-document/
timestamp: 2024-05-02-11-51-44
---

{{% alert color="primary" %}}

See more details in the [Working with Images](/words/net/working-with-images/) documentation section.

{{% /alert %}}

The [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) provides several overloads of the [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/#insertimage) method that allow you to insert an inline or floating image. For example, the [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) method is used to insert an image from a file or `URL` into a document.

Using [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)class you can create or modify shapes in a Microsoft Word document.

The following code example shows how to resize an image:

{{< highlight csharp >}}
Document doc = new Document();

// Create New Document.
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Image Before Resize");
//insert image from disk
Shape shape = builder.InsertImage(@"../../data/aspose_Words-for-net.jpg");

// Write text in document.
builder.Write("ReSize image ");
shape = builder.InsertImage(@"../../data/aspose_Words-for-net.jpg");

// Changing image size. ConvertUtil Provides helper functions to convert between various measurement units. like Converts inches to points.
shape.Width = ConvertUtil.InchToPoint(0.5);
shape.Height = ConvertUtil.InchToPoint(0.5);

// Save document on file location.
builder.Document.Save("ImageReSize.doc");
{{< /highlight >}}

{{% alert color="primary" %}}

The [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/)class provides helper functions to convert between various measurement units, like conversion [inches to points](https://reference.aspose.com/words/net/aspose.words/convertutil/inchtopoint/).

{{% /alert %}}

See also:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2) for code example
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/08.03-ImageReSize.zip) for running code
