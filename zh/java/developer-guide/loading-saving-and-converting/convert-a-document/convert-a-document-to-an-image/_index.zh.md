---
title: 将文档转换成图像 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 将文档转换成图像
linktitle: 将文档转换成图像
type: docs
description: "将文档转换为图像格式(JPG,PNG等). 创建文档预览或创建文档扫描以使用 Java。 。 。 。"
weight: 35
url: /zh/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

有时它需要用DOCX或PDF等其它格式的文档来获取一个图像. 例如,您需要在您的网站或应用程序中添加任何文档页面的预览,或者创建文档的"扫描"以发送发票. 这是您可能需要转换任意一个文档的时候 。 [支持的负载格式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) 在任何图像中 [支持的保存格式](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)。 。 。 。

## 转换为图像格式

与所有已描述的转换示例一样,您需要创建一个新文档或以任何支持的格式加载已有的文档,进行必要的修改,并以任何可用的图像格式保存,例如JPEG,PNG,或BMP.

以下代码示例显示如何将 DOCX 转换为 JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## 指定转换成图像时的保存选项

Aspose.Words 为你提供 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) class,它提供了对文档如何以各种图像格式保存的更多控制。 此类的一些属性继承或超载的基类属性, 例如 [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) 或 [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), 但也有特定保存图像的选项。

可以使用 [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) 属性。 例如,如果您只需要第一页或确定页的预览,就可以应用它。

也可以使用以下属性控制输出图像质量和像素格式 - [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), 并使用以下属性设置图像颜色设置 - [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor)。 。 。 。

也有一些属性适用于某种格式,例如, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) 或 [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)。 。 。 。

以下代码示例显示如何通过应用一些附加设置来创建第一个文档页面的预览:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
