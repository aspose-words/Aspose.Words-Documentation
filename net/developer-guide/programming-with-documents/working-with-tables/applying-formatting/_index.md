---
title: Table Formatting in C#
second_title: Aspose.Words for .NET
articleTitle: Apply Table Formatting
linktitle: Apply Table Formatting
description: "Table formatting in details using C#. Using C# to format every part of table."
type: docs
weight: 20
url: /net/applying-formatting/
---

Each element of a table can be applied with different formatting. For example, table formatting will be applied to the entire table, row formatting to only particular rows, cell formatting to only certain cells.

Aspose.Words provides a rich API to retrieve and apply formatting to a table. You can use the [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/), and [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/) nodes to set the formatting.

In this article, we will talk about how to apply formatting to different table nodes and what table formatting settings Aspose.Words supports.

## Apply Formatting to Different Nodes

In this section, we will look at applying formatting to various table nodes.

### Table Level Formatting

To apply formatting to a table, you can use the properties available on the corresponding **Table** node using the [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/), and [TableCollection](https://reference.aspose.com/words/net/aspose.words.tables/tablecollection/) classes.

{{% alert color="primary" %}}

Note that the table must have at least one row before the table properties can be applied. This means that when building a table with the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), this formatting must be done after the first call to [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), or after the first row is added to the table, or when nodes are inserted directly into the DOM.

{{% /alert %}}

The pictures below show a representation of the **Table** formatting features in Microsoft Word and their corresponding properties in Aspose.Words.

![formattin-features-table-level-aspose-words-net](applying-formatting-1.png)




![formatting-table-options-aspose-words-net](applying-formatting-2.png)

The following code example shows how to apply an outline border to a table:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-ApplyOutlineBorder.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

The following code example shows how to build a table with all borders enabled (grid):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-BuildTableWithBordersEnabled.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Row Level Formatting

