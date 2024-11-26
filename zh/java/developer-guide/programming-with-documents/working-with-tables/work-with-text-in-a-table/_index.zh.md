---
title: 使用表格中的文本
second_title: Aspose.Words为Java
articleTitle: 使用表格中的文本
linktitle: 使用表格中的文本
description: "替换Java中的表中的文本。 使用Java从表或单元格中提取纯文本。"
type: docs
weight: 60
url: /zh/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

如前几篇文章所述，表格通常包含纯文本，尽管其他内容（如图像甚至其他表格）可以放置在表格单元格中。

向表中添加文本或其他内容是使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)类的适当方法进行的，并在**"Create a Table"**文章中进行了描述。 在本文中，我们将讨论如何在已经存在的表中处理文本。

## 替换表中的文本

该表与Aspose.Words中的任何其他节点一样，具有对[Range](https://reference.aspose.com/words/java/com.aspose.words/range/)对象的访问权限。 使用表范围对象，可以替换表中的文本。

当前支持在替换时使用特殊字符的能力，因此可以用多段文本替换现有文本。 为此，您需要使用相应[Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String)方法中描述的特殊元字符。

{{% alert color="primary" %}}

通常，文本替换应在单元格级别（每个单元格）或段落级别完成。

{{% /alert %}}

下面的代码示例演示如何在整个表的单元格中替换文本字符串的所有实例:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## 从表中提取纯文本

使用**Range**对象，您还可以在整个表范围上调用方法，并将表提取为纯文本。 为此，请使用[Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text)属性。

下面的代码示例演示如何打印表的文本范围:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

相同的技术仅用于从单个表格单元格中提取内容。

下面的代码示例演示如何打印行和表元素的文本范围:

{{% /alert %}}

下面的代码示例演示如何打印行和表元素的文本范围。

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## 使用替代表格文本

Microsoft Word表有一个`table title`和`table description`，它们提供了表中所含信息的替代文本表示形式。

在Aspose.Words中，您还可以使用[Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle)和[Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription)属性添加表标题和描述。 这些属性对于符合ISO/IEC29500的DOCX文档有意义。 以早于ISO/IEC29500的格式保存时，将忽略这些属性。

下面的代码示例演示如何设置表的标题和描述属性:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
