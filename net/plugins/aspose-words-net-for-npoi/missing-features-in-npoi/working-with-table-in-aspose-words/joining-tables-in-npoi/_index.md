---
title: Joining Tables in NPOI
type: docs
weight: 20
url: /net/joining-tables-in-npoi/
---

## **Aspose.Words - Joining Tables**
A table which is represented in the Aspose.Words Document Object Model is made up of independent rows and cells which makes joining or splitting tables easy.

In order to manipulate a table to split or join with another table we simply need to move the rows from one table to another.

**C#**

{{< highlight cs >}}

// Load the document.
Document doc = new Document("../../data/document.doc");

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
doc.Save("Table.CombineTables Out.doc");
{{< /highlight >}}
## **Download Running Code**
Download **Joining Tables** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475291)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Joining.Tables.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Joining and Splitting Tables](http://www.aspose.com/docs/display/wordsnet/Joining+and+Splitting+Tables).

{{% /alert %}}
