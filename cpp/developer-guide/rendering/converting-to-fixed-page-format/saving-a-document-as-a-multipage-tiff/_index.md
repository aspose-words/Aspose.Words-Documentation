---
title: Saving a Document as a Multipage TIFF in C++
second_title: Aspose.Words for C++
articleTitle: Saving a Document as a Multipage TIFF
linktitle: Saving a Document as a Multipage TIFF
description: "Convert a document to a multi-page TIFF using C++. To determine how the document is displayed on the image you need to specify additional options: resolution, number of pages, image binarization, etc."
type: docs
weight: 40
url: /cpp/saving-a-document-as-a-multipage-tiff/
---

When working with documents, you often need to convert your document to a raster image file(s). This is especially relevant if you have to present your document in a readable and printable, but not editable format. For example, you can use a raster image of the first page of your document as a preview. This article describes how to convert a document to a raster image using the example of the TIFF format – one of the more popular image formats.

## Converting DOC to Multi-Page TIFF

In Aspose.Words, conversion from DOC to TIFF can be performed with one line of code, by simply passing the “save to” path and the relevant file extension to the [Save](https://apireference.aspose.com/words/cpp/class/aspose.words.document#save_stream_saveformat) method. The **Save** method automatically derives the SaveFormat from the file name extension specified in the path. The following example demonstrates how to convert a document to the TIFF format:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Specifying Additional Options When Rendering TIFF

You often need to specify additional options, which affect the rendering result. For this purpose, use the [ImageSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options-members) class, which contains properties that determine how the document is displayed on the image. You can specify the following:

- Save format to determine the list of available options ([SaveFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_saveformat))
- Resolution ([HorizontalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_horizontalresolution_const), [VerticalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_verticalresolution_const), [Resolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_resolution))
- Number of pages ([PageIndex](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_pageset_const), [PageCount](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_pageset_const))
- Color and lighting settings ([PaperColor](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_papercolor), [ImageColorMode](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_imagecolormode_const), [ImageBrightness](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_imagebrightness), [ImageContrast](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_imagecontrast))
- Image quality ([JpegQuality](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_jpegquality), [Scale](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_scale_const), [TiffCompression](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_tiffcompression_const), GraphicsQualityOptions)
- Method used to binarize the image ([TiffBinarizationMethod](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_tiffbinarizationmethod_const), [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_thresholdforfloydsteinbergdithering_const))
- Pixel format for generated images ([PixelFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_pixelformat_const))
- Windows metafiles handling by Aspose.Words ([MetafileRenderingOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_metafilerenderingoptions), [UseGdiEmfRenderer](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_usegdiemfrenderer_const))
- Additional options that you can see in the **ImageSaveOptions** class

The following example shows how to convert DOC to TIFF with configured options:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Threshold for TIFF Binarization

A TIFF image can be saved in 1bpp b/w format by setting the [PixelFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_pixelformat_const) property to Format1bppIndexed pixel format type, and the TiffCompression property to either Ccitt3 or Ccitt4.

For image segmentation, Aspose.Words uses the simplest method — thresholding. This method converts a gray-scale TIFF image into a binary image, using a threshold value. Therefore, when a document needs to be converted to the TIFF file format, it is possible to get or set the threshold for TIFF binarization via the [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_thresholdforfloydsteinbergdithering_const) property. The default value for this property is set to 128, and the higher this value, the darker the image.

The following example shows how to perform TIFF binarization with a specified threshold:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Below you can compare images on which TIFF binarization was performed at various threshold values:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
