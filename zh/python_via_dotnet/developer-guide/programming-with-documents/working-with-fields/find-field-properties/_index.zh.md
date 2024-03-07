---
title: 在 Python 中查找字段属性
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 查找字段属性
linktitle: 查找字段属性
description: "如何在 Python 中查找字段代码和字段结果等字段属性。"
type: docs
weight: 25
url: /zh/python-net/find-field-properties/
---

使用 [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) 插入的字段返回 [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) 对象。这是一个外观类，提供有用的方法来快速查找字段的某些属性。

以下代码示例展示了如何查找字段代码和字段结果：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

请注意，如果您只想查找文档中合并字段的名称，那么您可以使用内置的 [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) 方法。

以下代码示例显示如何获取文档中所有合并字段的名称：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}