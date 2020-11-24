---
title: Joining Tables
type: docs
weight: 80
url: /net/joining-tables/
---

{{% alert color="primary" %}} 

A table which is represented in the Aspose.Words Document Object Model is made up of independent rows and cells which makes joining or splitting tables easy.

In order to manipulate a table to split or join with another table we simply need to move the rows from one table to another.

{{% /alert %}}

The following code example shows how to combine the rows from two tables into one:

**C#**

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "Joining Tables.docx";

// Load the document.
Document doc = new Document(FileName);

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
doc.Save(FileName);
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)

## Download Running Code

- [Codeplex](https://archive.codeplex.com/?p=asposeopenxml#Aspose.Words%20Features%20missing%20in%20OpenXML/Joining%20Tables/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/OpenXMLMissingFeatures/Joining%20Tables)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b/view/SourceCode#content)
