---
title: 处理表格中的文本
second_title: .NET 格式的 Aspose.Words
articleTitle: 处理表格中的文本
linktitle: 处理表格中的文本
description: "替换 C# 表格中的文本。使用 C# 从表或单元格中提取纯文本。"
type: docs
weight: 60
url: /zh/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

正如前面的文章中提到的，表格通常包含纯文本，尽管其他内容（例如图像甚至其他表格）可以放置在表格单元格中。

使用 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 类的适当方法向表添加文本或其他内容，并在 **"创建一个表"** 文章中进行了描述。在本文中，我们将讨论如何处理现有表格中的文本。

## 替换表格中的文本

该表与 Aspose.Words 中的任何其他节点一样，可以访问 [Range](https://reference.aspose.com/words/zh/net/aspose.words/range/) 对象。使用表格范围对象，您可以替换表格中的文本。

目前支持在替换时使用特殊字符的功能，因此可以用多段落文本替换现有文本。为此，您需要使用相应 [Replace](https://reference.aspose.com/words/zh/net/aspose.words/range/replace/) 方法中描述的特殊元字符。

{{% alert color="primary" %}}

通常，文本替换应在单元格级别（每个单元格）或段落级别完成。

{{% /alert %}}

以下代码示例演示如何替换整个表格单元格中文本字符串的所有实例：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## 从表或单元格中提取纯文本

使用 **Range** 对象，您还可以在整个表范围上调用方法并将表提取为纯文本。为此，请使用 [Text](https://reference.aspose.com/words/zh/net/aspose.words/range/text/) 属性。

以下代码示例显示如何打印表格的文本范围：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

使用相同的技术仅从各个表格单元格中提取内容。

以下代码示例演示如何打印行和表元素的文本范围：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## 使用替代表格文本

Microsoft Word 表具有 `table title` 和 `table description`，它们提供表中包含的信息的替代文本表示形式。

在 Aspose.Words 中，您还可以使用 [Title](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/title/) 和 [Description](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/description/) 属性添加表格标题和说明。这些属性对于符合 ISO/IEC 29500 的 DOCX 文档有意义。以早于 ISO/IEC 29500 的格式保存时，这些属性将被忽略。

以下代码示例显示如何设置表的标题和描述属性：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
