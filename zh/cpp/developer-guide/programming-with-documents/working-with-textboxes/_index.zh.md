---
title: 在C++中使用TextBoxes
second_title: Aspose.Words对于C++
articleTitle: 使用TextBoxes
linktitle: 使用TextBoxes
description: "链接文本框功能介绍 Aspose.Words对于C++."
type: docs
weight: 250
url: /zh/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

在Aspose.Words中，[TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/)类用于指定文本在形状内的显示方式。 它公开了一个名为**Parent**的公共属性来获取文本框的父形状，以便客户可以从关联的**TextBox**中找到链接的[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)。

## 创建链接

**TextBox**类提供[IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/)方法，以检查**TextBox**是否可以链接到目标**Textbox**。

下面的代码示例演示如何检查`TextBox`是否可以链接到目标文本框:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## 检查TextBox序列

有几种方法可以在形状中显示文本。 [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/)可以是序列的头部、中部或尾部。

下面的代码示例演示如何检查**TextBox**是序列的头、尾还是中间:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## 断开链接

使用[BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/)方法可以断开指向下一个**TextBox**的链接。

下面的代码示例演示如何断开**TextBox**的链接:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
