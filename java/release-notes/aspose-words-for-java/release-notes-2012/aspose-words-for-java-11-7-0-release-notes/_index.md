---
title: Aspose.Words for Java 11.7.0 Release Notes
articleTitle: Aspose.Words for Java 11.7.0 Release Notes
linktitle: Aspose.Words for Java 11.7.0 Release Notes
description: "Aspose.Words for Java 11.7.0 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /java/aspose-words-for-java-11-7-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 11.7.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-11.7.0/)

{{% /alert %}}

There are 212 improvements and fixes in this regular monthly release. The most notable are:

- Page BorderArt rendering implemented;Supported rendering of EMF metafiles embedded in WMF metafiles (special metafiles format);Improved printing speed;
- Improved font substitution according to default registry values;
- Fixed a problem with incorrect image rotation in PDF export;Fixed page size detection while printing;
- Fixed problem with CMYK images being not rendered;
- Fixed rendering problem with gradient "from center" fill in WordArt shapes;
- Fixed rendering problem with super-scripted underlined text.

## New features 

WORDSNET-1980 /rtl/ Support RTL layout and rendering

WORDSNET-2041 Consider adding LoadOptions to control how HTML is imported

WORDSNET-2054 Support loading special symbols for dates, times, numbers etc
in DOCWORDSNET-3820. Support extraction of the caption from an embedded object
displaying as an icon.

WORDSNET-3848 Page border is missing or wrong.

WORDSNET-3928 Add possibility to insert complex (RTL and LTR) text during
mailmerge.

WORDSNET-3956 INCLUDEPICTURE is not properly loaded during layout or
rendering

WORDSNET-4112 INCLUDEPICTURE field updates incorrectly after UpdateField.

WORDSNET-4122 Fullscale calculation of bounding box of a shape canvasWORDSNET-4352Picture shapes are not retained upon rendering.

WORDSNET-4433 /:5/ Decimal TabStops within Cell are ignored upon rendering.

WORDSNET-4564 INCLUDEPICTURE Field does not show up in out document.

WORDSNET-5372 Create a video which shows how to build a table from scratch.

WORDSNET-5550 /hidden/ Support hidden table rows and cells in Layout.

WORDSNET-5769 Support horizontal alignment on image when exporting to HTML.

WORDSNET-6050 Implement Load and Save warnings for DOC format.

WORDSNET-6140 INCLUDEPICTURE field cannot be inserted and updated.

WORDSNET-6424 Consider exposing original filenames of OLE1 objects in the API.

WORDSNET-6428 Floating table causes duplicate on next page.

WORDSNET-6447 InsertField("INCLUDEPICTURE...") is not working.

WORDSNET-6536 Consider retaining duplicate Bookmarks during saving.

WORDSNET-6656 MERGEFIELD inside INCLUDEPICTURE does not work.

WORDSNET-6661 Support numeral configuration.

## Enhancements 

WORDSJAVA-381 Compound lines are not rendered to graphics in Java.

WORDSJAVA-435 WordArt with italic style has inexact angle.

WORDSJAVA-481

WORDSJAVA-478 Generate Manifest from the build script.

WORDSJAVA-564 Image doesn't stretch to shape size.

WORDSJAVA-569 Better support of pictures with BufferedImage.TYPE_USHORT_555_RGB type.

WORDSJAVA-612 GdiRenderer refactory.

WORDSJAVA-613 Manual lifting of AsposeWordsPrintDocument and TestPrint.

WORDSNET-1803 Remove "LayoutAdapter" and convert Aspose.Layout to APS directly.

WORDSNET-2274 /table grid/ Hidden content is visible in output PDF/Image.

WORDSNET-2606 Vertical alignment of text in one row is incorrect.

WORDSNET-2915 Part of content was moved to the next page during rendering.

WORDSNET-3192 /later/ Inline tables overlap each other upon rendering.

WORDSNET-3284 /wrap/ Frame overlaps part of content during rendering.

WORDSNET-3733 Hidden table row becomes visible when open/save the document
in DOCX format.

WORDSNET-3837 Layout selects wrong font name based on character class.

WORDSNET-3842 Incorrect text box internal clipping.

WORDSNET-3843 Row height is wrongWORDSNET-3853Pictures are improperly scaled.

WORDSNET-3856 Section properties are wrong.

WORDSNET-3947 The output PDF has less pages than the input document.

WORDSNET-3992 Invisible character is visible after convertign to PDF or XPS.

WORDSNET-4029 pdf conversion replace Helvetica font with TimesNewRoman one instead of Arial.

