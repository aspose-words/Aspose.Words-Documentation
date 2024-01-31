---
title: Autofit Setting to Tables
second_title: Aspose.Words for .NET
articleTitle: Autofit Setting to Tables
linktitle: Autofit Setting to Tables
description: "Autofit settings to tables. NPOI does not provide an opportunity to autofit settings to tables using C#."
type: docs
weight: 100
url: /net/autofit-setting-to-tables/
---

{{% alert color="primary" %}}

See more details in the [Applying Formatting](/words/net/applying-formatting/) article of the [Working with Tables](/words/net/working-with-tables/) documentation section.

{{% /alert %}}

When creating a table using a visual agent such as Microsoft Word, you will often find yourself using one of the `AutoFit` options to automatically size the table to the desired width. For instance you can use the `AutoFit` to Window option to fit the table to the width of the page and AutoFit to Contents option to allow each cell to grow or shrink to accommodate its contents. 

By default Aspose.Words inserts a new table using “**AutoFit to Window”**. The table will size to the available width on the page. To change the sizing behavior on such a table or an existing table you can call **Table.AutoFit** method. This method accepts an **AutoFitBehavior** enumeration which defines what type of auto fitting is applied to the table.

The following code example shows how to autofit the first table to the page width:

{{< highlight csharp >}}

// Open the document.
Document doc = new Document("../../data/document.doc");
Table table = (Table)doc.GetChild(NodeType.Table, 0, true);

// Autofit the first table to the page width.
table.AutoFit(AutoFitBehavior.AutoFitToWindow);

// Save the document to disk.
doc.Save("TestFile.AutoFitToWindow Out.doc");
{{< /highlight >}}

See also:

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Autofit.Setting.to.Tables.Aspose.Words.zip) for running code
