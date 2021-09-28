---
title: Convert a Document to an Image
type: docs
description: “Aspose.Words for C++ enables you to convert a document to any supported image format, such as JPEG or PNG, to create a document preview or create a document "scan" to send an invoice.”
weight: 43
url: /cpp/convert-a-document-to-an-image/
---

Sometimes it is required to get an image instead of documents in other formats, such as DOCX or PDF. For example, you need to add a preview of any document page to your website or application, or create a "scan" of a document to send an invoice. This is when you may need to convert a document in any [supported load format](https://apireference.aspose.com/words/cpp/namespace/aspose.words#loadformat) to an image, again, in any [supported save format](https://apireference.aspose.com/words/cpp/namespace/aspose.words#saveformat).

## Convert to Image Format

As with all conversion examples already described, you need to create a new document or load an existing one in any supported format, make the necessary changes, and save it in any available image format, for example, JPEG, PNG, or BMP.

The following code example shows how to convert DOCX to JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Specify Save Options when Converting to an Image

Aspose.Words provides you with the [ImageSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/) class, which gives more control over how documents are saved in various image formats. Some properties of this class inherit or overload properties of base classes such as [FixedPageSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.fixed_page_save_options/) or [SaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options/), but there are also options specific to saving images.

It is possible to specify the pages to be converted to image format using the [PageSet](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_pageset) property. For example, it can be applied if you only need a preview for the first or for a definite page.

It is also possible to control the output image quality and pixel format using the following properties – [HorizontalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_horizontalresolution), [VerticalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_verticalresolution_const), [Resolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_resolution), [Scale](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#set_scale), [PixelFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_pixelformat_const), as well as set up image color settings, using the following properties – [ImageBrightness](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_imagebrightness_const), [ImageColorMode](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_imagecolormode_const), [ImageContrast](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_imagecontrast_const), [PaperColor](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_papercolor).

There are also properties that apply to a certain format, for example, [JpegQuality](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_jpegquality) or [TiffCompression](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#get_tiffcompression_const).

The following code example demonstrates how to create a preview of the first document page with applying some additional settings:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
