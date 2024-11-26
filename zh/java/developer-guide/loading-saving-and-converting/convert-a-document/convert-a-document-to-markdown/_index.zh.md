---
title: 将文档转换为Java中的Markdown
second_title: Aspose.Words为Java
articleTitle: 将文档转换为Markdown
linktitle: 将文档转换为Markdown
type: docs
description: "使用Java将任何支持的加载格式的文档转换为Markdown，反之亦然。"
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /zh/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown是一种用于标记文本的流行格式，它正在进一步转换为HTML, PDF, DOCX, 或其他格式。 许多开发人员选择这种格式来编写文档，准备在博客上发布的文章，描述项目等等。

Markdown是如此受欢迎，因为它很容易与这种格式的工作，以及它可以很简单地转换为其他格式。 出于这个原因，Aspose.Words提供了将[任何支持的加载格式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)中的文档转换为Markdown的能力，反之亦然-Aspose.Words也支持最流行的[保存格式](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)。

现在正在积极开发使用Markdown格式的功能，为您提供更多方便和舒适的文档工作机会。

## 将文档转换为Markdown

要将文档转换为Markdown，您只需以任何支持的格式加载文档或以编程方式创建新文档。 然后，您需要将文档保存为Markdown格式。

下面的代码示例演示如何将DOCX转换为Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## 转换为Markdown时指定保存选项

Aspose.Words提供在将文档保存为Markdown格式时使用[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)类处理高级选项的功能。 除了其他继承或重载属性外，还添加了一些特定于Markdown格式的属性。 例如，[TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/)属性用于控制表中内容的对齐方式，或[ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback)和[ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder)用于控制将文档转换为Markdown格式时如何保存图像。

## 支持的Markdown功能

Aspose.Words当前支持以下Markdown功能，这些功能主要遵循Aspose.WordsAPI中的`CommonMark`规范，并表示为适当的样式或直接格式:

* 标题是具有Heading 1–Heading 6样式的段落
* Blockquotes是在样式名称中带有"Quote"的段落
* IndentedCode是样式名称中带有"IndentedCode"的段落
* FencedCode是样式名称中带有"FencedCode"的段落
* InlineCode以`Font`样式名称中的"InlineCode"运行
* 水平规则是具有`HorizontalRule`形状的段落
* 大胆强调
* 斜体强调
* StrikeThrough格式
* 列表是编号或项目符号段落
* 表用`Table`类表示
* 链接表示为`FieldHyperlink`类

下面的示例演示如何创建具有某些样式的文档并将其保存为Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

此代码示例的结果如下所示。

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## 有用的提示

有几个细微差别和有趣的案例，了解了哪些可以更灵活，更方便地使用Markdown文件。 例如，有使用的能力:

* SetextHeading允许您在Markdown中创建多行标题，而Markdown中的常规标题只能是单行。 SetextHeading基于"标题N"样式，其级别只能为1或2。 如果"标题N"中的N大于或等于2，则相应的SetextHeading基于"Heading 2"，否则基于"Heading 1"。
* 第一级项目符号列表的不同标记（"-"，"+"或"*"，默认标记为"-"。）和有序列表的不同类型的编号（"."或")"，默认标记为"."）。
