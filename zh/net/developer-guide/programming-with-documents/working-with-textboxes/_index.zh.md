---
title: 在 C# 中使用文本框
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用文本框
linktitle: 使用文本框
description: "Aspose.Words for .NET 中的链接文本框功能简介。"
type: docs
weight: 250
url: /zh/net/working-with-textboxes/
---

在 Aspose.Words 中，[TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) 类用于指定文本在形状内的显示方式。它公开一个名为 **Parent** 的公共属性来获取文本框的父形状，以便客户可以从关联的 **TextBox** 中找到链接的 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)。

## 创建链接

**TextBox** 类提供了 [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) 方法来检查 **TextBox** 是否可以链接到目标 **Textbox**。

以下代码示例显示如何检查 `TextBox` 是否可以链接到目标文本框：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## 检查文本框顺序

有多种方法可以在形状中显示文本。 [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) 可以是序列的头部、中间或尾部。

以下代码示例显示如何检查 **TextBox** 是序列的头、尾还是中间：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## 断开链接

使用 [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) 方法，您可以断开到下一个 **TextBox** 的链接。

以下代码示例显示如何断开 **TextBox** 的链接：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
