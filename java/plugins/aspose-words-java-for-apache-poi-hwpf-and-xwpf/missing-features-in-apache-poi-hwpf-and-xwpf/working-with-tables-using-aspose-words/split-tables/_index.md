---
title: Split Tables
type: docs
weight: 30
url: /java/split-tables/
---

## **Aspose.Words - Split Tables**
We first need to pick a row from where to split the table. Once we know this we can create two tables from the original table by following these simple steps:

1. Create a clone of the table without cloning children to hold the moving rows and insert it after the original table.
1. Starting from the specified row move all subsequent rows to this second table.

**Java**

{{< highlight csharp >}}

 // Get the first table in the document.

Table firstTable = (Table)doc.getChild(NodeType.TABLE, 0, true);

// We will split the table at the third row (inclusive).

Row row = firstTable.getRows().get(2);

// Create a new container for the split table.

Table table = (Table)firstTable.deepClone(false);

// Insert the container after the original.

firstTable.getParentNode().insertAfter(table, firstTable);

// Add a buffer paragraph to ensure the tables stay apart.

firstTable.getParentNode().insertAfter(new Paragraph(doc), firstTable);

Row currentRow;

do

{

    currentRow = firstTable.getLastRow();

    table.prependChild(currentRow);

}

while (currentRow != row);

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithtables/splittables/AsposeSplittingTables.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithtables/splittables/AsposeSplittingTables.java)

{{% alert color="primary" %}} 

For more details, visit [Joining and Splitting Tables](http://docs.aspose.com/docs/display/wordsjava/Joining+and+Splitting+Tables).

{{% /alert %}}
