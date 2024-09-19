---
title: 在C#中與Footnote和Endnote合作
second_title: 「Aspose.Words for .NET」
articleTitle: 「在 Footnote 和 Endnote 中工作」
linktitle: 「在 Footnote 和 Endnote 中工作」
description: "使用 C# 如何處理腳注和尾注。"
type: docs
weight: 160
url: /zh-hant/net/working-with-footnote-and-endnote/
---

「Aspose.Words 也提供了一些用於處理底 Footnote 和 Endnote 的類別、方法和屬性。」

## 插入筆記並設定編號選項

如果您想在Word文件中插入脚注或尾注，請使用「[InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/)」方法。 此方法在文件中插入註腳或尾注。

「[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) 和 [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) 類別代表腳注和註腳的 numeration 選項。」

以下範例說明如何將註腳插入到文件中並設定其編排選項：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## 「腳注排版欄數設定」

您可以用 [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) 屬性來設定腳註排版列數。 如果這個屬性值為 0，腳注區域會根據顯示頁面上的列數，以一系列的列來格式化腳注區域。

「接下來的程式碼範例示範了如何設定注腳排版中的欄數：」

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## 設定腳注與尾注的位置

腳注的位置可以置於每頁底部或於每頁文本下方。 腳註的位置可以是章節的最後，也可以是文件的最後。

以下範例顯示如何設定腳註與尾注的位置：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
