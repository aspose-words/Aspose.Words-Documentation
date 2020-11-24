---
title: Autofit Setting to Tables
type: docs
weight: 10
url: /net/autofit-setting-to-tables/
---

## Aspose.Words - Autofit Setting to Tables

When creating a table using a visual agent such as Microsoft Word, you will often find yourself using one of the AutoFit options to automatically size the table to the desired width. For instance you can use the AutoFit to Window option to fit the table to the width of the page and AutoFit to Contents option to allow each cell to grow or shrink to accommodate its contents. 

By default Aspose.Words inserts a new table using “**AutoFit to Window”**. The table will size to the available width on the page. To change the sizing behavior on such a table or an existing table you can call **Table.AutoFit** method. This method accepts an **AutoFitBehavior** enumeration which defines what type of auto fitting is applied to the table.

**C#**

{{< highlight csharp >}}

// Open the document
Document doc = new Document("../../data/document.doc");
Table table = (Table)doc.GetChild(NodeType.Table, 0, true);

// Autofit the first table to the page width.
table.AutoFit(AutoFitBehavior.AutoFitToWindow);

// Save the document to disk.
doc.Save("TestFile.AutoFitToWindow Out.doc");
{{< /highlight >}}

## Download Running Code

Download **Autofit Setting to Tables** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475290)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Autofit.Setting.to.Tables.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [How to Apply Different AutoFit Settings to a Table](/words/net/applying-formatting/).

{{% /alert %}}
