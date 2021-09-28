---
title: Public API Changes in Aspose.Words 13.5.0
type: docs
weight: 50
url: /java/public-api-changes-in-aspose-words-13-5-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 13.5.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Improved HTML Parser Introduced

The HTML parser that AW used did not conform to the HTML5 specification. Differences become apparent when Aspose.Words imports malformed HTML documents which can cause loss of data or error. A new parser which conforms to the HTML5 specification is now used.

## GoBack Bookmarks are no longer Exported when Saving as HTML

GoBack bookmarks are ignored during export to HTML due to problems they caused when they are nested inside other bookmarks.

## FontEmbeddingMode added to PdfSaveOptions

A new property **FontEmbeddingMode** was added to the **PdfSaveOptions** instead of the **PdfSaveOptions.EmbedStandardWindowsFonts** bool property. This new property provides the options of EmbedAll, EmbedNonstandard and EmbedNone to control how fonts are embedded when saving to PDF.

## Added Paragraph.GetEffectiveTabs Method

The **Paragraph.GetEffectiveTabs** method gets an array of all tab stops applied to this paragraph, including applied indirectly by styles or lists. Use this method if you need to retrieve all the tab stops that are related to this paragraph regardless of their position in the document object model. Aspose.Words provides a complex algorithm behinds the scenes to provide the "calculated" tab stops in this manner and the behavior matches Microsoft Word.

## Support for INDEX field Update

Support for INDEX field update has been introduced. All switches and features are support with the exception of the following:

- \y (INDEX);
- \z (INDEX);
- \y (XE).

## Plain Text File Line Detection Improved

The algorithm used in previous versions of Aspose.Words to load plain text files groups lines in the input text file with similar indents into a single paragraph. This normally is accurate however it has been found to cause some lines to disappear when some text files are loaded. In this version of Aspose.Words this is has been fixed and the algorithm changed so a new paragraph is created for each line ending in the text file, this behavior also closely matches how Microsoft Word handles plain text files.

## PageSetup.MultiplePages and PageSetup.SheetsPerBooklet Added to PageSetup

The **PageSetup.MultiplePages** and **PageSetup.SheetsPerBooklet** properties have been added to PageSetup to allow specifying Book Fold a few page options.

Possible MultiplePagesType:

- Normal - Normal printing, no several pages specified.
- MirrorMargins - Swaps left and right margins on facing pages.
- TwoPagesPerSheet - Prints two pages per sheet.
- BookFoldPrinting - Specifies whether to print the document as a book fold.
- BookFoldPrintingReverse - Specifies whether to print the document as a reverse book fold.
- Default - Default value is Normal.
- SheetsPerBooklet property returns or sets the number of pages to be included in each booklet.

## OfPie Chart Rendering

Rendering of "Pie Of Pie" and "Pie Of Bar" charts is supported.

## OOXML documents with GIF Images are Converted to PNG upon Document Load

GIF image type is not natively supported by MS Word. GIF images need to be converted to PNG images at load time. This occurs already with DOC documents but was not with OOXML documents.

## Support for Saving Document as a Booklet when saving to PDF and XPS

A booklet page order is controlled via **PageSetup.MultiplePages** and **PageSetup.SheetsPerBooklet** properties. This setting is applied to all sections at once even which matches how the Microsoft Word page setup dialog behaves.

Use the **UseBookFoldPrintingSettings** option of **PdfSaveOptions** and **XpsSaveOptions** to save a booklet to PDF or XPS.

## Support for Update of List Labels in Spanish and Portuguese

Aspose.Words supports generation of list labels in ordinal/cardinal Spanish and Portuguese. Users can set locale using **Thread.CurrentThread.CurrentCulture** in order to have their list labels generated in one of supported languages

## Support for SDT Databound to CustomXML

In previous versions of Aspose.Words structured document tags (content controls) that were databound to CustomXML markup would not be read properly and would display incorrect text (normally the default text of the structured document tag). This version of Aspose.Words includes the feature to handle databound tags therefore the correct values are now shown.

## UseBookFoldPrintingSettings Rendering Save Option Added

The **UseBookFoldPrintingSettings** property has been added to **PdfSaveOptions** and **XpsSaveOptions** classes to allow production of different types of booklets. 
