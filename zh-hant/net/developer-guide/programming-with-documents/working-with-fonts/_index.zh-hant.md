---
title: 在C#中與字體一起工作
second_title: 「Aspose.Words for .NET」
articleTitle: 「與字體一起工作」
linktitle: 「與字體一起工作」
description: "在細節中使用C#進行字體格式化。 C#中的強調標記。 使用C#取得字體行間距。"
type: docs
weight: 230
url: /zh-hant/net/working-with-fonts/
---

「字體是一組具有特定大小、顏色和設計的特定字符。Aspose.Words 讓您能透過 [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) 命名空間和 [Font](https://reference.aspose.com/words/net/aspose.words/font/) 類別來工作。」

## 字型格式化

「目前字體格式化由 **Font** 物件回傳的 [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) 屬性表示。」 The **Font** 類別包含各種不同的字型屬性，與 Microsoft Word 中可用的屬性相似。

以下範例顯示如何設定字體格式：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

「填充屬性也可供字體使用，以設定文字填充格式。」 這使得可以改變文字填充的前景色或不透明度。

## 「獲取字體行距」

字間距是指兩行文字的基線之間垂直距離。 「所以行間距包含在行與行之間的空格，以及字體本身的高度。」

「[LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/)」屬性被引入了「**Font**」類別，以取得下例所示的值。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## 字體重點標記

部分東亞語言使用特殊的強調標記來表示強調。 「**Font**」類別提供「[EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/)」屬性來取得或設定要應用格式化時使用的「[EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/)」枚舉值。

以下範例展示如何設定 **EphasisMark** 屬性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
