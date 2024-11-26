---
title: 将文档保存为Java中的多页TIFF
second_title: Aspose.Words为Java
articleTitle: 将文档保存为多页TIFF
linktitle: 将文档保存为多页TIFF
description: "将文档转换为光栅图像，这在TIFF格式的示例中进行了讨论。 要确定TIFF的显示方式，您需要使用Java指定其他选项：分辨率，页数，图像二值化等。"
type: docs
weight: 30
url: /zh/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

处理文档时，您通常需要将文档转换为光栅图像文件。 如果您必须以可读和可打印但不可编辑的格式呈现文档，这一点尤其重要。 例如，您可以使用文档第一页的光栅图像作为预览。 本文介绍了如何使用TIFF格式的示例将文档转换为光栅图像-一种更流行的图像格式。

## 将DOC转换为多页TIFF

在Aspose.Words中，只需将"保存到"路径和相关文件扩展名传递给[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions)方法，即可用一行代码执行从DOC到TIFF的转换。 **Save**方法自动从路径中指定的文件扩展名派生`SaveFormat`。 下面的示例演示如何将文档转换为TIFF格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## 在呈现TIFF时指定其他选项

您经常需要指定其他选项，这些选项会影响渲染结果。 为此，请使用[ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/)类，该类包含确定文档在图像上显示方式的属性。 您可以指定以下内容:

- 保存格式以确定可用选项列表([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- 决议案([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- 页数([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/),[PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- 颜色和照明设置([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- 图像质量([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- 用于二值化图像的方法([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod),[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- 生成图像的像素格式([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows元文件由Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- 您可以在**ImageSaveOptions**类中看到的其他选项

下面的示例演示如何使用配置的选项将DOC转换为TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## TIFF二值化的阈值

通过将[PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat)属性设置为Format1bppIndexed像素格式类型，将[TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression)属性设置为Ccitt3或Ccitt4，可以以1bpp b/w格式保存TIFF图像。

对于图像分割，Aspose.Words使用最简单的方法-阈值化。 该方法使用阈值将灰度TIFF图像转换为二值图像。 因此，当文档需要转换为TIFF文件格式时，可以通过[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering)属性获取或设置TIFF二值化的阈值。 此属性的默认值设置为128，此值越高，图像越暗。

下面的示例演示如何使用指定的阈值执行TIFF二值化:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

下面您可以比较在不同阈值下执行TIFF二值化的图像:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
