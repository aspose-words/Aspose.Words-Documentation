---
title: Aspose.Words for Java 11.4.0 Release Notes
type: docs
weight: 70
url: /java/aspose-words-for-java-11-4-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 11.4.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-11.4.0/)

{{% /alert %}} 

What's new 
There are 133 improvements and fixes in this regular monthly release. Most notable are: 
Implemented embedded EMF+ metafiles rendering;Implemented font style simulation while rendering to fixed page formats;Improved rendering of gray colors to PDF for proper printing;Improved PDF A1/B compatibility;Improved EMF rendering. 

New features 

WORDSJAVA-451WORDSJAVA-499 Open password
protected documentsWORDSNET-1770Image inserted by Aspose.Words appears with border in
OpenOffice.WORDSNET-1815Output custom footnote delimiter in layoutWORDSNET-1864Some highlight colors are not showed in the word document.WORDSNET-4023Root // Preserve signature image upon roundtrip.WORDSNET-4491/snap to grid/ Support document line gridWORDSNET-4688Unexpected endnote separator appears during rendering.WORDSNET-4804/snap to grid/ Intervals between empty paragraphs are rendered
smaller than it should.WORDSNET-4832Non-existent separator line appears during footnote renderingWORDSNET-5277Endnote separator appear on each page with endnotes but should
note appear at all.WORDSNET-5663/snap to grid/ Line spacing seems to be reduced in PDFWORDSNET-5664/snap to grid/ Shapes are getting overlapped to the content in
PDF/XPS etcWORDSNET-6047Implement Load and Save warnings for DOCX formatWORDSNET-6235Implement Read and Write warnings for Vml.WORDSNET-6249Move licenses to a central place in the installer and DLLs
only downloadsWORDSNET-6256/rtl/ Support list labels in RTL paragraphsWORDSNET-6288WORDSNET-5311 Create an article which demonstrates how to
receive warnings when a font is substituted.WORDSNET-6353Test Aspose.Words with Visual Studio 2011WORDSNET-6389Text is misplaced after conversion Doc to PDF.WORDSNET-969Make it possible to use some special syntax so users can
insert merge fields in HTML 

Enhancements 

WORDSJAVA-37WORDSJAVA-499 Support
verification of digital signatures of a documentWORDSJAVA-454Make links from documentation pages to API members functional
in AWJAVAWORDSJAVA-506Can't apply attributes to image with rgb color map.WORDSJAVA-530WORDSJAVA-529 Spaces in path prevent loading images from
internet.WORDSJAVA-539WORDSJAVA-499 Human-readable exceptions for digital signature
and ecription codeWORDSJAVA-543WORDSJAVA-499 Add signature examples back to Java samplesWORDSNET-1685Table borders are shown not properly in DOCX.WORDSNET-2742Right margin is set to 0 after open/save the document.WORDSNET-4714Shape height is read incorrectly.WORDSNET-4833Render custom footnote/endnote reference markWORDSNET-5078/anchor push:20/ Support floater anchor push algorithm
(scenario 2a).WORDSNET-5779SDTs combo box, SelectedItem doesn't show upWORDSNET-6013Create an article and code sample which demonstrates how to
specify default substitution font that is used upon rendering.WORDSNET-6167Image quality problem with Doc format when use
builder.InsertImageWORDSNET-6177Support EMF+ embedded metafilesWORDSNET-6214WORDSNET-6209 Support Vertical Alignment of elements in
equations.WORDSNET-6215WORDSNET-6209 Support all variants of fraction.WORDSNET-6219WORDSNET-6209 Support column and row spacing in matrix and
array.WORDSNET-6257Update Aspose.Words on CodeplexWORDSNET-6267Support italic font simulation in GdiRendererWORDSNET-6276Improve writing gray colors to PDF.WORDSNET-6278Paragraph left indent increases in PDFWORDSNET-6308PDF Validator rejects signed PDF/A-1b documentWORDSNET-6315Create an article for how to control how fonts are embedded in
PDFWORDSNET-6316Create an article for how to avoid embedding Base 14 fonts and
standard Windows fontsWORDSNET-6324Some internal git files appear in the examples archiveWORDSNET-6336Wrong Page Count while converting Docx to PdfWORDSNET-6343Fix any links using the old web address in the online
documentationWORDSNET-6360RTF to Doc conversion issue, text is not properly render
between Grid LinesWORDSNET-6364WORDSNET-6343 Check any old external links that can be updated
or don't exist anymoreWORDSNET-6365WORDSNET-6343 Check and fix any red links in the documentation
pagesWORDSNET-6377Support font styles simulation when rendering to SWFWORDSNET-6378Support font styles simulation when rendering to SVG

Performance 

WORDSJAVA-540Reduce memory usage during
saving to PDFWORDSNET-6217WORDSNET-6209 Investigate why height of glyphs in 'Cambria
Math' is higher that needed when render to GDI. 

Exceptions 

WORDSNET-4924InvalidOperationException:
"Cannot find a style with this style identifier." occurs during
applying "BookTitle" style.WORDSNET-5282"NullReferenceException" exception occurs during
getting width of pageWORDSNET-5647InvalidOperationException occurs during open/save.WORDSNET-5796Exception occurs when converting DOCX with comments to PDFWORDSNET-5812Aspose.Words.FileCorruptedException occurs upon loading RTFWORDSNET-6168Cannot properly create a Row level StructuredDocumentTagWORDSNET-6171Exception throws "Item has already been added. Key in
dictionary: "1062" Key being added: "1062" on
AppendDocument.WORDSNET-6334System.StackOverFlowException occurs upon loading the DOC fileWORDSNET-6361Aspose.Words.FileCorruptedException occurs upon loading DOCWORDSNET-6370NullReferenceException occurs during rendering Shapes to fixed
page formatsWORDSNET-6374TiffCompression.Ccitt3 throws System.ArgumentException upon
rendering Shape to TIFF formatWORDSNET-6384Aspose.Words.FileCorruptedException occurs upon loading DOC

