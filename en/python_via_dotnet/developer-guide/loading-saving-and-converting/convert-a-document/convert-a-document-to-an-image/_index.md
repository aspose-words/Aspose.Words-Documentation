---
title: Convert a Document to an Image
second_title: Aspose.Words for Python via .NET
articleTitle: Convert a Document to an Image
linktitle: Convert a Document to an Image
type: docs
description: "Convert a document to image format (JPG, PNG, etc). Create a document preview or create a document scan to send an invoice using Python."
weight: 43
url: /python-net/convert-a-document-to-an-image/
aliases: [/python/convert-a-document-to-an-image/]
timestamp: 2024-01-27-14-07-04
---

Sometimes it is required to get an image instead of documents in other formats, such as DOCX or PDF. For example, you need to add a preview of any document page to your website or application, or create a "scan" of a document to send an invoice. This is when you may need to convert a document in any [supported load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) to an image, again, in any [supported save format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Convert to Image Format {#convert-to-image-format}

As with all conversion examples already described, you need to create a new document or load an existing one in any supported format, make the necessary changes, and save it in any available image format, for example, JPEG, PNG, or BMP.

The following code example shows how to convert PDF to JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Specify Save Options when Converting to an Image {#specify-save-options-when-converting-to-an-image}

Aspose.Words provides you with the [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) class, which gives more control over how documents are saved in various image formats. Some properties of this class inherit or overload properties of base classes such as [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) or [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), but there are also options specific to saving images.

It is possible to specify the pages to be converted to image format using the [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) property. For example, it can be applied if you only need a preview for the first or for a definite page.

It is also possible to control the output image quality and pixel format using the following properties – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), as well as set up image color settings, using the following properties – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

There are also properties that apply to a certain format, for example, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) or [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

The following code example shows how to create a preview of the first document page with applying some additional settings:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
