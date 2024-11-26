---
title: 与 Markdown 特点 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与 Markdown 特征
linktitle: 与 Markdown 特征
description: "如何执行 Markdown 使用 Java。 。 。 所有特性都作为相应的样式或直接格式化来表示."
type: docs
weight: 420
url: /zh/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

讨论如何执行 Markdown 使用 Aspose.Words。 。 。 。 Markdown 是一种简单的格式化纯文本的方法,可以很容易地转换成HTML。 Aspose.Words 支持以下内容: Markdown 特性:

- 标题
- 方块
- 横向规则
- 粗体强调
- 斜体强调

那个 Markdown 特性执行主要遵循 `CommonMark` 规格 Aspose.Words API 和所有特性都以相应的样式或直接格式化来表示。 也就是说

- 粗体和斜体代表为: `Font.Bold` 和 `Font.Italic`。 。 。 。
- 标题是带有标题1的段落 - 标题6的风格
- 引文为样式名称中带有"引文"的段落
- 水平规则是带有一段 `HorizontalRule` 形状。

{{% alert color="primary" %}}

翻译有细微差别 Markdown 页:1 Aspose.Words Document Object Model (单位:千美元)DOM)),在文章中描述. [翻译 Markdown 改为 Document Object Model (单位:千美元)DOM页:1](/words/zh/java/translate-markdown-to-document-object-model/)。 。 。 。

{{% /alert %}}


## Markdown 带有 Emphase 的文档

本节介绍如何制作 markdown 带有以下重点的文档:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

以下代码片段可用于生成上面给出的 markdown 文档。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown 有标题的文档

本节介绍如何制作 markdown 标题如下:

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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown 带有块引号的文档

本节介绍如何制作 markdown 文档中包含块引用如下:

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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown 带有水平规则的文档

本节介绍如何制作 markdown 带有水平的文档 规则如下:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

以下代码片段可用于生成上面给出的 markdown 文档。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## 读取a Markdown 文档

以下代码片段显示您如何读取 markdown 文档。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## 指定 Markdown 保存选项

Aspose.Words API 提供 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 分类以指定附加选项,同时将文档保存到 Markdown 格式。

以下代码示例演示了如何指定各种 Markdown 保存选项。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## 导出时如何调整表格内的内容 Markdown

Aspose.Words API 提供 [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) 列出定义对齐方向,以便在导出到 Markdown 文档。 以下代码示例说明如何对齐表中的内容.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
