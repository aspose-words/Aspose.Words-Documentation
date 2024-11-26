---
title: Java中的表格位置
second_title: Aspose.Words为Java
articleTitle: 放置一张桌子
linktitle: 放置一张桌子
description: "在Java中指定表位置。 获取表格对齐，使用Java获取并设置浮动表格位置。"
type: docs
weight: 50
url: /zh/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

有浮动表和内联表:

* **Inline tables**放置在与文本相同的图层上，并放置在仅围绕上方和下方表格的文本流中。 内联表将始终出现在您放置它们的段落之间。
* **Floating tables**在文本上分层，表格相对于段落的位置由表格锚点决定。 因此，浮动表在文档中的位置受垂直和水平定位设置的影响。

有时您需要以某种方式在文档中定位表。 为此，您需要使用对齐工具并设置表格和周围文本之间的缩进。

在本文中，我们将讨论Aspose.Words为定位提供了哪些选项。

## 指定内联表位置

您可以使用Aspose.WordsAPI和[Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment)属性设置内联表的位置。 因此，您可以调整表格相对于文档页面的对齐方式。

下面的代码示例演示如何设置内联表的位置:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## 获取浮动表对齐

如果表文本换行设置为**Around**，则可以使用[RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment)和[RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment)属性获取表的水平和垂直对齐方式。

使用**other types of text wrapping**，您可以使用**Alignment**属性获得内联表对齐。

下面的代码示例演示如何获取表的对齐方式:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## 获取浮动表位置

 浮动表的位置使用以下属性确定:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor)-计算浮动表水平定位的对象
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor)-计算浮动表垂直定位的对象
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance)–绝对水平浮动表位置
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance)–绝对垂直浮动表位置
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap)-启用/禁用与其他浮动对象重叠的选项
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment)–浮动表相对水平对齐。
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment)–浮动表相对垂直对齐。

下面的代码示例演示如何获取浮动表的位置:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## 设置浮动工作台位置

就像getting一样，您可以使用相同的Aspose.WordsAPI设置浮动表的位置。

重要的是要知道对齐和水平和垂直距离是组合属性，一个可以重置另一个。 例如，设置**RelativeHorizontalAlignment**会将**AbsoluteHorizontalDistance**重置为其默认值，反之亦然。 垂直布置也是如此。

下面的代码示例演示如何设置浮动表的位置:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## 获取表格与周围文本之间的距离

Aspose.Words还提供了一个机会，找出表和周围文本之间的距离:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop)-距离上方的值
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)-感知距离的值
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight)-右边的距离值
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft)-左边的距离值

下面的代码示例演示如何获取表与其周围文本之间的距离:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
