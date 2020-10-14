---
title: Joining Tables
type: docs
weight: 20
url: /java/joining-tables/
---

## Aspose.Words - Joining Tables

A table which is represented in the Aspose.Words Document Object Model is made up of independent rows and cells which makes joining or splitting tables easy.

In order to manipulate a table to split or join with another table we simply need to move the rows from one table to another.

**Java**

{{< highlight csharp >}}

// Get the first and second table in the document.

// The rows from the second table will be appended to the end of the first table.
Table firstTable = (Table)doc.getChild(NodeType.TABLE, 0, true);
Table secondTable = (Table)doc.getChild(NodeType.TABLE, 1, true);

// Append all rows from the current table to the next.

// Due to the design of tables even tables with different cell count and widths can be joined into one table.
while (secondTable.hasChildNodes())
    firstTable.getRows().add(secondTable.getFirstRow());

// Remove the empty table container.
secondTable.remove();
{{< /highlight >}}

## Download Running Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## Download Sample Code

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithtables/joiningtables/AsposeJoiningTables.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithtables/joiningtables/AsposeJoiningTables.java)

{{% alert color="primary" %}} 

For more details, visit [Joining and Splitting Tables](https://docs.aspose.com/words/java/joining-and-splitting-tables/).

{{% /alert %}}
