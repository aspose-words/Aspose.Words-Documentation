---
title: 与链接的文本框一起工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用链接的文本框
linktitle: 使用链接的文本框
description: "链接文本框特性介绍 Aspose.Words (单位:千美元) Java。 。 。 。"
type: docs
weight: 250
url: /zh/java/working-with-linked-textboxes/
---

内 Aspose.Words, 联合国 [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) 类用于指定文字如何在形状内显示。 它提供了命名为"家长"的公有财产,以获得文本框的父形状,让客户找到链接 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 从链接 **TextBox**。 。 。 。

## 创建链接

那个 **TextBox** 类提供 [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) 方法,以检查是否 **TextBox** 可连接到目标 **Textbox**。 。 。 。

以下代码示例显示如何检查是否 `TextBox` 可链接到目标文本框:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## 检查文本 框顺序

以形状显示文本有几种方法. 那个 [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) 可以是头,中,或者一个序列的尾部.

以下代码示例显示如何检查是否 **TextBox** 是头、尾或序列的中间:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## 断开链接

使用 [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) 方法可以打破链接到下一个 **TextBox**。 。 。 。

以下代码示例显示如何断开一个链接 **TextBox**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
