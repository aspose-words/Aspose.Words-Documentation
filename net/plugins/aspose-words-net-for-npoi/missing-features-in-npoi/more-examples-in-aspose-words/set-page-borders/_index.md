---
title: Set Page Borders
type: docs
weight: 30
url: /net/set-page-borders/
---

## Aspose.Words - Set Page Borders

Page setup and section properties are encapsulated in the **PageSetup** object that is returned by the **DocumentBuilder.PageSetup** property. The object contains all the page setup attributes of a section (left margin, bottom margin, paper size, and so on) as properties. 

**C#**

{{< highlight csharp >}}
Document doc = new Document("../../data/document.doc");
DocumentBuilder builder = new DocumentBuilder(doc);
Table table = builder.StartTable();
builder.InsertCell();

// Set the borders for the entire table.
table.SetBorders(LineStyle.Single, 2.0, Color.Black);

// Set the cell shading for this cell.
builder.CellFormat.Shading.BackgroundPatternColor = Color.Red;
builder.Writeln("Cell #1");
builder.InsertCell();

// Specify a different cell shading for the second cell.
builder.CellFormat.Shading.BackgroundPatternColor = Color.Green;
builder.Writeln("Cell #2");

// End this row.
builder.EndRow();

// Clear the cell formatting from previous operations.
builder.CellFormat.ClearFormatting();

// Create the second row.
builder.InsertCell();

// Create larger borders for the first cell of this row. This will be different

// compared to the borders set for the table.
builder.CellFormat.Borders.Left.LineWidth = 4.0;
builder.CellFormat.Borders.Right.LineWidth = 4.0;
builder.CellFormat.Borders.Top.LineWidth = 4.0;
builder.CellFormat.Borders.Bottom.LineWidth = 4.0;
builder.Writeln("Cell #3");
builder.InsertCell();

// Clear the cell formatting from the previous cell.
builder.CellFormat.ClearFormatting();
builder.Writeln("Cell #4");
doc.Save("Table.SetBordersAndShading Out.doc");
{{< /highlight >}}

## Download Running Code

Download **Set Page Borders** form any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/downloads/get/1475296)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.Words_Features_Missing_in_NPOI_v_1.0/Set.Page.Borders.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Specifying Formatting](https://docs.aspose.com/words/net/working-with-styles-and-themes/).

{{% /alert %}}