Bugs 

WORDSJAVA-408Picture colors are incorrect
when rendering to graphicsWORDSJAVA-429The quality of PNG image is worsened upon HTML export.WORDSJAVA-474The same image with different chroma keyWORDSJAVA-488Exception Malformed pattern "#'##0.00" while using
mail mergeWORDSJAVA-489Shape colors changed upon converting to PDF/XPSWORDSJAVA-497Image appears black upon converting to Fixed page formatsWORDSJAVA-512Quality of downscaled image with non-standard dpi is degraded.WORDSJAVA-528Incorrect image backgorund problem occur while converting to
pdf/xps.WORDSJAVA-529Doesn't follow redirect to mobile site when loading an image.WORDSJAVA-536Improve rendering to Gdi Emf PensWORDSJAVA-549Color shift if color matrix is applied to indexed imageWORDSJAVA-550OfficeMath symbols rendered in wrong vertical positionWORDSJAVA-551Emf-rendered text doesn't visible under background fillWORDSNET-1631Manipulations with bookmarks corrupt the model.WORDSNET-2280Paragraph is placed before table but should be placed after
it. Rendering/Convertign to PDF.WORDSNET-2518Formatting of WML document is changed after open/save.WORDSNET-2696Table rows are invisible after open/save DOCX (sdt).WORDSNET-2988Table in document is messed up after open save DOCX document.WORDSNET-3528Height of row is incorrect during rendering.WORDSNET-3595Shading patterns are lost during rendering.WORDSNET-3597Position of text on the page is changed during rendering.WORDSNET-3642Line appears to be of another color after converting metafile
to bitmap while rendering into PDF/XPSWORDSNET-3776Part of content is moved to the previous page during
rendering.WORDSNET-3791Rendered content layout differs a little from templateWORDSNET-4071Fill pattern specified in MS Word is just pure gray after
rendering.WORDSNET-4246Content layout is differs from template upon renderingWORDSNET-4305EMF+ rendering problemWORDSNET-4668Bold text becomes regular after converting DOC to DOCXWORDSNET-4788Nested tables become misaligned when renderedWORDSNET-4836Watermark image shifts during renderingWORDSNET-5025Formatting of ODT document is broken after open/save.WORDSNET-5235Emf+ Dual // Border lines in metafile are too thin after
rendering document.WORDSNET-5253Characters overlap each other during rendering.WORDSNET-5431Text appears with shadow after open/saveWORDSNET-5562Styles are lost during converting WML to DOCXWORDSNET-5615EMF images are rendering with Question mark boxes in PDFWORDSNET-5698Image is lost upon converting WML document to ODT formats.WORDSNET-5733Evaluation watermark causes page break when converting ODTWORDSNET-5755/anchor push:20/ Pdf page count is less than input Word
document, after converting doc to PdfWORDSNET-5775In SDT, LockContents=false doesn't work properly unless
IsShowingPlaceholderText is specifiedWORDSNET-5866Cell borders are rendering incorrectly in fixed page formatsWORDSNET-5879Aspose.Words does not show up in Visual Studio when the list
is filtered to .NET 4.0WORDSNET-5932Page Contents are overlapping in Fixed Page FormatsWORDSNET-6154sdt.RemoveSelfOnly() is not working properlyWORDSNET-6161/rtl/ Incorrect width of italic arabic text is returned by
TrueType font classesWORDSNET-6210Docx to PDF conversion. The Output quality of PDF is not goodWORDSNET-6211Docx to PDF conversion with embedded ExcelWORDSNET-6225/signature line/ Support "Signature Line" shapes in
DOC formatWORDSNET-6243When the rtf file is converted to doc file, the layout of
first cell of the table is incorrect.WORDSNET-6260Partly loosing external schema references data during DOCX
roundtrip.WORDSNET-6279During Mail merge, hidden paragraphs and fields are not
visible in resultant docx file but visible in Pdf format.WORDSNET-6290Doc to SWF conversion issue. SWF output does not open in
BrowserWORDSNET-6306Document background color is not retained when appended to
anther DocumentWORDSNET-6307/rtl/ Tabs in RTL paragraphs are ordered in line incorrectlyWORDSNET-6310Document.Save corrupts DOCX during sending to Client's BrowserWORDSNET-6321ArgumentNullException is thrown upon saving SVG to streamWORDSNET-6323WORDSNET-6297 EMF rendering problemWORDSNET-6326Doc to PDf conversion issue, extra space at the top of first
page in pdf.WORDSNET-6332Font language settings are lost when converting DOCX to DOCWORDSNET-6338Images transparency issue in exported PDF from DocxWORDSNET-6350BaseJustification.Bottom is lost after open/save in
OfficeMath.WORDSNET-6351PDF1A/B violation discovered in released featuresWORDSNET-6356/rtl/ Incorrect order of characters in bidirectional textWORDSNET-6358/rtl/ Exception while converting Docx to PDFWORDSNET-6388Exception while converting doc to Tiff 
