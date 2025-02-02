---
title: 将文档转换为 Markdown
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 将文档转换为 Markdown
linktitle: 将文档转换为 Markdown
type: docs
description: "使用 Python 将任何支持的加载格式的文档转换为 Markdown，反之亦然。"
keywords: how to convert a document to markdown python
weight: 40
url: /zh/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown 是一种流行的格式，用于标记文本并进一步转换为 HTML、PDF、DOCX 或其他格式。许多开发人员选择这种格式来编写文档、准备在博客上发布的文章、描述项目等。

Markdown 之所以如此受欢迎，是因为它很容易使用这种格式，并且可以非常简单地转换为其他格式。因此，Aspose.Words 提供了将 [任何支持的加载格式](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) 文档转换为 Markdown 的能力，反之亦然 - Aspose.Words 还支持最流行的 [保存格式](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)。

现在，我们正在积极开发使用 Markdown 格式的功能，以便为您提供更多方便、舒适地处理文档的机会。

## 转换文档

要将文档转换为 Markdown，您只需加载任何受支持格式的文档或以编程方式创建一个新文档。然后您需要将文档保存为 Markdown 格式。

以下代码示例展示了如何将 DOCX 转换为 Markdown：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

将文档导出为 Markdown 格式时，您还可以指定要在其中保存图像的物理文件夹。默认情况下，Aspose.Words 将图像保存在保存文档文件的同一文件夹中，但您可以使用 [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) 属性覆盖此行为。

如果将文档保存到流并且 Aspose.Words 没有用于保存图像的文件夹，则通过 [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) 指定文件夹也很有用。

如果指定的[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/)不存在，则会自动创建。

以下代码示例演示如何在将文档保存到流时指定图像文件夹：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## 转换为 Markdown 时指定保存选项

Aspose.Words 提供了在将文档保存为 Markdown 格式时使用 [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) 类来处理高级选项的功能。大多数属性都继承或重载其他 [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) 类中已存在的属性。除此之外，还添加了许多特定于 Markdown 格式的属性。例如，[table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) 属性用于控制表中内容的对齐方式，或者 [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) 属性用于控制将文档转换为 Markdown 格式时图像的保存位置。

## 支持的 Markdown 功能

Aspose.Words 目前支持以下 Markdown 功能，这些功能大多遵循 Aspose.Words API 中的 `CommonMark` 规范，并表示为适当的样式或直接格式：

* 标题是标题 1 – 标题 6 样式的段落
* 块引用是样式名称中带有"Quote"的段落
* IndentedCode 是样式名称中带有"IndentedCode"的段落
* FencedCode 是样式名称中带有"FencedCode"的段落
* InlineCode 以 `Font` 样式名称中的"InlineCode"运行
* 水平线是 `HorizontalRule` 形状的段落
* 粗体强调
* 斜体强调
* 删除线格式
* 列表是编号或带项目符号的段落
* 表用 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 类表示
* 链接表示为 [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) 类

以下示例展示了如何创建具有某些样式的文档并将其保存为 Markdown：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

该代码示例的结果如下所示。

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## 有用的提示

有一些细微差别和有趣的案例，了解它们后您可以更灵活、更方便地处理 Markdown 文件。例如，可以使用：

* SetextHeading 允许您在 Markdown 中创建多行标题，而 Markdown 中的常规标题只能是单行。 SetextHeading 基于"标题 N"样式，其级别只能为 1 或 2。如果"标题 N"中的 N 大于等于 2，则对应的 SetextHeading 基于"标题 2"，否则基于"标题 1"。
* 第一级项目符号列表的不同标记（"-"、"+"或"*"，默认标记为"-"。）以及有序列表的不同类型编号（"."或"）"，默认标记为"."）。
