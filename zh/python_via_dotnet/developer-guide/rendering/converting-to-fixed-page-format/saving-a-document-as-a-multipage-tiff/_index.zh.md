---
title: 将文档另存为多页 TIFF
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 将文档另存为多页 TIFF
linktitle: 将文档另存为多页 TIFF
description: "使用 Python 将文档转换为多页 TIFF。要确定文档在图像上的显示方式，您需要指定其他选项：分辨率、页数、图像二值化等。"
type: docs
weight: 30
url: /zh/python-net/saving-a-document-as-a-multipage-tiff/
---

处理文档时，您经常需要将文档转换为光栅图像文件。如果您必须以可读和可打印但不可编辑的格式呈现文档，这一点尤其重要。例如，您可以使用文档第一页的光栅图像作为预览。本文以 TIFF 格式（一种更流行的图像格式）为例介绍如何将文档转换为光栅图像。

## 将 DOC 转换为多页 TIFF

在 Aspose.Words 中，只需将"保存到"路径和相关文件扩展名传递给 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 方法，即可使用一行代码执行从 DOC 到 TIFF 的转换。 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 方法自动从路径中指定的文件扩展名派生 [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)。以下示例演示如何将文档转换为 TIFF 格式：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## 渲染 TIFF 时指定附加选项

您经常需要指定其他选项，这会影响渲染结果。为此，请使用 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 类，该类包含确定文档如何在图像上显示的属性。您可以指定以下内容：

- 保存格式以确定可用选项列表（[save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/)）
- 分辨率（[horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/)、[vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/)）
- 页数 ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- 颜色和灯光设置（[paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/)、[image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/)、[image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/)、[image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/)）
- 图像质量（[jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/)、[scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/)、[tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)）
- 用于二值化图像的方法（[tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/)、[threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/)）
- 生成图像的像素格式 ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- 通过 Aspose.Words（[metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)、[use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/)）处理 Windows 图元文件
- 您可以在 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 类中看到的其他选项

以下示例显示如何使用配置的选项将 DOC 转换为 TIFF：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## TIFF 二值化阈值

通过将 [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) 属性设置为 [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) 像素格式类型，并将 [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) 属性设置为 [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) 或 [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4)，可以将 TIFF 图像保存为 1bpp 黑白格式。

对于图像分割，Aspose.Words 使用最简单的方法--阈值化。该方法使用阈值将灰度 TIFF 图像转换为二值图像。因此，当文档需要转换为TIFF文件格式时，可以通过[threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/)属性获取或设置TIFF二值化的阈值。该属性的默认值设置为 128，该值越高，图像越暗。

以下示例显示如何使用指定阈值执行 TIFF 二值化：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

您可以在下面比较在不同阈值下执行 TIFF 二值化的图像：

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="将文档保存为多页 tiff-aspose-words-net" style="width:800px"/>
