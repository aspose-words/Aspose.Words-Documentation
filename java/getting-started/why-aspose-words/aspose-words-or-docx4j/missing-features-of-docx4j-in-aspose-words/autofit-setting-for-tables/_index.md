---
title: Autofit Setting for Tables – Aspose.Words for Java
articleTitle: Autofit Setting for Tables
linktitle: Autofit Setting for Tables
description: "Aspose.Words for Java allows to autofit settings to tables. Docx4j does not provide an opportunity to autofit settings to tables."
type: docs
weight: 20
url: /java/autofit-setting-for-tables/
---

{{% alert color="primary" %}}

See more details in the ["Applying Formatting"](/words/java/applying-formatting/) article of the ["Working with Tables"](/words/java/working-with-tables/) documentation section.

{{% /alert %}}

When creating a table using a visual agent such as Microsoft Word, you will often find yourself using one of the AutoFit options to automatically size the table to the desired width. For instance, you can use the AutoFit to Window option to fit the table to the width of the page and AutoFit to Contents option to allow each cell to grow or shrink to accommodate its contents. 

By default Aspose.Words inserts a new table using “**AutoFit to Window”**. The table will size to the available width on the page. To change the sizing behaviour on such a table or an existing table you can call **Table.AutoFit** method. This method accepts an **AutoFitBehavior** enumeration which defines what type of auto fitting is applied to the table.

The following code example shows how to autofit the first table to the page width:

{{< highlight csharp >}}

// Open the document
Document doc = new Document(dataDir + "tableDoc.doc");
Table table = (Table)doc.getChild(NodeType.TABLE, 0, true);

// Autofit the first table to the page width.
table.autoFit(AutoFitBehavior.AUTO_FIT_TO_WINDOW);
Table table2 = (Table)doc.getChild(NodeType.TABLE, 1, true);

// Auto fit the table to the cell contents
table2.autoFit(AutoFitBehavior.AUTO_FIT_TO_CONTENTS);
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0) for running code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/tables/autofitsettingstotable/AsposeTableAutoFitSettings.java) for code example
