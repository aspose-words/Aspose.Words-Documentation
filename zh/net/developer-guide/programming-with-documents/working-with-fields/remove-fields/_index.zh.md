---
title: 删除 C# 字段
second_title: .NET 格式的 Aspose.Words
articleTitle: 删除字段
linktitle: 删除字段
description: "了解如何删除 C# 中的字段。使用 .NET API 以编程方式删除字段。"
type: docs
weight: 35
url: /zh/net/remove-fields/
---

有时需要从文档中删除字段。当需要用不同的字段类型替换该字段或文档中不再需要该字段时，可能会发生这种情况。例如保存为 HTML 时的 `TOC` 字段。

要删除使用 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertfield/) 插入到文档中的字段，请使用返回的 [Field](https://reference.aspose.com/words/zh/net/aspose.words.fields/field/) 对象，该对象提供了方便的 [Remove](https://reference.aspose.com/words/zh/net/aspose.words.fields/field/remove/) 方法，可以轻松地从文档中删除字段。

以下代码示例展示了如何从文档中删除字段：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RemoveField-RemoveField.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Various%20fields.docx) 下载本示例的示例文件。

{{% /alert %}}
