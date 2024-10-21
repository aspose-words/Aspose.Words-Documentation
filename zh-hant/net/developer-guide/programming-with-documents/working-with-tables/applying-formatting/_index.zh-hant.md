---
title: C# 中的表格格式化
second_title: 「Aspose.Words for .NET」
articleTitle: 適用表格格式化
linktitle: 適用表格格式化
description: "「使用 C# 在詳細資料中格式化表格。」 使用 C# 來格式化表格中的每個部分。"
type: docs
weight: 70
url: /zh-hant/net/applying-formatting/
---

每個表格元素都可以應用不同的格式化處理。 例如，表格格式將適用於整個表格，而行格式僅適用於特定行，而單元格格式僅適用於某些單元格。

Aspose.Words 提供一個豐富的 API 來檢索和應用格式設定於一個表格。 您可以利用 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)、[RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) 和 [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) 節點來設定格式。

在本文中，我們將討論如何對不同的表格節點應用格式化以及表格格式設定 Aspose.Words 支援哪些。

## 對不同節點施加格式化

「在本節中，我們將看看如何在各種表格節點上應用格式。」

### 表格層級格式化

「若要為表格應用格式設定，您可以使用對應的 **Table** 節點上可用的屬性，並使用 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)、[PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) 和 [TableCollection](https://reference.aspose.com/words/net/aspose.words.tables/tablecollection/) 類別。」

{{% alert color="primary" %}}

「請注意，在將表屬性套用前，表必須至少有一行。」 「這意味著當建立一張包含 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 的表格時，必須在對 [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) 的第一次呼叫後或在將第一行加入表格後或在直接插入到 DOM 的節點時來進行此格式化。」

{{% /alert %}}

「下面這些圖片展示了 **Table**格式特點在 Microsoft Word中的表現及其對應的 Aspose.Words特性。」

![formattin-features-table-level-aspose-words-net](applying-formatting-1.png)




![formatting-table-options-aspose-words-net](applying-formatting-2.png)

接下來的程式碼範例示範了如何將輪廓邊框應用到一個表格上：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-outline-border.cs" >}}

{{% alert color="primary" %}}

「你可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載此範例的樣本檔案。」

{{% /alert %}}

「以下範例顯示如何建立具有所有邊框啟用（網格）的表格：」

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "build-table-with-borders.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載本範例的樣本檔案。」

{{% /alert %}}

### 「資料列層級格式化」

「 **行層級** 格式化可以透過 [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/)、[RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) 和 [RowCollection](https://reference.aspose.com/words/net/aspose.words.tables/rowcollection/) 等類別來控制。」

{{% alert color="primary" %}}

注意，一 **Row** 只能是 **Table** 的子節點。 「同時，必須在 **Row** 中有至少一個 **Cell** ，這樣才能將格式化應用到它上。」

{{% /alert %}}

「下面的圖片展示了 **Row** 在 Microsoft Word 的格式化功能及其在 Aspose.Words 中的對應屬性。」

![formatting-row-level-aspose-words-net](applying-formatting-3.png)

以下範例顯示如何修改表列格式：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-row-formatting.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載此範例的樣本檔案。」

{{% /alert %}}

### 「細胞級格式化」

「細胞級別的格式化是由 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/)、[CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) 和 [CellCollection](https://reference.aspose.com/words/net/aspose.words.tables/cellcollection/) 類別控制的。」

{{% alert color="primary" %}}

「請注意，**Cell**只能是**Row**的子節點。」 「同時，**Cell** 中必須至少有一個 [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) 的存在，以便可以對它進行格式化。」

「除了 **Paragraph** ،你也可以在 **Cell** 中插入一個 **Table**。」

{{% /alert %}}

「下面的圖片顯示了 **Cell** 格式化功能在 Microsoft Word 中的表現及其對應的屬性在 Aspose.Words 。」

![formatting-cell-level-aspose-words-net](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](applying-formatting-5.png)

以下範例說明如何修改表格欄位的格式：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "modify-cell-formatting.cs" >}}

{{% alert color="primary" %}}

「您可以從[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)下載此範例的樣本檔案。」

{{% /alert %}}

以下範例顯示了如何設定儲存格內容左邊/上邊/右邊/下邊的空間（以點為單位）：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "cell-padding.cs" >}}

## 設定行高度

