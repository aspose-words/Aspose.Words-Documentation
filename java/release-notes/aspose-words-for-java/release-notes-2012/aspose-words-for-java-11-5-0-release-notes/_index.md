---
title: 11.5.0 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 11.5.0 Release Notes
linktitle: Aspose.Words for Java 11.5.0 Release Notes
description: "Aspose.Words for Java 11.5.0 Release Notes – the latest updates and fixes."
type: docs
weight: 60
url: /java/aspose-words-for-java-11-5-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 11.5.0](https://releases.aspose.com/words/java/new-releases/aspose.words-for-java-11.5.0/)

{{% /alert %}}

There are 143 improvements and fixes in this regular monthly release. Most notable are:

- Added plaintext import format (TXT). Formatting of paragraphs and lists is supported;
- Support for reading and importing of AltChunk content (DOCX) into document model;
- Support for reading/writing MailMerge settings in RTF;
- Better validation of AW generated DOCX documents through OpenXML SDK 2.0;
- Office Math formulas are preserved during DOCX&gt;DOC&gt;DOCX and DOCX&gt;WML&gt;DOCX roundtrip scenarios;
- Table/row revisions are supported in DOCX;
- Improvements in table width handling for HTML and PDF;
- Added option to specify zoom factor and fit type in rendered PDF documents (see PdfSaveOptions.ZoomFactor and PdfSaveOptions.OpenFitOptions);
- Supported signature image rendering for digital signature line in rendered PDF documents;
- Enhanced rendering of Office MathML;
- Fixed problem with CMYK image export to PDF;
- Fixed problem with decreased metafile size in some documents (fixed page formats);
- Fixed problem with disappearing metafile images in rendered documents (fixed page formats).

## New features 

WORDSJAVA-566 Implement condition compilation based on JLS 14.21.

WORDSNET-1350 Table and row revisions are lost during DOCX export.

WORDSNET-1937 Support AltChunk tags.

WORDSNET-2838 Consider adding an option to specify fit options of PDF.

WORDSNET-2979 Preserve mail merge settings during load/save in RTF.

WORDSNET-4074 Support signature image rendering for digital signature line.

WORDSNET-4567 Table rows are shifted right upon rendering.

WORDSNET-5166 Table rows are shifted during rendering.

WORDSNET-5351

WORDSNET-5350 Create a video for the converting MS Word documents to EPUB article.

WORDSNET-5614 Implement access to font kerning data.

WORDSNET-5785 Merge field format switch i.e. DBCHAR is not preserved after open/save.

WORDSNET-5820 /rtl/ Header Table rendered in reverse order, while converting docx to Pdf.

WORDSNET-5824 Support "Align table rows independently" compatibility option.

WORDSNET-5893 Consider exporting default zoom setting when exporting to PDF.

WORDSNET-6220

WORDSNET-6209 Preserve editable formulas after DOCX->DOC->DOCX and DOCX->WML->DOCX roundtrips.

WORDSNET-6253 /rtl/ Support layout of RTL tables.

WORDSNET-6254 /rtl/ Support of RTL section layout.

WORDSNET-6280 Consider adding ImageSaveOptions.UseBitonalConverter property.

WORDSNET-6346 A 90 degrees roatated DrawingML is rendering incorrectly in Fixed page formats.

WORDSNET-6357 /rtl/ Incorrect layout of RTL table.

WORDSNET-6474 Tables are misaligned when rendering to fixed page formats.

## Enhancements 

WORDSJAVA-50 MailMerge to get java.sql.Clob and Blob object as an data source from ResulSet.

WORDSJAVA-72 Create a demo “How to use Aspose.Words in Google App Engine”.

WORDSJAVA-76 All 3d parity licensies in single file.

WORDSJAVA-442

WORDSJAVA-478 Test Aspose.Words for Java with Java7 and consider providing special JAR for Java7.

WORDSJAVA-449 Support Black&White and Grayscale ColorModes for Bitmaps.

WORDSJAVA-552 Add Java 7 as a supported version to the docs and readme.

WORDSJAVA-555 Small font (less than 1pt) rendered to emf with reduced scale.

WORDSJAVA-558 Sort out obfuscated classes by adding a prefix.

WORDSJAVA-561 Remove from production code printing of suppressed runtime error messages from catch blocks – keep them in test code only.

WORDSJAVA-567 Formula updates with bookmark and other links.

WORDSNET-2788 “InvalidOperationException: Not expected other image formats here.” Exception occurs during converting DOCX to DOC.

WORDSNET-2862 “FileCorruptedException” exception occurs during opening DOCX document.

WORDSNET-4460 Text within large paragraph does not wrap around image on next page.

WORDSNET-4492 Content inserted into Structured Document Tag should remove paragraph or line breaks (sdt).

WORDSNET-4878 Left indent of paragraph is incorrect upon rendering.

WORDSNET-5543 Paragraph Line spacing of Table changed on RTF to DOC conversion.

WORDSNET-5674 Floating table is incorrectly rendered and overlaps first page.

WORDSNET-5725 Nested table, white spaces dropped within the cell while converting docx to pdf.

WORDSNET-5788 Table content is not fitting properly within Page width in PDF/TIFF.

WORDSNET-6114 System hangs instead of throwing FileCorruptedException.

WORDSNET-6209 Support advanced rendering of OfficeMath.

WORDSNET-6216

WORDSNET-6209 Investigate what font MS Word uses to render formulas.

WORDSNET-6222 Footer content is getting truncated during rendering.

WORDSNET-6283 Support macintosh TrueType fonts.

WORDSNET-6411 Update documentation to ensure proper information on use of Client Profile version and System.Web is available.

WORDSNET-6413 RTF to Doc conversion issue. Doc file is corrupted after conversion.

WORDSNET-6436

WORDSNET-5746 Support characters from Unicode Supplementary Planes when rendering to XPS.

WORDSNET-6485 Change public access modifiers to internal for ParaString and ParaStringBuilder classes.

## Performance 

WORDSNET-6341 Investigate why AW is holding memory after rendering.

## Exceptions 

WORDSNET-5301 IndexOutOfRangeException occursupon executing mail merge.

WORDSNET-5520 Exception on setting Table.PreferredWidth higher than 100 percent.

WORDSNET-5569 IndexOutOfRangeException on calling UpdateFields on blank Formula Fields.

WORDSNET-5655ArgumentException: Shape does not get rendered to HTML/PDF/TIFF etc.

WORDSNET-5736 InvalidOperationException: occurs when appending two documents.

WORDSNET-5826 Empty stack error, while converting Word document to Pdf file.

WORDSNET-5981 IndexOutOfRangeException occurs on calling UpdateFields on IF Field.

WORDSNET-6001 InvalidOperationException occurs during converting DOCX to DOC.

WORDSNET-6059 StackOverFlowException occurs on calling UpdateFields.

WORDSNET-6138 System.NullReferenceException occurs during updating fields.

WORDSNET-6159 System.NullReferenceException occurs while updating fields.

WORDSNET-6251 ArgumentException occurs during rendering DOC with a comment.

WORDSNET-6313 System.ArgumentException occurs when prepends the content of one Word document to the start of another.

WORDSNET-6317 NullReferenceException occurs on calling UpdateFields.

WORDSNET-6319 OverFlowException occurs upon rendering Shape to Fixed Page formats.

WORDSNET-6330 System.ArgumentException occurs on calling UpdateFields.

WORDSNET-6331 System.NullReferenceException occurs during rendering to Fixed Page Formats.

WORDSNET-6369 Aspose.Words.FileCorruptedException occurs upon loading DOCX.

WORDSNET-6371 /rtl/ Exception while rendering Arabic document containing content controls.

WORDSNET-6415 System.ArgumentException occurs on AppendDocument.

WORDSNET-6417 Document.PageCount throws System.NullReferenceException.

WORDSNET-6431 Setting SourceFullName to string.Empty throws ArgumentException when saving to DOCX format.

WORDSNET-6456 ArgumentOutOfRangeException occurs during simple mail merge.

WORDSNET-6459 Aspose.Words.FileCorruptedException occurs upon loading DOC.

WORDSNET-6476 Exception while converting Docx to PDF.

WORDSNET-6482 Exception on Docx opening.

WORDSNET-6483 Aspose.Words.UnsupportedFileFormatException occurs upon loading DOCX.

WORDSNET-6506 Aspose.Words.FileCorruptedException occurs upon loading RTF.

WORDSNET-6512 Aspose.Words.FileCorruptedException occurs upon loading Word 2003 XML document.

## Bugs 

WORDSJAVA-70 Exception when loading an encrypted ODT file.

WORDSJAVA-78 The share parameter in the File.Open method is not used.

WORDSJAVA-130 DocVariable field is incorrectly updated.

WORDSJAVA-500 Brightness and contrast are not applied.

WORDSJAVA-515 Image fills all rectangle.

WORDSJAVA-553 Metafile image with soft mask with transparency incorrectly exported to PDF-A/1B.

WORDSNET-3257 “System.NullReferenceException : Object reference not set to an instance of an object.” occurs when call Clear();

WORDSNET-3608 Size of images is decreased during converting to PDF/XPS.

WORDSNET-3624 Image disappears after open/save.

WORDSNET-3629 Image size is different when render the document in different OS (Windows7 and Wondows2008Server).

WORDSNET-3819 Vertical border of a table is rendered incorrectly.

WORDSNET-4290 DOCPROPERTY fields related to DateTime are not updated correctly.

WORDSNET-4453 Position of TextBox is changed after open/save using AW.

WORDSNET-4497 Size of shape becomes smaller after rendering.

WORDSNET-4619 VML image in DOCX document disappears during conversion to DOC format.

WORDSNET-4644 EMF images disappear during converting to PDF/XPS.

WORDSNET-4691 InvalidCastException occurs during Bookmark processing.

WORDSNET-4919 NullReferenceException occurs when call NodeCollection.Clear().

WORDSNET-5250 Field is incorrectly updated during UpdateFileds

WORDSNET-5331 Table looks incorrect during rendering.

WORDSNET-5363 Table looks incorrect during rendering.

WORDSNET-5392 Red border appears around table row during open/save.

WORDSNET-5439 Formula updates incorrectly.

WORDSNET-5488 SUM is calculated improperly if there is negative currency.

WORDSNET-5596 RTF content is changed during open/save.

WORDSNET-5692 If expressions gets evaluated incorrectly upon calling UpdateFields.

WORDSNET-5699 /rtl/ RTL text columns are swapped while rendering

WORDSNET-5744 Table Width are not preserved on DOC>HTML>DOC roundtrip

WORDSNET-5758 Exception while loading .docx file.

WORDSNET-5764 UpdateFields calculates the product formula incorrectly in PDF.

WORDSNET-5813 doc to pdf conversion: Hyperlink to Bookmark is not working.

WORDSNET-5835 While docx to Pdf, Page number text is not aligned as in input Word document.

WORDSNET-5962 Large image inserted using DocumentBuilder appears as long thin shape in output document.

WORDSNET-5983 While converting docx to Pdf, incorrect text alignment.

WORDSNET-6032 Excel file, extracted from DOCX, has no worksheets in it.

WORDSNET-6111 Table text collapse with list items when converting Doc to PDF/XPS format.

WORDSNET-6250 DocumentBuilder.InsertImage reduces Image Size to 0.75 by 0.75 points.

WORDSNET-6266 Docx to PDF conversion issue with text.

WORDSNET-6281 Doc to PDF conversion issue; Garbled characters appears in output PDF file.

WORDSNET-6285 Paragraph text splits across two lines in fixed page formats.

WORDSNET-6302 Reading DocVariables via a macro inside MS WORD throws error.

WORDSNET-6340 Exception while converting Docx to Pdf.

WORDSNET-6349 Docx to PDF conversion with option PdfCompliance.PdfA1b has issues when check with Preflight.

WORDSNET-6354 Barcode appears incorrect during printing a PDF i.e. generated by Aspose.Words.

WORDSNET-6406 /rtl/ Text rendering issue in PDF file: The text ("?? ??").

WORDSNET-6409 Converting the doc to a PDF issue with image corrupted.

WORDSNET-6416 Exception while using updatefields and mailmerge methods.

WORDSNET-6418 InsertImage is not scaling the image 100%.

WORDSNET-6419 Hidden images become visible in output PDF/XPS files.

WORDSNET-6434 DML Effects Refactoring.

WORDSNET-6449 GetChildNode method returning different no. of Table Nodes in Vb.Net and C#.

WORDSNET-6451 Font of MathML Equation do not change in output Doc/Pdf format.

WORDSNET-6457 Metafile image is not rendering in PDF/XPS.

WORDSNET-6480 Docx to PDF conversion issue with text Alignment.

WORDSNET-6481 Investigate why Images are rendering as Black Rectangles in Telerik's PdfViewer for Silverlight.

WORDSNET-6484 ODT document is not rendering properly.

WORDSNET-6511 Images are rendering incorrectly in PDF.

WORDSNET-6522

WORDSNET-6511 PDF anti-aliasing problem with transparent image.

WORDSNET-6523

WORDSNET-6511 EMF+ dual GetDC problem.
