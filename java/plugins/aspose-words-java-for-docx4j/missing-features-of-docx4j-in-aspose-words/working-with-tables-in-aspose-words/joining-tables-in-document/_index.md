---
title: Joining Tables in Document
type: docs
weight: 20
url: /java/joining-tables-in-document/
---

## **Aspose.Words - Joining Tables in Document**
A table which is represented in the Aspose.Words Document Object Model is made up of independent rows and cells which makes joining or splitting tables easy.

In order to manipulate a table to split or join with another table we simply need to move the rows from one table to another.

**Java**

{{< highlight java >}}

 Document doc = new Document(dataDir + "tableDoc.doc");

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
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/tables/joiningtables/AsposeJoiningTables.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/tables/joiningtables/AsposeJoiningTables.java)

{{% alert color="primary" %}} 

For more details, visit [Joining and Splitting Tables](/words/java/joining-and-splitting-tables/).

{{% /alert %}}
