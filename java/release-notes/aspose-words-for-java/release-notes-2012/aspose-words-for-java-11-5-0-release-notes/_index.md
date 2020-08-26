---
title: Aspose.Words for Java 11.5.0 Release Notes
type: docs
weight: 60
url: /java/aspose-words-for-java-11-5-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 11.5.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-11.5.0/)

{{% /alert %}} 

There are 143 improvements and fixes in this regular monthly release. Most notable are: 

{{< highlight csharp >}}

 Added plaintext import format (TXT). Formatting of paragraphs and lists is supported;Support for reading and importing of AltChunk content (DOCX) into document model;Support for reading/writing MailMerge settings in RTF;Better validation of AW generated DOCX documents through OpenXML SDK 2.0;Office Math formulas are preserved during DOCX&gt;DOC&gt;DOCX and DOCX&gt;WML&gt;DOCX roundtrip scenarios;Table/row revisions are supported in DOCX;Improvements in table width handling for HTML and PDF;Added option to specify zoom factor and fit type in rendered PDF documents (see PdfSaveOptions.ZoomFactor and PdfSaveOptions.OpenFitOptions);Supported signature image rendering for digital signature line in rendered PDF documents;Enhanced rendering of Office MathML;Fixed problem with CMYK image export to PDF;Fixed problem with decreased metafile size in some documents (fixed page formats);Fixed problem with disappearing metafile images in rendered documents (fixed page formats); 

{{< /highlight >}}

New features 

WORDSJAVA-566Implement condition compilation
based on JLS 14.21.WORDSNET-1350Table and row revisions are lost during DOCX export.WORDSNET-1937Support AltChunk tags.WORDSNET-2838Consider adding an option to specify fit options of PDF.WORDSNET-2979Preserve mail merge settings during load/save in RTFWORDSNET-4074Support signature image rendering for digital signature lineWORDSNET-4567Table rows are shifted right upon rendering.WORDSNET-5166Table rows are shifted during rendering.WORDSNET-5351WORDSNET-5350 Create a video for the converting MS Word
documents to EPUB articleWORDSNET-5614Implement access to font kerning data.WORDSNET-5785Merge field format switch i.e. DBCHAR is not preserved after
open/saveWORDSNET-5820/rtl/ Header Table rendered in reverse order, while converting
docx to PdfWORDSNET-5824Support "Align table rows independently"
compatibility optionWORDSNET-5893Consider exporting default zoom setting when exporting to PDFWORDSNET-6220WORDSNET-6209 Preserve editable formulas after
DOCX->DOC->DOCX and DOCX->WML->DOCX roundtrips.WORDSNET-6253/rtl/ Support layout of RTL tablesWORDSNET-6254/rtl/ Support of RTL section layoutWORDSNET-6280Consider adding ImageSaveOptions.UseBitonalConverter propertyWORDSNET-6346A 90 degrees roatated DrawingML is rendering incorrectly in
Fixed page formatsWORDSNET-6357/rtl/ Incorrect layout of RTL tableWORDSNET-6474Tables are misaligned when rendering to fixed page formats 

Enhancements 

