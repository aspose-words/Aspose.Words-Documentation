---
title: 在C#中使用Section
second_title: Aspose.Words 对于 .NET
articleTitle: 與分節一起工作
linktitle: 與分節一起工作
description: "透過使用C#來了解文件節的概念與操作方式。 將分節插入 C# 文檔中。 移除C#節。 在文書間複製部分內容。"
type: docs
weight: 120
url: /zh-hant/net/working-with-sections/
timestamp: 2024-09-25-11-08-55
---

有時你希望有一份文件，它不希望在所有頁面上具有相同的格式。 例如，您可能需要修改頁碼格式、不同頁面大小和方向，或者將第一份文件作為沒有頁碼的封面頁。 你可以用分組來實現。

節是控制標題和腳線、方向、欄位、邊距、頁碼格式等之水平節點。

Aspose.Words讓您可以管理章節、將一篇文件分成幾段，以及只對特定一段做出格式化變更。您可以在Aspose.Words中儲存章節格式化資訊，如標頭和尾列、頁面設定以及欄位設定。

本文說明如何處理章節與分節。

## 什麼是章節與分節標記

文件節是使用 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 和 [SectionCollection](https://reference.aspose.com/words/net/aspose.words/section/collection) 類別表示的。 節點物件是 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 節點的直接子節點，並且可以透過 [Sections](https://reference.aspose.com/words/net/aspose.words/document//properties/sections) 屬性來存取。 您可以使用一些方法來管理這些節點，例如 [Remove](https://reference.aspose.com/words/net/aspose.words/nodecollection/remove/)、[Add](https://reference.aspose.com/words/net/aspose.words/nodecollection/add/)、[IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) 和其他。

分節選項可將文件頁面分成可自訂布局的分節。

## 分節的種類

Aspose.Words 讓您可以透過不同的[BreakType](https://reference.aspose.com/words/net/aspose.words/breaktype/)列號分節來分割並格式化文件：

*SectionBreakContinuous
*SectionBreakNewColumn
*SectionBreakNewPage
*SectionBreakEvenPage
*SectionBreakOddPage

您也可以使用 [SectionStart](https://reference.aspose.com/words/net/aspose.words/sectionstart/) 枚舉來選擇只適用於第一節的斷點類型，例如 NewColumn、NewPage、EvenPage 和 OddPage。

## 管理一個節

由於一個節點是一個普通的複合節點，因此整個節點操作 API 可以用於對節點進行操作：添加、刪除和其他對節點的操作。 您可以在文章 [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/) 中瞭解更多有關節點的信息。

另一方面，你也可以利用 `DocumentBuilder` API 來工作。 在本文中，我們將專注於這一特殊的工作方式。

## 插入或移除一段分隔線

Aspose.Words讓你使用[InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/)方法，在文字中插入分頁。

以下範例示範了如何在文件中插入分節。

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "insert-section-breaks.cs" >}}

使用 [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/) 方法來刪除一個分節區段。 如果你不需要移除特定分頁，而要刪除該段落的內容，你可以利用第一種 [ClearContent](https://reference.aspose.com/words/net/aspose.words/section/clearcontent/) 的方法。

接下來的程式碼範例示範了如何移除段落斷點：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "remove-section-breaks.cs" >}}

{{% alert color="primary" %}}

請注意，分節點的資訊是在分節點前面的部分，而不是後面。 因此，如果你移除了一個分段點，之前的分段點之後的文字會得到該分段點的特性。 這可能會導致整個文件轉向橫向，或標題和頁腳變更或完全消失。

{{% /alert %}}

## 移動一節內容

如果您想將一節內容從文件中的一個位置移動到另一個位置，則需要獲取該節的索引。 Aspose.Words允許您通過使用 [Item](https://reference.aspose.com/words/net/aspose.words/sectioncollection//properties/item) 屬性從 [SectionCollection](https://reference.aspose.com/words/net/aspose.words/sectioncollection/) 中獲取一節的位置。 您可以使用 [Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/) 屬性取得您的文件中所有分節。 但是如果你只想得到第一個節奏，你可以利用 [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) 的屬性。

以下範例示範如何訪問第一個節點，然後迭代複合節點的子節點：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "section-child-nodes.cs" >}}

