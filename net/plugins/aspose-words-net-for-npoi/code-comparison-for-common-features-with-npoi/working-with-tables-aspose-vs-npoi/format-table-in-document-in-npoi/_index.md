---
title: Format Table in Document in NPOI
type: docs
weight: 20
url: /net/format-table-in-document-in-npoi/
---

## **Aspose.Words - Format Table in Document**
{{% alert color="primary" %}} 

Note that before you apply table properties there must be at least one row present in the table. This means when building a table using **DocumentBuilder**, such formatting must be done after the first call to **DocumentBuilder.InsertCell** or after adding the first row to a table or when inserting nodes directly into the DOM.

{{% /alert %}} 

**C#**

{{< highlight csharp >}}
  Document doc = new Document();
  DocumentBuilder builder = new DocumentBuilder(doc);
  Table table = builder.StartTable();
  builder.InsertCell();

  // Set the borders for the entire table.
  table.SetBorders(LineStyle.Single, 2.0, Color.Black);

  // Set the cell shading for this cell.
  builder.CellFormat.Shading.BackgroundPatternColor = Color.DarkGray;
  builder.Writeln("Cell #1");
  builder.InsertCell();

  // Specify a different cell shading for the second cell.
  builder.CellFormat.Shading.BackgroundPatternColor=Color.Blue;
  builder.Writeln("Cell #2");

  // End this row.
  builder.EndRow();

  // Clear the cell formatting from previous operations.
  builder.CellFormat.ClearFormatting();

  // Create the second row.
  builder.InsertCell();

  // Create larger borders for the first cell of this row. This will be different

  // compared to the borders set for the table.
  builder.CellFormat.Borders.Left.LineWidth=4.0;
  builder.CellFormat.Borders.Right.LineWidth=4.0;
  builder.CellFormat.Borders.Top.LineWidth=4.0;
  builder.CellFormat.Borders.Bottom.LineWidth=4.0;
  builder.Writeln("Cell #3");
  builder.InsertCell();

  // Clear the cell formatting from the previous cell.
  builder.CellFormat.ClearFormatting();
  builder.Writeln("Cell #4");
  doc.Save("Format Table in Document.doc");
{{< /highlight >}}
## **NPOI HWPF XWPF - Format Table in Document**
**C#**

{{< highlight csharp >}}

  // Create a new document from scratch
  XWPFDocument doc = new XWPFDocument();
  XWPFTable table = doc.CreateTable(3, 3);
  table.GetRow(1).GetCell(1).SetText("EXAMPLE OF TABLE");
  XWPFTableCell c1 = table.GetRow(0).GetCell(0);
  XWPFParagraph p1 = c1.AddParagraph();   //don't use doc.CreateParagraph
  XWPFRun r1 = p1.CreateRun();
  r1.SetText("This is test table contents");
  r1.IsBold=true;
  r1.FontFamily = "Courier";
  r1.SetUnderline(UnderlinePatterns.DotDotDash);
  r1.SetTextPosition(100);
  c1.SetColor("FF0000");
  table.GetRow(2).GetCell(2).SetText("only text");
  FileStream out1 = new FileStream("data/Format Table in Document.docx", FileMode.Create);
  doc.Write(out1);
  out1.Close();
{{< /highlight >}}
## **Download Running Code**
Download **Format Table in Document** from any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/SourceControl/latest#Aspose.Words_NPOI.HWPF and XWPF/Aspose.Words Vs NPOI HWPF and XWPF v1.1/Format Table in Document/)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/NPOI/Aspose.Words%20Vs%20NPOI%20HWPF%20and%20XWPF%20v1.1/Format%20Table%20in%20Document)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-vs-NPOI-HWPF-1ac73164/view/SourceCode#content)
## **Download Sample Code**
Download **Format Table in Document** from any of the below mentioned social coding sites:

- [CodePlex](https://asposenpoi.codeplex.com/releases/view/617696)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsVsNPOIHWPFandXWPF1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/AsposeWords-vs-NPOI-HWPF-1ac73164/view/SourceCode#content)
