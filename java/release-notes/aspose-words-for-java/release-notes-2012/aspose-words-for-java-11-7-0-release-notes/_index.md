---
title: Aspose.Words for Java 11.7.0 Release Notes
type: docs
weight: 40
url: /java/aspose-words-for-java-11-7-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 11.7.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-11.7.0/)

{{% /alert %}} 

There are 212 improvements and fixes in this regular monthly release. The most notable are: 

{{< highlight csharp >}}
Page BorderArt rendering implemented;Supported rendering of EMF metafiles embedded in WMF metafiles (special metafiles format);Improved printing speed;Improved font substitution according to default registry values;Fixed a problem with incorrect image rotation in PDF export;Fixed page size detection while printing;Fixed problem with CMYK images being not rendered;Fixed rendering problem with gradient "from center" fill in WordArt shapes;Fixed rendering problem with super-scripted underlined text.
{{< /highlight >}}


New features 

WORDSNET-1980/rtl/ Support RTL layout and
renderingWORDSNET-2041Consider adding LoadOptions to control how HTML is importedWORDSNET-2054Support loading special symbols for dates, times, numbers etc
in DOCWORDSNET-3820Support extraction of the caption from an embedded object
displaying as an iconWORDSNET-3848Page border is missing or wrongWORDSNET-3928Add possibility to insert complex (RTL and LTR) text during
mailmerge.WORDSNET-3956INCLUDEPICTURE is not properly loaded during layout or
renderingWORDSNET-4112INCLUDEPICTURE field updates incorrectly after UpdateField.WORDSNET-4122Fullscale calculation of bounding box of a shape canvasWORDSNET-4352Picture shapes are not retained upon rendering.WORDSNET-4433/:5/ Decimal TabStops within Cell are ignored upon rendering.WORDSNET-4564INCLUDEPICTURE Field does not show up in out document.WORDSNET-5372Create a video which shows how to build a table from scratchWORDSNET-5550/hidden/ Support hidden table rows and cells in LayoutWORDSNET-5769Support horizontal alignment on image when exporting to HTMLWORDSNET-6050Implement Load and Save warnings for DOC formatWORDSNET-6140INCLUDEPICTURE field cannot be inserted and updatedWORDSNET-6424Consider exposing original filenames of OLE1 objects in the
APIWORDSNET-6428Floating table causes duplicate on next pageWORDSNET-6447InsertField("INCLUDEPICTURE...") is not workingWORDSNET-6536Consider retaining duplicate Bookmarks during savingWORDSNET-6656MERGEFIELD inside INCLUDEPICTURE does not workWORDSNET-6661Support numeral configuration 

Enhancements 

