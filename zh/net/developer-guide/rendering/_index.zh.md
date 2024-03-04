---
title: C# 中的渲染
second_title: .NET 格式的 Aspose.Words
articleTitle: 渲染
linktitle: 渲染
description: "使用 Aspose.Words 进行 .NET 渲染功能将流程布局文档格式化为页面，并将此类文档或选定页面转换为其他文档（PDF、HTML、XPS 等）或图像（TIFF、PNG、SVG 等）格式，以供使用 C# 查看、进一步转换或打印。"
type: docs
weight: 20
url: /zh/net/rendering/
---

我们在 Aspose.Words 中使用术语"渲染"来描述将文档转换为文件格式或分页或具有页面概念的介质的过程。我们正在讨论将文档呈现为页面。下图展示了 Aspose.Words 中的渲染。

![rendering_aspose-words](/words/net/rendering/rendering-1.png)

Aspose.Words 的渲染功能使您能够执行以下操作：

- 将文档或选定页面转换为 PDF、XPS、HTML、XAML、PostScript 和 PCL 格式。
- 将文档转换为多页 TIFF 文档，或将任何页面转换为光栅图像并将其另存为 BMP、PNG 或 JPEG。
- 将文档页面转换为可缩放矢量图形图像 (SVG)，或转换为矢量图像并将其另存为 EMF。
- 在 .NET 图形对象上以特定大小或比例渲染（绘制）文档页面，以创建文档页面的缩略图、全尺寸或缩放图像。
- 将 [Shape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/) 对象与文档分开渲染为任何图像格式或 .NET 图形对象。
- 以 Windows 表单显示文档的任何页面。
- 使用标准 .NET 打印基础设施打印或预览文档页面。

## 流动布局或固定布局文档格式 {#flow-layout-or-fixed-layout-document-formats}

大多数可以加载到 Aspose.Words 中的文档格式被称为"流布局"格式。流程布局格式包括 DOC、OOXML、RTF、ODT 和 HTML。这些格式的文档由各种元素组成，例如段落、表格、页眉、页脚、图像、字段及其格式（例如粗体、斜体、字体、大小）。但是，流程布局格式不包含有关每个特定段落或字符在页面上显示的位置的信息。

相比之下，"固定布局"（也称为"固定页面"）格式（例如 PDF 和 XPS）包含所有文档元素的精确定位信息。这些格式在将文档布局到页面后保留了文档的原始外观，从而提供了更高的显示信息准确性。

## 页面布局引擎 {#page-layout-engine}

Aspose.Words 实现了自己的页面布局引擎，可将流程布局文档格式化为页面。 Aspose.Words 实现了许多渲染器，这些渲染器要么生成固定布局文档（例如 PDF 或 XPS），要么将页面输出到另一种介质（例如打印或绘图）。请注意，导出也可以针对 HTML 和 XAML 进行分页。这意味着文档可以保存为常规 HTML 或 XAML（流布局格式），或者保存为具有元素绝对位置的"分页"HTML 和 XAML。

使用 Aspose.Words 页面布局引擎最重要的优点是它模仿了 Microsoft Word 页面布局引擎的工作方式。因此，当您将 Microsoft Word 文档转换为 PDF、XPS 或使用 Aspose.Words 打印时，输出几乎与 Microsoft Word 完成的一样。请注意，Aspose.Words 不使用 Microsoft Word。
