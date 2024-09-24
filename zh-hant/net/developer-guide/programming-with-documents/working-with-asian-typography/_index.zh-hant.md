---
title: 在C#中的亞洲排版
second_title: 「Aspose.Words for .NET」
articleTitle: 「與亞洲書體合作」
linktitle: 「與亞洲書體合作」
description: "使用 C# 在亞洲文字中工作。 在C#中調整亞洲和拉丁文本之間的空間。"
type: docs
weight: 240
url: /zh-hant/net/working-with-asian-typography/
---

「亞洲排版」是一套在以亞洲語言撰寫的文件中為段落文本提供的選項。

「 Aspose.Words 透過 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 類別及其某些屬性，支援亞洲文字排版。

## 自動調整亞洲與拉丁字母文字或數字間距

如果您正在設計一個具有東亞和拉丁文本的模板，且希望透過控制兩種類型文本之間的空間來增強您的表單模板的外觀，您可以設定您的表單模板自動調整這兩種文本之間的空間。 「要做到這點，您可以利用 [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) 和 [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) 的屬性來使用 `ParagraphFormat` 類別。」

「以下程式碼範例示範了如何使用 **AddSpaceBetweenFarEastAndAlpha** 和 **AddSpaceBetweenFarEastAndDigit** 屬性：」

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## 設定換行選項

「段落屬性對話方框中的亞洲排版標籤在 Microsoft Word 有換行組。」 「這個群組的選項可以使用 **ParagraphFormat** 類別的 [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/)、[WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/) 和 [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) 屬性來設定。」

以下程式碼範例示範了如何使用這些屬性：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
