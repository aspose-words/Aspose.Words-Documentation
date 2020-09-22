---
title: Working with Columns and Rows
type: docs
weight: 110
url: /java/working-with-columns-and-rows/
---

## **Working with Columns**

In both Word documents and in the Aspose.Words Document Object Model, there is no concept of a column. By design, table rows in Microsoft Word are completely independent and the base properties and operations are only contained on rows and cells of the table. This gives tables the possibility of some interesting attributes:

- Each row in a table can have a completely different number of cells.
- Vertically, the cells of each row can have different widths.
- It is possible to join tables with differing row formats and cell counts. 

![todo:image_alt_text](working-with-columns-and-rows_1.png)



Any operations that are performed on columns in Microsoft Word are in actual fact “short-cut methods” which perform the operation by modifying the cells of the rows collectively in such a way that it appears they are being applied to columns. This structure of rows and cells is represented in the same way that tables are represented in Aspose.Words. In the Aspose.Words Document Object Model a [Table](http://www.aspose.com/api/java/words/com.aspose.words/classes/Table) node is made up of [Row](http://www.aspose.com/api/java/words/com.aspose.words/classes/Row) and then [Cell](http://www.aspose.com/api/java/words/com.aspose.words/classes/Cell) nodes. There is also no native support for columns.

You can still achieve such operations on columns by iterating through the same cell index of the rows of a table. The code below makes such operations easier by proving a façade class which collects the cells which make up a “column” of a table. Below example demonstrates a facade object for working with a column of a table.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ColumnsAndRows-Column-.java" >}}

Below example shows how to insert a blank column into a table.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ColumnsAndRows-WorkingWithColumns-InsertABlankColumnIntoATable.java" >}}

Below example shows how to get the plain text of a table column.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ColumnsAndRows-WorkingWithColumns-GetTextOfATableColumn.java" >}}

Below example shows how to remove a column from a table in a document.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ColumnsAndRows-WorkingWithColumns-RemoveAColumnFromATable.java" >}}

## **Specifying Rows to Repeat on Subsequent Pages as Header Rows**

A table can specify certain starting rows of a table to be used as header rows. This means if the table spans over many pages, these rows will be repeated at the top of the table for each page. In Microsoft Word, this option is found under Table Properties as *“Repeat row as a header on subsequent pages”* . Using this option you can choose to repeat only a single row or many rows in a table. In the case of a single header row, it must be the first row in the table. In addition when multiple header rows are used then the header row each of these rows must be consecutive and these rows must be on one page.

In Aspose.Words you can apply this setting by using the [RowFormat.getHeadingFormat()](http://www.aspose.com/api/java/words/com.aspose.words/classes/rowformat/methods/getHeadingFormat\(\)/) property. Note that heading rows do not work in nested tables. That is, if you have a table within another table then this setting will have no effect. This is a limitation of Microsoft Word which does not allow this and not of Aspose.Words. Below example shows how to build a table which includes heading rows that repeat on subsequent pages.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ColumnsAndRows-SpecifyRowsToRepeatOnSubsequentPagesAsHeaderRows-.java" >}}

## **Adjusting Width for Merged Cells**

Using Aspose.Words, there is a possibility to lose the merged cells in the document while adjusting the column width when having some merged cells. So if you require to retain the merged cells at it is while adjusting column width using Aspose.Words API, the following code example demonstrates how to adjust cell width when some of the cells are merged. It is important to note that when cells are vertically merged, the display areas of the merged cells are combined. The combined area is used to display the contents of the first vertically merged cell and all other vertically merged cells must be empty.

{{< gist "aspose-com-gists" "aa75ee5112aca57022c741270ff8cbc4" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tables-ColumnsAndRows-AdjustCellsWidth-AdjustCellsWidth.java" >}}