WORDSJAVA-50MailMerge to get java.sql.Clob
and Blob object as an data source from ResulSet.WORDSJAVA-72Create a demo “How to use Aspose.Words in Google App Engine”WORDSJAVA-76all 3d parity licensies in single fileWORDSJAVA-442WORDSJAVA-478 Test Aspose.Words for Java with Java7 and
consider providing special JAR for Java7.WORDSJAVA-449Support Black&White and Grayscale ColorModes for BitmapsWORDSJAVA-552Add Java 7 as a supported version to the docs and readmeWORDSJAVA-555Small font (less than 1pt) rendered to emf with reduced scaleWORDSJAVA-558Sort out obfuscated classes by adding a prefixWORDSJAVA-561Remove from production code printing of suppressed runtime
error messages from catch blocks - keep them in test code only.WORDSJAVA-567Formula updates with bookmark and other linksWORDSNET-2788“InvalidOperationException: Not expected other image formats
here.” Exception occurs during converting DOCX to DOC.WORDSNET-2862“FileCorruptedException” exception occurs during opening DOCX
document.WORDSNET-4460Text within large paragraph does not wrap around image on next
pageWORDSNET-4492Content inserted into Structured Document Tag should remove
paragraph or line breaks (sdt)WORDSNET-4878Left indent of paragraph is incorrect upon rendering.WORDSNET-5543Paragraph Line spacing of Table changed on RTF to DOC
conversionWORDSNET-5674Floating table is incorrectly rendered and overlaps first pageWORDSNET-5725Nested table, white spaces dropped within the cell while
converting docx to pdfWORDSNET-5788Table content is not fitting properly within Page width in
PDF/TIFFWORDSNET-6114System hangs instead of throwing FileCorruptedExceptionWORDSNET-6209Support advanced rendering of OfficeMath.WORDSNET-6216WORDSNET-6209 Investigate what font MS Word uses to render
formulas.WORDSNET-6222Footer content is getting truncated during renderingWORDSNET-6283Support macintosh TrueType fontsWORDSNET-6411Update documentation to ensure proper information on use of
Client Profile version and System.Web is availableWORDSNET-6413RTF to Doc conversion issue. Doc file is corrupted after
conversionWORDSNET-6436WORDSNET-5746 Support characters from Unicode Supplementary
Planes when rendering to XPSWORDSNET-6485Change public access modifiers to internal for ParaString and
ParaStringBuilder classes 

Performance 

WORDSNET-6341Investigate why AW is holding
memory after rendering 

Exceptions 

WORDSNET-5301IndexOutOfRangeException occurs
upon executing mail merge.WORDSNET-5520Exception on setting Table.PreferredWidth higher than 100
percentWORDSNET-5569IndexOutOfRangeException on calling UpdateFields on blank
Formula FieldsWORDSNET-5655ArgumentException: Shape does not get rendered to
HTML/PDF/TIFF etcWORDSNET-5736InvalidOperationException: occurs when appending two documentsWORDSNET-5826Empty stack error, while converting Word document to Pdf fileWORDSNET-5981IndexOutOfRangeException occurs on calling UpdateFields on IF
FieldWORDSNET-6001InvalidOperationException occurs during converting DOCX to DOCWORDSNET-6059StackOverFlowException occurs on calling UpdateFieldsWORDSNET-6138System.NullReferenceException occurs during updating fields.WORDSNET-6159System.NullReferenceException occurs while updating fields.WORDSNET-6251ArgumentException occurs during rendering DOC with a commentWORDSNET-6313System.ArgumentException occurs when prepends the content of
one Word document to the start of another.WORDSNET-6317NullReferenceException occurs on calling UpdateFieldsWORDSNET-6319OverFlowException occurs upon rendering Shape to Fixed Page
formatsWORDSNET-6330System.ArgumentException occurs on calling UpdateFieldsWORDSNET-6331System.NullReferenceException occurs during rendering to Fixed
Page FormatsWORDSNET-6369Aspose.Words.FileCorruptedException occurs upon loading DOCXWORDSNET-6371/rtl/ Exception while rendering Arabic document containing
content controlsWORDSNET-6415System.ArgumentException occurs on AppendDocumentWORDSNET-6417Document.PageCount throws System.NullReferenceExceptionWORDSNET-6431Setting SourceFullName to string.Empty throws
ArgumentException when saving to DOCX formatWORDSNET-6456ArgumentOutOfRangeException occurs during simple mail mergeWORDSNET-6459Aspose.Words.FileCorruptedException occurs upon loading DOCWORDSNET-6476Exception while converting Docx to PDFWORDSNET-6482Exception on Docx openingWORDSNET-6483Aspose.Words.UnsupportedFileFormatException occurs upon
loading DOCXWORDSNET-6506Aspose.Words.FileCorruptedException occurs upon loading RTFWORDSNET-6512Aspose.Words.FileCorruptedException occurs upon loading Word
2003 XML document 

Bugs 