設定行高最簡單的方式是使用 **DocumentBuilder**。 「透過適當的 **RowFormat** 屬性，您可以設定預設高度設定或為表格中的每一列應用不同的高度。」

在 Aspose.Words 中，表格列的高度由以下項目控制：

"- 行高屬性 – [Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/height/)"
"- 給定的行高度規則屬性 - [HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/heightrule/)"

「同時，您可以為每一列設定不同的高度–這讓您能夠廣泛地控制桌子設定。」

{{% alert color="primary" %}}

「指定物件高度的選項規則可以使用 [HeightRule](https://reference.aspose.com/words/net/aspose.words/heightrule/) 列舉來設定。」

{{% /alert %}}

以下範例顯示如何建立包含單個細胞的表格並套用格式：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "apply-row-formatting.cs" >}}

## 「指定表和細胞寬度」

在一份 Microsoft Word 文檔中，一個表格提供了一些不同的方式來重新調整其大小和個別的細胞。 這些屬性讓表格的樣貌和行為可做很多控制，讓 Aspose.Words 可支援表格行為，如 Microsoft Word。

「知道很重要的是，表元素呈現許多不同的屬性，可以影響整體表寬度以及個別細胞的計算：」

「- 桌子最寬的偏好」
"- 個別細胞的首選寬度"
「- 在表格上允許自動調整」

這篇文章詳細說明了各樣的桌子寬度計算屬性如何運作以及如何完全控制桌子寬度計算。 這是
在這種情況下，如果表格排版沒有預期的出現，那麼知道這事尤其有用。

{{% alert color="primary" %}}

在大部分情況下，優選是推薦的細胞而不是表格寬度。 「首選的欄寬更符合 DOCX 格式規範與 Aspose.Words 模型。」

「細胞寬度其實是 DOCX 格式的計算值。」 實際的細胞寬度可以取決於許多因素。 例如，改變頁邊距或首選的表格寬度會影響實際的細胞寬度。

首選的列寬是儲存在文件中的一個細胞屬性。 「它不依賴任何東西，且當你改變表格或其他細胞的屬性時，它不會改變。」

{{% /alert %}}

{{% alert color="primary" %}}

「本文所述之所有屬性和方法都與 Microsoft Word 中表格的工作方式有關。」 「因此，在多數情況下，如果你透過程式設計方式建立你的表格但卻難以建立所需的表格，你可以在 Microsoft Word 中先嘗試以視圖方式來建立它，然後再將格式化值複製到你的應用程式中。」

{{% /alert %}}

### 如何使用首選寬度

「表格或個別細胞所需的寬度透過首選寬度屬性來定義，而這個屬性是元素嘗試適應的尺寸。」 也就是說，你可以為整個表格或個別細胞設定首選寬度。 「在某些情況下，可能無法完全符合這個寬度，但在大多數情況下實際的寬度會接近這個值。」

透過 [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) 類別的方法來設定合適的寬度類型和值。

「* [Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/auto/) 方法來指定自動或"無首選寬度」
* [FromPercent](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompercent/) 方法來指定百分比寬度
* [FromPoints](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompoints/) 方法來指定點數的寬度

以下圖片顯示了 Microsoft Word 中 *首選寬度設定功能* 的示範及其在 Aspose.Words 中的對應特性。

![formatting-table-properties-aspose-words-net](applying-formatting-8.png)

「這些選項如何應用於文件中真實的表格，可從下面的圖片見到。」

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

在您可以在表格中使用首選寬度之前，您必須確保表格至少包含一列。 這是因為，這樣的書寫格式化在一個 Microsoft Word 文檔或在一個由 Aspose.Words 編排的文檔中會儲存於表格的列中。

{{% /alert %}}

#### 「指定首選表格或儲存格寬度」

「在 Aspose.Words 中，透過 [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) 屬性和 [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) 屬性來設定表格和細胞的寬度，且可從 [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) 列舉中取得選項：」

- **Auto**，等於未設定首選寬度
"- **Percent**，其適合於在視窗或容器中可用的空間，並重新計算值，當可用的寬度改變時"
"- **Points**，對應於指定的點數寬度中的元素"

{{% alert color="primary" %}}

預設的情況下，一張表格可以描述為在頁面上可用空間的 100% 內。 「在這種情況下，這意味著這個表格將試圖佔領左邊和右邊頁邊距之間的空間。」

