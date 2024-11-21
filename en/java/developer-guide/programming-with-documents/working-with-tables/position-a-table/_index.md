---
title: Table Position in Java
second_title: Aspose.Words for Java
articleTitle: Position a Table
linktitle: Position a Table
description: "Specify table position in Java. Get a table alignment, get and set floating table position using Java."
type: docs
weight: 50
url: /java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

There are floating tables and inline tables:

* **Inline tables** are placed on the same layer as the text and are placed in a flow of text that only surrounds the table above and below. Inline tables will always appear between the paragraphs where you placed them.
* **Floating tables** are layered over the text, and the position of the table relative to the paragraph is determined by the table anchor. Because of this, the position of the floating table in the document is affected by the vertical and horizontal positioning settings.

Sometimes you need to position a table in a document in a certain way. To do this, you need to use the alignment tools and set the indents between the table and the surrounding text.

In this article, we will discuss what options Aspose.Words provides for positioning.

## Specify Inline Table Position

You can set the position of an inline table using the Aspose.Words API and the [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) property. Thus, you can adjust the alignment of the table relative to the document page.

The following code example shows how to set the position of an inline table:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Get Floating Table Alignment

If the table text wrapping is set to **Around**, you can get the table's horizontal and vertical alignment using the [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) and [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) properties.

With **other types of text wrapping**, you can get inline table alignment using the **Alignment** property.

The following code example shows how to get the table's alignment:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Get Floating Table Position

 The position of a floating table is determined using the following properties: 

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – an object for calculating the horizontal positioning of a floating table
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – an object for calculating the vertical positioning of a floating table
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – absolute horizontal floating table position
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – absolute vertical floating table position
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – option to enable/disable overlap with other floating objects
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) –  floating table relative horizontal alignment.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) –  floating table relative vertical alignment.

The following code example shows how to get the position of a floating table:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Set Floating Table Position

Just like getting, you can set the position of a floating table using the same Aspose.Words API.

It is important to know that alignment and horizontal and vertical distance are combined properties and one can reset the other. For example, setting the **RelativeHorizontalAlignment** will reset the **AbsoluteHorizontalDistance** to its default value and vice versa. The same is true for the vertical arrangement.

The following code example shows how to set the position of a floating table:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Get Distance between Table and Surrounding Text

Aspose.Words also provides an opportunity to find out the distances between tables and surrounding texts:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – the value of the distance from above
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – the value of the distance of perception
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – distance value on the right
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – distance value on the left

The following code example shows how to get the distance between a table and its surrounding text:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
