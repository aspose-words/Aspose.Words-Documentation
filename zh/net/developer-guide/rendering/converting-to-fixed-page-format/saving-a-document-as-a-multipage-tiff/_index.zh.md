---
title: 将文档另存为 C# 中的多页 TIFF
second_title: .NET 格式的 Aspose.Words
articleTitle: 将文档另存为多页 TIFF
linktitle: 将文档另存为多页 TIFF
description: "使用 C# 将文档转换为多页 TIFF。要确定文档在图像上的显示方式，您需要指定其他选项：分辨率、页数、图像二值化等。"
type: docs
weight: 30
url: /zh/net/saving-a-document-as-a-multipage-tiff/
---

处理文档时，您经常需要将文档转换为光栅图像文件。如果您必须以可读和可打印但不可编辑的格式呈现文档，这一点尤其重要。例如，您可以使用文档第一页的光栅图像作为预览。本文以 TIFF 格式（一种更流行的图像格式）为例介绍如何将文档转换为光栅图像。

## 将 DOC 转换为多页 TIFF

在 Aspose.Words 中，只需将"保存到"路径和相关文件扩展名传递给 [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) 方法，即可使用一行代码执行从 DOC 到 TIFF 的转换。 **Save** 方法自动从路径中指定的文件扩展名派生 `SaveFormat`。以下示例演示如何将文档转换为 TIFF 格式：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## 渲染 TIFF 时指定附加选项

您经常需要指定其他选项，这会影响渲染结果。为此，请使用 [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) 类，该类包含确定文档如何在图像上显示的属性。您可以指定以下内容：

- 保存格式以确定可用选项列表（[SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat)）
- 分辨率（[HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/)、[VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/)、[Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution)）
- 页数（[PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)、[PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/)）
- 颜色和灯光设置（[PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/)、[ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/)、[ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/)、[ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast)）
- 图像质量（[JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/)、[Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/)、[TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/)、[GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions)）
- 用于二值化图像的方法（[TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/)、[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering)）
- 生成图像的像素格式 ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- 通过 Aspose.Words（[MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/)、[UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer)）处理 Windows 图元文件
- 您可以在 **ImageSaveOptions** 类中看到的其他选项

以下示例显示如何使用配置的选项将 DOC 转换为 TIFF：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## TIFF 二值化阈值

通过将 [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) 属性设置为 Format1bppIndexed 像素格式类型，并将 [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) 属性设置为 Ccitt3 或 Ccitt4，可以将 TIFF 图像保存为 1bpp 黑白格式。

对于图像分割，Aspose.Words 使用最简单的方法--阈值化。该方法使用阈值将灰度 TIFF 图像转换为二值图像。因此，当文档需要转换为TIFF文件格式时，可以通过[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/)属性获取或设置TIFF二值化的阈值。该属性的默认值设置为 128，该值越高，图像越暗。

以下示例显示如何使用指定阈值执行 TIFF 二值化：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

您可以在下面比较在不同阈值下执行 TIFF 二值化的图像：

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="将文档保存为多页 tiff-aspose-words-net" style="width:800px"/>
