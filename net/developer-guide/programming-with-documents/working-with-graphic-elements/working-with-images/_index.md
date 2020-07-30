---
title: Working with Images
type: docs
weight: 40
url: /net/working-with-images/
---

## **Inserting an Image**
DocumentBuilder provides several overloads of the [DocumentBuilder.InsertImage](http://www.aspose.com/api/net/words/aspose.words.documentbuilder/insertimage/methods/1) method that allows you to insert an inline or floating image. If the image is an EMF or WMF metafile, it will be inserted into the document in metafile format. All other images will be stored in PNG format. The DocumentBuilder.InsertImage method can use images from different sources:

- From a file or URL by passing a string parameter [DocumentBuilder.InsertImage](http://www.aspose.com/api/net/words/aspose.words.documentbuilder/insertimage/methods/2).
- From a stream by passing a Stream parameter [DocumentBuilder.InsertImage](http://www.aspose.com/api/net/words/aspose.words.documentbuilder/insertimage/methods/3).
- From an Image object by passing an Image parameter [DocumentBuilder.InsertImage](http://www.aspose.com/api/net/words/aspose.words.documentbuilder/insertimage/methods/4).
- From a byte array by passing a byte array parameter [DocumentBuilder.InsertImage](http://www.aspose.com/api/net/words/aspose.words/documentbuilder/methods/insertimage). For each of the DocumentBuilder.InsertImage methods, there are further overloads which allow you to insert an image with the following options:
- Inline or floating at a specific position, for example, [DocumentBuilder.InsertImage](http://www.aspose.com/api/net/words/aspose.words.documentbuilder/insertimage/methods/11).
- Percentage scale or custom size, for example, [DocumentBuilder.InsertImage](http://www.aspose.com/api/net/words/aspose.words/documentbuilder/methods/insertimage%20methods/7). Furthermore, the DocumentBuilder.InsertImage method returns a [Shape](http://www.aspose.com/api/net/words/aspose.words.drawing/shape) object that was just created and inserted so you can further modify properties of the Shape.
### **Inserting an Inline Image**
Pass a single string representing a file that contains the image to DocumentBuilder.InsertImage to insert the image into the document as an inline graphic. Below example shows how to insert an inline image at the cursor position into a document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}
### **Inserting a Floating (Absolutely Positioned) Image**
This example inserts a floating image from a file or URL at a specified position and size.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}
## **How to Extract Images from a Document**
All images are stored inside Shape nodes in a Document. To extract all images or images having specific type from the document, follow these steps:

- Use the [Document.GetChildNodes](http://www.aspose.com/api/net/words/aspose.words/compositenode/methods/getchildnodes) method to select all **Shape** nodes.
- Iterate through resulting node collections.
- Check the [Shape.HasImage](http://www.aspose.com/api/net/words/aspose.words.drawing/shape/properties/hasimage) boolean property.
- Extract image data using the [Shape.ImageData](http://www.aspose.com/api/net/words/aspose.words.drawing/shape/properties/imagedata) property.
- Save image data to a file.

Below example shows how to extract images from a document and save them as files. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Programming-Documents/Images/Image.SampleImages.doc).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}
## **How to Insert Barcode on each Page of a Document**
This example demonstrates you to add the same or different barcodes on all or specific pages of a Word document. There is no direct way to add barcodes on all pages of a document but you can use **DocumentBuilder.MoveToSection**, **DocumentBuilder.MoveToHeaderFooter** and **DocumentBuilder.InsertImage** methods to move to any section or headers/footers and insert the barcode images as you can see in the following code. The following code example Inserts a barcode image on each page of a document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}
## **Lock Aspect Ratio of Image**
The aspect ratio of a geometric shape is the ratio of its sizes in different dimensions. You can lock the aspect ratio of the image using Shape.AspectRatioLocked. The default value of the shape's aspect ratio depends on the ShapeType. It is *true* for ShapeType.Image and *false* for other shape types.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}
## **How to Get Actual Bounds of Shape in Points**
If you want the actual bounding box of the shape as rendered on the page, you can achieve this by using NodeRendererBase.BoundsInPoints property. The following code example demonstrates how to use this property.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}
## **Crop Images**
The cropping of an image usually refers to the removal of the unwanted outer parts of an image to help improve the framing. It is also used for the removal of some of the portions of an image to increase the focus on a particular area. This can be achieved using Aspose.Words API as demonstrated in the example given below.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}
## **Saving Images as WMF**
Aspose.Words provides functionality to save all the available images in a document to [WMF ](https://wiki.fileformat.com/image/wmf/)format while converting DOCX to RTF. The following code example demonstrates how to save images as WMF with RTF save options.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
