---
title: 在C++中将文档保存为多页TIFF
second_title: Aspose.Words对于C++
articleTitle: 将文档保存为多页TIFF
linktitle: 将文档保存为多页TIFF
description: "使用C++将文档转换为多页TIFF。 要确定文档在图像上的显示方式，您需要指定其他选项：分辨率，页数，图像二值化等。"
type: docs
weight: 40
url: /zh/cpp/saving-a-document-as-a-multipage-tiff/
---

处理文档时，通常需要将文档转换为光栅图像文件。 如果您必须以可读和可打印但不可编辑的格式呈现文档，这一点尤其重要。 例如，您可以使用文档第一页的光栅图像作为预览。 本文介绍了如何使用TIFF格式的示例将文档转换为光栅图像-一种更流行的图像格式。

## 将DOC转换为多页TIFF

在Aspose.Words中，只需将"保存到"路径和相关文件扩展名传递给[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)方法，即可用一行代码执行从DOC到TIFF的转换。 **Save**方法自动从路径中指定的文件扩展名派生`SaveFormat`。 下面的示例演示如何将文档转换为TIFF格式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## 在呈现TIFF时指定其他选项

您经常需要指定其他选项，这些选项会影响渲染结果。 为此，请使用[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)类，该类包含确定文档在图像上显示方式的属性。 您可以指定以下内容:

- 保存格式以确定可用选项列表([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- 决议案([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- 页数([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/),[PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- 颜色和照明设置([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- 图像质量([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- 用于二值化图像的方法([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/),[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- 生成图像的像素格式([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows元文件由Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- 您可以在**ImageSaveOptions**类中看到的其他选项

下面的示例演示如何使用配置的选项将DOC转换为TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## TIFF二值化的阈值

通过将[PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/)属性设置为format1bppIndexed像素格式类型，并将`TiffCompression`属性设置为Ccitt3或Ccitt4，可以将TIFF图像保存为1bpp b/w格式。

对于图像分割，Aspose.Words使用最简单的方法-阈值化。 该方法使用阈值将灰度TIFF图像转换为二值图像。 因此，当文档需要转换为TIFF文件格式时，可以通过[ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/)属性获取或设置TIFF二值化的阈值。 此属性的默认值设置为128，此值越高，图像越暗。

下面的示例演示如何使用指定的阈值执行TIFF二值化:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

下面您可以比较在不同阈值下执行TIFF二值化的图像:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
