---
title: Convert a Document to an Image
type: docs
description: “Aspose.Words for .NET allows you to convert a document to any supported image format, such as JPEG or PNG, to create a document preview or create a document "scan" to send an invoice.”
weight: 43
url: /net/convert-a-document-to-an-image/
---

Sometimes it is required to get an image instead of documents in other formats, such as DOCX or PDF. For example, you need to add a preview of any document page to your website or application, or create a "scan" of a document to send an invoice. This is when you may need to convert a document in any [supported load format](https://apireference.aspose.com/words/net/aspose.words/loadformat) to an image, again, in any [supported save format](https://apireference.aspose.com/words/net/aspose.words/saveformat).

## Convert to {Image|Image Format} {#convert-to-image-format}

As with all conversion examples already described, you need to create a new document or load an existing one in any supported format, make the necessary changes, and save it in any available image format, for example, JPEG, PNG, or BMP.

The following code example shows how to convert PDF to JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## {Specify|Set} Save Options when Converting to {Image|an Image} {#specify-save-options-when-converting-to-an-image}

Aspose.Words provides you with the [ImageSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions) class, which gives more control over how documents are saved in various image formats. Some properties of this class inherit or overload properties of base classes such as [FixedPageSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions) or [SaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions), but there are also options specific to saving images.

It is possible to specify the pages to be converted to image format using the [PageSet](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pageset) property. For example, it can be applied if you only need a preview for the first or for a definite page.

It is also possible to control the output image quality and pixel format using the following properties – [HorizontalResolution](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/horizontalresolution), [VerticalResolution](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/verticalresolution), [Resolution](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution), [Scale](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/scale), [PixelFormat](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat), as well as set up image color settings, using the following properties – [ImageBrightness](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagebrightness), [ImageColorMode](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecolormode), [ImageContrast](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast), [PaperColor](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/papercolor).

There are also properties that apply to a certain format, for example, [JpegQuality](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/jpegquality) or [TiffCompression](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/tiffcompression).

The following code example shows how to create a preview of the first document page with applying some additional settings:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}