---
title: Join Tables
type: docs
weight: 30
url: /net/join-tables/
---

{{% alert color="primary" %}} 

A table which is represented in the Aspose.Words Document Object Model is made up of independent rows and cells which makes joining or splitting tables easy.

In order to manipulate a table to split or join with another table we simply need to move the rows from one table to another. 

{{% /alert %}} 

## Example

*Shows how to combine the rows from two tables into one*

**C#**

{{< highlight csharp >}}

 // Load the document.
 Document doc = new Document(MyDir + "Table.Document.doc");

 // Get the first and second table in the document.
 // The rows from the second table will be appended to the end of the first table.
 Table firstTable = (Table)doc.GetChild(NodeType.Table, 0, true);
 Table secondTable = (Table)doc.GetChild(NodeType.Table, 1, true);

 // Append all rows from the current table to the next.
 // Due to the design of tables even tables with different cell count and widths can be joined into one table.
 while (secondTable.HasChildNodes)
 firstTable.Rows.Add(secondTable.FirstRow);

 // Remove the empty table container.
 secondTable.Remove();
 doc.Save(MyDir + "Table.CombineTables Out.doc");
{{< /highlight >}}

### Download Running Examples

- [Codeplex](https://asposewordsvsto.codeplex.com/SourceControl/latest#Aspose.Words Features missing in VSTO/Joining Tables/)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Joining%20Tables)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c/view/SourceCode#content)

### Download Sample Code

- [Codeplex](https://asposewordsvsto.codeplex.com/releases/view/619474)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofVSTOv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c#content)

For more details, visit [Joining and Splitting Tables](https://docs.aspose.com/words/net/joining-and-splitting-tables/).