WORDSJAVA-381Compound lines are not rendered
to graphics in JavaWORDSJAVA-435WordArt with italic style has inexact angle.WORDSJAVA-481WORDSJAVA-478 Generate Manifest from the build scriptWORDSJAVA-564Image doesn't stretch to shape sizeWORDSJAVA-569Better support of pictures with
BufferedImage.TYPE_USHORT_555_RGB type.WORDSJAVA-612GdiRenderer refactoryWORDSJAVA-613Manual lifting of AsposeWordsPrintDocument and TestPrintWORDSNET-1803Remove "LayoutAdapter" and convert Aspose.Layout to
APS directlyWORDSNET-2274/table grid/ Hidden content is visible in output PDF/Image.WORDSNET-2606Vertical alignment of text in one row is incorrectWORDSNET-2915Part of content was moved to the next page during renderingWORDSNET-3192/later/ Inline tables overlap each other upon rendering.WORDSNET-3284/wrap/ Frame overlaps part of content during rendering.WORDSNET-3733Hidden table row becomes visible when open/save the document
in DOCX format.WORDSNET-3837Layout selects wrong font name based on character classWORDSNET-3842Incorrect text box internal clippingWORDSNET-3843Row height is wrongWORDSNET-3853Pictures are improperly scaledWORDSNET-3856Section properties are wrongWORDSNET-3947The output PDF has less pages than the input document.WORDSNET-3992invisible character is visible after convertign to PDF or XPS.WORDSNET-4029pdf conversion replace Helvetica font with TimesNewRoman one
instead of ArialWORDSNET-4501Part of content was moved to the next page upon rendering.WORDSNET-4594Table inside TextBox is cut off during rendering.WORDSNET-4747Endnote is lost during rendering.WORDSNET-4767Extra pages are added during rendering.WORDSNET-4953Image is moved to previous page and truncated upon rendering.WORDSNET-5320Fix locale readingWORDSNET-5432There are fewer pages in the document after rendering.WORDSNET-5443Text box is rendered at incorrect page location.WORDSNET-5454Text box is placed incorrectly on page while rendering.WORDSNET-5456Text is shifted down while rendering.WORDSNET-5469Table inside textbox is cut-off during rendering.WORDSNET-5502Odd and even footers are interchanged upon rendering.WORDSNET-5635RowFormat.AllowBreakAcrossPages is not working on rendering to
PDFWORDSNET-5766On DOCX to PDF conversion, Table at the end of page is
truncatedWORDSNET-6008While converting dot to doc, text layout disturbed.WORDSNET-6045Support EMF metafile embedded to WMF metafilesWORDSNET-6090TOC entries are not clickable in PDFWORDSNET-6287Alternative text of signature line disappears when document is
opened and savedWORDSNET-6325Extra empty space at the left side of commentsWORDSNET-6345DrawingML is rendering incorrectly in PDFWORDSNET-6509Shape in WordML document becomes invisible when saving to any
formatWORDSNET-6557DrawingML inside SDT is crossed when rendering to fixed page
formatsWORDSNET-6634MS Word 2010 opens output doc file in protected view.WORDSNET-6651Aspose output Pdf file is not opening correctly in syncfusion
PdfViewerWORDSNET-6677Docx to HTML conversion issue with border line of the
autoshapeWORDSNET-6681Improve font substitution according to default registy values.WORDSNET-6687Doc to Pdf conversion with border lineWORDSNET-6720WORDSNET-6600 Border.LineStyle is set to Solid without
'border-style' CSS attribute on Html readingWORDSNET-6727Textbox with automatic font color text is not being rendered
properlyWORDSNET-6730/DrawingML textbox/ Range.Replace do not work for text frameWORDSNET-6775Code review requestWORDSNET-6784Rtf to Doc conversion Page Setup Margin Gutter issueWORDSNET-6802AW merge format algorithm behaves not like its MS counterpartWORDSNET-6816Blank pages are lost during rendering to PDF 

Performance 

WORDSNET-3798Consider trying to speed up
printing performance vs automation and VBA macro

Exceptions 

WORDSJAVA-605NullReferenceException occurs
when rendering Shape to HTMLWORDSNET-5684NullReferenceException: When UpdateFileds is called after
UpdatePageLayoutWORDSNET-5997ArgumentNullException on MailMerge.Execute on Nested
MergeFieldsWORDSNET-6295InvalidCastException occurs when calling UpdateFieldsWORDSNET-6394NullReferenceException occurs during rendering to fixed page
formatsWORDSNET-6468Aspose.Words.FileCorruptedException occurs upon loading DOCXWORDSNET-6505Aspose.Words.FileCorruptedException occurs upon loading DOCXWORDSNET-6549NullReferenceException when rendering DOCX file to a PDFWORDSNET-6558NullReferenceException occurs when rendering a textboxWORDSNET-6621Aspose.Words.FileCorruptedException occurs while loading DOC
document with comments.WORDSNET-6640Exception on calling UpdateFields methodWORDSNET-6671Exception thrown while Doc to Pdf conversionWORDSNET-6744Exception while converting Docx to PDFWORDSNET-6759OutOfMemoryException occurs during loading DOCWORDSNET-6779Exception when updating fields in documentWORDSNET-6793NullReferenceException occurs during converting to DOC 
Bugs 

