---
title: C# 中的表位置
second_title: .NET 格式的 Aspose.Words
articleTitle: 放置桌子
linktitle: 放置桌子
description: "指定 C# 中的表格位置。使用 C# 获取表格对齐方式、获取和设置浮动表格位置。"
type: docs
weight: 50
url: /zh/net/position-a-table/
---

有浮动表和内联表：

* **内联表** 与文本放置在同一层，并放置在仅围绕上方和下方表格的文本流中。内联表格将始终出现在放置它们的段落之间。
* **浮动桌子** 分层在文本之上，表格相对于段落的位置由表格锚确定。因此，浮动表格在文档中的位置会受到垂直和水平定位设置的影响。

有时您需要以某种方式在文档中定位表格。为此，您需要使用对齐工具并设置表格和周围文本之间的缩进。

在本文中，我们将讨论 Aspose.Words 为定位提供了哪些选项。

## 指定内联表位置

您可以使用 Aspose.Words API 和 [Alignment](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/alignment/) 属性设置内联表的位置。因此，您可以调整表格相对于文档页面的对齐方式。

以下代码示例展示了如何设置内联表的位置：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## 获取浮动表对齐方式

如果表格文本换行设置为 **Around**，则可以使用 [RelativeHorizontalAlignment](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/relativehorizontalalignment/) 和 [RelativeVerticalAlignment](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/relativeverticalalignment/) 属性获取表格的水平和垂直对齐方式。

通过 **其他类型的文字换行**，您可以使用 [Alignment](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/alignment/) 属性获得内联表对齐方式。

以下代码示例展示了如何获取表格的对齐方式：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## 获取浮动表位置

 浮动表的位置是使用以下属性确定的：

* [HorizontalAnchor](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/horizontalanchor/) – 用于计算浮动桌子水平位置的对象
* [VerticalAnchor](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/verticalanchor/) – 用于计算浮动桌子垂直位置的对象
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/absolutehorizontaldistance/) – 绝对水平浮动工作台位置
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/absoluteverticaldistance/) – 绝对垂直浮动工作台位置
* [AllowOverlap](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/allowoverlap/) – 启用/禁用与其他浮动对象重叠的选项
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/relativehorizontalalignment/) – 浮动表相对水平对齐。
* [RelativeVerticalAlignment](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/relativeverticalalignment/) – 浮动表相对垂直对齐。

以下代码示例展示了如何获取浮动表的位置：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## 设置浮动表位置

就像获取一样，您可以使用相同的 Aspose.Words API 设置浮动表的位置。

重要的是要知道对齐方式以及水平和垂直距离是组合属性，并且一个可以重置另一个属性。例如，设置 **RelativeHorizontalAlignment** 会将 **AbsoluteHorizontalDistance** 重置为其默认值，反之亦然。垂直排列的 true 也是如此。

以下代码示例显示如何设置浮动表的位置：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## 获取表格和周围文本之间的距离

Aspose.Words 还提供了找出表格和周围文本之间距离的机会：

- [DistanceTop](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distancetop/) – 距上方的距离值
- [DistanceBottom](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distancebottom/)--感知距离值
- [DistanceRight](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distanceright/) – 右侧距离值
- [DistanceLeft](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distanceleft/) – 左侧距离值

以下代码示例演示如何获取表格与其周围文本之间的距离：

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
