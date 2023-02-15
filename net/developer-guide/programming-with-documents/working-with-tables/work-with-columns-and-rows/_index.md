---
title: Work with Columns and Rows in C#
second_title: Aspose.Words for .NET
articleTitle: Work with Columns and Rows
linktitle: Work with Columns and Rows
description: "Working with parts of a table – rows, columns, and cells using C#. Specify Header Row C#."
type: docs
weight: 15
url: /net/working-with-columns-and-rows/
---

For more control over how tables work, learn how to manipulate columns and rows.

## Find the Table Element Index {#find-the-index-of-table-elements}

Finding the index of any node involves gathering all child nodes of the element’s type from the parent node then using the NodeCollection.IndexOf method to find the index of the desired node in the collection.

### Find the Index of a Table in a Document {#find-the-index-of-table-in-a-document}

Sometimes you may need to make changes to a particular table in a document. To do this, you can refer to a table by its index.

The following code example shows how to retrieve the index of a table in a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-FindingIndex-RetrieveTableIndex.cs" >}}

### Find the Index of a Row in a Table {#find-the-index-of-a-row-in-a-table}

Similarly, you may need to make changes to a specific row in a selected table. To do this, you can also refer to a row by its index.

The following code example shows how to retrieve the index of a row in a table:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-FindingIndex-RetrieveRowIndex.cs" >}}

### Find the Index of a Cell in a Row {#find-the-index-of-a-cell-in-a-row}

Finally, you may need to make changes to a specific cell, and you can do this by cell index as well.

The following code example shows how to retrieve the index of a cell in a row:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-FindingIndex-RetrieveCellIndex.cs" >}}

## Work with Columns {#work-with-columns}

In the Aspose.Words Document Object Model (DOM), the [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) node consists of [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) nodes and then [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) nodes. Thus, in the Document Object Model of Aspose.Words, as in Word documents, there is no concept of a column.

By design, the table rows in Microsoft Word and Aspose.Words are completely independent, and the basic properties and operations are contained only in the rows and cells of the table. This gives tables the ability to have some interesting attributes:

- Each table row can have a completely different number of cells
- Vertically, the cells of each row can have different widths
- It is possible to join tables with different row formats and number of cells

Any operations performed on columns are actually "shortcuts" that perform the operation by collectively changing row cells in such a way that it looks like they are being applied to columns. That is, you can perform operations on columns by simply iterating over the same table row cell index.

The following code example simplifies such operations by proving a facade class that collects the cells that make up a "column" of a table:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-AddRemoveColumn-ColumnClass.cs" >}}

The following code example shows how to insert a blank column into a table:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-AddRemoveColumn-InsertBlankColumn.cs" >}}

The following code example shows how to remove a column from a table in a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-AddRemoveColumn-RemoveColumn.cs" >}}

## Specify Rows as Header Rows {#specify-rows-to-repeat-on-subsequent-pages-as-header-rows}

You can choose to repeat the first row in the table as the Header Row. In this case, you can repeat the Header Row only on the first page or on each page if the table is split into several.

In Aspose.Words, you can repeat the Header Row on every page using the [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/) property.

{{% alert color="primary" %}}

Note that Header Rows do not work in nested tables. That is, if you have a table inside another table, this setting will have no effect. It is a limitation of Microsoft Word that does not allow this, not Aspose.Words.

{{% /alert %}}

The following code example shows how to build a table which includes Header Rows that repeat on subsequent pages:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-RepeatRowsOnSubsequentPages-RepeatRowsOnSubsequentPages.cs" >}}

## Keep Tables and Rows from Breaking Across Pages {#keep-tables-and-rows-from-breaking-across-pages}

There are times where the contents of a table should not be split across a page. For instance, when there is a title above a table, the title and the table should always be kept together on the same page to preserve proper appearance.

There are two separate techniques that are useful to achieve this functionality:

- Allow Row to Break across Pages which is applied to the rows of a table.
- Keep with Next which is applied to paragraphs in table cells.

We will use the table below in our example. By default, it has the properties above disabled. Also, notice how the content in the middle row is split across the page.

### Keep a Row from Breaking Across Pages {#keep-a-row-from-breaking-across-pages}

This involves restricting content inside the cells of a row from being split across a page. In Microsoft Word, this can found under Table Properties as the option “Allow row to break across pages”. In Aspose.Words this is found under the [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) object of a [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) as the property [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages). The code example given below demonstrates how to disable rows breaking across pages for every row in a table. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-KeepTablesAndRowsBreaking-RowFormatDisableBreakAcrossPages.cs" >}}

### Keep a Table from Breaking Across Pages {#keep-a-table-from-breaking-across-pages}

To stop a table from splitting across the page we need to state that we wish the content contained within the table to stay together. In Microsoft Word, this involves selecting the table and enabling “Keep with Next” under Paragraph Format.

