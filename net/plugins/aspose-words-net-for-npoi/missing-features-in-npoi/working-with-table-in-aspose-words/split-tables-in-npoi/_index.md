---
title: Split Tables in NPOI
type: docs
weight: 30
url: /net/split-tables-in-npoi/
---

## **Aspose.Words - Split Tables**
We first need to pick a row at where to split the table. Once we know this we can create two tables from the original table by following these simple steps:

1. Create a clone of the table without cloning children to hold the moved rows and insert it after the original table.
1. Starting from the specified row move all subsequent rows to this second table.

**C#**

{{< highlight csharp >}}

// Load the document.
Document doc = new Document("../../data/document.doc");

// Get the first table in the document.
Table firstTable = (Table)doc.GetChild(NodeType.Table, 0, true);

// We will split the table at the third row (inclusive).
Row row = firstTable.Rows[2];

// Create a new container for the split table.
Table table = (Table)firstTable.Clone(false);

// Insert the container after the original.
firstTable.ParentNode.InsertAfter(table, firstTable);

// Add a buffer paragraph to ensure the tables stay apart.
firstTable.ParentNode.InsertAfter(new Paragraph(doc), firstTable);
Row currentRow;
do
{
	currentRow = firstTable.LastRow;
	table.PrependChild(currentRow);
}
while (currentRow != row);
doc.Save("Table.SplitTable Out.doc");
{{< /highlight >}}
## **Download Running Code**
Download **Split Tables** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475292)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Split.Table.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Joining and Splitting Tables](http://www.aspose.com/docs/display/wordsnet/Joining+and+Splitting+Tables).

{{% /alert %}}
