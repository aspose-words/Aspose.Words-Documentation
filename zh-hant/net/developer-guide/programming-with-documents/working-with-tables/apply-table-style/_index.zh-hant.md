---
title: 在 Word 文檔中改變表格樣式
second_title: 「Aspose.Words for .NET」
articleTitle: 應用表格風格
linktitle: 應用表格風格
description: "「高級表格格式化 C#。」 用C#來建立表格風格。 應用 C# 的表格樣式。"
type: docs
weight: 80
url: /zh-hant/net/working-with-tablestyle/
---

「表格樣式定義了一組格式，可以輕鬆地套用到一張桌面上。」 「格式化（如邊界、填充、對齊和字型）可以在表格樣式中設定並套用到許多資料表上，以產生一致的外觀。」

「Aspose.Words 支援將表格風格套用至一張表格上，也支援讀取任何表格風格的屬性。」 「在以下的方式下，表格樣式會保留於載入與儲存期間：」

"-DOCX和WordML格式的表格样式在加载或保存到这些格式时得到保留"
"- 儲存的表格樣式在以 DOC 格式載入或儲存時保持不變（但以其他任何格式都不會）"
「- 在輸出其他格式、渲染或列印時，表格風格會轉換為表格的直接格式化，因此所有格式都得到保留。」

## 「建立表格樣式」

用戶可以建立新樣式並將其新增到樣式集合中。 「[Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/)」方法用來建立新資料表樣式。

以下範例示範如何建立新的使用者定義樣式：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## 複製現有的表格樣式

若有必要，您可以透過 `AddCopy` 方法將某份文件中已經存在的一個表樣式複製到您的樣式集合中。

很重要的一點是，用這個複製，連結的樣式也跟著被複製。

接下來的程式碼範例示範了如何將某個樣式從一個文件中導入到另一個文件中：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## 應用現有表格樣式

Aspose.Words 提供一個從 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 類別中繼承的 [TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/)。**TableStyle** 讓使用者可以應用於不同的樣式選項，例如陰影、填充、缩进，以及 [CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) 和 [Font](https://reference.aspose.com/words/net/aspose.words/style/font/) 等。

「此外，Aspose.Words提供[StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/)類別和一些`Table`類別的屬性，來指定我們將使用的表格風格：[Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/)、[StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/)、[StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/)和[StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/)。」

「Aspose.Words」也提供「[ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/)」這個類別來代表以指定的樣式為條件，某個表格區域所應用的特定格式化、「[ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/)」來表示由「**ConditionalStyle**」物件組成的集合。 這個集合包含一個永久的項目集，每個值分別代表 [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) 列舉型別中的一個項目。 「**ConditionalStyleType**」這個枚舉定義了可能在表格中定義條件格式的所有表格區域。

在這種情況下，可以在「ConditionalStyleType」列舉型別下所定義的所有可能桌面區域中設定條件式格式化。

以下範例展示了如何定義表格頭列的條件格式：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

「您也可以選擇要應用於哪些表的樣式，例如第一欄、最後一欄或有紋飾的行。」 「它們列在 [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) 枚舉中，並且透過 [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) 屬性來適用。」 **TableStyleOptions** 列舉模式允許對這些特徵進行位圖結合。

以下範例示範如何建立具有表格樣式的新表格：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

「下面這些圖片顯示了 **Table Styles** 在 Microsoft Word 的表示形式及其在 Aspose.Words 中的對應性質。」

![formatting-table-style-aspose-words-net](applying-formatting-10.png)

## 「從表格風格中提取格式並將其應用為直接格式」

Aspose.Words 也提供 [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) 方法來將格式從一張表格風格中提取並將其擴展到表格的列和單元格中作為直接格式。 試著將格式化與表格風格和細胞風格結合。

{{% alert color="primary" %}}

「此方法不會蓋過透過列或細胞格式來適用於該表的其他格式設定。」

{{% /alert %}}

以下程式碼範例示範如何透過直接格式化將格式設定從樣式類別擴張到表格列和細胞：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

「您可以從 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下載此範例的樣本檔案。」

{{% /alert %}}
