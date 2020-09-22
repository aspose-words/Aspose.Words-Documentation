---
title: Saving a Document as a Multipage TIFF
type: docs
weight: 10
url: /cpp/saving-a-document-as-a-multipage-tiff/
---

When working with documents, you often need to convert your document to a raster image file(s). This is especially relevant if you have to present your document in a readable and printable, but not editable format. For example, you can use a raster image of the first page of your document as a preview. This article describes how to convert a document to a raster image using the example of the TIFF format – one of the more popular image formats.

## **Converting DOC to Multi-Page TIFF**

In Aspose.Words, conversion from DOC to TIFF can be performed with one line of code, by simply passing the “save to” path and the relevant file extension to the [Save](https://apireference.aspose.com/words/cpp/class/aspose.words.document/#a4ba337135cd6c8bed74a268ba60218bd) method. The **Save** method automatically derives the SaveFormat from the file name extension specified in the path. The following example demonstrates how to convert a document to the TIFF format:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## **Specifying Additional Options When Rendering TIFF**

You often need to specify additional options, which affect the rendering result. For this purpose, use the [ImageSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options-members) class, which contains properties that determine how the document is displayed on the image. You can specify the following:

- Save format to determine the list of available options ([SaveFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a0796f7b52504005fc7db269cec5fb119))
- Resolution ([HorizontalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a201c6346f2c00a8c3587e10606dc64d0), [VerticalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#ac18ffd23c00ed71090f8f533a3f5b27e), [Resolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a3d4e7bdb51325c43a2064e5df20f3222))
- Number of pages ([PageIndex](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#acb39d22b3b2caddbfdb416e617301365), [PageCount](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a9eae0aa89c2a0b27d7932634538cf32f))
- Color and lighting settings ([PaperColor](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a5dd95327a9ef6550f0ee640d091be44f), [ImageColorMode](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#af3b0ea0f11af683ce1ed53a38aaa9f00), [ImageBrightness](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a2722bfcb126ef99a1af777ae4c13e68e), [ImageContrast](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#acc8fe052832b0ac655d4db09a3efe9da))
- Image quality ([JpegQuality](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#aca6735f8479d909fe8bc914c3959db22), [Scale](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a0427c5ce398395fce1f2d463d28c49ac), [TiffCompression](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a211e3ee66ce06f210eab9302b54730e4), GraphicsQualityOptions)
- Method used to binarize the image ([TiffBinarizationMethod](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#aeed54fefc2b0c2160e07624d04da2ce1), [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#af2c14588895eeda7519ee3d251b48adb))
- Pixel format for generated images ([PixelFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#abf139ba9d8b49ef5ffc4fe70f896208a))
- Windows metafiles handling by Aspose.Words ([MetafileRenderingOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#aa1c36920440d75ff841dda68d48ce26a), [UseGdiEmfRenderer](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#a2c323a9e922703468459b76b1c811bdb))
- Additional options that you can see in the **ImageSaveOptions** class

The following example shows how to convert DOC to TIFF with configured options:

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## **Threshold for TIFF Binarization**

A TIFF image can be saved in 1bpp b/w format by setting the [PixelFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#abf139ba9d8b49ef5ffc4fe70f896208a) property to Format1bppIndexed pixel format type, and the TiffCompression property to either Ccitt3 or Ccitt4.

For image segmentation, Aspose.Words uses the simplest method — thresholding. This method converts a gray-scale TIFF image into a binary image, using a threshold value. Therefore, when a document needs to be converted to the TIFF file format, it is possible to get or set the threshold for TIFF binarization via the [ThresholdForFloydSteinbergDithering](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/#af2c14588895eeda7519ee3d251b48adb) property. The default value for this property is set to 128, and the higher this value, the darker the image.

The following example shows how to perform TIFF binarization with a specified threshold:

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Below you can compare images on which TIFF binarization was performed at various threshold values:

![todo:image_alt_text](saving-a-document-as-a-multipage-tiff_1.jpg)