{{% /alert %}}

「使用 [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) 屬性會依其容器：頁面、文本列或內嵌表格中的外層表格細胞而調整其首選寬度。」

以下範例顯示如何將表格設定為自動符合 50% 的頁面寬度：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-page-width.cs" >}}

「在一個指定的欄位上使用 [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) 屬性會調整其首選寬度。」

以下範例說明如何設定不同的首選寬度設定：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "preferred-width-settings.cs" >}}

#### 找到「首選寬度型和值」

「您可以使用 [Type](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/type/) 和 [Value](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/value/) 屬性來找到所需的表格或 komór 的首選寬度詳細資料。」

以下程式碼範例示範如何取得表格細胞的首選寬度類型：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "retrieve-preferred-width-type.cs" >}}

{{% alert color="primary" %}}

「您可以從[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx)下載此範例的樣本檔案。」

{{% /alert %}}

### 如何設定自動調整？

「[AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/)」屬性允許表格中的細胞根據選定的準則來成長和縮小。 例如，您可以使用 **「自動調整到視窗」** 選項將表格調整為頁面的寬度，並使用 **「自動符合內容」** 選項允許每個單元格根據其內容增長或縮減。

{{% alert color="primary" %}}

「此外，**AllowAutoFit**屬性可與首選的單元格寬度一起使用來格式化一個自動調整其內容的單元格，但同時也具有初始寬度。」 「如果有必要，細胞寬度便能超越此幅寬。」

{{% /alert %}}

預設 Aspose.Words 會插入新的表格，使用 **自動適應窗口**。 桌子會根據可用頁面寬度而調整大小。 「若要調整表格的大小，您可以呼叫 [AutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/autofit/) 方法。」 「此方法接受一個 [AutoFitBehavior](https://reference.aspose.com/words/net/aspose.words.tables/autofitbehavior/) 列舉值，指定對表格應用何種自動調整。」

很重要的一點是，自動調整方法其實是一個縮路，它會將不同的屬性同時套用到表格上。 這些是實際讓表格表現出所觀察的行為的特性。 我們將討論每個自動調整選項的這些性質。

「以下範例示範如何設定表格，讓其根據各單元內容而縮小或擴大：」

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-auto-fit.cs" >}}

#### 「自動調整表格至視窗」

當自動調整到一個窗口適用於一個表格時，接下來這些操作实际上是在後台執行的：

1. **Table.AllowAutoFit** 屬性已啟用，以自動調整列以適應可用內容，使用 **Table.PreferredWidth** 值 100%。
「2. **CellFormat.PreferredWidth** 從所有表格單元格中移除了」
      {{% alert color="primary" %}}
   「請注意，這與 Microsoft Word 的動作略有不同，在這種情況下，每個單元格首選的寬度會根據其當前的大小和內容而設定適當的值。 Aspose.Words 不會更新首選寬度，因此它們只會被清除。」
      {{% /alert %}}
3。 「列寬度會重新計算給當前的表格內容 – 最終結果是一個佔據所有可用寬度的表格。」
4. 「表格中的欄位寬度會隨著使用者編輯文字而自動變更。」

以下範例示範了如何自動調整表格以符合頁面寬度：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-page-width.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載此範例的樣本檔案。

{{% /alert %}}

#### 「自動調整表格至內容」

「當資料表自動調整時，實際執行的步驟如下：」

1. 「**Table.AllowAutoFit**」屬性會自動使每個細胞根據其內容而變大。

2。 「首選的表格寬度從 **Table.PreferredWidth** 中移除了， **CellFormat.PreferredWidth** 每個表格單元格都移除了」
      {{% alert color="primary" %}}

   請注意，這個自動調整選項會從細胞中移除首選寬度，就像在 Microsoft Word 中的一樣。 「若您要保持欄寬，而要增加或減少欄位以適合內容，您應該將 **Table.AllowAutoFit** 設定為 **True** 的屬性，而不是使用自動調整捷徑。{{% /alert %}}」

3。 「列寬度會重新計算給當前表格內容–最終結果是一個表格，其中列寬度和整個表格寬度會自動調整以最佳地適合內容，因為使用者編輯文本。」

「以下範例說明如何自動將表格調整為其內容：」

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-contents.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載此範例的樣本檔案。」

{{% /alert %}}

#### 在表中禁用自動調整功能並使用固定欄寬

如果一張桌子已禁用自動調整，而固定列寬被用來使用，以下步驟將被執行：

1. **Table.AllowAutoFit** 屬性被停用，因此欄位不會隨著內容增長或縮小。

2。 「整張桌子的首選寬度已被移除，所有桌子單元格中「**Table.PreferredWidth**」、「**CellFormat.PreferredWidth**」已被移除。」
3。 「最終結果是一張桌子，其欄寬由 [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) 屬性決定，且當使用者輸入文字或當頁面重新調整大小时，其欄位並非自動重新調整大小」

{{% alert color="primary" %}}

注意若沒有為 **CellFormat.Width** 指定寬度，預設值為一個英吋（72 點）。

{{% /alert %}}

「接下來這個程式碼範例示範了如何關閉自動調整寬度，並為指定的表格啟用固定寬度：」

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "auto-fit-table-to-fixed-column-widths.cs" >}}