WORDSNET-4501 Part of content was moved to the next page upon rendering.

WORDSNET-4594 Table inside TextBox is cut off during rendering.

WORDSNET-4747 Endnote is lost during rendering.

WORDSNET-4767 Extra pages are added during rendering.

WORDSNET-4953 Image is moved to previous page and truncated upon rendering.

WORDSNET-5320 Fix locale readingWORDSNET-5432There are fewer pages in the document after rendering.

WORDSNET-5443 Text box is rendered at incorrect page location.

WORDSNET-5454 Text box is placed incorrectly on page while rendering.

WORDSNET-5456 Text is shifted down while rendering.

WORDSNET-5469 Table inside textbox is cut-off during rendering.

WORDSNET-5502 Odd and even footers are interchanged upon rendering.

WORDSNET-5635 RowFormat.AllowBreakAcrossPages is not working on rendering to PDF.

WORDSNET-5766 On DOCX to PDF conversion, Table at the end of page is truncated.

WORDSNET-6008 While converting dot to doc, text layout disturbed.

WORDSNET-6045 Support EMF metafile embedded to WMF metafiles.

WORDSNET-6090 TOC entries are not clickable in PDF.

WORDSNET-6287 Alternative text of signature line disappears when document is opened and saved.

WORDSNET-6325 Extra empty space at the left side of comments.

WORDSNET-6345 DrawingML is rendering incorrectly in PDF.

WORDSNET-6509 Shape in WordML document becomes invisible when saving to any format.

WORDSNET-6557 DrawingML inside SDT is crossed when rendering to fixed page formats.

WORDSNET-6634 MS Word 2010 opens output doc file in protected view.

WORDSNET-6651 Aspose output Pdf file is not opening correctly in syncfusion PdfViewer.

WORDSNET-6677 Docx to HTML conversion issue with border line of the autoshape.

WORDSNET-6681 Improve font substitution according to default registy values.

WORDSNET-6687 Doc to Pdf conversion with border line.

WORDSNET-6720 WORDSNET-6600 Border.LineStyle is set to Solid without 'border-style' CSS attribute on Html reading.

WORDSNET-6727 Textbox with automatic font color text is not being rendered properly.

WORDSNET-6730 /DrawingML textbox/ Range.Replace do not work for text frame.

WORDSNET-6775 Code review request.

WORDSNET-6784 Rtf to Doc conversion Page Setup Margin Gutter issue.

WORDSNET-6802 AW merge format algorithm behaves not like its MS counterpart.

WORDSNET-6816 Blank pages are lost during rendering to PDF.

## Performance 

WORDSNET-3798 Consider trying to speed up printing performance vs automation and VBA macro

## Exceptions 

WORDSJAVA-605 NullReferenceException occurs when rendering Shape to HTML.

WORDSNET-5684 NullReferenceException: When UpdateFileds is called after UpdatePageLayout.

WORDSNET-5997 ArgumentNullException on MailMerge.Execute on Nested ergeFields.

WORDSNET-6295 InvalidCastException occurs when calling UpdateFields.

WORDSNET-6394 NullReferenceException occurs during rendering to fixed page formats.

WORDSNET-6468 Aspose.Words.FileCorruptedException occurs upon loading DOCX.

WORDSNET-6505 Aspose.Words.FileCorruptedException occurs upon loading DOCX.

WORDSNET-6549 NullReferenceException when rendering DOCX file to a PDF.

WORDSNET-6558 NullReferenceException occurs when rendering a textbox.

WORDSNET-6621 Aspose.Words.FileCorruptedException occurs while loading DOC document with comments.

WORDSNET-6640 Exception on calling UpdateFields method.

WORDSNET-6671 Exception thrown while Doc to Pdf conversion.

WORDSNET-6744 Exception while converting Docx to PDF.

WORDSNET-6759 OutOfMemoryException occurs during loading DOC.

WORDSNET-6779 Exception when updating fields in document.

WORDSNET-6793 NullReferenceException occurs during converting to DOC.

## Bugs 

WORDSJAVA-410 Image is sized incorrectly when rendering to graphics.

WORDSJAVA-486 Some textures disappear.

WORDSJAVA-492 Inexact asian text wrapping inside textboxes.

WORDSJAVA-493 Circle Vml shape rendered incorrectly.

WORDSJAVA-513 Incorrect "saturation" of lines and textures.

WORDSJAVA-534 Improve hatch brushes for Gdi render.

WORDSJAVA-559 Tiff image is invisible (Aspose.Words for java).

