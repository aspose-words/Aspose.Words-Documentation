---
title: 使用 C# 中的 Markdown 功能
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用 Markdown 功能
linktitle: 使用 Markdown 功能
description: "如何使用 C# 实现 Markdown 功能。所有功能都表示为相应的样式或直接格式。"
type: docs
weight: 420
url: /zh/net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

本主题讨论如何使用 Aspose.Words 实现 Markdown 功能。 Markdown 是一种格式化纯文本的简单方法，可以轻松转换为 HTML。 Aspose.Words 支持以下 Markdown 功能：

- 标题
- 块引用
- 水平规则
- 大胆强调
- 斜体强调

Markdown特征实现大多遵循Aspose.Words API中的`CommonMark`规范，所有特征都表示为相应的样式或直接格式化。意思就是

- 粗体和斜体表示为 `Font.Bold` 和 `Font.Italic`。
- 标题是具有标题 1 - 标题 6 样式的段落。
- 引用是样式名称中带有"引用"的段落。
- HorizontalRule 是具有 HorizontalRule 形状的段落。

{{% alert color="primary" %}}

将 Markdown 转换为 Aspose.Words Document Object Model (DOM) 存在细微差别，如 [将 Markdown 翻译为 Document Object Model (DOM)](/words/zh/net/translate-markdown-to-document-object-model/) 文章中所述。

{{% /alert %}}

## 带强调的 Markdown 文档

本节向您演示如何生成 markdown 文档，重点如下：

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

以下代码片段可用于生成上面给出的 markdown 文档。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## 带标题的 Markdown 文档

本节向您演示如何生成带有以下标题的 markdown 文档：

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

以下代码片段可用于生成上面给出的 markdown 文档。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## 带有大引号的 Markdown 文档

本节向您演示如何生成带有块引号的 markdown 文档，如下所示：

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

以下代码片段可用于生成上面给出的 markdown 文档。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## 带有水平线的 Markdown 文档

本节向您演示如何使用水平规则生成 markdown 文档，如下所示：

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

以下代码片段可用于生成上面给出的 markdown 文档。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## 阅读 Markdown 文档

以下代码片段向您展示了如何阅读 markdown 文档。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## 指定 Markdown 保存选项

Aspose.Words API 提供 [MarkdownSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/markdownsaveoptions/) 类来在将文档保存为 Markdown 格式时指定附加选项。

以下代码示例演示了如何指定各种 Markdown 保存选项。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## 导出到 Markdown 时如何对齐表格内的内容

Aspose.Words API 提供 [TableContentAlignment](https://reference.aspose.com/words/zh/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) 枚举，它定义对齐方向，以便在导出到 Markdown 文档时对齐表格中的内容。以下代码示例演示如何对齐表格内的内容。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
