---
title: 自定义 C# 中的字段属性
second_title: .NET 格式的 Aspose.Words
articleTitle: 自定义字段属性
linktitle: 自定义字段属性
description: "了解如何在 C# 中自定义字段属性。重命名合并字段或获取 .NET 中没有分隔符节点的字段的结果。"
type: docs
weight: 27
url: /zh/net/customize-field-properties/
---

Aspose.Words 提供了以编程方式与各种字段属性进行交互的能力。在本文中，我们将查看几个示例，以便您了解使用字段属性的基本原理。您可以在 [字段命名空间](https://reference.aspose.com/words/net/aspose.words.fields/) 中查看相应类中每种字段类型的属性的完整列表。

## 字段属性更新

有时用户需要更改字段属性的值。例如，更新 `AUTHOR` 字段的 [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) 属性或更改 `MERGEFIELD` 字段的 [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) 属性。

以下代码示例演示如何重命名 Word 文档中的合并字段：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## 字段显示结果

Aspose.Words 提供了一个属性来获取没有字段分隔符节点的字段的字段结果。我们称之为"假结果"或显示结果； MS Word 通过动态计算字段值在文档中显示它，但文档模型中没有这样的值。

以下代码示例显示了 [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/) 属性的用法：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