WORDSJAVA-598 Metafile texture doesn't stretched to a shape size when Wrap Mode == ClampWORDSJAVA-607Find and remove the code that prints any message(s) from production - keep it in test code only.

WORDSNET-1868 Images are not displayed after converting WML to DOC.

WORDSNET-3008 Winding checkboxes are not recognized upon rendering.

WORDSNET-3562 Table disappears after save to PDF.

WORDSNET-3869 Shape sizes are changed after open/save ODT document.

WORDSNET-4121 List formatting shows through in TOC entries after updating.

WORDSNET-4407 Numbers of items in TOC are bold after updating fields.

WORDSNET-4438 LTR text does not look as expected upon main merge RTL merge ields.

WORDSNET-4476 "Unknown file format" when open zero length file.

WORDSNET-4508 Default field name is used as field result during rendering of fields in the header.

WORDSNET-4573 /horizontal alignment/ TextBox shapes are rendered as transparent squares and are not visible upon converting to HTML.

WORDSNET-4873 BuiltInDocumentProperties.CreatedTime and other DateTime properties must return date in UTC.

WORDSNET-4928 Rtf Reader handles context of table properties incorrectly.

WORDSNET-4939 Table looks incorrect after converting MHTML to other formats.

WORDSNET-4971 Super-scripted text is not properly underlined upon rendering.

WORDSNET-4999 Format of TOC item is changed after UpdateFields.

WORDSNET-5162 Formatting of TOC items is incorrect after updating fields.

WORDSNET-5185 Aspose.Words eats all memory and hangs upon executing mail merge.

WORDSNET-5187 Paragraph text color is changed after converting to RTF.

WORDSNET-5307 Watermark disappears after open/save DOCX document.

WORDSNET-5403 Style of TOC is changed after UpdateFields.

WORDSNET-5417 Document pages are rendered out of order.

WORDSNET-5452 Odd and even headers are not rendered properly.

WORDSNET-5483 Page numbering is incorrect after rendering.

WORDSNET-5496 Incorrect page numbering i.e. 97,98,99,101,102; Number 100 is skipped.

WORDSNET-5497 Code of XE field is shown in TOC after updating fields.

WORDSNET-5517 TOC is incorrectly updated by Aspose.Words if it is insertedt in heading paragraph.

WORDSNET-5524 Blank page is missed upon rendering document.

WORDSNET-5538 Z-index on VML shapes isn't preserved during docx->docx conversion.

WORDSNET-5552 Table disappears during rendering.

WORDSNET-5592 TextBox incorrectly positioned upon DOCX to HTML conversion.

WORDSNET-5601 Font is changed during MailMerge.

WORDSNET-5666 Setting Table style margin-left does not change table indent from left in DOC/DOCX.

WORDSNET-5672 List numbering color/style for TOC entries was changed on UpdateFields.

WORDSNET-5829 Bidi not working when document save to PDF.

WORDSNET-5860 Emf+ Dual // OfficeMath equation in Word Ole object is corrupted in PDF.

WORDSNET-5891 /horizontal alignment/ DOCX to HTML conversion issues with textboxes.

WORDSNET-5941 Mail Merge Font problemWORDSNET-5949unexplainable tabstop (occurs in doc and docx).

WORDSNET-5950 Wrong format in TOC (occurs only in docx).

WORDSNET-5958 Unicode characters LTR and RTL are ignored on HTML export.

WORDSNET-5964 While converting odt to pdf format, each section rendered on individual page.

WORDSNET-6000 While converting doc to rtf, improper font charset to RTF.

WORDSNET-6012 Document.Print skips printing the second page.

WORDSNET-6025 /hideMark/ Output PDF has one more page than the input DOCX.

WORDSNET-6069 Calling UpdateFields after DocumentBuilder.InsertTableOfContents generates incorrect TOC.

WORDSNET-6088 TOC sub heading text aligned incorrectly after Open/Save in DOC format.

WORDSNET-6092 Docx to PDF conversion issue.

WORDSNET-6109 Windings Symbol is lost during rendering to fixed formats.

WORDSNET-6132 UpdateFields calculates TOC page numbers incorrectly.

WORDSNET-6150 Calling UpdateFields twice corrupts TO?/SEQ fields.

WORDSNET-6152 Text Alignment issue while convering html to docx.

WORDSNET-6166 Aspose.Words generates 20 pages when rendering a 2 page DOCX to fixed formats.

WORDSNET-6182 Incorrect parameter is passed to IMailMergeDataSource when using new Object.Attribute sytnax.

