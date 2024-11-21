---
title: 自定义字段属性
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 自定义字段属性
linktitle: 自定义字段属性
description: "学习如何自定义字段属性 Java。 。 。 重命名合并字段或为没有分隔符节点的字段获得结果 Java。 。 。 。"
type: docs
weight: 27
url: /zh/java/customize-field-properties/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 提供与各种外地属性进行方案互动的能力。 在本篇文章中,我们将研究几个例子,以便你理解与实地属性合作的基本原则. 您可以在相应的类中看到每个字段类型的全部属性列表。

## 外地属性更新

有时用户需要改变字段属性的值. 例如,更新 [AuthorName](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/#getAuthorName) 财产和财产 `AUTHOR` 字段或修改 [FieldName](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/#getFieldName) 财产和财产 `MERGEFIELD` 字段。

以下代码示例显示如何在 Word 文档中重命名合并字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-RenameMergeFields-RenameMergeFields.java" >}}

## 字段显示结果

Aspose.Words 为没有字段分隔符节点的字段提供获取字段结果的属性。 我们称此为"假结果"或显示结果;MS Word在文档中通过计算在苍蝇上的字段值来显示它,但文档模型中没有这样的值.

以下代码示例显示 [DisplayResult](https://reference.aspose.com/words/java/com.aspose.words/field/#getDisplayResult) 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldDisplayResult-FieldDisplayResult.java" >}}
