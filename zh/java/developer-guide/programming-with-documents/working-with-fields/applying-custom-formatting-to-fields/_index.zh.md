---
title: 应用自定义格式到字段
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 应用自定义格式到字段
linktitle: 应用自定义格式到字段
description: "使用 Java。 。 。 。"
type: docs
weight: 40
url: /zh/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

有时用户需要对字段应用自定义格式. 在本篇文章中,我们将研究几个如何做到这一点的例子。

要学习更多选项,请参见对应类中每个字段类型的全部属性列表.

## 如何对字段结果应用自定义格式

Aspose.Words 提供 API 用于自定义字段结果的格式。 您可以执行 [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) 界面来控制字段结果的格式。 您可以应用数字格式开关,即QQ"#.□",日期/时间格式开关,即QQ"dd.MM.yyyy",数字格式开关,即QQ Ordinal.

以下代码示例显示如何为字段结果应用自定义格式.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## 如何评价 `IF` 条件

如果你想评估 `IF` 条件在 mail merge, 你可以使用 [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) 用于立即返回表达式评价结果的方法。

以下代码示例显示如何使用这种方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## 如何将自定义格式应用到时间字段

默认 Aspose.Words 更新 `TIME` 字段,当前格式为短时间。 格式化为 `TIME` 字段,您可以通过执行 [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) 接口。

以下代码示例显示如何对 `TIME` 字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
