---
title: Convert a Document to an Image
type: docs
description: “Aspose.Words for C++ allows you to convert a document to any supported image format, such as JPEG or PNG, to create a document preview or create a document "scan" to send an invoice.”
weight: 43
url: /cpp/convert-a-document-to-an-image/
---

Sometimes it is required to get an image instead of documents in other formats, such as DOCX or PDF. For example, you need to add a preview of any document page to your website or application, or create a "scan" of a document to send an invoice. This is when you may need to convert a document in any [supported load format](https://apireference.aspose.com/words/cpp/namespace/aspose.words#a5fddddb463c824cf3fe353ce1bcd8f52) to an image, again, in any [supported save format](https://apireference.aspose.com/words/cpp/namespace/aspose.words#a115f4c887d1fbaa2cbe273d422f7e847).

## Convert to Image Format

As with all conversion examples already described, you need to create a new document or load an existing one in any supported format, make the necessary changes, and save it in any available image format, for example, JPEG, PNG, or BMP.

The following code example shows how to convert DOCX to JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Specify Save Options when Converting to an Image

Aspose.Words provides you with the [ImageSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/) class, which gives more control over how documents are saved in various image formats. Some properties of this class inherit or overload properties of base classes such as [FixedPageSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.fixed_page_save_options/) or [SaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options/), but there are also options specific to saving images.

It is possible to specify the pages to be converted to image format using the [PageSet](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a9e8977875b2da173776f29e86d46d60f) property. For example, it can be applied if you only need a preview for the first or for a definite page.

It is also possible to control the output image quality and pixel format using the following properties – [HorizontalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#af82ab4fa1fb96fd4b2b2106f88ead7da), [VerticalResolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#ac18ffd23c00ed71090f8f533a3f5b27e), [Resolution](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a3d4e7bdb51325c43a2064e5df20f3222), [Scale](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a03e3e8391b82e02e69686cad6bf265f1), [PixelFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#abf139ba9d8b49ef5ffc4fe70f896208a), as well as set up image color settings, using the following properties – [ImageBrightness](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a133b438427d127b2f9a89d05f0143e21), [ImageColorMode](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#af3b0ea0f11af683ce1ed53a38aaa9f00), [ImageContrast](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a011299a30bb1a7bdbbde3bfdfa60f273), [PaperColor](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a705640a5de75b1a1e535e2df63730c94).

There are also properties that apply to a certain format, for example, [JpegQuality](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#abcaf590c36e4f42d8974ea8f0b158e42) or [TiffCompression](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a211e3ee66ce06f210eab9302b54730e4).

The following code example shows how to create a preview of the first document page with applying some additional settings:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
