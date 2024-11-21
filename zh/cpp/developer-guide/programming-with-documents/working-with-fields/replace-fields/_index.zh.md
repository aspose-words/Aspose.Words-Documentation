---
title: 替换字段C++
second_title: Aspose.Words对于C++
articleTitle: 用静态文本替换字段
linktitle: 用静态文本替换字段
description: "了解如何在 C++ 中用文本替换字段。使用 C++ API 用静态数据替换字段。"
type: docs
weight: 37
url: /zh/cpp/replace-fields/
timestamp: 2024-01-27-14-07-04
---

当您希望将文档另存为静态副本时，通常需要替换字段。 例如，在电子邮件中作为附件发送时。 将`DATE`或`TIME`等字段转换为静态文本将允许文档显示与发送时相同的日期。 此外，在某些情况下，您可能需要从文档中删除条件`IF`字段，并将其替换为最新的文本结果。 例如，将`IF`字段的结果转换为静态文本，以便在更新文档中的字段时不再动态更改其值。

下图显示了`IF`字段如何存储在文档中:

* 文本由特殊字段节点–[FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldstart/)和[FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_fieldend/)包围
* [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_separator/)节点将字段中的文本分隔为字段代码和字段结果
* 字段代码定义字段的一般行为，而字段结果在使用Microsoft Word或Aspose.Words更新此字段时保留最近的结果
* 字段结果是在查看时存储在字段中并显示在文档中的内容

![update-remove-a-field-aspose-words](updating-and-removing-a-field-1.png)

该结构也可以在下面使用演示项目*"DocumentExplorer"*以分层形式看到。

![update-remove-a-field-aspose-words-2](updating-and-removing-a-field-2.png)

## 不能被文本替换的字段

用静态文本替换字段对于页眉或页脚中的某些字段无法正常工作。

例如，尝试将页眉或页脚中的`PAGE`字段转换为静态文本将导致在所有页面上显示相同的值。 这是因为页眉和页脚在多个页面上重复，当它们保留为字段时，它们会被处理，因此它们会为每个页面显示正确的结果。

但是，在标题中，`PAGE`字段可以很好地转换为静态文本运行。 将对此文本运行进行评估，就好像它是节中的最后一页一样，这将导致标题中的任何`PAGE`字段在所有页面上显示最后一页。

下面的代码示例演示如何将字段替换为其最近的结果:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UnlinkFields.cpp" >}}

## 转换特定文档部分中的某些字段类型

由于**ConvertFieldsToStaticText**方法接受两个参数–[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)属性和[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)枚举，因此可以将任何复合节点传递给此方法。 这允许字段仅在文档的特定部分转换为静态文本。

例如，您可以传递一个[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)对象并将指定类型的字段从整个文档转换为静态文本，或者您可以传递一个节的[Body](https://reference.aspose.com/words/cpp/aspose.words/body/)对象并仅转换在该正文中找到的字段。

{{% alert color="primary" %}}

传递块级节点（如[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)）时，请注意，在某些情况下，字段可以跨越多个段落。 如果发生这种情况，建议改为传递复合的父级以避免这种情况。

{{% /alert %}}

传递给**ConvertFieldsToStaticText**方法的[FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/)枚举指定应将哪种类型的字段转换为静态文本。 在文档中找到的任何其他字段类型将保持不变。

下面的代码示例演示如何在特定节点*compositeNode*中选择特定类型*targetFieldType*的字段，然后将其转换为静态文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cpp" >}}

下面的代码示例演示如何将文档中的所有`IF`字段转换为静态文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

下面的代码示例演示如何将文档正文中的所有`PAGE`字段转换为静态文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}

下面的代码示例演示如何将最后一段中的所有`IF`字段转换为静态文本:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-ConvertFieldsInDocument-ConvertFieldsInDocument.cpp" >}}