**Row-level** formatting can be controlled using the [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/), and [RowCollection](https://reference.aspose.com/words/net/aspose.words.tables/rowcollection/) classes.

{{% alert color="primary" %}}

Note that a **Row** can only be a child node of a **Table**. At the same time, there must be at least one **Cell** in the **Row** so that formatting can be applied to it.

{{% /alert %}}

The pictures below show a representation of the **Row** formatting features in Microsoft Word and their corresponding properties in Aspose.Words.

![formatting-row-level-aspose-words-net](applying-formatting-3.png)

The following code example shows how to modify the table row formatting:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-ModifyRowFormatting.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Cell Level Formatting

Cell-level formatting is controlled by the [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/), and [CellCollection](https://reference.aspose.com/words/net/aspose.words.tables/cellcollection/) classes.

{{% alert color="primary" %}}

Note that a **Cell** can only be a child node of a **Row**. At the same time, there must be at least one [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) in the **Cell** so that formatting can be applied to it.

In addition to the **Paragraph**, you can also insert a **Table** into a **Cell**.

{{% /alert %}}

The pictures below show a representation of the **Cell** formatting features in Microsoft Word and their corresponding properties in Aspose.Words.

![formatting-cell-level-aspose-words-net](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-net](applying-formatting-5.png)

The following code example shows how to modify the formatting of a table cell:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-ModifyCellFormatting.cs" >}}

{{% alert color="primary" %}}

You can download the sample file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

The following code example shows how to set the amount of space (in points) to add to the left/top/right/bottom of the contents of the cell:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-SetCellPadding.cs" >}}

## Specify Row Heights

The simplest way to set the row height is to use the **DocumentBuilder**. Using the appropriate **RowFormat** properties, you can set the default height setting or apply a different height for each row in the table.

In Aspose.Words, table row height is controlled by:

- the row height property – [Height](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/height/)
- the height rule property for the given row – [HeightRule](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/heightrule/)

At the same time, a different height can be set for each row – this allows you to widely control the table settings.

{{% alert color="primary" %}}

Rule options for specifying the height of an object can be set using the [HeightRule](https://reference.aspose.com/words/net/aspose.words/heightrule/) enam.

{{% /alert %}}

The following code example shows how to create a table that contains a single cell and apply row formatting:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-ApplyRowFormatting.cs" >}}

## Specify Table and Cell Widths

A table in a Microsoft Word document provides several different ways to resize the table and individual cells. These properties allow considerable control over the appearance and behavior of the table, so that Aspose.Words supports the behavior of tables, as in Microsoft Word.

It is important to know that table elements present several different properties that can affect how the widths of the overall table, as well as individual cells, is calculated:

- Preferred width on the table
- Preferred width on individual cells
- Allowing autofit on the table
- Regular cell width

This article details how the various table width calculation properties work and how to get full control over table width calculation. This is 
especially useful to know in such cases where the table layout does not appear as expected.

{{% alert color="primary" %}}

In most cases, the preferred cell is recommended than the width. The preferred cell width is more in line with the DOCX format specification as well as the Aspose.Words model.

The cell width is actually a calculated value for the DOCX format. The actual cell width can depend on many things. For example, changing the page margins or the preferred table width can affect the actual cell width.

The preferred cell width is a cell property that is stored in the document. It does not depend on anything and does not change when you change the table or other properties of the cell.

{{% /alert %}}

{{% alert color="primary" %}}

All properties and methods described in this article are related to how tables work in Microsoft Word. So in most cases, if you are building your table programmatically but are finding it hard to create the desired table, you can instead try visually creating it in Microsoft Word first and then simply copy the formatting values into your application.

{{% /alert %}}

### Using Preferred Widths

The desired width of a table or individual cells is defined through the preferred width property. That is a preferred width can be specified on individual cells or to the table as a whole. This is the size that the element strives to fit. In some cases, it may not be possible to fit this exact width, but the real width will come close to this value on most occasions. 

![formatting-table-properties-aspose-words-net](applying-formatting-8.png)

The preferred width property can be expressed in one of several different ways:

|Width Type|Behavior|
| :- | :- |
|Absolute|This fits the element to the given width in points.|
|Percent|Fits the element relative of the available space in the window or container size. If the available width changes then the table will automatically grow or shrink to reflect these changes.|
|Auto|This is the same as having no preferred width set. In this case, the size of the element is calculated using one of the other elements belonging to the table which does have a size set.|
An example of how these are applied to a real table in a document can be seen in the diagram below.

![todo:image_alt_text](applying-formatting-9.png)


The table can be described as being fitted to 100% of the available space on the page. In this case, this means the table will try to take up the space between the left and right page margins.

The cells in the above table can be described as such:

- The width of the first cell is set at 40 points. This width shouldn’t vary even if the table is resized or other cells removed.
- The second cell is specified as taking up 20% of the available space in the table. This means if the table size was changed, the width of this cell should change as well to reflect this.
- The third cell is defined as auto or “width not defined”. This means the width of the cell is calculated using the other size information of the table. Normally such a cell will take up the remaining space in the table.

In Aspose.Words the sizing modes described above can be found under the [PreferredWidthType](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) enumeration and are set using the [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) property and [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) property.

The appropriate preferred width type and value is set by using the methods of the [PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/) class. For instance, to specify a width from points you would use the [PreferredWidth.FromPoints](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompoints/) method. To specify a percentage width you would use [PreferredWidth.FromPercent](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/frompercent/). Finally to specify auto or “no preferred width” you would use [PreferredWidth.Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/auto/).

#### Specifying a Preferred Width on a Table in Aspose.Words

Using the [Table.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/table/preferredwidth/) property will adjust its preferred width relative to the container (i.e the page, text column or outer table cell). The code example given below shows how to set a table to auto fit to 50% of the page width.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-SpecifyHeightAndWidth-AutoFitToPageWidth.cs" >}}

Before you can use preferred widths on a table you must make sure that the table contains at least one row. This is because such table formatting in a Microsoft Word document is stored in the rows of a table.

#### Specifying Preferred Width on a Cell

Using the [CellFormat.PreferredWidth](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/preferredwidth/) property on a given cell will adjust its preferred width. Below example shows how to set the different preferred width settings.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-SpecifyHeightAndWidth-SetPreferredWidthSettings.cs" >}}

#### Finding Preferred Width Type and Value of a Table or Cell

You can use [PreferredWidth.Type](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/type/) and [PreferredWidth.Value](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidth/value/) properties to find the preferred width details of the desired table or cell. Below example shows how to Retrieves the preferred width type of a table cell. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-SpecifyHeightAndWidth-RetrievePreferredWidthType.cs" >}}

#### Allowing AutoFit

The [Table.AllowAutoFit](https://reference.aspose.com/words/net/aspose.words.tables/table/allowautofit/) property enables cells in the table to grow and shrink to accommodate their contents. This property can be used in conjunction with a preferred cell width to format a cell which auto fits its content but which also has an initial width. The cell width can then grow past this width if needed. Below example shows how to set a table to shrink or grow each cell to accommodate its contents.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-SpecifyHeightAndWidth-AllowAutoFit.cs" >}}

#### Using Cell Width

In Aspose.Words the CellFormat object also provides a width property. This property is mainly leftover from previous versions, however, it is still useful as a way to simplify setting a cell’s width. This property now acts differently depending on which of the other width properties already exist on the table:

- If a cell has a preferred width of [PreferredWidthType.Auto](https://reference.aspose.com/words/net/aspose.words.tables/preferredwidthtype/) type (no preferred width set) then the value from the [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) is copied over and becomes the preferred width of the cell (in points).
- If a cell has a cell preferred width of PreferredWidthType.Percent then any changes to [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) is ignored.
- If a cell already has a preferred width of type PreferredWidthType.Points than any changes to CellFormat.Width is ignored. That is, any changes to the width property are not updated in preferred width and should be applied to the preferred width instead.* If the table has Table.AllowAutoFit enabled then any change in [CellFormat.Width](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/width/) value is ignored and the cell is fitted to its contents instead.

#### The Order of Precedence during Cell Width Calculations

Aspose.Words uses the following order when calculating cell widths.

|Order|Property|Description|
| :- | :- | :- |
|1|**CellFormat.PreferredWidth**|Ideally, the preferred widths are used to calculate the cell sizes.|
|2|**Table.AllowAutoFit**|If the auto fit is allowed then the table may grow past the preferred width to accommodate contents. Normally it will not shrink below the preferred width.|
|3|**CellFormat.Width**|If neither of the settings above is present then the width defined under **CellFormat.Width** is used.|
{{% alert color="primary" %}}

While creating a fixed table layout, specify the cell width. A cell without width cannot be saved to .doc format. Document formats other than .doc, such as .docx, allow, in principle, saving cells without width in a fixed table layout.

{{% /alert %}}


## Apply Borders and Shading

Borders and shading can be applied either table wide using Table.SetBorder, Table.SetBorders and Table.SetShading or to particular cells only by using CellFormat.Borders and CellFormat.Shading. Additionally, borders can be set on a row by using RowFormat.Borders, however, shading cannot be applied in this way. 

![formatting-border-line-aspose-words-net](applying-formatting-6.png)

![formatting-cell-color-aspose-words-net](applying-formatting-7.png)

The following code example shows how to format a table and cell with different borders and shadings.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-ApplyFormatting-FormatTableAndCellWithDifferentBorders.cs" >}}