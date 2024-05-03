---
title: 将文档保存为多页 TIFF Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 将文档保存为多页 TIFF
linktitle: 将文档保存为多页 TIFF
description: "将文档转换成光栅图像,在TIFF格式的例子中讨论。 要确定如何显示TIFF, 您需要指定额外的选项: 分辨率、 页面数、 图像二进制等 Java。 。 。 。"
type: docs
weight: 30
url: /zh/java/saving-a-document-as-a-multipage-tiff/
---

在使用文档时,您通常需要将文档转换为光栅图像文件 。 如果您要以可读和可打印但不能编辑的格式提交文档,这一点尤其重要。 例如,您可以使用文档首页的光栅图像作为预览. 这篇文章描述了如何使用TIFF格式的示例将文档转换成光栅图像--更流行的图像格式之一.

## 将 DOC 转换为多页 TIFF

内 Aspose.Words, 从 DOC 转换为 TIFF 可使用一行代码进行,只需将" 保存到" 路径和相关文件扩展到 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 方法。 那个 **Save** 方法自动生成 `SaveFormat` 从路径中指定的文件名扩展名。 以下示例说明如何将文档转换为TIFF格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## 渲染 TIFF 时指定附加选项

您通常需要指定额外的选项, 这会影响渲染结果 。 为此,使用 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 类,包含决定文档如何在图像上显示的属性。 请具体说明:

- 保存确定可用选项列表的格式([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/)页:1
- 决议[HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution)页:1
- 页数([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount)页:1
- 彩色和照明设置([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast)页:1
- 图像质量([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions)页:1
- 图像二进制法([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering)页:1
- 生成图像的像素格式([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat)页:1
- 怎么样? Windows 元文件处理方式 Aspose.Words (单位:千美元)[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer)页:1
- 您可以在 **ImageSaveOptions** 类

以下示例显示如何用配置的选项将 DOC 转换为 TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## TIFF 二进制阈值

通过设置 TIFF 图像可以保存为 1bpp b/w 格式 [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) 属性到格式1bppIndexed 像素格式类型,以及 [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) 属性为 Ccitt3 或 Ccitt4 。

对于图像分割, Aspose.Words 使用最简单的方法--阈值. 这种方法将灰度的TIFF图像转换为二进制图像,使用阈值. 因此,当文档需要转换为TIFF文件格式时,可以通过 [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) 属性。 此属性的默认值被设定为128,而此值越高,图像越暗.

以下示例显示如何在指定阈值下进行TIFF二进制:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

下面可以比较在各种阈值下进行TIFF二进制的图像:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
