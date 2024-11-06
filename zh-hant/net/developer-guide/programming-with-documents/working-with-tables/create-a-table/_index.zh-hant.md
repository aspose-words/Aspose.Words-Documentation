---
title: 如何在C#中創建表格?
second_title: Aspose.Words for .NET
articleTitle: 建立表格
linktitle: 建立表格
description: "如何以各種方式在C#中製作一張表格之指南。 在C#中建立一個表格，作為你的文件。"
type: docs
weight: 20
url: /zh-hant/net/create-a-table/
---

Aspose.Words 允許使用者從頭開始建立文件中的表格，並提供幾種不同的方法來做。 這篇文章會提供如何在每個方法中加入格式化的表格到你的文件的細節，並會在文章的最後比較每個方法。

## 預設表格樣式

新建立的表格具有與在 Microsoft Word 中使用的值類似的預設值。

| 桌面属性 | 預設在 Aspose.Words |
| :--------------------- | :---------------------- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

若表格緊密定位，表格便可內嵌；若可以任意在頁面上定位，則表格會浮動。 預設情况下，Aspose.Words總是會產生內嵌的表格。

{{% /alert %}}

## 透過DocumentBuilder建立一張表格

在 Aspose.Words 中，使用者可以用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 在文件中建立一個表格。 建立表格的基本演算法如下：

1. 開始該表，以 [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) 開頭
2. 透過 [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) 將一列新增至表格中–這會自動開始新的資料列。
3。 可選地，使用 [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) 屬性來指定單元格格式化
4. 透過合適的 **DocumentBuilder** 方法插入細胞內容，例如 [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/)、[InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) 等。
5. 重覆步驟2-4，直到該列完成
6. 呼叫 [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) 來結束當前的列
7. 工 作 可選地，使用 [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) 屬性來指定列格式
8. 在完成桌子之前重複步驟2到7
9. 打電話給 [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) 完成製作桌子。

{{% alert color="primary" %}}

重要細節：

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) 在一個細胞內也可以被叫出，這種情況下它會開始建立一個細胞內的嵌套表格。
* 經 [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) 調用後，會建立新的細胞。使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 類別中其他方法加入的任何內容都會新增到目前的細胞。 要在同一列中建立新的單元格，請再次呼叫 **InsertCell**。
* 如果 **InsertCell** 在 [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) 的緊接之後立即被調用，而列的結束時也同時發生，表將繼續在一新列中。
* 第 [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) 種結束表格的方法只應該在調用 **EndRow** 之後一次調用。 點選 **EndTable** 移動光標從目前的細胞到表格下方的位置。

{{% /alert %}}

建立表格的過程可以在下列圖片中清楚地看到：

![creating-table-process](creating-table-process.jpg)

接下來的程式碼範例顯示了如何使用 **DocumentBuilder** 來建立一個簡單的表格，並使用預設的格式：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

接下來的程式碼範例示範了如何透過 DocumentBuilder 建立格式化表：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

接下來的程式碼範例示範了如何透過 DocumentBuilder 插入嵌套的表格。

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## 透過 DOM （ Document Object Model ）建立資料表

您可以直接在 DOM 中插入資料表，方法是將新的 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) 節點加入特定位置。

請注意，在表結點創建後立即，表本身將完全是空的，也就是它尚未包含行和單元格。 若要將列和セル插入到表中，請將適當的 [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 和 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 子節點新增到 DOM。

{{% alert color="primary" %}}

透過此方法建立表格，會使用與 **DocumentBuilder** 一樣的資料表預設值。

{{% /alert %}}

接下來這段程式碼示例展示了如何從頭建立新的表格，透過向文件樹中加入適當的子節點：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## 從 HTML 建立表格

Aspose.Words 支援透過 [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) 方法從 HTML 來源將內容插入到文件中。 輸入可以是完整的 HTML 頁面，也可以是部分片段。

使用 **InsertHtml** 方法，使用者可以用像 `<table>`、`<tr>` 和 `<td>` 的表格標籤來在文件中插入表格。

以下範例展示了如何從包含 HTML 標籤的文字中插入一張表格到文件中：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## 插入現有表格的副本

在您需要根據一張已經存在的文件表格來建立新的表格時，經常會碰到這種情況。 最簡單的複製桌面方法，同時保留所有格式，就是透過 [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) 方法複製Table節點。

相同的技術可用於將現有的行或列複製到表格中。

以下範例展示了如何使用節點生成器複製一張表格：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載這個範例的樣本檔案。

{{% /alert %}}

以下範例示出了如何複製一張表的最後一行並附加到表中：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載這個範例的樣本檔案。

{{% /alert %}}

如果您正在建立一個由資料源中各筆資料動態成長的文件中的表格，那麼上述方法不建議使用。 取而代之，我們更容易透過使用具有區域之 Mail merge 來達到預期的輸出。 您可以在 [Mail Merge with Regions](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions)部分中了解更多有關此技術的資訊。

## 比較創建一張表格的方式

Aspose.Words 提供幾個方法來在文件中建立新表。 每個方法都有其優缺點，因此選擇要使用的方法通常取決於具體的情況。

讓我們更仔細地看這些創造表格的方式，並比較它们的優缺點：

| 方法 | 優點 | 缺點 |
| :- | :- | :- |
| Via `DocumentBuilder` | 插入表格和其他文書內容的標準方法 | 有時很難在一個建造器實例下同時建立許多不同的樣式。 |
| 透過 DOM | 直接將節點插入到 DOM 中，而不使用 **DocumentBuilder** 的程式碼會更好。 | 該表格是空的：在執行大多數作業之前，您必須呼叫 [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) 以建立任何缺失的子節點。 |
| 來自HTML | 可以用標籤 `<table>`、`<tr>`、`<td>` 等從 HTML 來源來建立新的資料表。 | 並非所有可能的 Microsoft Word 表格格式都能適用於 HTML |
| 複製現有的資料表 | 您可以建立一個現有資料表的複製，同時保留所有列和格子的格式。 | 在使用前必須先移除適當的子節點。 |