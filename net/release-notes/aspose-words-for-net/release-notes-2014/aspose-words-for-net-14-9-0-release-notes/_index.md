---
title: Aspose.Words for .NET 14.9.0 Release Notes
description: "Aspose.Words for .NET 14.9.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 20
url: /net/aspose-words-for-net-14-9-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 14.9.0](https://www.nuget.org/packages/Aspose.Words/14.9.0)

{{% /alert %}} 

## Aspose.Words for .NET 14.9 Release Notes

### Major Features

There are 111 improvements and fixes in this regular monthly release. The most notable are:

- New reporting engine that allows to use LINQ Method Syntax in report templates
  Databinding for image SDTs is supported
  DrawingML is now a composite node (breaking change to the public API)
  DrawingML supports linked textboxes
  Rendering of 'keep with next' paragraphs is improved
  Implemented 'Use printer metrics to lay out document' compatibility option (Windows/GDI only)
  Improved tabs handling logic for Word 2013 and compatible modes in rendering
  Extrusion effect for DrawingML shapes rendering implemented (cold rendering)
  Rounding corners rendering in DrawingML charts implemented
  Improved 3D lighting rendering for WordArt objects
  Added support of Gradient background in HTML output

## All Changes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10068|A DrawingML is converted to Shape Textbox during open/save a DOCX|Bug|
|WORDSNET-10091|Custom XML to SDT binding: images inside XML are not working|Bug|
|WORDSNET-10144|Color of text in Text Boxes is not preserved during open/save a DOCX|Bug|
|WORDSNET-10145|Gradient background colors of text boxes are not preserved during open/save a DOCX|Bug|
|WORDSNET-10209|Image position is incorectly exported to HTML|Bug|
|WORDSNET-10216|"Keep with next" option is not preserved during rendering|Bug|
|WORDSNET-10248|DrawingML TextBox is converted to Shape during open/save a DOCX|Bug|
|WORDSNET-10250|Drawing Canvas is changed to GroupShape after re-saving the Docx|Bug|
|WORDSNET-10262|Space between ListLabel and List item is increased after import StructuredDocumentTag|Bug|
|WORDSNET-10270|Custom XML to SDT binding issue with date and time format|Bug|
|WORDSNET-10282|Negative numbers are prefixed with a SPACES during mail merge|Bug|
|WORDSNET-10379|Shape alignment is changed after conversion from Docx to HTML|Bug|
|WORDSNET-10389|Document.Save corrupts Word2013 file|Bug|
|WORDSNET-10418|Some text in Text-boxes in GroupShape is not preserved during open save a DOCX|Bug|
|WORDSNET-10432|Text formatting is not preserved during open/save a DOCX|Bug|
|WORDSNET-10435|Docx to html conversion issue with special characters|Bug|
|WORDSNET-10468|Shape is changed after conversion from Doc to Pdf|Bug|
|WORDSNET-10469|Shape is missing after conversion from Docx to Pdf|Bug|
|WORDSNET-10491|ParagraphFormat.SpaceAfter is changed after re-saving the Docx|Bug|
|WORDSNET-10492|Table move to next page after re-saving the Docx|Bug|
|WORDSNET-10510|Some content is rendered at the end of previous page in PDF|Bug|
|WORDSNET-10511|Rendering of a table starts from the end of previous page in PDF|Bug|
|WORDSNET-10524|Aspose.Words produces a corrupted Document during open/save a DOCX|Bug|
|WORDSNET-10526|A picture from start of page is moved down to end of page in PDF|Bug|
|WORDSNET-10570|System.InvalidOperationException occurs during calling Document.AcceptAllRevisions|Bug|
|WORDSNET-10572|Issue with inserting bookmark when first node is Shape|Bug|
|WORDSNET-10576|PageSetup.Orientation is incorrect for input HTML document|Bug|
|WORDSNET-10578|Text is overlapped after conversion from RTF to HTML|Bug|
|WORDSNET-10582|Revision.Accept does not work for Docx|Bug|
|WORDSNET-10607|Underlined white spaces render beyond right page edge in PDF|Bug|
|WORDSNET-10612|Aspose.Word incorrectly loads floating point values into DOM|Bug|
|WORDSNET-10630|Table of contents is displayed with additional extra dots for particular doc file|Bug|
|WORDSNET-10640|Particular file with "Gabriola" font is displayed incorrect in FF/Chrome|Bug|
|WORDSNET-10641|Strikeout is shifted down in Chrome/FF|Bug|
|WORDSNET-10645|Underline for header is not displayed in FF/Chrome for the document|Bug|
|WORDSNET-10646|Formulas are displayed incorrect in FF/Chrome for DOCX file|Bug|
|WORDSNET-10651|Image has shifted down after conversion from mhtml to Pdf|Bug|
|WORDSNET-10652|Contents are lost after conversion from mhtml to Pdf|Bug|
|WORDSNET-10653|ExpandTableStylesToDirectFormatting method disturbs a Table layout|Bug|
|WORDSNET-10660|Docx to Pdf conversion issue with PdfSaveOptions.ZoomBehavior|Bug|
|WORDSNET-10668|System.InvalidCastException is thrown while using Hyphenation.RegisterDictionary|Bug|
|WORDSNET-10674|Table's heading row does not repeat when save the document to Pdf|Bug|
|WORDSNET-10692|Table's cell padding is ignored after re-saving the Docx|Bug|
|WORDSNET-10693|Paragraph spacing is lost after re-saving the Docx|Bug|
|WORDSNET-10695|/list label attrs/ Docx to Pdf conversion issue with numbering style|Bug|
|WORDSNET-10701|SVG is rendered as an empty image during importing HTML document|Bug|
|WORDSNET-10714|Header of document is changed after re-saving the ODT|Bug|
|WORDSNET-10716|Document.Save duplicate the contents of ODT|Bug|
|WORDSNET-10730|Create Note Hyperlink does not take to exact destination|Bug|
|WORDSNET-10747|Contents become invisible after conversion from Doc to Pdf|Bug|
|WORDSNET-10748|Contents position is changed after re-saving the Doc file|Bug|
|WORDSNET-10754|Issue with FontSettings.AddFontSubstitutes method|Bug|
|WORDSNET-10757|Contents are truncated after conversion from Docx to HtmlFixed|Bug|
|WORDSNET-6576|Table is not starting from a new Page in PDF|Bug|
|WORDSNET-7074|Doc to PDF conversion issue, content misplaced in output PDF file|Bug|
|WORDSNET-7747|DrawingML is converted to a TextBox Shape during open/save|Bug|
|WORDSNET-9304|Multi-line text in DrawingML is transformed into a single line during open/save a DOCX|Bug|
|WORDSNET-9469|Row is partially rendering on to the previous page in Pdf|Bug|
|WORDSNET-9504|GroupShape is loaded as DrawingML in Aspose.Words DOM|Bug|
|WORDSNET-9678|Formatting of text in DrawingML is not preserved during open/save a DOCX|Bug|
|WORDSNET-9727|Some DrawingML circles are not preserved during open/save a DOCX|Bug|
|WORDSNET-9844|Rotation of SDT content inside DrawingML textbox is not preserved during open save a DOCX|Bug|
|WORDSNET-9933|A hidden textbox shape is not preserved during open/save a DOCX|Bug|
|WORDSNET-10419|BuiltInDocumentProperties.Words returns wrong word count|Enhancement|
|WORDSNET-10448|Hebrew text is not converted properly|Enhancement|
|WORDSNET-10618|A WordArt doesn't render correctly in PDF|Enhancement|
|WORDSNET-10654|Chinese characters are turned into square boxes when rendering to Pdf|Enhancement|
|WORDSNET-10759|ShapeRenderer.Save method save the DrawingML incorrectly|Enhancement|
|WORDSNET-6007|/printer metrics/ Incorrect pagination occur while updating fields|Enhancement|
|WORDSNET-6427|Header rows should not apply to floating tables (rendering)|Enhancement|
|WORDSNET-6455|/printer metrics/ Text flow is wrong in converting DOC to PDF|Enhancement|
|WORDSNET-8048|/printer metrics/ Additional white space between some words is added in fixed page formats|Enhancement|
|WORDSNET-8074|/printer metrics/ Spacing between words is narrowed in fixed page formats|Enhancement|
|WORDSNET-8339|/printer metrics/A Paragraph renders on to the previous page in PDF|Enhancement|
|WORDSNET-8344|/printer metrics/ Doc to Fixed file format covnersion issue with contents rendering|Enhancement|
|WORDSNET-9013|/printer metrics/ Docx to Pdf conversion issue with content rendering (list item moves to next page)|Enhancement|
|WORDSNET-9349|/printer metrics/ Contents move to next pages after conversion from Dot to Pdf|Enhancement|
|WORDSNET-9410|/printer metrics/ Last digit of number in table's cell move to next line in output Pdf|Enhancement|
|WORDSNET-9720|/printer metrics/ A Paragraph renders on to the next page in PDF|Enhancement|
|WORDSNET-10334|NullReferenceException occurs during executing mail merge|Exception|
|WORDSNET-10529|Aspose.Words.FileCorruptedException occurs when loading a DOCX|Exception|
|WORDSNET-10531|java.lang.IllegalStateException occurs during open/save a DOCX|Exception|
|WORDSNET-10543|Document.Save method throws System.NullReferenceException|Exception|
|WORDSNET-10560|System.Xml.XmlException occurs during loading Html into DOM|Exception|
|WORDSNET-10561|System.Xml.XmlException occurs during loading Html into DOM|Exception|
|WORDSNET-10647|InvalidOperationException occurs during Open/Save a DOCX|Exception|
|WORDSNET-10685|Document.Save throws System.InvalidOperationException|Exception|
|WORDSNET-10687|Document.UpdateTableLayout throws System.NullReferenceException|Exception|
|WORDSNET-10688|Document.Save method throws System.ArgumentException|Exception|
|WORDSNET-10689|Aspose.Words.FileCorruptedException occurs during loading a DOC|Exception|
|WORDSNET-10698|System.InvalidOperationException occurs during converting to PDF|Exception|
|WORDSNET-10699|System.InvalidOperationException occurs during Open/Save a DOCX|Exception|
|WORDSNET-10715|Aspose.Words.FileCorruptedException occurs during loading a DOC|Exception|
|WORDSNET-10725|System.InvalidCastException is thrown while using PdfSaveOptions.CreateNoteHyperlinks|Exception|
|WORDSNET-10729|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-10743|Document.Print method throws System.ArgumentException|Exception|
|WORDSNET-10781|Aspose.Words.FileCorruptedException occurs when loading an ODT file|Exception|
|WORDSNET-9991|System.NullReferenceException is thrown while using mail merge CleanupOptions|Exception|
|WORDSNET-10373|Support rounded corners upon rendering charts.|Feature|
|WORDSNET-10525|/linked text boxes/ DrawingML TextBoxes disappear during rendering to fixed page formats|Feature|
|WORDSNET-10670|Enhancement in Aspose.Words.Layout API|Feature|
|WORDSNET-10677|/advanced tabs/ Numbers in Table of Content are trimmed|Feature|
|WORDSNET-10724|Refine detection of Asian typography for RTF format|Feature|
|WORDSNET-10745|Images are not getting converted to CMYK mode|Feature|
|WORDSNET-3751|/printer metrics/ ROOT Support "Use Printer Metrics To Display Documents" compatibility setting|Feature|
|WORDSNET-5260|Support XOR obfuscation of documents.|Feature|
|WORDSNET-6679|/printer metrics/ Paragraph Spacing are different|Feature|
|WORDSNET-7838|/printer metrics/ Row content is split across two pages when rendering to fixed page formats|Feature|
|WORDSNET-8185|Add support of Gradient background in output HTML|Feature|
|WORDSNET-9849|Make DrawingML node to be composite|Feature|
|WORDSNET-10227|Aspose.Words takes long time to load a HTML|Performance|

