---
title: Saving a Document as a Multipage TIFF
description: "Aspose.Words for .NET enables you to convert a document to a multi-page TIFF. To determine how the document is displayed on the image you need to specify additional options: resolution, number of pages, image binarization, etc."
type: docs
weight: 30
url: /net/saving-a-document-as-a-multipage-tiff/
---

When working with documents, you often need to convert your document to a raster image file(s). This is especially relevant if you have to present your document in a readable and printable, but not editable format. For example, you can use a raster image of the first page of your document as a preview. This article describes how to convert a document to a raster image using the example of the TIFF format – one of the more popular image formats.

## Converting DOC to Multi-Page TIFF

In Aspose.Words, conversion from DOC to TIFF can be performed with one line of code, by simply passing the “save to” path and the relevant file extension to the [Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method. The **Save** method automatically derives the SaveFormat from the file name extension specified in the path. The following example demonstrates how to convert a document to the TIFF format:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Specifying Additional Options When Rendering TIFF

You often need to specify additional options, which affect the rendering result. For this purpose, use the [ImageSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions) class, which contains properties that determine how the document is displayed on the image. You can specify the following:

- Save format to determine the list of available options ([SaveFormat](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Resolution ([HorizontalResolution](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/horizontalresolution), [VerticalResolution](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/verticalresolution), [Resolution](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Number of pages ([PageIndex](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions), [PageCount](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions))
- Color and lighting settings ([PaperColor](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/papercolor), [ImageColorMode](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecolormode), [ImageBrightness](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagebrightness), [ImageContrast](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Image quality ([JpegQuality](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/jpegquality), [Scale](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/scale), [TiffCompression](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/tiffcompression), [GraphicsQualityOptions](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Method used to binarize the image ([TiffBinarizationMethod](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/tiffbinarizationmethod), [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Pixel format for generated images ([PixelFormat](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Windows metafiles handling by Aspose.Words ([MetafileRenderingOptions](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/metafilerenderingoptions), [UseGdiEmfRenderer](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Additional options that you can see in the **ImageSaveOptions** class

The following example shows how to convert DOC to TIFF with configured options:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Threshold for TIFF Binarization

A TIFF image can be saved in 1bpp b/w format by setting the [PixelFormat](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat) property to Format1bppIndexed pixel format type, and the [TiffCompression](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/tiffcompression) property to either Ccitt3 or Ccitt4.

For image segmentation, Aspose.Words uses the simplest method — thresholding. This method converts a gray-scale TIFF image into a binary image, using a threshold value. Therefore, when a document needs to be converted to the TIFF file format, it is possible to get or set the threshold for TIFF binarization via the [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/net/words/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering) property. The default value for this property is set to 128, and the higher this value, the darker the image.

The following example shows how to perform TIFF binarization with a specified threshold:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Below you can compare images on which TIFF binarization was performed at various threshold values:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