WORDSJAVA-70Exception when loading an
encrypted ODT fileWORDSJAVA-78The share parameter in the File.Open method is not usedWORDSJAVA-130DocVariable field is incorrectly updated.WORDSJAVA-500Brightness and contrast are not appliedWORDSJAVA-515image fills all rectangleWORDSJAVA-553Metafile image with soft mask with transparency incorrectly
exported to PDF-A/1BWORDSNET-3257“System.NullReferenceException : Object reference not set to
an instance of an object.” occurs when call Clear();WORDSNET-3608Size of images is decreased during converting to PDF/XPS.WORDSNET-3624Image disappears after open/save.WORDSNET-3629Image size is different when render the document in different
OS (Windows7 and Wondows2008Server)WORDSNET-3819Vertical border of a table is rendered incorrectlyWORDSNET-4290DOCPROPERTY fields related to DateTime are not updated
correctly.WORDSNET-4453Position of TextBox is changed after open/save using AWWORDSNET-4497Size of shape becomes smaller after rendering.WORDSNET-4619VML image in DOCX document disappears during conversion to DOC
formatWORDSNET-4644EMF images disappear during converting to PDF/XPS.WORDSNET-4691InvalidCastException occurs during Bookmark processing.WORDSNET-4919NullReferenceException occurs when call
NodeCollection.Clear().WORDSNET-5250Field is incorrectly updated during UpdateFiledsWORDSNET-5331Table looks incorrect during rendering.WORDSNET-5363Table looks incorrect during renderingWORDSNET-5392Red border appears around table row during open/save.WORDSNET-5439Formula updates incorrectly.WORDSNET-5488SUM is calculated improperly if there is negative currency.WORDSNET-5596RTF content is changed during open/save.WORDSNET-5692If expressions gets evaluated incorrectly upon calling
UpdateFieldsWORDSNET-5699/rtl/ RTL text columns are swapped while renderingWORDSNET-5744Table Width are not preserved on DOC>HTML>DOC roundtripWORDSNET-5758Exception while loading .docx fileWORDSNET-5764UpdateFields calculates the product formula incorrectly in PDFWORDSNET-5813doc to pdf conversion: Hyperlink to Bookmark is not workingWORDSNET-5835While docx to Pdf, Page number text is not aligned as in input
Word documentWORDSNET-5962Large image inserted using DocumentBuilder appears as long
thin shape in output documentWORDSNET-5983While converting docx to Pdf, incorrect text alignment.WORDSNET-6032Excel file, extracted from DOCX, has no worksheets in itWORDSNET-6111Table text collapse with list items when converting Doc to
PDF/XPS format.WORDSNET-6250DocumentBuilder.InsertImage reduces Image Size to 0.75 by 0.75
pointsWORDSNET-6266Docx to PDF conversion issue with textWORDSNET-6281Doc to PDF conversion issue; Garbled characters appears in
output PDF fileWORDSNET-6285Paragraph text splits across two lines in fixed page formatsWORDSNET-6302Reading DocVariables via a macro inside MS WORD throws errorWORDSNET-6340Exception while converting Docx to PdfWORDSNET-6349Docx to PDF conversion with option PdfCompliance.PdfA1b has
issues when check with PreflightWORDSNET-6354Barcode appears incorrect during printing a PDF i.e. generated
by Aspose.WordsWORDSNET-6406/rtl/ Text rendering issue in PDF file: The text ("??
??")WORDSNET-6409Converting the doc to a PDF issue with image corruptedWORDSNET-6416Exception while using updatefields and mailmerge methodsWORDSNET-6418InsertImage is not scaling the image 100%WORDSNET-6419Hidden images become visible in output PDF/XPS filesWORDSNET-6434DML Effects RefactoringWORDSNET-6449GetChildNode method returning different no. of Table Nodes in
Vb.Net and C#WORDSNET-6451Font of MathML Equation do not change in output Doc/Pdf formatWORDSNET-6457Metafile image is not rendering in PDF/XPSWORDSNET-6480Docx to PDF conversion issue with text AlignmentWORDSNET-6481Investigate why Images are rendering as Black Rectangles in
Telerik's PdfViewer for SilverlightWORDSNET-6484ODT document is not rendering properlyWORDSNET-6511Images are rendering incorrectly in PDFWORDSNET-6522WORDSNET-6511 PDF anti-aliasing problem with transparent imageWORDSNET-6523WORDSNET-6511 EMF+ dual GetDC problem 
