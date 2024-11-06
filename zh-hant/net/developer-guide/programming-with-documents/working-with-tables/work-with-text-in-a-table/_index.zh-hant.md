---
title: 在表格中與文字一起工作
second_title:  Aspose.Words for .NET
articleTitle: 在表格中與文字一起工作
linktitle: 在表格中與文字一起工作
description: "在 C# 中替換表格中的文字。 使用 C# 从表格或单元格中提取纯文本。"
type: docs
weight: 60
url: /zh-hant/net/work-with-text-in-a-table/
---

如前文所述，表格通常包含簡單的文字，雖然其他內容，例如圖片或甚至其他表格，也可以放進表格細胞中。

在表格中增加文字或其他內容時，是透過 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 類別適當的方法來完成，詳見 **"建立桌子"** 文章。 在本文中，我們將討論如何在已經存在於表中的文本上進行工作。

## 在表格中替換文字

桌子，就像任何其他節點在 Aspose.Words 中，有 [Range](https://reference.aspose.com/words/net/aspose.words/range/) 物件的存取權。 透過使用資料表範圍物件，您可以將資料表中的文字替換。

當替換時使用特殊文字的能力目前受支援，所以可以將現有的文字替換為多段落文字。 要做到這一點，你需要使用對應的 [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) 方法中描述的特定元字符。

{{% alert color="primary" %}}

通常，文字替換應在細胞層級（每細胞）或段落層級進行。

{{% /alert %}}

以下範例顯示如何在整個桌面的所有單元格中替換一整串文字的各個案例：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## 從表格或 سلول中提取純文字

使用 **Range** 物件，您也可以在整張表格範圍上呼叫方法，並提取成單純文字。 要做到這一點，使用 [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) 屬性。

以下範例展示了如何在表格上列印文本範圍：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

從個別的表格單元中提取內容時，使用了相同的技術。

以下範例程式碼示範了如何列印行和資料列元素的文字範圍：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## 以替代文字工作

Microsoft Word 個表格有 `table title` 和 `table description` ，提供表格中資訊的替代文字表現。

在 Aspose.Words 中，您也可以透過 [Title](https://reference.aspose.com/words/net/aspose.words.tables/table/title/) 和 [Description](https://reference.aspose.com/words/net/aspose.words.tables/table/description/) 屬性來加上一個表格標題和描述。 這些屬性對符合 ISO/IEC 29500 的 DOCX 文檔具有意義。 在儲存格式為 ISO/IEC 29500 的檔案時，這些屬性會被忽略。

以下程式碼範例示範了如何設定資料表的標題與描述屬性：

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}