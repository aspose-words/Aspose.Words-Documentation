---
title: 在C++中将文档转换为图像
second_title: Aspose.Words对于C++
articleTitle: 将文档转换为图像
linktitle: 将文档转换为图像
type: docs
description: "将文档转换为图像格式（JPG，PNG等）。 创建文档预览或创建文档扫描以发送发票。"
weight: 43
url: /zh/cpp/convert-a-document-to-an-image/
---

有时需要获取图像而不是其他格式的文档，例如DOCX或PDF。 例如，您需要将任何文档页面的预览添加到您的网站或应用程序，或创建文档的"扫描"以发送发票。 这是您可能需要将任何[supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)中的文档转换为任何[supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)中的图像的时候。

## 转换为图像格式

与已经描述的所有转换示例一样，您需要以任何支持的格式创建新文档或加载现有文档，进行必要的更改，并以任何可用的图像格式保存，例如JPEG，PNG或BMP。

下面的代码示例演示如何将DOCX转换为JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## 转换为图像时指定保存选项

Aspose.Words为您提供[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)类，它可以更好地控制如何以各种图像格式保存文档。 此类的某些属性继承或重载基类的属性，如[FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/)或[SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/)，但也有特定于保存图像的选项。

可以使用[PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/)属性指定要转换为图像格式的页面。 例如，如果您只需要第一个或特定页面的预览，则可以应用它。

还可以使用以下属性控制输出图像质量和像素格式– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), 以及设置图像颜色设置，使用以下属性– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

还有一些适用于特定格式的属性，例如[JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/)或[TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/)。

下面的代码示例演示如何通过应用一些其他设置来创建第一个文档页面的预览:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
