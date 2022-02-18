---
title: Print Documents – Aspose.Words for .NET
articleTitle: Print Documents
linktitle: Print Documents
description: "Aspose.Words for .NET allows you to print a document easily and fast instead of using VSTO."
type: docs
weight: 100
url: /net/print-documents/
---

## VSTO Words

Call the **PrintOut** method of the **Document** object that you want to print.The following code example prints the active entire document or any current active page.

{{< highlight csharp >}}
this.Application.ActiveDocument.PrintOut(true, false, Word.WdPrintOutRange.wdPrintAllDocument,
Item: Word.WdPrintOutItem.wdPrintDocumentContent, Copies: "1", Pages: "",
PageType: Word.WdPrintOutPages.wdPrintAllPages, PrintToFile: false, Collate: true,
ManualDuplexPrint: false);
object copies = "1";
object pages = "1";
object range = Word.WdPrintOutRange.wdPrintCurrentPage;
object items = Word.WdPrintOutItem.wdPrintDocumentContent;
object pageType = Word.WdPrintOutPages.wdPrintAllPages;
object oTrue = true;
object oFalse = false;
Word.Document document = this.Application.ActiveDocument;
document.PrintOut(
ref oTrue, ref oFalse, ref range, ref missing, ref missing, ref missing,
ref items, ref copies, ref pages, ref pageType, ref oFalse, ref oTrue,
ref missing, ref oFalse, ref missing, ref missing, ref missing, ref missing);
{{< /highlight >}}

## Aspose.Words

Below is the code example that prints single document or any page of specific document.

{{< highlight csharp >}}
string FileName = "YourFileName.docx";
Document doc = new Document(FileName);
doc.Print();
PrinterSettings PrinterSettings = new PrinterSettings();
PrinterSettings.MinimumPage = 1;
PrinterSettings.MaximumPage = doc.PageCount;
PrinterSettings.FromPage = 1;
PrinterSettings.ToPage = doc.PageCount;
doc.Print(PrinterSettings);
{{< /highlight >}}

For more details of this feature you can go [here](/words/net/print-a-document-programmatically-or-using-dialogs/#printing-a-document-with-settings-and-print-preview-dialogs)

## Download Running Code Example

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsForVSTOv1.1)

## Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Code%20Comparison%20of%20Common%20Features/Print%20Documents)
