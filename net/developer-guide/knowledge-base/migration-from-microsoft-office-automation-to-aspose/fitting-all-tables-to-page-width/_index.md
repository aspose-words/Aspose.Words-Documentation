---
title: Fitting all Tables to Page Width
type: docs
weight: 30
url: /net/fitting-all-tables-to-page-width/
---

{{% alert color="primary" %}} 

You may have a document which originates from a website or external source in HTML format. Since HTML has no page concept the tables from documents in this format can sometimes be too wide for the page which causes them to become truncated. A common way to avoid this is to resize the tables in the document to the available page width.

{{% /alert %}} 

To achieve this task using Word automation the following code is used:

{{< highlight csharp >}}
For Each Table In ActiveDocument.Tables
    Table.PreferredWidthType = WdPreferredWidthType.wdPreferredWidthPercent
    Table.PreferredWidth = 100
 Next Table
{{< /highlight >}}

This code enumerates through each table in the document and sets the width sizing behavior of each table so it fits to the entire of the page width.

To achieve this task using Aspose.Words the [Table](https://apireference.aspose.com/words/net/aspose.words.tables/table) and [PreferredWidth](https://apireference.aspose.com/words/net/aspose.words.tables/table/properties/preferredwidth) members are used. The code is quite similar with the only main difference being that as a document is represented in Aspose.Words using nodes in a hierarchical structure, the **GetChildNodes** method is used to retrieve all tables in the document.

##### **Example**

*Demonstrates how to set the table width of all tables in the document to the page width.*

**C#**

{{< highlight csharp >}}
foreach (Table table in doc.GetChildNodes(NodeType.Table, true))
{
    table.PreferredWidth = PreferredWidth.FromPercent(100);
}
{{< /highlight >}}

**Visual Basic**

{{< highlight csharp >}}
For Each table As Table In doc.GetChildNodes(NodeType.Table, True)
	table.PreferredWidth = PreferredWidth.FromPercent(100)
Next table
{{< /highlight >}}

For further information on this topic see the [Specifying Table and Cell Widths](https://docs.aspose.com/words/net/applying-formatting/#specifying-table-and-cell-widths) section of the documentation.
