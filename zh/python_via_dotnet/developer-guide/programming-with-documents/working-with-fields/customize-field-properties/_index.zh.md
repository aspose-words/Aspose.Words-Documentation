---
title: 自定义 Python 中的字段属性
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 自定义字段属性
linktitle: 自定义字段属性
description: "了解如何在 Python 中自定义字段属性。重命名合并字段或获取 Python via .NET 中没有分隔符节点的字段的结果。"
type: docs
weight: 27
url: /zh/python-net/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 提供了以编程方式与各种字段属性进行交互的能力。在本文中，我们将查看几个示例，以便您了解使用字段属性的基本原理。您可以在 [字段模块](https://reference.aspose.com/words/python-net/aspose.words.fields/) 中查看相应类中每种字段类型的属性的完整列表。

## 字段属性更新

有时用户需要更改字段属性的值。例如，更新 `AUTHOR` 字段的 [author_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/author_name/) 属性或更改 `MERGEFIELD` 字段的 [field_name](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/field_name/) 属性。

以下代码示例演示如何重命名 Word 文档中的合并字段：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}

## 字段显示结果

Aspose.Words 提供了一个属性来获取没有字段分隔符节点的字段的字段结果。我们称之为"假结果"或显示结果； MS Word 通过动态计算字段值在文档中显示它，但文档模型中没有这样的值。

以下代码示例显示了 [display_result](https://reference.aspose.com/words/python-net/aspose.words.fields/field/display_result/) 属性的用法：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-FieldDisplayResults.py" >}}
