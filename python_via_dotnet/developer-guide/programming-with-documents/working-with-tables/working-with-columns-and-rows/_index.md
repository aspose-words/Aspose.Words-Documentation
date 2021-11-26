---
title: Working with Columns and Rows
description: "Work with table columns and rows in a document using python."
type: docs
weight: 40
url: /python-net/working-with-columns-and-rows/
aliases: [/python/working-with-columns-and-rows/]
---

## Finding the Index of Table Elements

Finding the index of any node involves gathering all child nodes of the element’s type from the parent node then using the **NodeCollection.index_of** method to find the index of the desired node in the collection.

### Finding the Index of Table in a Document

The code example given below demonstrates how to retrieve the index of a table in the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-RetrieveTableIndex.py" >}}

### Finding the Index of a Row in a Table

The code example given below demonstrates how to retrieve the index of a row in a table.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-RetrieveRowIndex.py" >}}

### Finding the Index of a Cell in a Row

The code example given below demonstrates how to retrieve the index of a cell in a row.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-RetrieveCellIndex.py" >}}

## Working with Columns

In both Word documents and in the Aspose.Words Document Object Model, there is no concept of a column. By design, table rows in Microsoft Word are completely independent and the base properties and operations are only contained on rows and cells of the table. This gives tables the possibility of some interesting attributes:

- Each row in a table can have a completely different number of cells.
- Vertically, the cells of each row can have different widths.
- It is possible to join tables with differing row formats and cell counts.

Any operations that are performed on columns in Microsoft Word are in actual fact “short-cut methods” which perform the operation by modifying the cells of the rows collectively in such a way that it appears they are being applied to columns. This structure of rows and cells in the same way that tables are represented in Aspose.Words.

In the Aspose.Words Document Object Model a **Table** node is made up of **Row** and then **Cell** nodes. There is also no native support for columns.

You can still achieve such operations on columns by iterating through the same cell index of the rows of a table. The code below makes such operations easier by proving a façade class which collects the cells which make up a “column” of a table. Below example demonstrates a facade object for working with a column of a table.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-ColumnClass.py" >}}

The code example given below demonstrates how to insert a blank column into a table.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-InsertBlankColumn.py" >}}

Below example shows how to remove a column from a table in a document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-RemoveColumn.py" >}}

## Specifying Rows to Repeat on Subsequent Pages as Header Rows

In Microsoft Word, this option is found under Table Properties as *“Repeat row as a header on subsequent pages”.* Using this option you can choose to repeat only a single row or many rows in a table.

In the case of a single header row, it must be the first row in the table. In addition when multiple header rows are used then the header row each of these rows must be consecutive and these rows must be on one page. In Aspose.Words you can apply this setting by using the **RowFormat.heading_format** property.

{{% alert color="primary" %}} 

Note that heading rows do not work in nested tables. That is, if you have a table within another table then this setting will have no effect. This is a limitation of Microsoft Word which does not allow this and not of Aspose.Words.

{{% /alert %}} 

The code example given below demonstrates how to build a table which includes heading rows that repeat on subsequent pages.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-RepeatRowsOnSubsequentPages.py" >}}

## How to Apply Different AutoFit Settings to a Table

When creating a table using a visual agent such as Microsoft Word, you will often find yourself using one of the AutoFit options to automatically size the table to the desired width. For instance, you can use the AutoFit to Window option to fit the table to the width of the page and AutoFit to Contents option to allow each cell to grow or shrink to accommodate its contents.

By default, Aspose.Words inserts a new table using “**AutoFit to Window”**. The table will size to the available width on the page. To change the sizing behavior on such a table or an existing table you can call **Table.auto_fit** method. This method accepts an **AutoFitBehavior** enumeration which defines what type of auto fitting is applied to the table.

As in Microsoft Word, the autofit method is actually a shortcut which applies different properties to the table all at once. These properties are actually what give the table the observed behavior. We will discuss these properties for each autofit option.

### AutoFitting a Table to Window

The code example given below demonstrates autofits a table to fit the page width. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-AutoFitTableToPageWidth.py" >}}

When autofit to the window is applied to a table the following operations are actually being performed behind the scenes:

1. The **Table.allow_auto_fit** property is enabled to automatically resize columns to the available content.
1. A **Table.preferred_width** value of 100% is applied.
1. The **CellFormat.preferred_width** is removed from all cells in the table. Note this is a little bit different to how Microsoft Word performs this step. In Microsoft Word, the preferred width of each cell is set to suitable values based on their current size and content. Aspose.Words does not update preferred width so instead, they are just cleared.
1. The column widths are recalculated for the current content of the table.
   The end result is a table that occupies all available width. The widths of the columns in the table change automatically as the user edits the text in MS Word.

### AutoFitting a Table to Contents

The code example given below demonstrates autofits a table in the document to its contents. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-AutoFitTableToContents.py" >}}

{{% alert color="primary" %}} 

When a table is an auto fitted to contents the following steps are actually undertaken behind the scenes:

1. The **Table.allow_auto_fit** property is enabled to automatically resize each cell to accommodate its contents.
1. The table-wide preferred width under **Table.preferred_width** is removed.
1. The **CellFormat.preferred_width** is removed for every cell in the table.
1. The column widths are recalculated for the current content in the table.
   The end result is a table whose column widths and the entire table width change automatically to best accommodate the content as the user edits the text in MS Word.

Note that this autofit option clears the preferred widths from the cells just like in Microsoft Word. If you want to preserve the column sizes and have the columns further grow or shrink to fit content then you should set the **Table.allow_auto_fit** property to True on its own instead of using the autofit shortcut.

{{% /alert %}} 

