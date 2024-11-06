---
title: 在C#中插入和附加文件
second_title: Aspose.Words for .NET
articleTitle: 插入與追加文件
linktitle: 插入與追加文件
description: "將文件合並至一個檔案中：透過尋找與替換、合併欄位、書籤或簡單地於檔案結尾插入，利用C#來挿入或附加一份新的或現有檔案。"
type: docs
weight: 80
url: /zh-hant/net/insert-and-append-documents/
---

有時需要將多個文件合併為一個。 您可以手動完成此操作，或使用 Aspose.Words 插入或附加功能。

插入操作讓您將之前創建的文件內容插入新的或現有的文件。

反之，附加功能允許您僅在另一文件的末尾添加一篇文件。

這篇文章解釋了如何以各種方式將文件插入或附加到另一個文件中，並描述了您在插入或附加文件時能應用的常見屬性。

## 插入一個文件 {#insert-a-document}

如上所述，在 Aspose.Words 中，一個文件是作為由節點組成的樹來表示的，將一個文件插入到另一個文件中，就是從第一個文件樹複製節點到第二個文件樹。

你可以用多種不同的方式將文件插入到各個位置。 例如，您可以在替換操作中插入一份文件、在合併操作中使用合併欄位或透過書籤。

您也可以使用類似於在 [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) 中插入文件的 [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) 或 Microsoft Word 方法將整份文件插入到當前光標位置，而無需任何先前的進口。

接下來的程式碼範例示範了透過 **InsertDocument** 方法插入文件的方法。

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

以下範例會用 **InsertDocumentInline** 方法插入檔案：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

接下來的小節說明在哪些情況下你可以將一張文件插入另一張文件。

### 在查找與取代操作中插入文件 {#insert-a-document-during-find-and-replace-operation}

您可以在進行尋找與取代操作時插入文件。 例如，一篇文件可以包含一段文字 [ INTRODUCTION ] 和 [ CONCLUSION ]。 但在最終的文件中，你需要用從另一個外部文件獲取的內容來替換這些段落。 要達成這個目標，你必須為 replace 事件建立一個處理器。

接下來的程式碼範例顯示如何建立一個取代事件處理常式，以便在插入程序中使用：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

以下範例示意如何在搜尋與替換作業中，將一個文件的内容插入另一個文件中：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### 在 Mail Merge 操作中插入文件 {#insert-a-document-during-mail-merge-operation}

您可以在 mail merge 操作期間將一份文件插入到一個合并欄位中。 例如，一個 mail merge 模板可以包含像 [總結] 這樣的合併欄位。 但在最終的文件中，您需要將從另一份外部文件中取得的內容插入此合併欄位。 達到這個目標，您將需要為合併事件建立一個處理器。

以下程式碼範例示範了如何建立併合事件處理常式，以便稍後在插入過程中使用：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

以下範例示範了如何透過已建立的處理常式將檔案插入到合併欄位中：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### 在ブックマーク {#insert-a-document-at-bookmark} にドキュメントを挿入する

您可以將文字檔輸入到文件中，並在您在文件中定義的書籤後面插入它。 為了做到這點，你必須建立一個你希望在哪裡插入該文件的書籤段落。

接下來的程式碼範例示範了如何將一個文件的內容插入到另一個文件的書籤中：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

請注意，書籤不應該包含您想要出現在最終結果的文件中的多個段落或文本。

{{% /alert %}}

## 附加文件 {#append-a-document}

你可能有一個用例，需要將一份文件中的其他頁面附加到現有的文件的末尾。 要做到這點，只需調用 [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) 方法將一篇文件加入另一篇文件的末尾即可。

{{% alert color="primary" %}}

請注意，[AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/)是文書內的一個節點級方法。 舉例來說，你可以建立一段，設定格式化屬性，然後用 **AppendChild** 方法附加到本文。

{{% /alert %}}

接下來的程式碼範例示範了如何將一個檔案附加到另一個檔案的結尾：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## 手動匯入和插入節點 {#import-and-insert-nodes-manually}