{{% alert color="primary" %}}

您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載此範例的樣本檔案。

{{% /alert %}}

### 「計算細胞寬度時之優先順序」

"Aspose.Words 能讓使用者透過多個物件來設定表格或セル的寬度，包括 [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) – 它的 [Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) 屬性大部分是從舊版本遺留下來的，然而它仍可簡化設定セル寬度的動作。」

很重要的是要知道，**CellFormat.Width** 屬性會根據表格中已存在的哪些其他寬度屬性而有所不同。

「Aspose.Words 使用以下順序來計算細胞寬度：」

| 訂單 | 「財產」 | 描述 |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1 | 「[AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/)」是決定的 | 「如果 **AutoFit** 啟用：<br>- 表格可能會超過首選寬度來容納內容 – 它通常不會縮小至低于首選寬度 <br>- 对 **CellFormat.Width** 值的任何更改都将被忽略，而細胞將與其內容相適應」 |
| 2 | 「[PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) 的值為 **Points** 或 **Percent**」 | 「**CellFormat.Width** 被忽略」 |
| 3 | 「以 [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) 為值」的 **Auto** | 「從 **CellFormat.Width** 的值被複製並成為該單元格的首選寬度（以點為單位）」。 |

{{% alert color="primary" %}}

「對於寬度屬性的任何改變，都不會更新到優先寬度，必須應用於優先寬度。」

{{% /alert %}}

{{% alert color="primary" %}}

在建立固定表格排版時，請指定單元格寬度。 「沒有寬度的細胞無法儲存為 DOC 格式。」 「除了 DOC，其他文件格式（例如 DOCX）在原則上允許儲存固定格式的表格中沒有寬度的細胞。」

{{% /alert %}}

## 允許細胞之間留白

你可以取得或設定任意額外的空間，它與 Microsoft Word 中的「Cell Spacing」選項相似。 「這可以用 [AllowCellSpacing](https://reference.aspose.com/words/net/aspose.words.tables/table/allowcellspacing/) 屬性來做。」

這些選項如何套用到一張真實的文件中的表格，可以看下面的圖。

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-net" style="width:500px"/>

以下範例示範了如何設定細胞之間的間距：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "allow-cell-spacing.cs" >}}

## 「应用边框和阴影」

「邊界和陰影可以透過 [Table.SetBorder](https://reference.aspose.com/words/net/aspose.words.tables/table/setborder/)、[Table.SetBorders](https://reference.aspose.com/words/net/aspose.words.tables/table/setborders/) 和 [Table.SetShading](https://reference.aspose.com/words/net/aspose.words.tables/table/setshading/) 來應用到整個表格，或僅透過 [CellFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/borders/) 和 [CellFormat.Shading](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/shading/) 來應用到特定的單元格。」 「此外，透過 [RowFormat.Borders](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/borders/) 可設定列邊框，但無法以此方式來做陰影。」

「下面的圖片顯示了 Microsoft Word 中的邊框和陰影設定及其在 Aspose.Words 中的對應屬性。」

![formatting-border-line-aspose-words-net](applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](applying-formatting-7.png)

以下範例展示了如何以不同的邊界與陰影來格式化表格和細胞：

{{< gist "aspose-words-gists" "770bf20bd617f3cb80031a74cc6c9b73" "format-table-and-cell-with-different-borders.cs" >}}