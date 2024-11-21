---
title: Changing Page Setup for Whole Document
second_title: Aspose.Words for .NET
articleTitle: Changing Page Setup for Whole Document
linktitle: Changing Page Setup for Whole Document
description: "Change page setup for a whole document easily and fast instead of using VSTO in C#."
type: docs
weight: 10
url: /net/changing-page-setup-for-whole-document-using-aspose-words/
timestamp: 2024-01-27-14-07-04
---

Page setup is a set of formatting attributes which is stored in each section of a Word document. Microsoft Word Automation’s `ActiveDocument.Range`.PageSetup is a “shortcut” to set the same page setup for all sections of a document. Aspose.Words only provides access to the page setup of individual sections via the `Section.PageSetup` property so any document-wide changes to page setup must be applied for all sections.

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

// It is important to understand that a document can contain many sections and each

// section has its own page setup. In this case we want to modify them all.
foreach (Section section in doc)
	section.PageSetup.PaperSize = PaperSize.Letter;
doc.Save( "Section.ModifyPageSetupInAllSections Out.doc");
{{< /highlight >}}

## Download Sample Code

- [Github](https://github.com/asposemarketplace/Aspose_for_VSTO/releases/download/2/Changing.Page.Setup.for.Whole.Document.Aspose.Words.zip)
