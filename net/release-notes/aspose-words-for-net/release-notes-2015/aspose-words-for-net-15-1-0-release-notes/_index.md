---
title: Aspose.Words for .NET 15.1.0 Release Notes
type: docs
weight: 120
url: /net/aspose-words-for-net-15-1-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 15.1.0](https://www.nuget.org/packages/Aspose.Words/15.1.0)

{{% /alert %}} 

## Aspose.Words for .NET 15.1 Release Notes

### Major Features

There are 75 improvements and fixes in this regular monthly release. The most notable are:

- Fields Public API

New public API members for structured document tags

OpenDocument (ODT) import/export fidelity improvements

Rendering of spacing and kerning in WordArt supported

HTML export/import improved for better round-tripping

Comment numbering in rendering

## All Changes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10655|Left margin is being exported wrongly during Word-HTML-WORD roundtrips|Bug|
|WORDSNET-10880|Text is missing from SmartArt when Docx is exported to Pdf|Bug|
|WORDSNET-10882|Docx to Pdf conversion issue with image rendering|Bug|
|WORDSNET-10920|DocumentBuilder.InsertHtml ignore list numbers|Bug|
|WORDSNET-11012|Line break is lost after conversion from Doc to Txt|Bug|
|WORDSNET-11186|The words have been shifted to the next line after the merging of documents|Bug|
|WORDSNET-11187|Blank pages are added after merging documents|Bug|
|WORDSNET-11188|Cell Widths not Preserved, Words Moved to Next Lines and Blank Pages in Merged Document|Bug|
|WORDSNET-11195|UpdateFields does not function on CardText switch for larger numbers|Bug|
|WORDSNET-11202|Paragraph SpaceBefore is imported incorrectly in Aspose.Words DOM|Bug|
|WORDSNET-11215|Content moving to the next line in merged document|Bug|
|WORDSNET-11216|Table cell content splitting to multiple lines after merge|Bug|
|WORDSNET-11217|Content moving to the next line in merged document|Bug|
|WORDSNET-11218|Text splitting to 2 lines after merge|Bug|
|WORDSNET-11219|Page break issue on merged document|Bug|
|WORDSNET-11226|Docx to PDF conversion issue with equation fields|Bug|
|WORDSNET-11237|Textbox position is changed after conversion from Docx to Html|Bug|
|WORDSNET-11240|Aspose.Words.FileCorruptedException is thrown while loading Docx|Bug|
|WORDSNET-11245|Document.UpdateFields issue with relative file reference in INCLUDETEXT|Bug|
|WORDSNET-11270|Font of list numbering looks wrong in generated PDF|Bug|
|WORDSNET-11279|Docx to Pdf conversion issue with table's rendering|Bug|
|WORDSNET-11280|Docx to Pdf conversion issue with table's row height|Bug|
|WORDSNET-11286|Doc to txt conversion issue with uppercase letter|Bug|
|WORDSNET-11300|UpdateFields does not correctly handle StyleRef field with \s switch|Bug|
|WORDSNET-11316|Text in DML TextBox truncates in generated PDF|Bug|
|WORDSNET-11317|Document.PageCount throws System.InvalidOperationException while using multi threading|Bug|
|WORDSNET-11319|Hebrew text does not render correctly in output Pdf|Bug|
|WORDSNET-11356|Docx to pdf conversion issue chart rendering|Bug|
|WORDSNET-5505|HTML table borders are rendered incorrectly|Bug|
|WORDSNET-9126|IE8 does not open HtmlFixed file correctly|Bug|
|WORDSNET-10280|Provide a way in API to update page numbers only for TOC|Enhancement|
|WORDSNET-11185|Cell widths are not preserved when appending to another document|Enhancement|
|WORDSNET-11194|Support comment numbering|Enhancement|
|WORDSNET-11200|RTF->Html->RTF conversion issue with sub list items indentation|Enhancement|
|WORDSNET-11201|RTF->Html->RTF conversion issue with space between list label and list text|Enhancement|
|WORDSNET-11293|Position of Dml textboxes is incorrect.|Enhancement|
|WORDSNET-11311|Expose HtmlSaveOptions.ExportRoundtripInformation as public proprerty|Enhancement|
|WORDSNET-11333|Position of footer contents is changed after conversion from Doc to Pdf|Enhancement|
|WORDSNET-3448|Font is changed during open/save.|Enhancement|
|WORDSNET-4361|Extra empty page is added to the document during rendering.|Enhancement|
|WORDSNET-4413|List numbering in repeated region continues instead of restarting|Enhancement|
|WORDSNET-4849|OpenOffice hangs when open ODT document produced by Aspose.Words.|Enhancement|
|WORDSNET-6495|Doc to HTML conversion issue with merged cell in the table|Enhancement|
|WORDSNET-6516|HTM to Doc conversion issue with text|Enhancement|
|WORDSNET-7477|Docx to Fixed file format conversion issue with footnote|Enhancement|
|WORDSNET-9539|Support spacing and kerning in WordArt texts.|Enhancement|
|WORDSNET-9578|Incorrect page count during Docx to Pdf conversion|Enhancement|
|WORDSNET-9579|Incorrect page count during Doc to Pdf conversion|Enhancement|
|WORDSNET-10545|System.NullReferenceException is thrown while converting RTF to PDF|Exception|
|WORDSNET-10751|System.NullReferenceException is thrown while convertnig RTF to Pdf|Exception|
|WORDSNET-11052|System.ArgumentException is thrown while re-saving Docx|Exception|
|WORDSNET-11111|System.InvalidOperationException is thrown while using multi threading|Exception|
|WORDSNET-11178|MailMerge.Execute throws System.NullReferenceException|Exception|
|WORDSNET-11239|Aspose.Words.FileCorruptedException is thrown while loading Dotx|Exception|
|WORDSNET-11285|MailMerge.Execute throws System.InvalidOperationException|Exception|
|WORDSNET-11290|Aspose.Words.FileCorruptedException is thrown while loading HTML|Exception|
|WORDSNET-11294|WORDSNET-10697 has not resolved in v14.12|Exception|
|WORDSNET-11328|System.ArgumentException occurs during rendering a DOCX|Exception|
|WORDSNET-11374|System.InvalidOperationException is thrown while using multi threading|Exception|
|WORDSNET-1088|Support importing li.value from HTML|Feature|
|WORDSNET-11032|Add freature for new ImportFormatMode (Keep Source Formatting Smart)|Feature|
|WORDSNET-11292|Text auto-fit does not work properly with vertical text.|Feature|
|WORDSNET-2532|Add "style:paragraph-properties" -> "style:auto-text-indent" import/export|Feature|
|WORDSNET-2973|Consider adding an ability to export documents to HTML page by page.|Feature|
|WORDSNET-3225|Make it possible to create Fields using DOM (without using DocumentBuilder).|Feature|
|WORDSNET-4321|Implement public field API (V1.0)|Feature|
|WORDSNET-6101|Public fields API - Implement field types|Feature|
|WORDSNET-6502|Allow programmatic access to Checked/Unchecked state of SDT Checkbox|Feature|
|WORDSNET-8644|Allow to create StructuredDocumentTag of type Checkbox|Feature|
|WORDSNET-11337|Conversion of RTF to HtmlFixed page by page is slower than in 14.8.0|Performance|
|WORDSNET-10888|A table row is not preserved when importing HTML|Regression|
|WORDSNET-11347|Mail Merge fields do not merge when MailMerge.FieldMergingCallback is used|Regression|
|WORDSNET-11361|Performance regression in Save to HTML/Fixed HTML in 14.11 and 14.12|Regression|
|WORDSNET-3769|Formatting of a table is incorrect after converting MHTML.| |
|WORDSNET-5729|Digitally Signed PDF Documents throws exception "The object identifier is poorly formatted"| |

