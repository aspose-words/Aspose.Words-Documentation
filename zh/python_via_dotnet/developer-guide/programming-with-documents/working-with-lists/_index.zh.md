---
title: 使用 Python 中的列表
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用列表
linktitle: 使用列表
description: "使用 Python 在文档中创建、指定格式和重新启动列表。"
type: docs
weight: 200
url: /zh/python-net/working-with-lists/
---

Microsoft Word 文档中的列表是一组列表格式属性。列表可在文档中用于格式化、排列和强调文本。列表是组织文档中数据的好方法，它们使读者更容易理解要点。

每个列表最多可以有 9 个级别，并且为每个级别单独定义格式属性，例如数字样式、起始值、缩进、制表符位置等。

在 Aspose.Words 中，使用列表由 [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) 模块表示。但是，[List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) 对象始终属于 [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) 集合。

本主题介绍如何使用 Aspose.Words 以编程方式处理列表。

## 通过应用列表格式创建列表

Aspose.Words 允许通过应用列表格式轻松创建列表。 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 提供返回 [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) 对象的 [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) 属性。该对象有多种方法来开始和结束列表以及增加/减少缩进。 Microsoft Word 中有两种常见类型的列表：项目符号列表和编号列表。

- 要启动项目符号列表，请致电 [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)。
- 要启动编号列表，请致电 [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)。

项目符号或编号和格式将添加到当前段落以及使用 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 创建的所有其他段落，直到调用 [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) 来停止项目符号列表格式设置。

在 Word 文档中，列表最多可以包含九个级别。每个级别的列表格式指定使用什么项目符号或编号、左缩进、项目符号和文本之间的空格等。以下方法更改列表级别并应用新级别的格式属性：

- 要将当前段落的列表级别增加一级，请调用 [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- 要将当前段落的列表级别降低一级，请调用 [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

这些方法更改列表级别并应用新级别的格式设置属性。

{{% alert color="primary" %}}

您还可以使用 [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) 属性来获取或设置段落的列表级别。列表级别编号为 0 到 8。

{{% /alert %}}

下面的示例展示了如何构建多级列表。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## 指定列表级别的格式

创建列表时会自动创建列表级对象。使用 [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) 类的属性和方法来控制列表各个级别的格式。

## 每个部分的重新启动列表

您可以使用 [is_restart_at_each_section 属性](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) 属性重新启动每个部分的列表。请注意，仅 RTF、DOC 和 DOCX 文档格式支持此选项。仅当 OoxmlCompliance 高于 Ecma376 时，此选项才会写入 DOCX。

以下代码示例展示了如何创建列表并为每个部分重新启动它：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
