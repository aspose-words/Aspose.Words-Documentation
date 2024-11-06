---
title: 表格概覽
second_title:  Aspose.Words for .NET
articleTitle: 表格概覽
linktitle: 表格概覽
description: "在 Aspose.Words for .NET 中使用表格及其元件（如單元格、列和行）。 如何在C#中處理表格。"
type: docs
weight: 10
url: /zh-hant/net/table-overview/
---

Aspose.Words是一個用於處理各種格式的文件-PDF、HTML、不同 Microsoft Word 格式和其他格式的類圖書館，並支持以下方式的表格：

"* 文檔中的資料表會維持在打開/儲存和轉換期間"
* 它可以編輯表格、內容和格式，然後將更改儲存在支援表格的格式的檔案中

在這個文章中，我們將學會更多關於由 Aspose.Words 支援的表格結構、細胞、列和欄位以及如何處理這些表格。

## 表結構

如上所述，表格包含諸如 **Cell**、**Row** 和 **Column** 等元素。 這些是所有表格都通用的概念，無論文書的格式如何。

這是從一篇 Microsoft Word 文檔中找出的常見表格範例：

![tables-overview-aspose-words-net-1](tables-overview-1.png)

### 表格節點

從 Aspose.Words 加載的任何文件中的表格會被列為 **表節點**。 表可以找到一個小孩：

"-主文字"
-一個內聯的故事，例如評論或腳注
- 當表格嵌套在另一個表格中時，會消失的細胞

{{% alert color="primary" %}}

請注意，表格可以嵌套在另一個表格內任意深度。

{{% /alert %}}

### 表格內容

表節點不包含任何真實內容–相反，它是包含其他此類節點的容器，這些節點組成了內容：

- **Table** 包含許多 **Row** 節點。 這個表格提供了所有常規節點元素，讓您可以在文件中自由移動、編輯和移除該表。
- **Row** 代表一個單個表格列，並包含許多 **Cell** 節點。 此外，**Row** 提供元素來定義如何顯示行，如高度和對齊方式。
-**Cell**是包含在表中且可見的 true內容，由 **Paragraph** 和其他塊級節點組成。 此外，細胞裡可以包含嵌套的表格。

![tables-overview-aspose-words-net-2](tables-overview-2.png)

{{% alert color="primary" %}}

您可以透過 **DocumentExplorer** 來檢視文件中表格節點的結構。

{{% /alert %}}

### 空白段落在表格後面

上面這個圖示顯示了這份文件包含了一張有數行、每個行由兩個單元構成的表格。 每個兩個細胞都包括一段，它是細胞格式化的文本的容器。

值得注意的是，在文件中將兩個連續的表格分开時，至少需要在表格之後加上一個空段落。 若沒有這樣的段落，連續的表會合併成一個。 這次的行為，在Microsoft Word和Aspose.Words中是一樣的。

在 Aspose.Words 中，所有與表格相關的類別和屬性都包含在 [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/) 命名空間中。

## 另看

* [Aspose.Words Document Object Model (DOM)](/words/net/aspose-words-document-object-model/)
* [Logical Levels of Nodes in a Document](/words/net/logical-levels-of-nodes-in-a-document/)