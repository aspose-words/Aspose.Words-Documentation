---
title: 「如何從文檔節點中擷取內容」
second_title: 「Aspose.Words for .NET」
articleTitle: 在文件中從節點中提取內容
linktitle: 提取节点間的內容
description: "「使用C#從文件中提取文档內容。」"
type: docs
weight: 140
url: /zh-hant/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

在處理檔案時，能從檔案的特定範圍中快速提取內容是很重要的。 「不過，內容可能會包含段落、表格、圖像等複雜元素。」

不論要提取的內容是什麼，要提取的內容的方法總是以要選取哪些節點來決定，以在節點之間提取內容。 這些可以是整段文字或簡單的文字片段。

「許多可能的狀況和許多不同的節點類型需要考慮，當提取內容時。 例如，你可能想要提取內容之間的：

"- 兩段具體的段落"
-特定文字的運行
"-各種類型的欄位，例如合併欄位"
「- 書標或留言的開始和結束範圍」
"- 各個節中包含的各種文本"

在某些情況下，你甚至可能需要結合不同的節點類型，例如從段落和欄位之間提取內容，或從運行和書籤之間。

本文提供從不同節點中提取文本的代碼實作，以及常見的場景示例。

{{% alert color="primary" %}}

這些例子只是許多可能性的示範。 我們計畫讓文本提取功能成為未來公開 API 的部分，不需要額外的程式碼。 在這個同時，你可以自由地把你的請求關於這個功能貼到 [Aspose.Words forum](https://forum.aspose.com/c/words/8)。

{{% /alert %}}

## 「為什麼要提取內容」

「提取內容的目的是將其複製或獨立儲存於新文件中。」 例如你可以提取內容和：「」

- 複製到一個獨立的文件中
「-將文件的特定部分轉換為PDF或圖像」
"- 在文件中多次複製內容"
"-與該文件其他部分分開的工作與提取的內容一起使用"

「您可以使用 Aspose.Words 和下面的程式碼實作來輕鬆達成。」

## 內容抽取演算法

「此部分之程式碼以一種一般化且可重複使用的方法處理上述所有可能的情況。」 「這種技術的大致過程涉及：」

1. 「找出能決定從您的文件中提取的內容範圍的節點。」 這些節點的取回是由使用者在他們的程式碼中處理，根據他們想要提取的內容。
1. 「將這些節點傳遞給以下提供的 **ExtractContent** 方法。」 「您也必須傳遞一個布尔參數，以說明這些作為標記的節點是否應該包含在提取中。」
1. 取得複製內容（複製節點）清單，指定要提取。 「您可以以任何適用的方式使用此節點清單，例如创建一个包含僅选定内容的新文件。」

## 「如何擷取內容」

「要從您的文件中擷取內容，您需要呼叫下面的 **ExtractContent** 方法並傳遞適當參數。」 這個方法的基礎涉及尋找區塊級節點（段落和表格）並複製它們來產生同一份副本。 如果標記節點傳遞的標記是塊形，這個方法就能夠簡單地複製該層次的內容並將其加入陣列中。

「然而，如果標記节点是內聯（段落的子節點），那麼情況就變得更加複雜了，因為必須將段落在內聯節點處切割，無論它是內文、書籤欄位等等。」 「克隆的父節點中的內容在標記之間不存在，會被移除。」 「此過程是用來確保內嵌節點仍會保留父段落中的格式。」 「此方法也會檢查傳入的節點參數，如果節點無效，則會擲出例外。」 「將傳給這個方法的參數是：」

「1. **StartNode**與**EndNode**.」 「第一個兩個參數是定義內容提取開始和結束的節點。」 這些節點可以是块級（[Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/)，[Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)）或行內級（例如 [Run](https://reference.aspose.com/words/net/aspose.words/run/)，[FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/)，[BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) 等）：
   1. 要通過一個欄位，你必須通過對應的 **FieldStart** 物件。
   1. 要傳遞書籤，**BookmarkStart** 和 [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/) 節點應該被傳遞
   1. 「為了留言，應使用 [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) 和 [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/) 節點。」
「1。 **IsInclusive**。」 定義標記是否包含在提取中或否。 「如果這個選項設定為 false ，且傳入相同節點或連續節點，則會回傳一個空列表：」
   1. 「若傳入 **FieldStart** 節點，此選項定義是否包含或排除整個欄位。」
   1. 「如果傳入一個 **BookmarkStart** 或 **BookmarkEnd** 節點，這個選項會定義是否包含書籤，或只包含書籤範圍內內容。」
   1. 若傳入 **CommentRangeStart** 或 **CommentRangeEnd** 節點，此選項則定義是否要包含 댓글本身或僅包含 댓글範圍的內容。

「**ExtractContent**方法的實現可以在 [on Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs) 中找到。」 「此方法將被包含在此篇文章中的場景中提及。」

「我們也會定義一個自訂方法，讓從提取的節點中輕易生成文件。」 這個方法用於許多下面的場景，簡單地創建一個新文件並將其提取的內容輸入到其中。

接下來的程式碼範例說明如何將一個節點清單取出，並插入到新的文件中。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## 提取段落之間的內容

「這示範如何使用上面的方法來提取特定段落之間的內容。」 在這種情況下，我們想要從這份文件的第一半中提取信件的正文。 「我們可以發現這是第7到第11段之間。

以下程式碼完成這個工作。 「該段落是透過在文件中應用 [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) 方法，並傳遞指定的索引來提取的。」 「我們接著將這些節點傳到 **ExtractContent** 方法，並說明這些節點必須包含在提取中。」 「此方法會將這些節點之間的複製內容返回，然後在新的文件中插入。」

「以下範例展示了如何透過上面的 `ExtractContent` 方法，從特定段落中擷取內容：「

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

「你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載此範例的樣本檔案。」

{{% /alert %}}

## 從不同类型的節點中提取內容

我們可以從任何組合的塊級或內線節點中提取內容。 在下面的シナリオ中，我們將從第一段開始，到第二節中的表格結束，提取內容。 「我們透過在文件的第二節中呼叫 [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) 和 [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) 方法來取得標記節點，以取得相應的 **Paragraph** 和 **Table** 節點。」 為了略為不同的變化，我們來複製內容並插入到原稿下方。

接下來的程式碼範例示範了如何透過 **ExtractContent** 方法從段落與表格中抽取內容：

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載此範例的樣本檔案。

{{% /alert %}}

## 根據風格提取段落之間的內容

「你可能需要從相同或不同風格的段落中抽取內容，例如以標題風格標記的段落。」 「下面的程式碼示範了如何達成。」 「這是一個簡單的例子，它會從第一個「heading 1」和「header 3」風格之間提取內容，而不會將標頭也一併提取。」 「為了做到這點，我們將最後一個參數設定為 false，這指定標記節點不應包含。」

「正確的實現應該在一個迴圈中運行以從文件中提取這些風格中的所有段落之間的內容。」 「提取的內容被複製到新檔案中。」

接下來的程式碼示例，示範如何透過 **ExtractContent** 方法從段落中提取特定風格的內容：

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載此範例的範本檔案。

{{% /alert %}}

## 「從特定運行中提取內容」

「您也可以提取像 [Run](https://reference.aspose.com/words/net/aspose.words/run/) 一樣的內聯節點間的內容。 **Runs**來自不同的段落可以作為標記。」 下面的程式碼示範了如何從具有相同 **Paragraph** 節點的區域中提取特定文字。

以下範例說明如何透過 **ExtractContent** 方法從相同段落中的特定字串中抽取內容：

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載此範例的樣本檔案。」

{{% /alert %}}

## 透過「欄位」提取內容

「若要使用欄位作為標記，則 `FieldStart` 節點必須傳給。」 `ExtractContent`"方法最後一個參數會決定是否要將整段欄位包含在內。 「讓我們從文件中的「FullName」合併欄位和一段落中提取內容。」 我們使用[MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/)方法的[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)類別。 此會從傳遞給它的合併欄位名稱中回覆 **FieldStart** 節點。

「我們的情況下，讓我們將傳給 **ExtractContent** 方法的最後一個參數設定為 false，以從提取中排除這個欄位。」 「我們將提取的內容渲染成PDF。」

「下面的程式碼範例示範了如何透過 **ExtractContent** 方法從文件中提取特定欄位與段落之間的內容」：

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載此範例的樣本檔案。

{{% /alert %}}

## 從書籤中提取內容

在一個檔案中，定義於書簽內之內容會由 `BookmarkStart` 和 BookMarkEnd 節點包覆。 在這些節點之間找到的內容構成了書籤。 「您可以把這兩個節點中的任何一個作為任何記號，甚至是來自不同書籤的記號，只要開始記號在結束記號之前出現就好了。」 「我們將以以下程式碼從此內容中擷取並儲存至新檔案。」 「**IsInclusive** 參數選項示範如何保留或丟棄書籤。」

以下範例以 **ExtractContent** 方法示範如何從中提取書簽所參考的內容：

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載此範例的樣本檔案。」

{{% /alert %}}

## 從留言中提取內容

「留言由CommentRangeStart、CommentRangeEnd和Comment節點組成。」 「這些節點全部是內連節點。」 「前兩個節點會將由評論引用的文件內容封裝起來，如下面截圖所示。」

「這個 **Comment** 節點本身是一個可以包含段落和行文 [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) 的節點。」 它代表評論中的訊息，在回顧區塊中呈現為評論氣泡。 「因為這個節點是內聯的，也是body 的後代，所以你也可以從這則訊息中提取它的內容。」

評論封裝了第二節中的標題、第一段和表格。 「讓我們將此評論提取到一個新文件中。 「**IsInclusive**選項會決定是否保留或丟棄評論本身。」

「接下來的程式碼範例示範如何做到這一點：」

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

「你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載這個範例的樣本檔案。」

{{% /alert %}}

## 透過 DocumentVisitor 如何提取內容？

「使用 [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) 類別來實作這個用法情境。」 這個類別對應到著名的「訪問者」設計模式。 「有了 **DocumentVisitor** **,**，您可以定義並執行需要列舉資料庫樹的自訂動作。」

「**DocumentVisitor** 提供了一組 **VisitXXX** 方法，當特定的文件元素（節點）被遇見時，會調用這些方法。」 例如，當文本段落的第一字被找到時，會调用 [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) ，當一個文本段落的結束被找到時，就會调用 [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) 。 每個 **DocumentVisitor.VisitXXX** 方法都接受它遇見的相應物件，所以你可以依需求使用它（如取得格式化），例如 **DocumentVisitor.VisitParagraphStart** 和 **DocumentVisitor.VisitParagraphEnd** 皆能接受 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 物件。

每個 **DocumentVisitor.VisitXXX** 方法會回傳一個 [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) 值，來控制節點的列舉。 您可以請求繼續枚舉、跳過當前節點（但繼續枚舉），或停止節點的枚舉。

這些是你應該遵循的步驟，以程式方式決定並從文件中擷取各種部分：

"- 建立一個從 **DocumentVisitor** 衍生的類別"
「- 覆寫並為某些或所有的 **DocumentVisitor.VisitXXX** 方法提供實作，以執行某些自訂動作」
「- 在您欲開始列舉的節點上呼叫 [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/)，例如如果您要列舉整份文件，請使用 [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)。」

「**DocumentVisitor**為所有 **DocumentVisitor.VisitXXX** 方法提供預設實作。」 「這使得建立新的訪客更容易，因為只需覆寫特定訪客所需的程式便可。」 「不需要覆寫所有訪客方法。」

「接下來的範例示範如何使用訪客模式，將新的運算加入 Aspose.Words 的物件模型中。」 「這個情況下，我們就把一個簡單的文字轉換器變成一個文字格式：」

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx) 下載此範例的示例檔案。」

{{% /alert %}}

## 「如何只提取文字」

從該文件中檢索文字的方法是：

- 使用 [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) 和 [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) 將純文字儲存到檔案或串流中
「- 使用 [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) 並傳送 **SaveFormat.Text** 參數。」 內部，這會將文字儲存到記憶體流中，並回傳結果字串。
"- 使用 [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) 來檢索包含所有 Microsoft Word 控制字元的文字，包括字段碼"
"- 實作自訂的 [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) 來執行自訂的提取操作"

### 使用 `Node.GetText` 和 `Node.ToString`

「Word 文檔可以包含指定特殊元素（如欄位、細胞結尾、節點結尾等）的控制字。」 「可能的 Word 控制字符的完整清單，定義在 **ControlChar** 類別中。」 「**Node.GetText**」方法會回傳包含節點中所有控制字元的文字。

调用 **ToString** 只會返回該文件的純文字表示，不包含控制字元。 有關以純文本格式輸出之詳細資訊，請參閱以下第 **使用"保存格式".txt** 節。

以下程式碼範例示範了從節點呼叫 **GetText** 和 **ToString** 方法之間的差異。

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### 使用 `SaveFormat.Text`

「此例會將文件儲存如下：」

"-過濾欄位字符和欄位碼、形狀、腳註、尾注和註解的參考"
"-將段落結尾的 **ControlChar.Cr** 個字符替換成 **ControlChar.CrLf** 個組合"
「- 使用 UTF8 編碼」

以下範例展示了如何以 TXT 格式儲存檔案：

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## 從形狀中提取圖像

「您可能需要從文件中提取圖像才能完成某些任務。Aspose.Words 也允許您這樣做。」

以下範例展示了從文件中提取圖像的方法：

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}