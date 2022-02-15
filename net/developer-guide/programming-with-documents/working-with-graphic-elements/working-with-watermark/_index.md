---
title: Working with Watermark in C#
articleTitle: Working with Watermark
linktitle: Working with Watermark
description: "Document watermark manipulation using Aspose.Words."
type: docs
weight: 60
url: /net/working-with-watermark/
---

This topic discusses how to work programmatically with watermark using Aspose.Words. A watermark is a background image that displays behind the text in a document. A watermark can contain a text or an image represented by the [Watermark](https://apireference.aspose.com/words/net/aspose.words/watermark) class.

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Free online document watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## How to Add a Watermark to a Document

In Microsoft Word, a watermark can easily be inserted in a document using the Insert Watermark command. Aspose.Words provides the [watermark](https://apireference.aspose.com/words/net/aspose.words/watermark) class to add or remove watermark in documents. Aspose.Words provides [WatermarkType ](https://apireference.aspose.com/words/net/aspose.words/watermarktype)enumeration defining three possible types of watermarks (Text, Image, and None) to work with. 

### Add Text Watermark

The following code example demonstrates how to insert a text watermark in a document by defining [TextWatermarkOptions](https://apireference.aspose.com/words/net/aspose.words/textwatermarkoptions) using the SetText method.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Add Image Watermark

The following code example demonstrates how to insert an image watermark in a document by defining [ImageWatermarkOptions](https://apireference.aspose.com/words/net/aspose.words/imagewatermarkoptions) using the SetImage method.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

The watermark can also be inserted using shape class as well. It is very easy to insert any shape or image into a header or footer and thus create a watermark of any imaginable type. The following code example inserts a watermark into a Word document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx). 

{{% /alert %}} 


## How to Remove Watermark from a Document

The Watermark class provides the remove method to remove the watermark from a document. The following code examples demonstrates how to remove a watermark from documents.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

If the watermarks are added using a Shape class object then to remove the watermark from a document you have to set only the name of watermark shape during inserting and then remove watermark shape by an assigned name.

The following code snippets show you how to set the name of the watermark shape and remove it from the document.

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## How to Add a Watermark in Table Cell

Sometimes you need to insert a watermark/image into a table's cell and display it outside the table, you can use ShapeBase.IsLayoutInCell property. This property gets or sets a flag indicating whether the shape is displayed inside a table or outside of it. Note that this property works only when you optimize the document for MS Word 2010 using CompatibilityOptions.OptimizeFor method. The following code example demonstrates how to use this property. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
