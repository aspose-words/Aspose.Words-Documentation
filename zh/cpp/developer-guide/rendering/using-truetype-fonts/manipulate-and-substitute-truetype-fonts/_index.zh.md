---
title: 在C++中操作和替换TrueType字体
second_title: Aspose.Words对于C++
articleTitle: 操作和替换TrueType字体
linktitle: 操作和替换TrueType字体
description: "Aspose.Words对于C++ 可以将正确的TrueType字体嵌入到生成的文档中，以确保其准确显示。 如果字体或特定字符不可用，Aspose.Words搜索合适的字体替换或使用字体回退机制。"
type: docs
weight: 10
url: /zh/cpp/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words需要TrueType字体用于各种任务，包括将文档呈现为固定页面格式，例如PDF或XPS。 当Aspose.Words渲染文档时，它需要在生成的文档中执行TrueType字体的嵌入和子集嵌入，这是文档生成过程中的正常做法，包括流行的PDF或XPS格式。 这可确保文档对任何查看器都显示相同。 此外，XPS规范要求字体始终嵌入到文档中。

要确保Aspose.Words准确测量字符并成功嵌入相关字体，必须满足以下条件:

1. Aspose.Words应该能够在系统上查找和访问TrueType字体文件。
1. 必须有足够的TrueType字体可用于Aspose.Words，最好与文档中使用的字体系列名称相同。

请注意，文档中的字体表示一个实体，如family name，style，size，color，与`TrueType`font（物理字体）实体不同。 Aspose.Words在处理的某个阶段将文档中的字体解析为物理字体。 这可以实现某些任务，最常见的是在布局构建和嵌入/子集到固定页面格式期间计算文本大小的任务。 许多其他不太受欢迎的任务，例如加载HTML时的字体解析和替换或嵌入/子集到某些流格式，也同样启用。

## Aspose.Words查找字体的位置

Aspose.Words尝试自动在文件系统上查找TrueType字体。 通常，您可以依靠Aspose.Words的默认行为来查找`TrueType`字体，但有时您需要指定自己的包含TrueType字体的文件夹。 该 [指定TrueType字体位置](/words/cpp/specify-truetype-fonts-location/) 主题描述Aspose.Words查找字体的方式和位置，以及如何指定自己的字体位置。

## Aspose.Words和Microsoft Word中字体格式处理的差异

Aspose.Words和Microsoft Word中字体格式的处理存在一些差异，如下表所示:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType字体和带有TrueType轮廓的OpenType字体 | 支持。 | 支持。 |
| OpenType字体与PostScript轮廓 | 支持大多数情况。 不支持嵌入到固定页面格式，如PDF和XPS。 文本替换为位图图像。 | 支持大多数情况，包括嵌入到固定页面格式。 |
| OpenType字体变化 | 仅支持命名实例。 不支持连续变化。 | 支持唯一的默认实例。 不支持命名实例和连续变体。 |
| Type1字体 | 支持2013年之前的Windows版本和MacOS版本。 从2013年开始，对Windows版本的支持将被删除。 | 不支持。 |


