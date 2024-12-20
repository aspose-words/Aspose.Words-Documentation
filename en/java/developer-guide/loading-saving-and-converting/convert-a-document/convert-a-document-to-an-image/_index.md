---
title: Convert a Document to an Image in Java
second_title: Aspose.Words for Java
articleTitle: Convert a Document to an Image
linktitle: Convert a Document to an Image
type: docs
description: "Convert a document to image format (JPG, PNG, etc). Create a document preview or create a document scan to send an invoice using Java."
weight: 35
url: /java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Sometimes it is required to get an image instead of documents in other formats, such as DOCX or PDF. For example, you need to add a preview of any document page to your website or application or create a "scan" of a document to send an invoice. This is when you may need to convert a document in any [supported load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) to an image, again, in any [supported save format](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Convert to Image Format

As with all conversion examples already described, you need to create a new document or load an existing one in any supported format, make the necessary changes, and save it in any available image format, for example, JPEG, PNG, or BMP.

The following code example shows how to convert DOCX to JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Specify Save Options when Converting to an Image

Aspose.Words provides you with the [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) class, which gives more control over how documents are saved in various image formats. Some properties of this class inherit or overload properties of base classes such as [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) or [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), but there are also options specific to saving images.

It is possible to specify the pages to be converted to image format using the [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) property. For example, it can be applied if you only need a preview for the first or for a definite page.

It is also possible to control the output image quality and pixel format using the following properties – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), as well as set up image color settings, using the following properties – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

There are also properties that apply to a certain format, for example, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) or [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

The following code example shows how to create a preview of the first document page with applying some additional settings:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
