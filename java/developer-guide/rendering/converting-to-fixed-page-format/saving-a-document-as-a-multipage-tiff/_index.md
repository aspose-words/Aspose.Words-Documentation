---
title: Saving a Document as a Multipage TIFF
description: "Aspose.Words for Java allows you to convert a document to a raster image, which is discussed on the example of the TIFF format. To determine how TIFF is displayed you need to specify additional options: resolution, number of pages, image binarization, etc."
type: docs
weight: 30
url: /java/saving-a-document-as-a-multipage-tiff/
---

When working with documents, you often need to convert your document to a raster image file(s). This is especially relevant if you have to present your document in a readable and printable, but not editable format. For example, you can use a raster image of the first page of your document as a preview. This article describes how to convert a document to a raster image using the example of the TIFF format – one of the more popular image formats.

## Converting DOC to Multi-Page TIFF

In Aspose.Words, conversion from DOC to TIFF can be performed with one line of code, by simply passing the “save to” path and the relevant file extension to the [Save](https://apireference.aspose.com/words/java/com.aspose.words/document#save\(java.io.OutputStream,com.aspose.words.SaveOptions\)) method. The **Save** method automatically derives the SaveFormat from the file name extension specified in the path. The following example demonstrates how to convert a document to the TIFF format:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Specifying Additional Options When Rendering TIFF

You often need to specify additional options, which affect the rendering result. For this purpose, use the [ImageSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/ImageSaveOptions) class, which contains properties that determine how the document is displayed on the image. You can specify the following:

- Save format to determine the list of available options ([SaveFormat](https://apireference.aspose.com/net/words/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Resolution ([HorizontalResolution](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#HorizontalResolution), [VerticalResolution](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#VerticalResolution), [Resolution](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Number of pages ([PageIndex](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageIndex), [PageCount](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Color and lighting settings ([PaperColor](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PaperColor), [ImageColorMode](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageColorMode), [ImageBrightness](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageBrightness), [ImageContrast](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Image quality ([JpegQuality](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#JpegQuality), [Scale](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Scale), [TiffCompression](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#TiffCompression), [GraphicsQualityOptions](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- The method used to binarize the image ([TiffBinarizationMethod](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#TiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Pixel format for generated images ([PixelFormat](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows metafiles handling by Aspose.Words ([MetafileRenderingOptions](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#MetafileRenderingOptions), [UseGdiEmfRenderer](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Additional options that you can see in the **ImageSaveOptions** class

The following example shows how to convert DOC to TIFF with configured options:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Threshold for TIFF Binarization

A TIFF image can be saved in 1bpp b/w format by setting the [PixelFormat](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat) property to Format1bppIndexed pixel format type, and the [TiffCompression](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#TiffCompression) property to either Ccitt3 or Ccitt4.

For image segmentation, Aspose.Words uses the simplest method — thresholding. This method converts a gray-scale TIFF image into a binary image, using a threshold value. Therefore, when a document needs to be converted to the TIFF file format, it is possible to get or set the threshold for TIFF binarization via the [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering) property. The default value for this property is set to 128, and the higher this value, the darker the image.

The following example shows how to perform TIFF binarization with a specified threshold:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Below you can compare images on which TIFF binarization was performed at various threshold values:

<img src="saving-a-document-as-a-multipage-tiff_1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
