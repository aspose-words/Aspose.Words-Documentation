---
title: Display Documents in Print Preview – Aspose.Words for .NET
articleTitle: Display Documents in Print Preview
linktitle: Display Documents in Print Preview
description: "Aspose.Words for .NET allows you to display documents in print preview easily and fast instead of using VSTO."
type: docs
weight: 110
url: /net/display-documents-in-print-preview/
---

## VSTO Words

Below is the code to show Print Preview of the document.

{{< highlight csharp >}}
this.Application.ActiveDocument.PrintPreview();
{{< /highlight >}}

## Aspose.Words

The Aspose.Words component has no built in dialogs or forms, but implements its own version of the .NET **PrintDocument** class which can be passed to a **PrintPreviewDialog** form to print and preview a document .

Aspose.Words defines a special class called [**AsposeWordsPrintDocument**](https://apireference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument) which is a sub class of the .NET **PrintDocument** class . An instance of this object is passed to the **PrintPreviewDialog** class which defines the output to transmit to a printer.

This sample describes how to use these classes to print a document from Aspose.Words with print preview and settings dialog.

Finally, an instance of the PrintPreviewDialog is created. For this example we have implemented a derived version of the PrintPreviewDialog class called ActivePrintPreviewDialog. This custom class is used to move preview dialog on top of all other windows when it is displayed.

{{< highlight csharp >}}
string FileName = "YourFileName.docx";
Document doc = new Document(FileName);
ActivePrintPreviewDialog previewDlg = new ActivePrintPreviewDialog();

// Pass the Aspose.Words print document to the Print Preview dialog.
previewDlg.Document = doc;

// Specify additional parameters of the Print Preview dialog.
previewDlg.ShowInTaskbar = true;
previewDlg.MinimizeBox = true;
previewDlg.PrintPreviewControl.Zoom = 1;
previewDlg.Document.DocumentName = "TestName.doc";
previewDlg.WindowState = FormWindowState.Maximized;

// Show the appropriately configured Print Preview dialog.
previewDlg.ShowDialog();
{{< /highlight >}}

## Download Running Code Example

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/AsposeWordsForVSTOv1.1)

## Sample Code

- [GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Plugins/Aspose.Words%20Vs%20VSTO%20Word/Code%20Comparison%20of%20Common%20Features/Display%20Documents%20in%20Print%20Preview)
