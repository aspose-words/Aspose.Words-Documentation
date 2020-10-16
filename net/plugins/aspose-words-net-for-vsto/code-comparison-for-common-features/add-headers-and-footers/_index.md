---
title: Add Headers and Footers
type: docs
weight: 40
url: /net/add-headers-and-footers/
---

## VSTO

{{< highlight csharp >}}
Word.Application wordApp = Application;
wordApp.Documents.Open("Add Headers and Footers.doc");
//Add Header
foreach (Word.Section section in this.Application.ActiveDocument.Sections)
{
	Word.Range headerRange = section.Headers[Word.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range;
	headerRange.Fields.Add(headerRange, Word.WdFieldType.wdFieldPage);
	headerRange.ParagraphFormat.Alignment = Word.WdParagraphAlignment.wdAlignParagraphRight;
}
//Add Footer
foreach (Word.Section wordSection in this.Application.ActiveDocument.Sections)
{
	Word.Range footerRange = wordSection.Footers[Word.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range;
	footerRange.Font.ColorIndex = Word.WdColorIndex.wdDarkRed;
	footerRange.Font.Size = 20;
	footerRange.Text = "Confidential";
}
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Create the headers.
builder.MoveToHeaderFooter(HeaderFooterType.HeaderPrimary);
builder.Write("Header Text goes here...");
//add footer having current date
builder.MoveToHeaderFooter(HeaderFooterType.FooterPrimary);
builder.InsertField("Date", "");
doc.UpdateFields();
doc.Save("Insert Headers and Footers.doc");
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposevsto.codeplex.com/downloads/get/787338)
- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Add.Headers.and.Footers.to.Doc.Aspose.Words.zip)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-vsto/downloads/Add%20Headers%20and%20Footers%20to%20Doc%20\(Aspose.Words\).zip)
