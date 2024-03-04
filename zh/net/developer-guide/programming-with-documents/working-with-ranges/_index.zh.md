---
title: 使用 C# 中的范围
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用范围
linktitle: 使用范围
description: "Aspose.Words for .NET 中的范围功能简介。"
type: docs
weight: 130
url: /zh/net/working-with-ranges/
---

{{% alert color="primary" %}}

在 Aspose.Words 中，范围是文档树状模型的"平面窗口"。

{{% /alert %}}

如果您使用过 Microsoft Word Automation，您可能知道检查和修改文档内容的主要工具之一是 **Range** 对象。 **Range** 就像一个了解文档内容和格式的"窗口"。

Aspose.Words 还具有 [Range](https://reference.aspose.com/words/zh/net/aspose.words/range/) 类，其设计的外观和行为与 Microsoft Word 中的 **Range** 类似。尽管 **Range** 无法覆盖文档的任意部分，并且没有 **Start** 和 **End**，但您可以访问任何文档节点（包括 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 本身）覆盖的范围。换句话说，每个节点都有自己的范围。 **Range** 对象允许您访问和修改范围内的文本、书签和表单字段。

## 检索纯文本

使用 [Text](https://reference.aspose.com/words/zh/net/aspose.words/range/text/) 属性检索范围内的纯文本、无格式文本。

以下代码示例演示如何获取范围内的纯文本、无格式文本：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下载本示例的示例文件。

{{% /alert %}}

## 删除文本

Range允许通过调用[Delete](https://reference.aspose.com/words/zh/net/aspose.words/range/delete/)来删除该范围内的所有字符。

以下代码示例显示如何删除某个范围内的所有字符：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下载本示例的示例文件。

{{% /alert %}}