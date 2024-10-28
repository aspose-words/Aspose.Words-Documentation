---
title: 在C++中保存为固定页面格式
second_title: Aspose.Words对于C++
articleTitle: 将文档保存为固定页面格式
linktitle: 将文档保存为固定页面格式
description: "如何将文档保存为固定页面格式– PDF, XPS, HTML, XAML, PostScript, 和PCL？ 请参阅说明。"
type: docs
weight: 15
url: /zh/cpp/saving-a-document-to-fixed-page-format/
---

在构建页面布局并计算对象的几何形状及其在页面上的位置后，文档可以以Aspose.Words支持的固定页面格式保存。

将文档保存为固定页面格式时，可以使用所有这些格式通用的呈现选项。 他们允许控制:

- 输出文档中包含的页数和范围([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- 逐页文档保存的进度([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/))。
- 用于数字渲染([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/))的一组字符。
- 元文件播放器([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/))。 有关详细信息，请参阅 [处理Windows元文件](/words/cpp/handling-windows-metafiles/) 文章。
- 用于重新压缩JPEG图像的质量速率，其值可能略有不同，具体取决于所选的保存格式([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/))。
- 优化Aspose.Words输出([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/))中的矢量图形。
- 保存为Tiff，Png，Bmp，Jpeg，Emf格式时的图形选项([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- 以灰度([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/))保存文档。
- 在DrawingML形状和回退形状([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/))的呈现之间切换。
- 在DML效果渲染模式([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/))之间切换。

下面的示例演示如何使用`Save`方法和呈现选项将文档保存为JPEG格式:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
