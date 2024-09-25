---
title: 如何在C#中從`DataTable`构建一張桌子
second_title: 「Aspose.Words for .NET」
articleTitle: 「從 `DataTable` 中建構一張表格」
linktitle: 「從 `DataTable` 中建構一張表格」
description: "「使用C#從外部資料庫填入文件表的範例。」"
type: docs
weight: 120
url: /zh-hant/net/how-to-build-a-table-from-a-datatable/
---

「經常你應用程式會從資料庫取出資料，以 **DataTable** 的形式儲存。」 您可以輕鬆將此資料插入您的文件中，作為新表格，並快速為整張表格應用格式。

{{% alert color="primary" %}}

請注意，以 **DataTable** 資料插入至文書表格中首選的方式是使用 [Mail Merge with Regions](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) 。 本文所述的技術是僅在你無法事先建立適合合併資料的範本時才建議使用，也就是如果你需要一切都必須以程式方式發生。

{{% /alert %}}

「使用 Aspose.Words，您可以輕易地從資料庫中取得資料並儲存在一個表格中：」

1. 在您的**Document**上建立一個新的**DocumentBuilder**物件。
1. 「以 **DocumentBuilder** 開始一個新的表格。」
1. 「如果我們想要將 **DataTable** 中的每一欄名稱插入為標題列，那麼我們應該對每一個資料欄進行迭代，並將這些欄名寫入到表格中的某一行。」
1. 在 **DataRow** 中迭代每個 **DataTable**。
   1. 「在 **DataRow** 中迭代每個物件。」
   1. 請用 **DocumentBuilder** 將物件插入文件中。 「使用的方法取決於要插入的物件類型，例如：**DocumentBuilder.Writeln**表示文字，**DocumentBuilder.InsertImage**表示字節陣列（代表圖像）。」
   1. 「在處理 **DataRow** 的最後也結束由 **DocumentBuilder** 生成的列，使用 **DocumentBuilder.EndRow**。」
1. 一旦所有從 **DataTable** 的列都被處理完，就透過呼叫 **DocumentBuilder.EndTable** 來完成這個表。
1. 最後，我們可以透過使用適合的表格屬性（例如 **Table.StyleIdentifier**）來設定所需的表格樣式，並自動將格式化應用到整個表格上。

**ImportTableFromDataTable**" 方法接受一個"**DocumentBuilder**" 物件，以及包含資料的"**DataTable**"，還有一個旗標來指定是否包含 "**DataTable**" 中的欄位標題在表格頂端。 這方法用建構器當前的位置和格式來建立這些參數的表格。 「提供從 `DataTable` 匯入資料並將其插入新資料表的方法，透過 DocumentBuilder。」

「下述資料在我們的 **DataTable** 中是用來這個範例使用的：」

![how-to-build-a-table-from-a-datatable-aspose-words-net](how-to-build-a-table-from-a-datatable-1.png)

以下範例示範如何在 Aspose.Words 中執行上述演算法。

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

方法然後可以用您的 **DocumentBuilder** 和資料輕易地呼叫。

以下範例顯示如何從 `DataTable` 導入資料並將其插入文書中的新資料表：

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