Aspose.Words 讓您可以在沒有任何先前的進口要求的情況下，自動插入和附加文件。 不過，如果您需要在您的文件中插入或附加特定的節點，例如一節或一段，那麼您首先需要手動導入此節點。

當你需要插入或附加一段文字或段落到另一個段落時，基本上你需要用 [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) 方法將第一份文件節點樹中的節點導入第二個節點樹。 在導入您的節點後，您需要使用 [InsertAfter](https://reference.aspose.com/words/net/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/net/aspose.words/compositenode/insertbefore/) 方法插入新節點於参考節點後的/前的。 這讓你能夠透過從一個文件中導入節點，並將其插入到特定位置來，自訂插入過程。

您也可以使用 [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) 方法將指定節點附加到子節點列表的末尾，例如如果您想要在段落層次上而不是部分層次上附加內容。

接下來的程式碼範例，說明如何透過 **InsertAfter** 方法，手動匯入節點，並將其插入到特定節點之後：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

导入会创建一个新的节点，而这个节点是原始节点的复制品，并且适合插入到目标文档中。

{{% /alert %}}

內容會逐段匯入目的地文件，這意味著在匯入時，頁面設定、標題和页脚等設定會保留。 另外，你可以設定格式化設定，當你插入或附加文書時，指定兩個文書如何連結在一起。

## 插入和附加文件的共性屬性 {#common-properties-for-insert-and-append-documents}

 [InsertDocument](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocument/) 和 [AppendDocument](https://reference.aspose.com/words/net/aspose.words/document/appenddocument/) 兩種方法都接受 [ImportFormatMode](https://reference.aspose.com/words/net/aspose.words/importformatmode/) 和 [ImportFormatOptions](https://reference.aspose.com/words/net/aspose.words/importformatoptions/) 作為輸入參數。 **ImportFormatMode**允許您透過選取不同的格式模式（如 [UseDestinationStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/)、[KeepSourceFormatting](https://reference.aspose.com/words/net/aspose.words/importformatmode/) 和 [KeepDifferentStyles](https://reference.aspose.com/words/net/aspose.words/importformatmode/)），控制在從一文件導入另一文件時，如何處理文檔格式的合併。 此 **ImportFormatOptions** 可以讓您選擇不同的輸入選項，例如 [IgnoreHeaderFooter](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoreheaderfooter/)、[IgnoreTextBoxes](https://reference.aspose.com/words/net/aspose.words/importformatoptions/ignoretextboxes/)、[KeepSourceNumbering](https://reference.aspose.com/words/net/aspose.words/importformatoptions/keepsourcenumbering/)、[MergePastedLists](https://reference.aspose.com/words/net/aspose.words/importformatoptions/mergepastedlists/) 和 [SmartStyleBehavior](https://reference.aspose.com/words/net/aspose.words/importformatoptions/smartstylebehavior/)。

Aspose.Words 可讓您在將兩份文件合併於插入或附加操作時，使用 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 和 [PageSetup](https://reference.aspose.com/words/net/aspose.words/documentbuilder/pagesetup/) 屬性調整最終文件的顯示。 **PageSetup**屬性包含某節的各個屬性，如 [SectionStart](https://reference.aspose.com/words/net/aspose.words/pagesetup/sectionstart/)、[RestartPageNumbering](https://reference.aspose.com/words/net/aspose.words/pagesetup/restartpagenumbering/)、[PageStartingNumber](https://reference.aspose.com/words/net/aspose.words/pagesetup/pagestartingnumber/)、[Orientation](https://reference.aspose.com/words/net/aspose.words/pagesetup/orientation/) 等。 最常見的用法是將 **SectionStart** 屬性設定為定義是否會出現在相同頁面或分開到新的一頁。

{{% alert color="primary" %}}

請注意，**Section** 和 **PageSetup** 特性不控制兩個文件是如何被插入/附加在一起的。 他們只允許你改變你的結果文件的外觀。

{{% /alert %}}

以下範例顯示如何在不分裂兩頁的情況下將一文档附加到另一文档：

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
