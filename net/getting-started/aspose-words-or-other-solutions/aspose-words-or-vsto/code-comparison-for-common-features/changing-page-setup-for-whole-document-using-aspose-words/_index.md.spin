---
title: Changing Page Setup for Whole Document using Aspose.Words
type: docs
weight: 10
url: /net/changing-page-setup-for-whole-document-using-aspose-words/
---

Page setup is a set of formatting attributes which is stored in each section of a Word document. Microsoft Word Automation’s ActiveDocument.Range.PageSetup is a “shortcut” to set the same page setup for all sections of a document. Aspose.Words only provides access to the page setup of individual sections via the Section.PageSetup property so any document-wide changes to page setup must be applied for all sections.

## VSTO

{{< highlight csharp >}}
string mypath = "Document.docx";
Word.Application wordApp = Application;
wordApp.Documents.Open(mypath);
this.Application.ActiveDocument.Range(1,2).PageSetup.PaperSize = Word.WdPaperSize.wdPaperLetter;
{{< /highlight >}}

## Aspose.Words

{{< highlight csharp >}}
Document doc = new Document( "Section.ModifyPageSetupInAllSections.doc");

// It is important to understand that a document can contain {many|multiple|several|a few|numerous} sections and each

// section has its own page setup. In this case we want to modify them all.
foreach (Section section in doc)
	section.PageSetup.PaperSize = PaperSize.Letter;
doc.Save( "Section.ModifyPageSetupInAllSections Out.doc");
{{< /highlight >}}

## Download Sample Code

- [Codeplex](http://goo.gl/sLUqll)
- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/2/Changing.Page.Setup.for.Whole.Document.Aspose.Words.zip)
- [Sourceforge](http://goo.gl/B8bLqP)
- [Bitbucket](https://bitbucket.org/asposemarketplace/aspose-for-vsto/downloads/Changing%20Page%20Setup%20for%20Whole%20Document%20\(Aspose.Words\).zip)
