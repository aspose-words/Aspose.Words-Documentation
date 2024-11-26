---
title: 自定义字段属性
second_title: Aspose.Words为Java
articleTitle: 自定义字段属性
linktitle: 自定义字段属性
description: "了解如何在Java中自定义字段属性。 重命名合并字段或获取Java中没有分隔符节点的字段的结果。"
type: docs
weight: 27
url: /zh/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words提供了以编程方式与各种字段属性交互的功能。 在本文中，我们将看几个示例，以便您了解使用字段属性的基本原理。 您可以在相应的类中看到每个字段类型的完整属性列表。

## 字段属性更新

有时用户需要更改字段属性的值。 例如，更新`AUTHOR`字段的[AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName)属性或更改`MERGEFIELD`字段的[FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName)属性。

下面的代码示例演示如何重命名Word文档中的合并字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## 字段显示结果

Aspose.Words提供一个属性，用于获取没有字段分隔符节点的字段的结果。 我们称之为"假结果"或显示结果;MSWord通过动态计算字段的值在文档中显示它，但文档模型中没有这样的值。

下面的代码示例演示[DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult)属性的用法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
