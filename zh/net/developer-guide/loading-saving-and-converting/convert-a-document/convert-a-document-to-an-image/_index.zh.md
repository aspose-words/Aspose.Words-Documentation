---
title: 将文档转换为 C# 格式的图像
second_title: .NET 格式的 Aspose.Words
articleTitle: 将文档转换为图像
linktitle: 将文档转换为图像
type: docs
description: "将文档转换为图像格式（JPG、PNG 等）。创建文档预览或创建文档扫描以使用 C# 发送发票。"
weight: 43
url: /zh/net/convert-a-document-to-an-image/
---

有时需要获取图像而不是其他格式的文档，例如 DOCX 或 PDF。例如，您需要将任何文档页面的预览添加到您的网站或应用程序，或者创建文档的"扫描"以发送发票。此时您可能需要将任何 [支持的加载格式](https://reference.aspose.com/words/zh/net/aspose.words/loadformat/) 格式的文档转换为任何 [支持的保存格式](https://reference.aspose.com/words/zh/net/aspose.words/saveformat/) 格式的图像。

## 转换为图像 {#convert-to-image-format}

与已经描述的所有转换示例一样，您需要创建一个新文档或以任何支持的格式加载现有文档，进行必要的更改，并将其保存为任何可用的图像格式，例如 JPEG、PNG 或 BMP。

以下代码示例展示了如何将 PDF 转换为 JPEG：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## 转换为图像 {#specify-save-options-when-converting-to-an-image} 时指定保存选项

Aspose.Words 为您提供了 [ImageSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/) 类，它可以更好地控制如何以各种图像格式保存文档。此类的某些属性继承或重载了基类（例如 [FixedPageSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/fixedpagesaveoptions/) 或 [SaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/saveoptions/)）的属性，但也有一些特定于保存图像的选项。

可以使用 [PageSet](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/pageset/) 属性指定要转换为图像格式的页面。例如，如果您只需要预览第一页或特定页面，则可以应用它。

还可以使用以下属性控制输出图像质量和像素格式 - [HorizontalResolution](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/horizontalresolution/)、[VerticalResolution](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/verticalresolution/)、[Resolution](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/resolution/)、[Scale](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/scale/)、[PixelFormat](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/pixelformat/)，以及使用以下属性设置图像颜色设置 - [ImageBrightness](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/imagebrightness/)、[ImageColorMode](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/imagecolormode/)、[ImageContrast](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/imagecontrast/)、[PaperColor](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/papercolor/)。

还有一些属性适用于某种格式，例如 [JpegQuality](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/jpegquality/) 或 [TiffCompression](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/tiffcompression/)。

以下代码示例演示如何通过应用一些附加设置来创建第一个文档页面的预览：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
