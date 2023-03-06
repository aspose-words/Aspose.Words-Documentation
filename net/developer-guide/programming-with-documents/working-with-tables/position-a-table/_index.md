---
title: Table Position in C#
second_title: Aspose.Words for .NET
articleTitle: Position a Table
linktitle: Position a Table
description: "Specify table position in C#. Get a table alignment, get and set floating table position using C#."
type: docs
weight: 20
url: /net/position-a-table/
---

Sometimes you need to position a table in a document in a certain way. To do this, you need to use the alignment tools and set the indents between the table and the surrounding text.

In this article, we will discuss what options Aspose.Words provides for positioning.

## Get Floating Table Alignment

If the table text wrapping is set to **Around**, you can get the table's horizontal and vertical alignment using the [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) and [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) properties. With other types of text wrapping, you can get inline table alignment using the [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/) property.

The following code example shows how to get the table's alignment:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-TablePosition-GetTablePosition.cs" >}}

## Get Floating Table Position

 The position of a floating table is determined using the following properties: 

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/)
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/)
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/)
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/)
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/)
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/)
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/)

The following code example shows how to get the position of a floating table:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-TablePosition-GetFloatingTablePosition.cs" >}}

## Set Floating Table Position

Just like getting, you can set the position of a floating table using the same Aspose.Words API.

It is important to know that alignment and horizontal and vertical distance are combined properties and one can reset the other. For example, setting the **RelativeHorizontalAlignment** will reset the **AbsoluteHorizontalDistance** to its default value and vice versa. The same is true for the vertical arrangement.

The following code example shows how to set the position of a floating table:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-TablePosition-SetFloatingTablePosition.cs" >}}

## Get Distance between Table and Surrounding Text

Aspose.Words also provides an opportunity to find out the distances between tables and surrounding texts:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – the value of the distance from above
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) – the value of the distance of perception
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – distance value on the right
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) – distance value on the left

The following code example shows how to get the distance between a table and its surrounding text:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-GetDistancebetweenTableSurroundingText.cs" >}}