WORDSNET-6183 Shape borders are rendering incorrectly in HTML.

WORDSNET-6184 Table in DOC is rendering many times in PDF/Tiff.

WORDSNET-6223 MergeFields inside header don't show values in PDF.

WORDSNET-6270 Horizontally Flipped DrawingML image is rendering incorrectly in PDF.

WORDSNET-6275 Extra blank page problem occurs while converting doc to Pdf Format.

WORDSNET-6311 REF field with CardText or Number formatting switches is updated incorrectly.

WORDSNET-6352 A table with too many columns cannot be opened when saving to Word formats.

WORDSNET-6399 Extra empty page is added to the PDF document after conversion from Doc file.

WORDSNET-6401 WordArt shape fill is distorted while rendering path gradient shape.

WORDSNET-6467 Appending documents into empty (new Document()) stretches the contents of one page into multiple pages.

WORDSNET-6478 UICompat97To2003 is not set for rtf files.

WORDSNET-6518 LoadOptions object shouldn't be changed during opening.

WORDSNET-6525 Unable to access PRINT field in the Doc file.

WORDSNET-6530 Transparency of PNG image is disturbed when rendering to PDF.

WORDSNET-6551 Incorrect Page numbering in the TOC when calling UpdateFields.

WORDSNET-6580 Custom style in RTF document resulting formatting issue.

WORDSNET-6587 Docx to Pdf conversion issue with page break.

WORDSNET-6601 MHTML document loses table background color while rendering to PDF.

WORDSNET-6632 Problem with Image size when covert from DOC, DOCX, WML to RTF.

WORDSNET-6644 Image flips upon rendering DOCX document to PDF.

WORDSNET-6649 Run.Font.Bidi is lost when converting to ODT format.

WORDSNET-6657 Shape is displaying at the wrong page side in ODT.

WORDSNET-6658 Paragraph alignment is reversed during converting doc to odt.

WORDSNET-6674 Mergefield value splits into two Runs with different Fonts.

WORDSNET-6676 Compatibly options "Don't add leading (extra space) between rows of text" processed incorrectly.

WORDSNET-6678 Add support for "Don't expand character spaces on a line that ends with SHIFT-RETURN" option.

WORDSNET-6698 Left/Right cellpadding of RTF dcoument are changed after conversion.

WORDSNET-6699 RTF document loses table format upon conversion.

WORDSNET-6702 TOC is updating incorrectly.

WORDSNET-6714 Setting the font hidden doesn't hide Row in DOCX.

WORDSNET-6722 Bullet style is not being rendered correctly.

WORDSNET-6723 ParagraphFormat.SpaceAfter is not preserved during loading ODT.

WORDSNET-6724 Shape is overlapping the Table content.

WORDSNET-6728 Shape is rendering as red cross symbol in PDF.

WORDSNET-6729 Setting the font hidden doesn't hide DrawingML in DOCX.

WORDSNET-6732 Docx to Pdf conversion issue while mail merge.

WORDSNET-6733 Document is rendered out of page bounds during printing.

WORDSNET-6734 Docx to Pdf conversion issue, images are rotated in output pdf file.

WORDSNET-6735 Content is clipped because of incorrect column height calculation.

WORDSNET-6737 Tables and shapes are shifted while rendering.

WORDSNET-6738 Textbox in DOCX converted to HTML as empty image.

WORDSNET-6740 Investigate why mail merge regions' data is not visible in PDF.

WORDSNET-6742 Table background color fades while converting DOC to HTML.

WORDSNET-6754 Bug with ExtractContent code can't extract text in table cell.

WORDSNET-6755 Shape wrap type is lost during loading OTT into DOM.

WORDSNET-6769 RTF to Doc conversion issue with line spacing value.

WORDSNET-6806 Calling UpdateFields after InsertTableOfContents calculates Cell's width incorrectly.

## Regressions 

WORDSJAVA-611 Font Substitution is broken by UnicodeString refactory.

WORDSNET-5321 Aspose.Words treats numbers as string upon mail merge.

WORDSNET-6564 \html autodetect\ "table" tag causes Aspose.Words not to detect HTML.

WORDSNET-6689 NullReferenceException occurs when rendering GroupShape to HTML.

WORDSNET-6701 NullReferenceException occurs during exporting Shape to HTML.

WORDSNET-6710 /DrawingML textbox/ Unable to access SDT nodes from inside DrawingML.

WORDSNET-6739 Printing speed has slowed down in Aspose.Words for .NET 11.5 and higher. 
