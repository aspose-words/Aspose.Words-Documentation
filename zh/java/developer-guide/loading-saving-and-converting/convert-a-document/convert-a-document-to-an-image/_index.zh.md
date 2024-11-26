---
title: 将文档转换为Java中的图像
second_title: Aspose.Words为Java
articleTitle: 将文档转换为图像
linktitle: 将文档转换为图像
type: docs
description: "将文档转换为图像格式（JPG，PNG等）。 创建文档预览或创建文档扫描以使用Java发送发票。"
weight: 35
url: /zh/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

有时需要获取图像而不是其他格式的文档，例如DOCX或PDF。 例如，您需要将任何文档页面的预览添加到您的网站或应用程序，或创建文档的"扫描"以发送发票。 这是您可能需要将任何[支持的加载格式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)中的文档转换为任何[支持的保存格式](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)中的图像的时候。

## 转换为图像格式

与已经描述的所有转换示例一样，您需要以任何支持的格式创建新文档或加载现有文档，进行必要的更改，并以任何可用的图像格式保存，例如JPEG，PNG或BMP。

下面的代码示例演示如何将DOCX转换为JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## 转换为图像时指定保存选项

Aspose.Words为您提供[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)类，它可以更好地控制如何以各种图像格式保存文档。 此类的某些属性继承或重载基类的属性，如[FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)或[SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/)，但也有特定于保存图像的选项。

可以使用[PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet)属性指定要转换为图像格式的页面。 例如，如果您只需要第一个或特定页面的预览，则可以应用它。

还可以使用以下属性控制输出图像质量和像素格式– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), 以及设置图像颜色设置，使用以下属性– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

还有一些适用于特定格式的属性，例如[JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality)或[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)。

下面的代码示例演示如何通过应用一些其他设置来创建第一个文档页面的预览:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
