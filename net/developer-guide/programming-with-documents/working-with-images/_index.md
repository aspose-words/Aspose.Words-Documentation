---
title: Working with Images in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Images
linktitle: Working with Images
description: "Image shapes in details and advanced features provided by Aspose.Words for .NET."
type: docs
weight: 300
url: /net/working-with-images/
aliases:
- /net/working-with-graphic-elements/
---

Aspose.Words allows users to work with images in a very flexible way. In this article, you can explore only some of the possibilities of working with images.

## How to Insert an Image {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) provides several overloads of the [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) method that allows you to insert an inline or floating image. If the image is an EMF or WMF metafile, it will be inserted into the document in metafile format. All other images will be stored in PNG format. The **InsertImage** method can use images from different sources:

- From a file or URL by passing a String parameter [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/)
- From a stream by passing a Stream parameter **InsertImage**
- From an Image object by passing an Image parameter **InsertImage**
- From a byte array by passing a byte array parameter **InsertImage**

For each of the **InsertImage** methods, there are further overloads which allow you to insert an image with the following options:
- Inline or floating at a specific position, for example, **InsertImage**
- Percentage scale or custom size, for example, **InsertImage**; furthermore, the **InsertImage** method returns a [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) object that was just created and inserted so you can further modify properties of the Shape

### How to Insert an Inline Image {#insert-an-inline-image}

Pass a single string representing a file that contains the image to **InsertImage** to insert the image into the document as an inline graphic. 

The following code example shows how to insert an inline image at the cursor position into a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### How to Insert a Floating Image  {#insert-a-floating-image}

The following code example shows how to insert a floating image from a file or URL at a specified position and size:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## How to Extract Images from a Document {#how-to-extract-images-from-a-document}

All images are stored inside **Shape** nodes in a [Document](https://reference.aspose.com/words/net/aspose.words/document/). To extract all images or images having specific type from the document, follow these steps:

- Use the [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) method to select all **Shape** nodes.
- Iterate through resulting node collections.
- Check the [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) boolean property.
- Extract image data using the [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) property.
- Save image data to a file.

The following code example shows how to extract images from a document and save them as files:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## How to Insert Barcode on each Document Page {#how-to-insert-barcode-on-each-documen-page}

This example demonstrates you to add the same or different barcodes on all or specific pages of a Word document. There is no direct way to add barcodes on all pages of a document but you can use the **MoveToSection**, **MoveToHeaderFooter** and **InsertImage** methods to move to any section or headers/footers and insert the barcode images as you can see in the following code.

The following code example shows how to insert a barcode image on each page of a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Lock Aspect Ratio of Image {#lock-aspect-ratio-of-image}

The aspect ratio of a geometric shape is the ratio of its sizes in different dimensions. You can lock the aspect ratio of the image using [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). The default value of the shape's aspect ratio depends on the [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). It is *true* for ShapeType.Image and *false* for other shape types.

The following code example shows how to work with aspect ratio:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## How to Get Actual Bounds of Shape in Points {#how-to-get-actual-bounds-of-shape-in-points}

If you want the actual bounding box of the shape as rendered on the page, you can achieve this by using the [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) property.

The following code example shows how to use this property:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Crop Images {#crop-images}

The cropping of an image usually refers to the removal of the unwanted outer parts of an image to help improve the framing. It is also used for the removal of some of the portions of an image to increase the focus on a particular area.

The following code example shows how to achieve this using Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Save Images as WMF {#save-images-as-wmf}

Aspose.Words provides functionality to save all the available images in a document to [WMF ](https://docs.fileformat.com/image/wmf/)format while converting DOCX to RTF.

The following code example shows how to save images as WMF with RTF save options:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
