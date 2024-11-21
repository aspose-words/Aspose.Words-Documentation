---
title: 表格中的文本工作
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 表格中的文本工作
linktitle: 表格中的文本工作
description: "替换表格中的案文 Java。 。 。 。 从表格或单元格中提取纯文本 Java。 。 。 。"
type: docs
weight: 60
url: /zh/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

如前几篇文章所述,一个表格通常包含纯文本,尽管其他内容如图像甚至其他表格可以放在表格单元格中.

在表格中添加文字或其他内容,使用表格中适当的方法。 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 分类,并在 **"创造一张桌子"** 第3条。 在本篇文章中,我们将讨论如何在已有的表格中处理文本。

## 在表格中替换文本

桌子,像其他节点一样 Aspose.Words, 可以进入 [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) 对象。 使用表格范围对象可以替换表格中的文本。

目前支持在替换时使用特殊字符的能力,因此有可能用多段文字取代现有的文本. 要做到这一点,您需要使用相应的元描述符中描述的特殊元描述符 。 [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) 方法。

{{% alert color="primary" %}}

通常,文本替换应在单元格一级(每单元格)或段落一级进行。

{{% /alert %}}

以下代码示例显示如何替换整个表格单元格中文本串的所有实例:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## 从表格中提取纯文本

使用 **Range** 对象,也可以在整个表格区域调用方法并提取表格为纯文本。 要做到这一点,使用 [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) 属性。

以下代码示例显示如何打印表格的文本范围:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

同样的技术只用于从单个表格单元格中提取内容.

以下代码示例显示如何打印行和表格元素的文本范围:

{{% /alert %}}

以下代码示例显示如何打印行和表格元素的文本范围.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## 使用替代表格文本

Microsoft Word 表格有一个 `table title` 和 `table description` 提供了表格所载信息的备选案文。

内 Aspose.Words, 您也可以使用 [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) 和 [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) 属性。 这些属性对于符合下列条件的DOCX文档是有意义的: ISO/IEC 29500 (英语). 当格式保存早于 ISO/IEC 29500,这些属性被忽略.

以下代码示例显示如何设置表格的标题和描述属性:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