## 請指定分欄布陣。

有時你會希望你的文件透過為不同文件節的創意布局來看起來更好。 若您要指定目前區塊列的類型，您可以選擇使用 [SectionLayoutMode](https://reference.aspose.com/words/net/aspose.words/sectionlayoutmode/) 列舉方式的區塊排版模式。

* 預設
* 格子
* LineGrid
* SnapToChars

以下範例碼示意如何限制每個頁面的行數：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "line-grid-section-layout-mode.cs" >}}

## 編輯一節

當你新增一節到你的文件時，你會發現沒有任何體或段落可以編輯。 Aspose.Words 讓你用 [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words/section/ensureminimum/) 方法來保證一節至少有一段內容 – 它會自動在文件中加入一個 Body（或 HeaderFooter）節點，然後再加入一段文字。

以下範例程式碼示範如何透過 **EnsureMinimum** 來建立新節點：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "ensure-minimum.cs" >}}

### 新增或串接內容

如果您要繪製某個形狀或在節目的開始/結束添加文字或圖像，則可以使用 [AppendContent](https://reference.aspose.com/words/net/aspose.words/section/appendcontent/) 和 [PrependContent](https://reference.aspose.com/words/net/aspose.words/section/prependcontent/) 方法 [Section](https://reference.aspose.com/words/net/aspose.words/section/) 類別。

接下來這個程式碼範例示範了如何附加現有節的內容：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "append-section-content.cs" >}}

### 複製一段

 Aspose.Words 讓您透過使用 [Clone](https://reference.aspose.com/words/net/aspose.words/section/clone/) 方法來複製一整個區域。 

接下來的程式碼範例展示了如何複製你文件中的第一節：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "clone-section.cs" >}}

### 將文件間複製部分內容

在有些情況下，你可能有大文件與許多分節，你想要從一個文件複製一個分節的內容到另一個文件。

Aspose.Words 允許您透過 [ImportNode](https://reference.aspose.com/words/net/aspose.words/nodeimporter/importnode/) 方法在文件間複製章節。

以下示例程式碼示範了如何在文件之間複製部份內容：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "copy-section.cs" >}}

### 與分頁標頭和底線工作

每個分節顯示標題或腳注的基本規則十分簡單：

1. 如果該節沒有特定類型之標題/腳注，則會從前一節中取得。
2. 顯示在頁面上的標題/腳線類型由"不同第一頁"和"不同單數及偶數頁"部分設定控制--如果它們被禁用，則該部分的標題被忽略。

以下範例代碼示範了如何建立具有不同標題的 2 個區域：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

如果您要移除文書中的標題與腳線文本，而不移除文書中 [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) 個物件，您可以使用 [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/) 方法。 此外，您也可以使用 [DeleteHeaderFooterShapes](https://reference.aspose.com/words/net/aspose.words/section/deleteheaderfootershapes/) 方法從您的文件中 حذف所有標頭和腳注中的形狀。

以下範例展示了如何在一個區塊中清除所有標頭和腳段的內容：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-content.cs" >}}

以下範例示範如何從一個節中的所有標頭和腳線中移除所有形狀：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "delete-header-footer-shapes.cs" >}}

## 在一個部分中自訂頁面屬性

在列印一頁或整份文件之前，你可能想要自訂並修改單一頁面或整份文件的大小和排版。 透過頁面設定，您可以改變文書頁面之邊距、方向和尺寸等設定，以印出不同的第一頁或奇數頁。

Aspose.Words 允許您透過 [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) 類別自訂頁面與分節屬性。

接下來的程式碼範例展示了如何為當前節點設定頁面大小和方向等屬性：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "page-setup-and-section-formatting.cs" >}}

以下範例顯示如何在所有部分中修改頁面屬性：

{{< gist "aspose-words-gists" "1afca4d3da7cb4240fb91c3d93d8c30d" "modify-page-setup-in-all-sections.cs" >}}

## 另看：

* [Logical Levels of Nodes in a Document](/words/net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
* [Insert and Append Documents](/words/net/insert-and-append-documents/)

