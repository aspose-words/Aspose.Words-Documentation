---
title: 在C++中自定义字段属性
second_title: Aspose.Words对于C++
articleTitle: 自定义字段属性
linktitle: 自定义字段属性
description: "了解如何在C++中自定义字段属性。 在C++中重命名合并字段或获取不带分隔符节点的字段的结果。"
type: docs
weight: 27
url: /zh/cpp/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words提供了以编程方式与各种字段属性交互的功能。 在本文中，我们将看几个示例，以便您了解使用字段属性的基本原理。 您可以在[Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields)中查看相应类中每个字段类型的完整属性列表。

## 字段属性更新

有时用户需要更改字段属性的值。 例如，更新`AUTHOR`字段的[AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/)属性或更改`MERGEFIELD`字段的[FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/)属性。

下面的代码示例演示如何重命名Word文档中的合并字段:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## 字段显示结果

Aspose.Words为没有字段分隔符节点的字段提供属性以获取字段的结果。 我们称之为"假结果"或显示结果;Microsoft Word通过动态计算字段的值在文档中显示它，但文档模型中没有这样的值。

下面的代码示例演示[DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/)属性的用法:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}
