---
title: Working with Watermark in Java
second_title: Aspose.Words for Java
articleTitle: Working with Watermark
linktitle: Working with Watermark
type: docs
description: "Document watermark manipulation using Java."
weight: 70
url: /java/working-with-watermark/
aliases: [/java/how-to-add-a-watermark-to-a-document/]
---

This topic discusses how to work programmatically with a watermark using Aspose.Words. A watermark is a background image that displays behind the text in a document. A watermark can contain a text or an image represented by the [Watermark](https://apireference.aspose.com/words/java/com.aspose.words/Watermark) class.

## How to Add a Watermark to a Document

In Microsoft Word, a watermark can easily be inserted in a document using the Insert Watermark command. Aspose.Words provides the [watermark](https://apireference.aspose.com/words/java/com.aspose.words/Watermark) class to add or remove watermark in documents. Aspose.Words provides [WatermarkType ](https://apireference.aspose.com/words/java/com.aspose.words/WatermarkType)enumeration defining three possible types of watermarks (Text, Image, and None) to work with. 

### Add Text Watermark

The following code example demonstrates how to insert a text watermark in a document by defining [TextWatermarkOptions](https://apireference.aspose.com/words/java/com.aspose.words/TextWatermarkOptions) using the SetText method.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Add Image Watermark

The following code example demonstrates how to insert an image watermark in a document by defining [ImageWatermarkOptions](https://apireference.aspose.com/words/java/com.aspose.words/ImageWatermarkOptions) using the SetImage method.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

The watermark can also be inserted using shape class as well. It is very easy to insert any shape or image into a header or footer and thus create a watermark of any imaginable type. The following code example inserts a watermark into a Word document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc). 

{{% /alert %}}


## How to Remove Watermark from a Document

The Watermark class provides the Remove method to remove the watermark from a document. The following code examples demonstrates how to remove a watermark from documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

To remove the watermark from a document you have to set only the name of the watermark shape during inserting and then remove the watermark shape by an assigned name. The following code snippets show you how to set the name of the watermark shape and remove from the document.

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## How to Add a Watermark in Table Cell

Sometimes you need to insert a watermark/image into a table's cell and display it outside the table, you can use ShapeBase.IsLayoutInCell property. This property gets or sets a flag indicating whether the shape is displayed inside a table or outside of it. Note that this property works only when you optimize the document for MS Word 2010 using CompatibilityOptions.OptimizeFor method. 

The code example givn below shows how to use this property. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