### Disabling AutoFitting on a Table and Use Fixed Column Widths

The code example given below demonstrates how to disable autofitting and enables fixed widths for the specified table. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-AutoFitTableToFixedColumnWidths.py" >}}

When a table has auto fit disabled and fixed column widths used instead the following steps are taken:

1. The **Table.allow_auto_fit** property is disabled so columns do not grow or shrink to their contents.
1. The table-wide preferred width is removed from **Table.preferred_width**.
1. The **CellFormat.preferred_width** is removed from all cells in the table.
   The end result is a table whose column widths are defined using the **CellFormat.width** property and whose columns do not automatically resize when the user enter texts or the page size is modified.

{{% alert color="primary" %}} 

Note that if no width is defined for **CellFormat.width** then a default value of one inch (72 points) is used.

{{% /alert %}} 

## Keeping Tables and Rows from Breaking across Pages

There are times where the contents of a table should not be split across a page. For instance, when there is a title above a table, the title and the table should always be kept together on the same page to preserve proper appearance.

There are two separate techniques that are useful to achieve this functionality:

- Allow Row to Break across Pages which is applied to the rows of a table.
- Keep with Next which is applied to paragraphs in table cells.

We will use the table below in our example. By default, it has the properties above disabled. Also, notice how the content in the middle row is split across the page.

### Keeping a Row from Breaking across Pages

This involves restricting content inside the cells of a row from being split across a page. In Microsoft Word, this can found under Table Properties as the option “Allow row to break across pages”. In Aspose.Words this is found under the **RowFormat** object of a **Row** as the property **RowFormat.allow_break_across_pages**. The code example given below demonstrates how to disable rows breaking across pages for every row in a table. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-RowFormatDisableBreakAcrossPages.py" >}}

### Keeping a Table from Breaking across Pages

To stop a table from splitting across the page we need to state that we wish the content contained within the table to stay together. In Microsoft Word, this involves selecting the table and enabling “Keep with Next” under Paragraph Format.

In Aspose.Words the technique is the same. Each paragraph inside the cells of the table should have **ParagraphFormat.keep_with_next** set to *True*. The exception is the last paragraph in the table which should be set to *False*. The code example given below demonstrates how to set a table to stay together on the same page. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-KeepTableTogether.py" >}}

## Working with Merged Cells

In a table, several cells can be merged together into a single cell. This is useful when certain rows require a title or large blocks of text which span across the width of the table. This can only be achieved by merging some of the cells in the table into a single cell. Aspose.Words supports merged cells when working with all input formats including when importing HTML content.

### Merged Cells in Aspose.Words

In Aspose.Words, merged cells are represented by **CellFormat.horizontal_merge** and **CellFormat.vertical_merge**. The **CellFormat.horizontal_merge** property describes if the cell is part of a horizontal merge of cells. Likewise the **CellFormat.vertical_merge** property describes if the cell is a part of a vertical merge of cells.

The values of these properties are what define the merge behavior of cells.

- The first cell in a sequence of merged cells will have **CellMerge.FIRST**.
- Any subsequently merged cells will have **CellMerge.PREVIOUS**.
- A cell which is not merged will have **CellMerge.NONE**.

Sometimes when you load existing document cells in a table will appear merged. However, these can be in fact one long cell. Microsoft Word at times is known to export merged cells in this way. This can cause confusion when attempting to work with individual cells. There appears to be no particular pattern as to when this happens.

### Checking if a Cell is Merged

To check if a cell is part of a sequence of merged cells, we simply check the **CellFormat.horizontal_merge** and **CellFormat.vertical_merge** properties. Below example prints the horizontal and vertical merge type of a cell. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-CheckCellsMerged.py" >}}

### Merging Cells in a Table

The same technique is used to set the merge behavior on the cells in a table. When building a table with merged cells with **DocumentBuilder** you need to set the appropriate merge type for each cell. Also, you must remember to clear the merge setting or otherwise all cells in the table will become merged. This can be done by setting the value of the appropriate merge property to **CellMerge.NONE**. The code example given below demonstrates how to create a table with two rows with cells in the first row horizontally merged.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-HorizontalMerge.py" >}}

The code example given below demonstrates how to create a table with two columns with cells merged vertically in the first column.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-VerticalMerge.py" >}}

In other situations where a builder is not used, such as in an existing table, merging cells in this way may not be as simple. Instead, we can wrap the base operations which are involved in apply merge properties to cells into a method which makes the task much easier. This method is similar to the automation Merge method which is called to merge a range of cells in a table. The code below will merge the range of cells in the table starting from the given cell, to the end cell. This range can span over many rows or columns. A method which merges all cells of a table in the specified range of cells.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-MergeCells.py" >}}

The code example given below demonstrates how to merge the range of cells between the two specified cells. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-MergeCellRange.py" >}}

Depending on the version of the .NET Framework you are using, you may want to further build on this method by turning it into an extension method. In this case, you can then call this method directly on a cell to merge a range of cells e.g *cell1.merge(cell2)*.

### Convert To Horizontally Merged Cells

In the latest versions of MS Word, the cells are merged horizontally by its width. Whereas, the merge flags were used in the older technique,  like Cell.CellFormat.HorizontalMerge. The merge flags are not used when cells are horizontally merged by their width and it is also not possible to detect which cells are merged. Aspose.Words provides ConvertToHorizontallyMergedCells method to convert cells which are horizontally merged by its width to the cell horizontally merged by flags. It simply transforms the table and adds new cells when needed.

The following code example shows the working of the above-mentioned method.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Tables-working_with_tables-ConvertToHorizontallyMergedCells.py" >}}
