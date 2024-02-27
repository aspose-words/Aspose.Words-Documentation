---
title: 使用 C# 中的列表
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用列表
linktitle: 使用列表
description: "Aspose.Words for .NET 中的编号格式功能简介。"
type: docs
weight: 200
url: /zh/net/working-with-lists/
---

Microsoft Word 文档中的列表是一组段落格式属性。列表可在文档中用于构建、排列和突出显示文本。列表是组织文档中数据的好方法，可以让读者轻松吸收和理解要点。

每个列表最多可以有 9 个级别，并且为每个级别单独定义格式属性，例如数字样式、起始值、缩进、制表符位置等。

在 Aspose.Words 中，使用列表由 [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) 命名空间表示。但是，[List](https://reference.aspose.com/words/net/aspose.words.lists/list/) 对象始终属于 [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/)。

本文介绍使用 Aspose.Words 以编程方式处理列表。

## 通过应用列表格式创建列表

Aspose.Words 允许通过应用列表格式轻松创建列表。 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 提供返回 **ListFormat** 对象的 [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) 属性。该对象有多种方法来开始和结束列表以及增加/减少缩进。 Microsoft Word 中有两种常见类型的列表：项目符号列表和编号列表：

- 要启动项目符号列表，请致电 [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- 要启动编号列表，请致电 [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

项目符号或编号和格式将添加到当前段落以及使用 **DocumentBuilder** 创建的所有其他段落，直到调用 [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) 来停止项目符号列表格式设置。

在 Word 文档中，列表最多可以包含九个级别。每个级别的列表格式指定使用什么项目符号或编号、左缩进、项目符号和文本之间的空格等。以下方法更改列表级别并应用新级别的格式属性：

- 要将当前段落的列表级别增加一级，请调用 [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- 要将当前段落的列表级别降低一级，请调用 [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

您还可以使用 [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) 属性来获取或设置段落的列表级别。

{{% alert color="primary" %}}

列表级别编号为 0 到 8。

{{% /alert %}}

以下代码示例展示了如何构建多级列表：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## 指定列表级别的格式

创建列表时会自动创建列表级对象。使用 [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) 类的属性和方法来控制列表各个级别的格式。

## 每个部分的重新启动列表

您可以使用 [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) 属性重新启动每个部分的列表。请注意，仅 RTF、DOC 和 DOCX 文档格式支持此选项。仅当 OoxmlCompliance 高于 Ecma376 时，此选项才会写入 DOCX。

以下代码示例展示了如何创建列表并为每个部分重新启动它：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