In Aspose.Words the technique is the same. Each paragraph inside the cells of the table should have [ParagraphFormat.KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) set to true. The exception is the last paragraph in the table which should be set to false. The code example given below demonstrates how to set a table to stay together on the same page. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-KeepTablesAndRowsBreaking-KeepTableTogether.cs" >}}

## Work with Merged Cells {#work-with-merged-cells}

In a table, several cells can be merged together into a single cell. This is useful when certain rows require a title or large blocks of text which span across the width of the table. This can only be achieved by merging some of the cells in the table into a single cell. Aspose.Words supports merged cells when working with all input formats including when importing HTML content.

### Merged Cells in Aspose.Words {#merged-cells-in-aspose-words}

In Aspose.Words, merged cells are represented by [CellFormat.HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) and [CellFormat.VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/). The **CellFormat.HorizontalMerge** property describes if the cell is part of a horizontal merge of cells. Likewise the **CellFormat.VerticalMerge** property describes if the cell is a part of a vertical merge of cells.

The values of these properties are what define the merge behavior of cells.

- The first cell in a sequence of merged cells will have CellMerge.First.
- Any subsequently merged cells will have CellMerge.Previous.
- A cell which is not merged will have CellMerge.None.

Sometimes when you load existing document cells in a table will appear merged. However, these can be in fact one long cell. Microsoft Word at times is known to export merged cells in this way. This can cause confusion when attempting to work with individual cells. There appears to be no particular pattern as to when this happens.

### Check if a Cell is Merged {#check-if-a-cell-is-merged}

To check if a cell is part of a sequence of merged cells, we simply check the CellFormat.HorizontalMerge and CellFormat.VerticalMerge properties. Below example prints the horizontal and vertical merge type of a cell. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-CheckCellsMerged.cs" >}}

### Merged Cells in a Table {#merge-cells-in-a-table}

The same technique is used to set the merge behavior on the cells in a table. When building a table with merged cells with DocumentBuilder you need to set the appropriate merge type for each cell. Also, you must remember to clear the merge setting or otherwise all cells in the table will become merged. This can be done by setting the value of the appropriate merge property to CellMerge.None. The code example given below demonstrates how to create a table with two rows with cells in the first row horizontally merged.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-HorizontalMerge.cs" >}}

The code example given below demonstrates how to create a table with two columns with cells merged vertically in the first column.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-VerticalMerge.cs" >}}

In other situations where a builder is not used, such as in an existing table, merging cells in this way may not be as simple. Instead, we can wrap the base operations which are involved in apply merge properties to cells into a method which makes the task much easier. This method is similar to the automation Merge method which is called to merge a range of cells in a table. The code below will merge the range of cells in the table starting from the given cell, to the end cell. This range can span over many rows or columns. A method which merges all cells of a table in the specified range of cells.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-MergeCells.cs" >}}

The code example given below demonstrates how to merge the range of cells between the two specified cells. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-MergeCellRange.cs" >}}

Depending on the version of the .NET Framework you are using, you may want to further build on this method by turning it into an extension method. In this case, you can then call this method directly on a cell to merge a range of cells e.g cell1.Merge(cell2).

### Vertical and Horizontal Merged Cells in a Table {#vertical-and-Horizontal-merged-cells-in-the-table}

A table in MS Word is a set of independent rows. Each row has a set of cells independent on cells of other rows. So there is no logical "column" in MS Word's table. "The 1st column" is something like "a set of the 1st cells of each row in a table". For example, it's possible to have a table where the 1st row consists of two cells: 2cm and 1cm and the 2nd row consists of different two cells: 1cm and 2cm of width.

A table in Html has essentially different structure: each row has the same number of cells and (it's important for the problem) each cell has a width of the corresponding column, the same for all cells of the same column.

Use the following code example if CellFormat.HorizontalMerge and CellFormat.VerticalMerge returns an incorrect value. Below example prints the horizontal and vertical merge of a cell. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-PrintHorizontalAndVerticalMerged.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-HorizontalAndVerticalMergeHelperClasses.cs" >}}

### Convert to Horizontally Merged Cells {#convert-to-horizontally-merged-cells}

In the latest versions of MS Word, the cells are merged horizontally by its width. Whereas, the merge flags were used in the older technique,  like Cell.CellFormat.HorizontalMerge. The merge flags are not used when cells are horizontally merged by their width and it is also not possible to detect which cells are merged. Aspose.Words provides ConvertToHorizontallyMergedCells method to convert cells which are horizontally merged by its width to the cell horizontally merged by flags. It simply transforms the table and adds new cells when needed.

The following code example shows the working of the above-mentioned method.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Tables-MergedCells-ConvertToHorizontallyMergedCells.cs" >}}
