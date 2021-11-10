---
title: Resize Image in a Word Document
description: "Aspose.Words for .NET allows to resize an image in a Word document. NPOI does not provide an opportunity to resize an image."
type: docs
weight: 40
url: /net/resize-image-in-word-document/
---

{{% alert color="primary" %}}

See more details in the ["Working with Images"](https://docs.aspose.com/words/net/working-with-images/) documentation section.

{{% /alert %}}

The [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) provides several overloads of the [InsertImage](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertimage/index) method that allow you to insert an inline or floating image. For example, the [InsertImage](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/insertimage/methods/9) method is used to insert an image from a file or URL into a document.

Using [Shape ](https://apireference.aspose.com/words/net/aspose.words.drawing/shape)class you can create or modify shapes in a Microsoft Word document.

The following code example demonstrates how to resize an image:

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

// Chaging image size. ConvertUtil Provides helper functions to convert between various measurement units. like Converts inches to points.
shape.Width = ConvertUtil.InchToPoint(0.5);
shape.Height = ConvertUtil.InchToPoint(0.5);

// Save document on file location.
builder.Document.Save("ImageReSize.doc");
{{< /highlight >}}

{{% alert color="primary" %}}

The [ConvertUtil ](https://apireference.aspose.com/words/net/aspose.words/convertutil)class provides helper functions to convert between various measurement units, like convertsion [inches to points](https://apireference.aspose.com/words/net/aspose.words/convertutil/methods/inchtopoint).

{{% /alert %}}

See also:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2) for code example
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/08.03-ImageReSize.zip) for running code
