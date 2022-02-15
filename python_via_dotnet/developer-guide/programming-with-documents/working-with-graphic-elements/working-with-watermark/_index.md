---
title: Working with Watermark – Aspose.Words for Python via .NET
articleTitle: Working with Watermark
linktitle: Working with Watermark
description: "Create and manage watermarks in a document using python."
type: docs
weight: 60
url: /python-net/working-with-watermark/
aliases: [/python/working-with-watermark/]
---

This topic discusses how to work programmatically with watermark using Aspose.Words. A watermark is a background image that displays behind the text in a document. A watermark can contain a text or an image represented by the **Watermark** class.

{{% alert color="primary" %}}

**Try online**

You can try this functionality with our [Free online document watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## How to Add a Watermark to a Document

In Microsoft Word, a watermark can easily be inserted in a document using the Insert Watermark command. Aspose.Words provides the **Watermark** class to add or remove watermark in documents. Aspose.Words provides **WatermarkType** enumeration defining three possible types of watermarks (TEXT, IMAGE, and NONE) to work with. 

### Add Text Watermark

The following code example demonstrates how to insert a text watermark in a document by defining **TextWatermarkOptions** using the **set_text** method.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Add Image Watermark

The following code example demonstrates how to insert an image watermark in a document by defining **ImageWatermarkOptions** using the **set_image** method.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

The watermark can also be inserted using shape class as well. It is very easy to insert any shape or image into a header or footer and thus create a watermark of any imaginable type. The following code example inserts a watermark into a Word document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx). 

{{% /alert %}} 


## How to Remove Watermark from a Document

The Watermark class provides the remove method to remove the watermark from a document. The following code examples demonstrates how to remove a watermark from documents.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

If the watermarks are added using a Shape class object then to remove the watermark from a document you have to set only the name of watermark shape during inserting and then remove watermark shape by an assigned name.

The following code snippets show you how to set the name of the watermark shape and remove it from the document.

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## How to Add a Watermark in Table Cell

Sometimes you need to insert a watermark/image into a table's cell and display it outside the table, you can use **ShapeBase.is_layout_in_cell** property. This property gets or sets a flag indicating whether the shape is displayed inside a table or outside of it. Note that this property works only when you optimize the document for MS Word 2010 using **CompatibilityOptions.optimize_for** method. The following code example demonstrates how to use this property. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
