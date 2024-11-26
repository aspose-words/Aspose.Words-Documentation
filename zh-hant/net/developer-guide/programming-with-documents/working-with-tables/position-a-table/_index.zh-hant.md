---
title: C# 中的表格位置
second_title: Aspose.Words for .NET
articleTitle: 定位桌子
linktitle: 定位桌子
description: "在C#中指定表格位置。 使用C#來獲取表格對齊和設定浮動表格位置。"
type: docs
weight: 50
url: /zh-hant/net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

有浮動表格和內嵌表格：

* **內聯式表格** 在文本中位於相同的層，並放置在僅環繞表格上方和下方的文字流中。 內嵌表格會一直顯示在你放置的位置的段落之間。
* **浮動式表格** 在文字上層，而表格在段落上的相對位置是由表格錨點決定的。 由於此原因，浮動桌面的位置在文件中受到垂直與水平定位設定的影響。

有時你需要以特定方式將一張桌子放在一份文件中。 要做到這點，你需要使用對齊工具並設定表格與周圍文字間的縮排。

在這篇文章中，我們將討論Aspose.Words為定位提供什麼選項。

## 指定內聯表格位置

您可以使用Aspose.Words和API以及[Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/)屬性來設定內联表的位置。 因此，您可以調整表格與文件頁面相對的位置。

以下範例展示了如何設定內联表格的位置：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## 取得浮動桌面對齊方式

若表格文字排版設定為 **Around** ，則可透過 [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) 和 [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) 屬性來控制表格水平與垂直對齊。

用 **其他類型的文字包裝**，您可以透過 [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) 屬性達到內嵌表的對齊。

以下範例展示如何獲取桌格的對齊方式：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## 取得浮動表格位置

 浮動表的定位是以以下屬性為基礎決定的：

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) – 用於計算浮動表的水平定位之物件
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) – 用於浮動桌面垂直位置計算的物件
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) – 絶対水平浮動表位置
"* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) – 絕對垂直浮動桌面位置"
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) – 選項來啟用/停用與其他浮動物件重疊
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) – 浮動式表relative水平對齊方式。
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) – 浮動式表格相對垂直對齊方式。

接下來的程式碼範例示範了如何取得浮動式桌位之位置：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## 設定浮動桌面位置

正如你獲取一樣，你可以用相同的 Aspose.Words 和 API 設定浮動桌面的位置。

重要的是要知道對齊和水平及垂直距離是結合的性質，其中一方可以重置另一方。 例如，設定 **RelativeHorizontalAlignment** 會使 **AbsoluteHorizontalDistance** 恢復到預設值，而反之亦然。 垂直排列的也一樣是 true。

接下來的程式碼範例說明如何設定浮動表的位置：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## 取得離表格與周圍文字的距離

Aspose.Words 也提供了一個機會來找出桌面與周圍的文字之間的距離：

"- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – 距離的值從上方"
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) –知覺距離的值
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – 右邊的距離值
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) 距離值在左邊

以下範例說明如何取得一張表格與周圍文字之間的距離：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
