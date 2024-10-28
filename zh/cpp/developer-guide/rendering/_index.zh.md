---
title: C++中的渲染
second_title: Aspose.Words对于C++
articleTitle: 渲染图
linktitle: 渲染图
description: "使用方法 Aspose.Words对于C++ 呈现功能将流布局文档格式化为页面，并将此类文档或所选页面转换为其他文档(PDF, HTML, XPS, 等。）或图像(TIFF, PNG, SVG, 等。）查看、进一步转换或打印的格式。"
type: docs
weight: 20
url: /zh/cpp/rendering/
---

我们在Aspose.Words中使用术语"呈现"来描述将文档转换为文件格式或分页或具有页面概念的介质的过程。 我们正在谈论将文档呈现为页面。 下图显示了Aspose.Words中的渲染。

![rendering-aspose-words-cpp](rendering-1.png)

Aspose.Words的呈现功能使您能够执行以下操作:

- 将文档或选定页面转换为PDF, XPS, HTML, XAML, PostScript, 和PCL格式。
- 将文档转换为多页TIFF文档，或将任何页面转换为光栅图像并将其保存为BMP、PNG或JPEG。
- 将文档页面转换为可缩放矢量图形图像（SVG），或转换为矢量图像并将其保存为EMF。
- 在`Graphics`对象上以特定大小或比例渲染（绘制）文档页面，以创建文档页面的缩略图，全尺寸或缩放图像。
- 将[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)对象与文档分开呈现为任何图像格式或`Graphics`对象。
- 以Windows形式显示文档的任何页面。

## 流布局或固定布局文档格式{#flow-layout-or-fixed-layout-document-formats}

大多数可以加载到Aspose.Words中的文档格式被称为"流布局"格式。 流布局格式包括DOC, OOXML, RTF, ODT, 和HTML。 这些格式的文档由各种元素组成，例如段落，表格，页眉，页脚，图像，字段及其格式，例如粗体，斜体，字体，大小。 但是，流布局格式不包含有关每个特定段落或字符在页面上显示的位置的信息。

相反，"固定布局"（也称为"固定页面"）格式（如PDF和XPS）包含所有文档元素的精确定位信息。 这些格式在文档布局成页面后保留其原始外观，从而提供更高的显示信息准确性。

## 页面布局引擎{#page-layout-engine}

Aspose.Words实现自己的页面布局引擎，将流布局文档格式化为页面。 Aspose.Words实现了许多呈现器，它们要么生成固定布局的文档（如PDF或XPS），要么将页面输出到另一种介质（如打印或绘图）中。 请注意，导出也可以为HTML和XAML分页。 这意味着文档可以保存为常规HTML或XAML（流布局格式），或者保存为具有元素绝对位置的"分页"HTML和XAML。

使用Aspose.Words页面布局引擎最重要的优点是它模仿了Microsoft Word的页面布局引擎的工作方式。 因此，当您将Microsoft Word文档转换为PDF，XPS或使用Aspose.Words打印它时，输出将几乎完全显示为Microsoft Word。 请注意，Aspose.Words不使用Microsoft Word。