WORDSJAVA-410Image is sized incorrectly when
rendering to graphicsWORDSJAVA-486Some textures disappearWORDSJAVA-492Inexact asian text wrapping inside textboxes.WORDSJAVA-493Circle Vml shape rendered incorrectly.WORDSJAVA-513incorrect "saturation" of lines and texturesWORDSJAVA-534Improve hatch brushes for Gdi render.WORDSJAVA-559Tiff image is invisible(Aspose.Words for java)WORDSJAVA-598Metafile texture doesn't stretched to a shape size when Wrap
Mode == ClampWORDSJAVA-607Find and remove the code that prints any message(s) from
production - keep it in test code only.WORDSNET-1868Images are not displayed after converting WML to DOC.WORDSNET-3008Winding checkboxes are not recognized upon rendering.WORDSNET-3562Table disappears after save to PDF.WORDSNET-3869Shape sizes are changed after open/save ODT document.WORDSNET-4121List formatting shows through in TOC entries after updatingWORDSNET-4407numbers of items in TOC are bold after updating fields.WORDSNET-4438LTR text does not look as expected upon main merge RTL merge
fields.WORDSNET-4476"Unknown file format" when open zero length file.WORDSNET-4508Default field name is used as field result during rendering of
fields in the headerWORDSNET-4573/horizontal alignment/ TextBox shapes are rendered as
transparent squares and are not visible upon converting to HTMLWORDSNET-4873BuiltInDocumentProperties.CreatedTime and other DateTime
properties must return date in UTC.WORDSNET-4928Rtf Reader handles context of table properties incorrectlyWORDSNET-4939Table looks incorrect after converting MHTML to other formats.WORDSNET-4971Super-scripted text is not properly underlined upon rendering.WORDSNET-4999Format of TOC item is changed after UpdateFields.WORDSNET-5162Formatting of TOC items is incorrect after updating fields.WORDSNET-5185Aspose.Words eats all memory and hangs upon executing mail
merge.WORDSNET-5187Paragraph text color is changed after converting to RTFWORDSNET-5307Watermark disappears after open/save DOCX document.WORDSNET-5403Style of TOC is changed after UpdateFields.WORDSNET-5417Document pages are rendered out of orderWORDSNET-5452Odd and even headers are not rendered properly.WORDSNET-5483Page numbering is incorrect after rendering.WORDSNET-5496Incorrect page numbering i.e. 97,98,99,101,102; Number 100 is
skippedWORDSNET-5497Code of XE field is shown in TOC after updating fields.WORDSNET-5517TOC is incorrectly updated by Aspose.Words if it is insertedt
in heading paragraphWORDSNET-5524Blank page is missed upon rendering document.WORDSNET-5538Z-index on VML shapes isn't preserved during docx->docx
conversion.WORDSNET-5552Table disappears during renderingWORDSNET-5592TextBox incorrectly positioned upon DOCX to HTML conversionWORDSNET-5601Font is changed during MailMerge.WORDSNET-5666Setting Table style margin-left does not change table indent
from left in DOC/DOCXWORDSNET-5672List numbering color/style for TOC entries was changed on
UpdateFieldsWORDSNET-5829Bidi not working when document save to PDFWORDSNET-5860Emf+ Dual // OfficeMath equation in Word Ole object is
corrupted in PDFWORDSNET-5891/horizontal alignment/ DOCX to HTML conversion issues with
textboxesWORDSNET-5941Mail Merge Font problemWORDSNET-5949unexplainable tabstop (occurs in doc and docx).WORDSNET-5950wrong format in TOC (occurs only in docx)WORDSNET-5958Unicode characters LTR and RTL are ignored on HTML exportWORDSNET-5964While converting odt to pdf format, each section rendered on
individual page.WORDSNET-6000While converting doc to rtf, improper font charset to RTF.WORDSNET-6012Document.Print skips printing the second pageWORDSNET-6025/hideMark/ Output PDF has one more page than the input DOCXWORDSNET-6069Calling UpdateFields after
DocumentBuilder.InsertTableOfContents generates incorrect TOCWORDSNET-6088TOC sub heading text aligned incorrectly after Open/Save in
DOC format.WORDSNET-6092Docx to PDF conversion issueWORDSNET-6109Windings Symbol is lost during rendering to fixed formatsWORDSNET-6132UpdateFields calculates TOC page numbers incorrectlyWORDSNET-6150Calling UpdateFields twice corrupts TO?/SEQ fieldsWORDSNET-6152Text Alignment issue while convering html to docxWORDSNET-6166Aspose.Words generates 20 pages when rendering a 2 page DOCX
to fixed formatsWORDSNET-6182Incorrect parameter is passed to IMailMergeDataSource when
using new Object.Attribute sytnaxWORDSNET-6183Shape borders are rendering incorrectly in HTMLWORDSNET-6184Table in DOC is rendering many times in PDF/TiffWORDSNET-6223MergeFields inside header don't show values in PDFWORDSNET-6270Horizontally Flipped DrawingML image is rendering incorrectly
in PDFWORDSNET-6275Extra blank page problem occurs while converting doc to Pdf
Format.WORDSNET-6311REF field with CardText or Number formatting switches is
updated incorrectlyWORDSNET-6352A table with too many columns cannot be opened when saving to
Word formatsWORDSNET-6399Extra empty page is added to the PDF document after conversion
from Doc fileWORDSNET-6401WordArt shape fill is distorted while rendering path gradient
shape.WORDSNET-6467Appending documents into empty (new Document()) stretches the
contents of one page into multiple pagesWORDSNET-6478UICompat97To2003 is not set for rtf filesWORDSNET-6518LoadOptions object shouldn't be changed during openingWORDSNET-6525Unable to access PRINT field in the Doc fileWORDSNET-6530Transparency of PNG image is disturbed when rendering to PDFWORDSNET-6551Incorrect Page numbering in the TOC when calling UpdateFieldsWORDSNET-6580Custom style in RTF document resulting formatting issueWORDSNET-6587Docx to Pdf conversion issue with page breakWORDSNET-6601MHTML document loses table background color while rendering to
PDFWORDSNET-6632Problem with Image size when covert from DOC, DOCX, WML to RTFWORDSNET-6644Image flips upon rendering DOCX document to PDFWORDSNET-6649Run.Font.Bidi is lost when converting to ODT formatWORDSNET-6657Shape is displaying at the wrong page side in ODTWORDSNET-6658Paragraph alignment is reversed during converting doc to odtWORDSNET-6674Mergefield value splits into two Runs with different FontsWORDSNET-6676Compatibly options "Don't add leading (extra space)
between rows of text" processed incorrectlyWORDSNET-6678Add support for "Don't expand character spaces on a line
that ends with SHIFT-RETURN" optionWORDSNET-6698Left/Right cellpadding of RTF dcoument are changed after
conversionWORDSNET-6699RTF document loses table format upon conversionWORDSNET-6702TOC is updating incorrectlyWORDSNET-6714Setting the font hidden doesn't hide Row in DOCXWORDSNET-6722Bullet style is not being rendered correctlyWORDSNET-6723ParagraphFormat.SpaceAfter is not preserved during loading ODTWORDSNET-6724Shape is overlapping the Table contentWORDSNET-6728Shape is rendering as red cross symbol in PDFWORDSNET-6729Setting the font hidden doesn't hide DrawingML in DOCXWORDSNET-6732Docx to Pdf conversion issue while mail mergeWORDSNET-6733Document is rendered out of page bounds during printingWORDSNET-6734Docx to Pdf conversion issue, images are rotated in output pdf
fileWORDSNET-6735Content is clipped because of incorrect column height
calculation.WORDSNET-6737Tables and shapes are shifted while rendering.WORDSNET-6738Textbox in DOCX converted to HTML as empty imageWORDSNET-6740Investigate why mail merge regions' data is not visible in PDFWORDSNET-6742Table background color fades while converting DOC to HTMLWORDSNET-6754Bug with ExtractContent code can't extract text in table cellWORDSNET-6755Shape wrap type is lost during loading OTT into DOMWORDSNET-6769RTF to Doc conversion issue with line spacing valueWORDSNET-6806Calling UpdateFields after InsertTableOfContents calculates
Cell's width incorrectly 

Regressions 

WORDSJAVA-611Font Substitution is broken by
UnicodeString refactoryWORDSNET-5321Aspose.Words treats numbers as string upon mail merge.WORDSNET-6564\html autodetect\ "table" tag causes Aspose.Words
not to detect HTMLWORDSNET-6689NullReferenceException occurs when rendering GroupShape to
HTMLWORDSNET-6701NullReferenceException occurs during exporting Shape to HTMLWORDSNET-6710/DrawingML textbox/ Unable to access SDT nodes from inside
DrawingMLWORDSNET-6739Printing speed has slowed down in Aspose.Words for .NET 11.5
and higher 
