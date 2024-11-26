---
title: 在C++中使用Markdown特性
second_title: Aspose.Words对于C++
articleTitle: 使用Markdown功能
linktitle: 使用Markdown功能
description: "如何使用C++实现Markdown功能。 所有功能都表示为相应的样式或直接格式。"
type: docs
weight: 420
url: /zh/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

本主题讨论如何使用Aspose.Words实现Markdown功能。 Markdown是格式化纯文本的简单方法，可以轻松转换为HTML。 Aspose.Words支持以下Markdown功能:

- 标题
- 块引用
- 横向规则
- 大胆强调
- 斜体强调

Markdown功能实现大多遵循Aspose.WordsAPI中的`CommonMark`规范，所有功能都表示为相应的样式或直接格式。 这意味着

- 粗体和斜体表示为`Font.Bold`和`Font.Italic`。
- 标题是标题1-标题6样式的段落。
- 引号是样式名称中带有"Quote"的段落。
- HorizontalRule是具有HorizontalRule形状的段落。

{{% alert color="primary" %}}

将Markdown转换为Aspose.Words文档对象模型（DOM）有细微差别，如本文所述 [将Markdown转换为文档对象模型(DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown重点文件

本节演示如何生成一个markdown文档，重点如下:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

下面的代码片段可用于生成上述markdown文档。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown带标题的文件

本节演示如何生成标题如下的markdown文档:

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

下面的代码片段可用于生成上述markdown文档。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## 带有块引号的Markdown文档

本节演示如何生成带有块引号的markdown文档，如下所示:

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

下面的代码片段可用于生成上述markdown文档。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown具有水平规则的文档

本节演示如何生成具有水平规则的markdown文档，如下所示:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

下面的代码片段可用于生成上述markdown文档。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## 阅读Markdown文档

下面的代码片段向您展示了如何读取markdown文档。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## 指定Markdown保存选项

Aspose.WordsAPI提供[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)类以指定其他选项，同时将文档保存为Markdown格式。

下面的代码示例演示了如何指定各种Markdown保存选项。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## 如何在导出为Markdown时对齐表内的内容

Aspose.WordsAPI提供TableContentAlignment枚举，它定义对齐方向，以便在导出到Markdown文档时对齐表中的内容。 下面的代码示例演示如何在表内对齐内容。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
