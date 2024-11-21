---
title: 在C#中合併表格儲存格
second_title: Aspose.Words for .NET
articleTitle: 合併分細胞
linktitle: 合併分細胞
description: "如何在C#中合併表格單元格。 以C#檢查表格中的單元是否合併。"
type: docs
weight: 40
url: /zh-hant/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

有時某些列在一個表格中需要標頭或寬度佔滿整張桌子的文本大塊。 若要正確設計表格，使用者可以將多個表格单元格合併成一個。Aspose.Words 在處理所有輸入格式時支援合併的單元格，包括從 HTML內容進口。

## 如何合併表格單元格

在 Aspose.Words 中，合併的細胞是由 [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) 類的以下屬性表示的：

- [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) 描述細胞是否為水平合併細胞的一部分
- [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/) 描述細胞是否是細胞垂直合併的一部分

這些屬性的值決定了細胞的合併動作：

- 串列中合併的單元的第一個單元將具有 [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
"- 任何之後合併的單元格將有 [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)"
- 沒有合併的單元格會具有 [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

有時，當在一個表格中載入現有的資料欄時，它們會出現合併的樣子。 不過，它實際上可以是一個長的細胞──有時 Microsoft Word 會以此方式輸出合併的細胞。 當你試圖處理個別的單元時，這可能會讓人感到困惑，但似乎沒有任何特定的模式來說明何時會發生這種情況。

{{% /alert %}}

## 檢查細胞是否合併

若要檢查一個單元格是否為合併的單元格序列的一部分，我們只需檢查 **HorizontalMerge** 和 **VerticalMerge** 的屬性。

接下來的程式碼範例說明如何列印水平與垂直的单元合併類型。

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) 下載此範例的樣本檔案。

{{% /alert %}}

## 在使用 DocumentBuilder 時，合併細胞。

要在使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 創建的表格中合併細胞，您需要為合併預期每個細胞設置合適的合併類型 – 第一是 **CellMerge.First**，然後是 **CellMerge.Previous** 。

此外，您必須記得將這些無需合并的單元格清除合併設定--可透過將第一個非合并單元格設置為 **CellMerge.None** 來完成。 若不進行此操作， bảng表中的所有單元格將會被合併。

以下範例示範如何建立一個由兩行組成的表格，其中第一行的格子會水平合併：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

以下範例顯示如何建立具二列的表格，第一列的細胞會垂直合併：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## 其他案例中的合併細胞

在 **DocumentBuilder** 不使用的其它情況，例如在既存的表格中，以之前的那種方式合併列位可能就不那麼容易了。 相反，我們可以將合併屬性的應用涉及的基本操作包覆在一個方法中，讓這個任務變得更簡單。 此方法與名為合併自動化方法的合併自動化方法相似，用於合併表格中的多個細胞。

以下程式碼會將指定範圍內的表格單元格合併，從指定的单元格開始，到最後的单元格結束。 在这种情况下，这个范围可以横跨多个列或行：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

接下來的程式碼範例示範了如何將指定兩個細胞之間的範圍欄位合併：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) 下載本範例的範例檔案。

{{% /alert %}}

根據你使用的 .NET Framework 版本，你可能希望透過將此方法轉換為擴充方法來改良它。 在這個情況下，您可以直接在一個細胞上調用此方法來合併一系列的細胞，例如 `cell1.Merge(cell2)`。

## HTML表格中垂直與水平合併的單元格

正如我們在之前的文章中說的，一張 Microsoft Word 表格是由一些獨立行構成的一組。 每行都有一套獨立於其他行的細胞。 因此,在Microsoft Word表格中,沒有像“列”这样的物件,而“第1列”就像是“表格中每行第1行的套件”。 這讓使用者可以有一個表格,例如,第1行包含2cm和1cm的2個格,第2行包含2個不同的格,1cm和2cm寬. 且 Aspose.Words 支持這種表格的概念。

在 HTML 中，表格具有完全不同的結構：每一行有相同的數量，以及（對於這個任務很重要）每一個細胞都有對應的欄的寬度，所有同一個欄中的細胞都一樣。 如果 **HorizontalMerge** 和 **VerticalMerge** 返回錯誤值，則使用以下範例程式碼：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) 下載此範例的樣本檔案。

{{% /alert %}}

## 將之轉換為水平方向合併的細胞

有時不可能辨別哪些細胞是合併的，因為有些較新版本的 Microsoft Word 在水平合併細胞時不再使用合併標誌。 不過，在細胞根據其寬度從水平方向合併的狀況中，Aspose.Words提供`ConvertToHorizontallyMergedCells`方法來轉換細胞。 此方法簡單地將表格轉換並依需要新增新細胞。

以下範例顯示上述方法在實際操作上的應用：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
