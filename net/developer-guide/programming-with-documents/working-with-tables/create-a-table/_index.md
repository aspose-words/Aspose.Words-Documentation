---
title: How to Create a Table in C#
second_title: Aspose.Words for .NET
articleTitle: Create a Table
linktitle: Create a Table
description: "A guide on how to make a table in C# in various ways. Create table in C# for your document."
type: docs
weight: 10
url: /net/create-a-table/
aliases: [/net/introduction-and-creating-tables/]
---

Aspose.Words allows users to create tables in a document from scratch and provides several different methods for doing so. This article presents details on how to add formatted tables to your document using each method, as well as a comparison of each method at the end of the article.

## Default Table Styles

The newly created table is given default values similar to those used in Microsoft Word:

|Table Property|Default in Aspose.Words|
| :- | :- |
|Border Style|Single|
|Border Width|1/2 pt|
|Border Color|Black|
|Left and Right Padding|5.4 pts|
|AutoFit Mode|AutoFit to Window|
|Allow AutoFit|True|
{{% alert color="primary" %}}

A table can be inline if it is tightly positioned, or floating if it can be positioned anywhere on the page. By default, Aspose.Words always creates inline tables.

{{% /alert %}}

### Table Creation Algorithm

In Aspose.Words, users can create a table in a document using the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). The basic algorithm for creating a table is as follows:

1. Start the table with [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. Add a cell to the table using [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) – this automatically starts a new row
3. Optionally, use the [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) property to specify cell formatting
4. Insert the cell content using the appropriate **DocumentBuilder** methods such as [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/), and others
5. Repeat steps 2-4 until the row is complete
6. Call [EndRow](If InsertCell is called immediately after EndRow and the end of a row, the table will continue on a new row.) to end the current row
7. Optionally, use the [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) property to specify row formatting
8. Repeat steps 2-7 until the table is complete
9. Call [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) to finish building the table

{{% alert color="primary" %}}

Important details:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) can also be called inside a cell, in which case it starts the creation of a nested table within the cell.
* After calling [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), a new cell is created, and any content you add using other methods of the [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) class will be added to the current cell. To create a new cell on the same row, call **InsertCell** again.
* If **InsertCell** is called immediately after [EndRow]() and the end of a row, the table will continue on a new row.
* The [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) method to end the table should only be called once after calling **EndRow**. Calling **EndTable** moves the cursor from the current cell to the position immediately after the table.

{{% /alert %}}

The process of creating a table can be clearly seen in the following picture:

![creating-table-process](creating-table-process.jpg)

The following code example shows how to create a formatted table that contains 2 rows and 2 columns:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.cs" >}}

The following code example shows how to create a simple table using **DocumentBuilder** with default formatting:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-InsertTableUsingDocumentBuilder-SimpleTable.cs" >}}

The following code example shows how to create a formatted table using DocumentBuilder:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-InsertTableUsingDocumentBuilder-FormattedTable.cs" >}}

The following code example shows how to insert a nested table using DocumentBuilder:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-InsertTableUsingDocumentBuilder-NestedTable.cs" >}}


### Insert a Table Directly into the Document Object Model {#insert-a-table-directly-into-the-document-object-model}

You can insert tables directly into the DOM at a particular node position. The same table defaults are used as when using a [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) to create a table. To build a new table from scratch without the use of **DocumentBuilder**, first create a new [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) node using the appropriate constructor, and then add it to the document tree.

Note that you must take into account that the table will initially be completely empty (i.e contains no child rows yet). In order to build the table you will first need to add the appropriate child nodes.

Below example shows how to insert a table using the constructors of nodes.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-InsertTableDirectly-InsertTableDirectly.cs" >}}

### Insert a Copy of an Existing Table {#insert-a-clone-of-an-existing-table}

Often there are times when you have an existing table in a document and would like to add a copy of this table then apply some modifications. The easiest way to duplicate a table while retaining all formatting is to clone the table node using the [Table.Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) method. Below example shows how to insert a table using the constructors of nodes. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-CloneTable-CloneCompleteTable.cs" >}}

{{% alert color="primary" %}}

The same technique can be used to add copies of an existing row to a table.

{{% /alert %}}

Below example shows how to make a clone of the last row of a table and append it to the table. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-CloneTable-CloneLastRow.cs" >}}

If you are looking at creating tables in document which dynamically grow with each record from your data source, then the above method is not advised.
Instead the desired output is achieved more easily by using Mail Merge with Regions. You can learn more about this technique under [Mail Merge with Regions Explained](/words/net/types-of-mail-merge-operations/).

### Insert a Table from HTML

Aspose.Words supports inserting content into a document from an HTML source by using the [DocumentBuilder.InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) method. The input can be a full HTML page or just a partial snippet. Using this method we can insert tables into our document by using table elements e.g &lt;table&gt;, &lt;tr&gt;, &lt;td&gt;. Below example shows how to insert a table in a document from a string containing HTML tags.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Tables-InsertTableFromHtml-InsertTableFromHtml.cs" >}}

### Comparison of Insertion Techniques

As described in previous articles, Aspose.Words provides several methods for inserting new tables into a document. Each have their advantages and disadvantages, so often the choice of which to use depends on your situation. The table below can give you an idea of each technique.

|Method|Advantages|Disadvantages|
| :- | :- | :- |
|DocumentBuilder ([DocumentBuilder.StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/methods/starttable)|Standard method of inserting tables and other document content.|Sometimes hard to create many varieties of tables at the same time with the same instance of the builder.|
|Table( [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) | Fits in better with surronding code that creates and inserts nodes directly into the DOM without the use of DocumentBuilder.|Table is created “blank”. Before most operations are performed **Table.EnsureMinimum** must be called to create any missing child nodes.||
|Cloning ([Table.Clone](https://reference.aspose.com/words/net/aspose.words/node/methods/clone))|Can create a copy of an existing table while retaining all formatting on rows and cells.|The appropriate child nodes must be removed before the table is ready for use.|
|From an HTML source. ([DocumentBuilder.InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/methods/inserthtml))|Can create a new table from HTML source e.g the &lt;table&gt;, &lt;tr&gt;, &lt;td&gt; tags|Not all possible formatting on a Microsoft Word table can be applied in HTML.|


