---
title: 在 C# 中使用列與行
second_title: Aspose.Words for .NET
articleTitle: 與列及行一起工作
linktitle: 與列及行一起工作
description: "使用 C# 處理表格中的部分元素 – 行、欄位和單元格。 指定C#中的標題行。"
type: docs
weight: 30
url: /zh-hant/net/working-with-columns-and-rows/
---

為了對表格工作有更多控制權，學習如何操作欄位和列。

## 找到表格元素索引 {#find-the-index-of-table-elements}

欄位、列和單元格都透過存取選中的檔案節點來管理，且透過其索引。 尋找任意節點的索引涉及從父節點收集所有子節點，然後使用 [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) 方法在集合中找到該節點的索引。

### 在一個文件中找到一張表的索引 {#find-the-index-of-table-in-a-document}

有時你可能需要對某份文件的特定表格進行更改。 為了做到這一點，你可以根據其索引來參考一張表格。

接下來這個範例代碼示明如何從文件中獲取一張桌子的索引：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### 在一個表格中查找一行的索引 {#find-the-index-of-a-row-in-a-table}

此外，您可能需要在選取的表格中對特定一行進行更改。 為了做到這一點，你也可以依其索引來參考一列。

接下來的程式碼範例示範如何取得一表格中某一行的索引：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### 找出列中一單元格之索引 {#find-the-index-of-a-cell-in-a-row}

最後，你可能需要對特定一細胞進行更改，而您也可以透過細胞索引來執行此動作。

以下程式碼示例顯示如何取得列中一格的索引：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## 與列 {#work-with-columns} 共同工作

在 Aspose.Words Document Object Model (DOM)，[Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) 節點由 [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 節點組成，然後是 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 節點。 因此，在 `Document` 物件模型的 Aspose.Words 中（如文字處理檔案），沒有欄位的概念。

"設計上，第 Microsoft Word 和 Aspose.Words 行是完全獨立的，而基本的特性與運算僅包含在表格中的行和細胞中。" 這會讓表格有了一些有趣的屬性：

- 每一行桌格數目可能完全不同
垂直方向上，每行各行的細胞可以有不同的寬度。
- 有可能將不同行格式和細胞數的表格結合起來

對於列的任何操作實際上都是捷徑，它們會以改變行細胞的方式來進行操作，使其看起來像是對列進行了應用。 也就是說，您可以透過簡單地迭代相同的表行細胞索引來執行列上的運算。

接下來的程式碼示例透過提供一個用於收集表中構成欄位的細胞的facade類別，簡化這些運算：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

以下範例示範如何在資料表中插入空白欄位：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

以下範例顯示如何從文件的表格中移除一列：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## 將行指定為標題行

您可以選擇將表格的第一行以標題列的形式僅在首頁上重複，或者如果表格被分成多個部分，在每個頁面上重複。 在 Aspose.Words 中，你可以用 [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/) 屬性讓每個頁面都重複頭行。

您也可以標記多個標題列，如果這些列位於表格開頭的連續位置。 要做到這一點，你必須將這些行應用的 **HeadingFormat** 屬性。

{{% alert color="primary" %}}

請注意，嵌套表格中不會有標題列。 也就是說，如果你有一張桌子在另一張桌子裡，這個設定沒有影響。 Microsoft Word 的限制是它不允許這件事，而不是 Aspose.Words。

{{% /alert %}}

以下範例代碼示範如何建立包含於隨後頁面重複的標題列的表格：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## 保持表和行不跨頁顯示 {#keep-tables-and-rows-from-breaking-across-pages}

有時該表格內容不應該跨頁。 例如，如果標題在表格上方，該標題和表格應始終在一起在同一頁上，以保持正確的外觀。

有兩種不同的技術可以幫助你達到這個功能：

 - `Allow row break across pages`，適用於表格列
- `Keep with next`，適用於表格細胞中的段落

預設時，上述屬性是關閉的。

### 保持列不會跨頁 {#keep-a-row-from-breaking-across-pages}

這涉及限制一列中細胞內的內容，不能跨越頁面。 在 Microsoft Word 中，這個選項可以在表格屬性下找到，稱為允許列跨過頁面 。 在 Aspose.Words 中，這是在 [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) 的物件中作為屬性 [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 的 [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages) 。

接下來的一個程式碼範例說明如何禁用表中每一列的行跨頁動作：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) 下載這個範例的樣本檔案。

{{% /alert %}}

### 保持表格不會跨頁 {#keep-a-table-from-breaking-across-pages}

若要阻止表格跨越頁面，我們必須指定，希望表格中的內容保持在一起。

為了做到這點，Aspose.Words使用了方法，這讓使用者可以選擇一張表格並啟用 [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/)參數來 true 每個桌格內的段落。 這個例外是表中最後一個段落，應該設定為 false。

以下程式碼範例示範了如何設定表格在同一個頁面中保持在一起：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) 下載此範例的範例檔案。

{{% /alert %}}