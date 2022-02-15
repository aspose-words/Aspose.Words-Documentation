---
title: Create Tables in NPOI – Aspose.Words for .NET
articleTitle: Create Tables in NPOI
linktitle: Create Tables in NPOI
description: "Aspose.Words for .NET allows you to create a table in a document easily and fast instead of using NPOI."
type: docs
weight: 10
url: /net/create-tables-in-npoi/
---

## Aspose.Words - Create Tables

In **Aspose.Words** a table is normally inserted using **DocumentBuilder**. The following methods are used to build a table. Other methods will also be used to insert content into the table cells.

- DocumentBuilder.StartTable
- DocumentBuilder.InsertCell
- DocumentBuilder.EndRow
- DocumentBuilder.EndTable
- DocumentBuilder.Writeln

**C#**

{{< highlight csharp >}}
using Aspose.Words;
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.ParagraphFormat.Borders.Top.LineStyle = LineStyle.Thick;
builder.ParagraphFormat.Shading.BackgroundPatternColor = System.Drawing.ColorTranslator.FromHtml("#EEEEEE");
builder.ParagraphFormat.Shading.Texture = TextureIndex.TextureDarkDiagonalUp;
builder.Writeln("Title1");
builder.ParagraphFormat.ClearFormatting();
builder.InsertBreak(BreakType.ParagraphBreak);

// We call this method to start building the table.
builder.StartTable();
builder.InsertCell();
builder.CellFormat.Shading.BackgroundPatternColor = System.Drawing.ColorTranslator.FromHtml("#FF0000");
builder.Font.Position = 100;
builder.Font.Name = "Courier";
builder.Font.Bold = true;
builder.Font.Underline = Underline.DotDotDash;
builder.Write("The quick brown fox");
builder.InsertCell();
builder.Font.ClearFormatting();
builder.CellFormat.ClearFormatting();
builder.InsertCell();
builder.EndRow();
builder.InsertCell();
builder.InsertCell();
builder.Write("EXAMPLE OF TABLE");
builder.InsertCell();
builder.EndRow();
builder.InsertCell();
builder.InsertCell();
builder.InsertCell();
builder.Write("only text");
builder.EndRow();

// Signal that we have finished building the table.
builder.EndTable();
doc.Save("simpleTable.docx");
{{< /highlight >}}

## NPOI HWPF XWPF - Create Tables

Below example shows how table is inserted using NPOI XWPF library.

**C#**

{{< highlight csharp >}}
using NPOI.XWPF.UserModel;
XWPFDocument doc = new XWPFDocument();
XWPFParagraph para= doc.CreateParagraph();
XWPFRun r0 = para.CreateRun();
r0.SetText("Title1");
para.BorderTop = Borders.THICK;
para.FillBackgroundColor = "EEEEEE";
para.FillPattern = NPOI.OpenXmlFormats.Wordprocessing.ST_Shd.diagStripe;
XWPFTable table = doc.CreateTable(3, 3);
table.GetRow(1).GetCell(1).SetText("EXAMPLE OF TABLE");
XWPFTableCell c1 = table.GetRow(0).GetCell(0);
XWPFParagraph p1 = c1.AddParagraph();   //don't use doc.CreateParagraph
XWPFRun r1 = p1.CreateRun();
r1.SetText("The quick brown fox");
r1.SetBold(true);
r1.FontFamily = "Courier";
r1.SetUnderline(UnderlinePatterns.DotDotDash);
r1.SetTextPosition(100);
c1.SetColor("FF0000");
table.GetRow(2).GetCell(2).SetText("only text");
FileStream out1 = new FileStream("simpleTable.docx", FileMode.Create);
doc.Write(out1);
out1.Close();
{{< /highlight >}}

## Download Running Code

Download **Create Tables** form any of the below mentioned social coding sites:

- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/Aspose.WordsVsNPOI_1.0/Create.Tables.Aspose.Words.zip)

{{% alert color="primary" %}} 

For more details, visit [Inserting a Table using DocumentBuilder](/words/net/introduction-and-creating-tables/#inserting-a-table-using-documentbuilder).

{{% /alert %}}
