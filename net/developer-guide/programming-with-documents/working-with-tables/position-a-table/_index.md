---
title: Table Position in C#
second_title: Aspose.Words for .NET
articleTitle: Position a Table
linktitle: Position a Table
description: "Specify table position in C#. Get a table alignment, get position of floating table using C#."
type: docs
weight: 20
url: /net/position-a-table/
---

Text

## How to Get the Table's Alignment

If the table's text wrapping is *Around*, you can get the table's horizontal and vertical alignment using Table.RelativeHorizontalAlignment and Table.RelativeVerticalAlignment properties. In other cases, you can get the table's inline alignment using Table.Alignment property. Below example shows how to get the table's alignment.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-TablePosition-GetTablePosition.cs" >}}

## Get Position of Floating Table

The following code example shows how to get the position of the floating table. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-TablePosition-GetFloatingTablePosition.cs" >}}

## Set Position of Floating Table

Aspose.Words API provides the following properties to set the position of the floating table in the word document:

- [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/relativehorizontalalignment)
- [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/absolutehorizontaldistance)
- [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/relativeverticalalignment)
- [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/properties/absoluteverticaldistance)

The alignment and distance horizontally and vertically are combined properties and one can reset the other. For example, while setting RelativeHorizontalAlignment, it will reset AbsoluteHorizontalDistance to its default value and vice versa. The same is the case with vertical positioning. The following code example demonstrates how to set the position of the floating table. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-TablePosition-SetFloatingTablePosition.cs" >}}

## Get Distance between Table and Surrounding Text

Below example shows how to get the distance between the table and its surrounding text. 

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-GetDistancebetweenTableSurroundingText.cs" >}}

## Allow Spacing Between Cells

MS Word does not add any additional space between the cells in a table by default. You can find this option in the table's properties in MS Word. You can get or set "Allow spacing between cells" option using Table.AllowCellSpacing property. The following code example shows how to set space between cells.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-AllowCellSpacing.cs" >}}
