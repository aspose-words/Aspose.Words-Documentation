---
title: 在C#中工作範圍
second_title: 「Aspose.Words for .NET」
articleTitle: 「與範圍工作」
linktitle: 「與範圍工作」
description: ".NET 中的 Aspose.Words 範圍功能簡介。"
type: docs
weight: 130
url: /zh-hant/net/working-with-ranges/
---

{{% alert color="primary" %}}

「在 Aspose.Words 中，範圍是一個『平坦的窗口』來看待這個文件的樹狀模型。

{{% /alert %}}

「如果您曾使用過 Microsoft Word Automation，那麼您可能知道檢視和修改文件內容的主要工具之一是 **Range** 物件。**Range** 就像一個進入文件內容和格式的『窗口』。」

Aspose.Words 也具有 [Range](https://reference.aspose.com/words/net/aspose.words/range/) 的分類，且是為了在 Microsoft Word 中呈現和動作類似於 **Range** 的物件而設計的。 雖然 **Range** 無法涵蓋任意 문서片段，且不具 **Start** 和 **End** 等功能，但您可以訪問任意的文档節點所涵蓋的範圍，包括 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 本身。 换句話說，每個節點都有自己的範圍。 「**Range**物件允許您存取並修改該範圍內之文字、書籤和表單欄位。」

## 檢索純文字

「使用 [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) 屬性來取得範圍中未格式化的文字。」

接下來的程式碼範例說明如何取得範圍的簡單無格式文字：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載本範例的樣本檔案。」

{{% /alert %}}

## 「刪除文字」

Range 允許透過呼叫 [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/) 來刪除範圍內的所有字元。

「接下來的程式碼範例示範如何從範圍中刪除所有字元：」

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下載此範例的樣本檔案。

{{% /alert %}}