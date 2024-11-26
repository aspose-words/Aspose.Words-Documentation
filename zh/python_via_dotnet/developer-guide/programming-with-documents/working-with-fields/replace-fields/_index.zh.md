---
title: 替换字段 Python
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 用静态文本替换字段
linktitle: 用静态文本替换字段
description: "了解如何用 Python 中的文本替换字段。使用 Python via .NET API 将字段替换为静态数据。"
type: docs
weight: 37
url: /zh/python-net/replace-fields/
timestamp: 2024-01-27-14-07-04
---

当您希望将文档保存为静态副本时，通常需要替换字段。例如，作为电子邮件附件发送时。将 `DATE` 或 `TIME` 等字段转换为静态文本将使文档显示与发送时相同的日期。此外，在某些情况下，您可能需要从文档中删除条件 `IF` 字段，并将其替换为最新的文本结果。例如，将 `IF` 字段的结果转换为静态文本，这样当文档中的字段更新时，它将不再动态更改其值。

下图显示了 `IF` 字段如何存储在文档中：

* 文本被特殊字段节点包围 - [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 和 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/)节点将字段内的文本分为字段代码和字段结果
* 字段代码定义字段的一般行为，而当使用 Microsoft Word 或 Aspose.Words 更新该字段时，字段结果保留最新结果
* 字段结果是存储在字段中并在查看时显示在文档中的内容

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

下面还可以使用 [演示项目*"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.* 以分层形式查看该结构

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## 无法用文本替换的字段

对于页眉或页脚中的某些字段，用静态文本替换字段无法正常工作。

例如，尝试将页眉或页脚中的 `PAGE` 字段转换为静态文本将导致所有页面上显示相同的值。这是因为页眉和页脚在多个页面中重复，并且当它们保留为字段时，会对其进行特殊处理，以便为每个页面显示正确的结果。

然而，在标头中，`PAGE` 字段可以很好地转换为静态文本。该文本运行将被视为该部分中的最后一页，这将导致标题中的任何 `PAGE` 字段显示所有页面的最后一页。

以下代码示例显示如何用最新结果替换该字段：

例子

## 转换特定文档部分中的某些字段类型

由于 **ConvertFieldsToStaticText** 方法接受两个参数 - [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) 属性和 [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) 枚举，因此可以将任何复合节点传递给此方法。这允许仅在文档的特定部分将字段转换为静态文本。

例如，您可以传递 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 对象并将指定类型的字段从整个文档转换为静态文本，也可以传递某个部分的 [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) 对象并仅转换在该正文中找到的字段。

{{% alert color="primary" %}}

当传递块级节点（例如 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)）时，请注意，在某些情况下，字段可以跨越多个段落。如果发生这种情况，建议传递组合的父级以避免这种情况。

{{% /alert %}}

传递给 **ConvertFieldsToStaticText** 方法的 [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) 枚举指定应将哪种类型的字段转换为静态文本。文档中找到的任何其他字段类型将保持不变。

以下代码示例展示了如何在特定节点 - *compositeNode* 中选择特定类型 - *targetFieldType* 的字段，然后将其转换为静态文本：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

以下代码示例演示如何将文档中的所有 `IF` 字段转换为静态文本：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx) 下载本示例的示例文件。

{{% /alert %}}

以下代码示例演示如何将文档正文中的所有 `PAGE` 字段转换为静态文本：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

以下代码示例显示如何将最后一段中的所有 `IF` 字段转换为静态文本：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}
