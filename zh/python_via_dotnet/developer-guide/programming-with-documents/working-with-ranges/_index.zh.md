---
title: 使用 Python 中的范围
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用范围
linktitle: 使用范围
description: "使用 Python 处理文档中的范围。"
type: docs
weight: 130
url: /zh/python-net/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

在 Aspose.Words 中，[Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 是文档树状模型的"平面窗口"。

{{% /alert %}}

如果您使用过 Microsoft Word Automation，您可能知道检查和修改文档内容的主要工具之一是 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 对象。 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 就像一个了解文档内容和格式的"窗口"。 Aspose.Words 还具有 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 类，其设计的外观和行为与 Microsoft Word 中的 **Range** 类似。尽管 **Range** 无法覆盖文档的任意部分，并且没有 **Start** 和 **End**，但您可以访问任何文档节点（包括 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 本身）覆盖的范围。换句话说，每个节点都有自己的范围。 [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) 对象允许您访问和修改范围内的文本、书签和表单字段。

## 检索纯文本

使用 [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) 属性检索范围内的纯文本、无格式文本。

以下代码示例演示如何获取某个范围的纯文本、无格式文本：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) 下载本示例的示例文件。

{{% /alert %}}

## 删除文本

Range允许通过调用[delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)删除该范围内的所有字符。

以下代码示例显示如何删除某个范围内的所有字符：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx) 下载本示例的示例文件。

{{% /alert %}}
