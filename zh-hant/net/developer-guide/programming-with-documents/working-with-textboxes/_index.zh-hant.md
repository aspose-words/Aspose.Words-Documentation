---
title: 在C#中與TextBoxs一起工作
second_title: Aspose.Words for .NET
articleTitle: 與文字方塊一起工作
linktitle: 與文字方塊一起工作
description: "有關於 Aspose.Words 中連結文字方塊功能的介紹。"
type: docs
weight: 250
url: /zh-hant/net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

在 Aspose.Words 中，[TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) 類別用於指定文字如何顯示於形狀內。 它會將名為 **Parent** 的公共屬性公開，以取得文字方塊的父體，以便客戶可以從關聯的 **TextBox** 中找到連結的 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/)。

## 建立一個連結

**TextBox**類別提供了[IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/)方法，以便檢查是否可以將 **TextBox** 連接到目標 **Textbox**。

接下來的程式碼範例說明如何檢查是否可以將 `TextBox` 連結到目標文字方塊：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## 檢查Текст框序列

有幾種在形狀中顯示文字的方法。 這個 [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) 可以是序列的頭、中或尾。

接下來的範例說明了如何檢查 **TextBox** 是否為序列的頭、尾或中間：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## 打破一個連結

使用 [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/) 這個方法，你可以中斷連結到下一個 **TextBox**。

以下範例說明如何打破一個連結，使之以 **TextBox** 結束。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
