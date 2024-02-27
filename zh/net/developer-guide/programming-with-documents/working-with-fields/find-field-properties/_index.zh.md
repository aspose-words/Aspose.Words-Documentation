---
title: 如何在 C# 中查找字段属性
second_title: .NET 格式的 Aspose.Words
articleTitle: 查找字段属性
linktitle: 查找字段属性
description: "如何在 C# 中查找字段代码和字段结果等字段属性。"
type: docs
weight: 25
url: /zh/net/find-field-properties/
---

使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) 插入的字段返回 [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/) 对象。这是一个外观类，提供有用的方法来快速查找字段的某些属性。

以下代码示例展示了如何查找字段代码和字段结果：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

请注意，如果您只想查找文档中合并字段的名称，那么您可以使用内置的 [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) 方法。

以下代码示例显示如何获取文档中所有合并字段的名称：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}