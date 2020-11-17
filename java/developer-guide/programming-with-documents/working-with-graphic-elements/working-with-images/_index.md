---
title: Working with Images
type: docs
weight: 40
url: /java/working-with-images/
---

## How to Extract Images from a Document

All images are stored inside Shape nodes in a Document. To extract all images or images having specific type from the document, follow these steps:

- Use the [Document.getChildNodes](http://www.aspose.com/api/java/words/com.aspose.words/classes/document/methods/getChildNodes\(int,boolean\)/) method to select all Shape nodes.
- Iterate through resulting node collections.
- Check the [Shape.hasImage](http://www.aspose.com/api/java/words/com.aspose.words/classes/shape/methods/hasImage\(\)/) boolean property.
- Extract image data using the [Shape.ImageData](http://www.aspose.com/api/java/words/com.aspose.words/classes/ImageData) property.
- Save image data to a file.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-.java" >}}

## How to Insert Barcode on each Page of a Document

This example lets you add the same or different barcodes on all or specific pages of a Word document. There is no direct way to add barcodes on all pages of a document but you can use [DocumentBuilder.moveToSection](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToSection\(int\)/), [DocumentBuilder.moveToHeaderFooter](http://www.aspose.com/api/java/words/com.aspose.words/classes/documentbuilder/methods/moveToHeaderFooter\(int\)/) and DocumentBuilder.insertImage (https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) methods to move to any section or headers/footers and insert the barcode images as you can see in the following code. Below example Inserts a barcode image on each page of a document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Lock Aspect Ratio of Image

The aspect ratio of a geometric shape is the ratio of its sizes in different dimensions. You can lock the aspect ratio of an image using Shape.AspectRatioLocked. The default value of the shape's aspect ratio depends on the ShapeType. It is true for ShapeType.Image and false for other shape types.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## How to Get Actual Bounds of Shape in Points

If you want the actual bounding box of the shape as rendered on the page, you can achieve this by using NodeRendererBase.BoundsInPoints property. The following code example shows how to use this property.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Crop Images

The cropping of an image usually refers to the removal of the unwanted outer parts of an image to help improve the framing. It is also used for the removal of some of the portions of an image to increase the focus on a particular area. This can be achieved using Aspose.Words API as demonstrated in the example given below.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Saving Images as WMF

Aspose.Words provides functionality to save all the available images in a document to [WMF ](https://wiki.fileformat.com/image/wmf/)format while converting DOCX to RTF. The following code example demonstrates how to save images as WMF with RTF save options.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
