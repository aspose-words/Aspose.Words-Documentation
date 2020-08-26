---
title: Split Tables
type: docs
weight: 40
url: /net/split-tables/
---

We first need to pick a row at where to split the table. Once we know this we can create two tables from the original table by following these simple steps:

1. Create a clone of the table without cloning children to hold the moved rows and insert it after the original table.
1. Starting from the specified row move all subsequent rows to this second table.
##### **Example**
**C#**

{{< highlight csharp >}}

 // Load the document.
 Document doc = new Document("Table.SimpleTable.doc");

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
### **Download Running Examples**
- [Codeplex](https://asposewordsvsto.codeplex.com/SourceControl/latest#Aspose.Words Features missing in VSTO/Splitting Tables/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Aspose.Words%20Features%20missing%20in%20VSTO/Splitting%20Tables)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c/view/SourceCode#content)
### **Download Sample Code**
- [Codeplex](https://asposewordsvsto.codeplex.com/releases/view/619474)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofVSTOv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-Features-bfd6167c#content)

{{% alert color="primary" %}} 

For more details, visit [Joinning and Splitting Tables](http://www.aspose.com/docs/display/wordsnet/Joining+and+Splitting+Tables).

{{% /alert %}}
