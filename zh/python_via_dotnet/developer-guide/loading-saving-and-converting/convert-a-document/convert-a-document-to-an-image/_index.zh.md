---
title: 将文档转换为图像
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 将文档转换为图像
linktitle: 将文档转换为图像
type: docs
description: "将文档转换为图像格式（JPG、PNG 等）。创建文档预览或创建文档扫描以使用 Python 发送发票。"
weight: 43
url: /zh/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

有时需要获取图像而不是其他格式的文档，例如 DOCX 或 PDF。例如，您需要将任何文档页面的预览添加到您的网站或应用程序，或者创建文档的"扫描"以发送发票。此时您可能需要将任何 [支持的加载格式](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 格式的文档转换为任何 [支持的保存格式](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 格式的图像。

## 转换为图像格式 {#convert-to-image-format}

与已经描述的所有转换示例一样，您需要创建一个新文档或以任何支持的格式加载现有文档，进行必要的更改，并将其保存为任何可用的图像格式，例如 JPEG、PNG 或 BMP。

以下代码示例展示了如何将 PDF 转换为 JPEG：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## 转换为图像 {#specify-save-options-when-converting-to-an-image} 时指定保存选项

Aspose.Words 为您提供了 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 类，它可以更好地控制如何以各种图像格式保存文档。此类的某些属性继承或重载了基类（例如 [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) 或 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/)）的属性，但也有一些特定于保存图像的选项。

可以使用 [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) 属性指定要转换为图像格式的页面。例如，如果您只需要预览第一页或特定页面，则可以应用它。

还可以使用以下属性控制输出图像质量和像素格式 - [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)、[vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/)、[scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)、[pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/)，以及使用以下属性设置图像颜色设置 - [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)、[image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)、[image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/)、[paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)。

还有一些属性适用于某种格式，例如 [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) 或 [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)。

以下代码示例演示如何通过应用一些附加设置来创建第一个文档页面的预览：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
