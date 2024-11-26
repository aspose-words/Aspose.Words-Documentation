---
title: 在Java中使用链接的TextBoxes
second_title: Aspose.Words为Java
articleTitle: 使用链接TextBoxes
linktitle: 使用链接TextBoxes
description: "介绍Aspose.Words中Java的链接文本框功能."
type: docs
weight: 250
url: /zh/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

在Aspose.Words中，[TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/)类用于指定文本在形状内的显示方式。 它提供了一个名为Parent的公共属性，用于获取文本框的父形状，以允许客户从linked**TextBox**中查找linked[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)。

## 创建链接

**TextBox**类提供[IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox)方法，以检查**TextBox**是否可以链接到目标**Textbox**。

下面的代码示例演示如何检查`TextBox`是否可以链接到目标文本框:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## 检查TextBox序列

有几种方法可以在形状中显示文本。 [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox)可以是序列的头部、中部或尾部。

下面的代码示例演示如何检查**TextBox**是序列的头、尾还是中间:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## 断开链接

使用[BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink)方法可以断开指向下一个**TextBox**的链接。

下面的代码示例演示如何断开**TextBox**的链接:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
