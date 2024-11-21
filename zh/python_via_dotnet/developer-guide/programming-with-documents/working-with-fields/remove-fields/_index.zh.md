---
title: 使用 Python 删除字段
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 删除字段
linktitle: 删除字段
description: "了解如何删除 Python 中的字段。使用 Python via .NET API 以编程方式删除字段。"
type: docs
weight: 35
url: /zh/python-net/remove-fields/
timestamp: 2024-01-27-14-07-04
---

有时需要从文档中删除某个字段。当要替换为不同的字段类型或文档中不再需要该字段时，可能会发生这种情况。例如保存为 HTML 时的 `TOC` 字段。

要删除使用 [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) 插入到文档中的字段，请使用返回的 [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) 对象，该对象提供方便的 [remove](https://reference.aspose.com/words/python-net/aspose.words.fields/field/remove/#default) 方法来轻松从文档中删除字段。

以下代码示例展示了如何从文档中删除字段：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx) 下载本示例的示例文件。

{{% /alert %}}
