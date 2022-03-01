---
title: Removing Header and Footer – Aspose.Words for .NET
articleTitle: Removing Header and Footer
linktitle: Removing Header and Footer
description: "Remove headers or footers from a document easily and fast instead of using VSTO using C#."
type: docs
weight: 60
url: /net/removing-header-and-footer/
---

## VSTO

{{< highlight csharp >}}
Word.Document doc = Application.Documents.Open("Add Headers and Footers.doc");
Globals.ThisAddIn.Application.ActiveDocument.Sections[1].Headers[Microsoft.Office.Interop.Word.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range.Paragraphs.Last.Range.Delete();
Globals.ThisAddIn.Application.ActiveDocument.Sections[1].Footers[Microsoft.Office.Interop.Word.WdHeaderFooterIndex.wdHeaderFooterPrimary].Range.Paragraphs.Last.Range.Delete();
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document("Remove Headers and Footers.doc");
foreach (Section section in doc)
{
	section.HeadersFooters.RemoveAt(0);
	HeaderFooter footer;

	// Primary footer is the footer used for odd pages.
	footer = section.HeadersFooters[HeaderFooterType.FooterPrimary];
	if (footer != null)
		footer.Remove();
}
doc.Save("Remove Headers and Footers.doc");
{{< /highlight >}}

## Download Sample Code

- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/Aspose.Words1.0/Removing.Header.and.Footer.Aspose.Words.zip)
- [Bitbucket](https://bbuseruploads.s3.amazonaws.com/asposemarketplace/aspose-for-vsto/downloads/Removing%20Header%20and%20Footer%20%28Aspose.Words%29.zip?Signature=ChAN40h0P9GusvOcCk%2F7KRsHz8o%3D&Expires=1642707856&AWSAccessKeyId=AKIA6KOSE3BNA7WTAGHW&versionId=null&response-content-disposition=attachment%3B%20filename%3D%22Removing%2520Header%2520and%2520Footer%2520%2528Aspose.Words%2529.zip%22)
