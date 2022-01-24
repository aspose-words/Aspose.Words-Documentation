---
title: Fitting all Tables to the Page Width
description: "Aspose.Words for .NET allows you to fit a table into a document by page width easily and fast instead of using VSTO."
type: docs
weight: 30
url: /net/fitting-all-tables-to-the-page-width/
---

## VSTO

{{< highlight csharp >}}
string mypath = "Document.docx";
Word.Application wordApp = Application;
wordApp.Documents.Open(mypath);
foreach (Table table in this.Application.ActiveDocument.Tables)
{
  table.PreferredWidthType = WdPreferredWidthType.wdPreferredWidthPercent;
  table.PreferredWidth = 100;
}
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document( "doc.docx");
foreach (Table table in doc.GetChildNodes(NodeType.Table, true))
{
	table.PreferredWidth = PreferredWidth.FromPercent(100);
}
{{< /highlight >}}

## Download Sample Code

- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Fitting.all.Tables.to.the.Page.Width.Aspose.Words.zip)
- [Sourceforge](https://sourceforge.net/projects/asposevsto/files/Aspose.Words%20Vs%20VSTO%20Words/Fitting%20all%20Tables%20to%20the%20Page%20Width%20\(Aspose.Words\).zip/download)
