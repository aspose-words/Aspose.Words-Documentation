---
title: Splitting Tables
type: docs
weight: 100
url: /net/splitting-tables/
---

We first need to pick a row at where to split the table. Once we know this we can create two tables from the original table by following these simple steps:

1. Create a clone of the table without cloning children to hold the moved rows and insert it after the original table.
1. Starting from the specified row move all subsequent rows to this second table.

##### Example

**C#**

{{< highlight csharp >}}
string FilePath = @"..\..\..\Sample Files\";
string FileName = FilePath + "Spliting Tables.docx";

// Load the document.
Document doc = new Document(FileName);

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
doc.Save(FileName);
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)

## Download Running Code

- [Codeplex](http://asposeopenxml.codeplex.com/SourceControl/latest#Aspose.Words Features missing in OpenXML/Splitting Tables/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20OpenXML%20Words/OpenXMLMissingFeatures/Splitting%20Tables)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b/view/SourceCode#content)
