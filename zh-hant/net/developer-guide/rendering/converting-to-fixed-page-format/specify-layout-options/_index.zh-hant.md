---
title: 指定 C# 中的布局選項
second_title:  Aspose.Words For .NET
articleTitle: 指定版面選項
linktitle: 指定版面選項
description: "透過 C# 設定各種文件格式的排版選項。"
type: docs
weight: 10
url: /zh-hant/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words可讓您根據 [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) 類別的屬性中指定的參數，以各種不同的格式來建立輸出文件。 這些屬性中有些類似一些 Microsoft Word 使用者介面選單選項 – 他們將在本文中被描述。

若要列出從 [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) 開始計算無間斷節區中的頁碼的全部參數，或列出忽略『以列印設定設計文件』相容性選項的 [IgnorePrinterMetrics](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/)，請參閱 [LayoutOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/) 類型的頁面。

## 標記格式化

Aspose.Words可透過以下屬性管理格式化標記：

- [ShowHiddenText](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showhiddentext/) - 一個 `Boolean` 值，指定隱藏文字是否被渲染。
- [ShowParagraphMarks](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – a `Boolean` 值，指定段落標記字元是否被渲染。

下面示例中描述的頁面包含三段落。 第二個是隱藏的。 使用者可以將 **ShowHiddenText** 選項設定為在頁面上顯示此隱藏文字。 此外，每個段落在結尾都有段落標記。 段落標記通常不會顯示，除非設定 **ShowParagraphMarks** 屬性使其渲染。

![specify-layout-options_1](specify-layout-options-1.png)

在 Microsoft Word 中，這些參數使用檔案→選項→顯示對話方框設定如下：

![specify-layout-options_2](specify-layout-options-2.jpg)

## 評論與修訂

使用 Aspose.Words，您可以以與 Microsoft Word 相同的樣子來渲染文字檔案的註釋。 若要指定是否渲染註釋，請使用 [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) 屬性。

在 Microsoft Word 中，此參數使用下圖所示的『追蹤更改』對話方塊來設定：

![specify-layout-options_3](specify-layout-options-3.jpg)

此外，Aspose.Words 讓您可以在文件中顯示更改。 利用類別 **LayoutOptions** 的 [RevisionOptions](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/revisionoptions/) 屬性來定義是否顯示文件的修訂版本。 要控制它們的樣子（修訂亮度色、修訂列條色等），請使用 [RevisonOptions](https://reference.aspose.com/words/net/aspose.words.layout/revisionoptions/) 類別。

您也可以讓修訂版本顯示為內容的評論。 為了這個目的，請使用 [CommentDisplayMode](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/commentdisplaymode/) 屬性與 [ShowInBalloons](https://reference.aspose.com/words/net/aspose.words.layout/commentdisplaymode/) 值。

接下來這段程式碼範例示範了如何自訂版本顯示：

{{< gist "aspose-words-gists" "ce015d9bade4e0294485ffb47462ded4" "show-revisions-in-balloons.cs" >}}

以下圖片顯示了如何 Aspose.Words 呈現評論和刪除修訂版本。

<img src="specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## 進階排版渲染的文字塑造器

[TextShaperFactory](https://reference.aspose.com/words/net/aspose.words.layout/layoutoptions/textshaperfactory/)屬性可讓您設定文字塑形功能，`OpenType`功能支援。

在以下主要情況下使用文字編排，處理文件：

- 一份文件使用了 Kerning、Numeral Shaping、Numeral Forms 或 Ligatures。
- 一份文件使用複雜文字，如阿拉伯文、高棉文、泰文等。

{{% alert color="primary" %}}

文字格式化僅在將文件輸出為 PDF 或 XPS 時啟用。

{{% /alert %}}
