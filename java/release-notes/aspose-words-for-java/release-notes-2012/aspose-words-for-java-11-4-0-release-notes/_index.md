---
title: Aspose.Words for Java 11.4.0 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 11.4.0 Release Notes
linktitle: Aspose.Words for Java 11.4.0 Release Notes
description: "Aspose.Words for Java 11.4.0 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /java/aspose-words-for-java-11-4-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 11.4.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-11.4.0/)

{{% /alert %}}

What's new 
There are 133 improvements and fixes in this regular monthly release. Most notable are: 
Implemented embedded EMF+ metafiles rendering;Implemented font style simulation while rendering to fixed page formats;Improved rendering of gray colors to PDF for proper printing;Improved PDF A1/B compatibility;Improved EMF rendering. 

## New features 

WORDSJAVA-451

WORDSJAVA-499 Open password protected documents.

WORDSNET-1770 Image inserted by Aspose.Words appears with border in OpenOffice.

WORDSNET-1815 Output custom footnote delimiter in layout.

WORDSNET-1864 Some highlight colors are not showed in the word document.

WORDSNET-4023 Root // Preserve signature image upon roundtrip.

WORDSNET-4491 /snap to grid/ Support document line gridWORDSNET-4688Unexpected endnote separator appears during rendering.

WORDSNET-4804 /snap to grid/ Intervals between empty paragraphs are rendered smaller than it should.

WORDSNET-4832 Non-existent separator line appears during footnote rendering.

WORDSNET-5277 Endnote separator appear on each page with endnotes but should note appear at all.

WORDSNET-5663 /snap to grid/ Line spacing seems to be reduced in PDF.

WORDSNET-5664 /snap to grid/ Shapes are getting overlapped to the content in PDF/XPS etc.

WORDSNET-6047 Implement Load and Save warnings for DOCX format.

WORDSNET-6235 Implement Read and Write warnings for Vml.

WORDSNET-6249 Move licenses to a central place in the installer and DLLs only downloads.

WORDSNET-6256 /rtl/ Support list labels in RTL paragraphs.

WORDSNET-6288

WORDSNET-5311 Create an article which demonstrates how to receive warnings when a font is substituted.

WORDSNET-6353 Test Aspose.Words with Visual Studio 2011.

WORDSNET-6389 Text is misplaced after conversion Doc to PDF.

WORDSNET-969 Make it possible to use some special syntax so users can insert merge fields in HTML.

## Enhancements 

WORDSJAVA-37

WORDSJAVA-499 Support verification of digital signatures of a document.

WORDSJAVA-454 Make links from documentation pages to API members functional in AWJAVA.

WORDSJAVA-506 Can't apply attributes to image with rgb color map.

WORDSJAVA-530

WORDSJAVA-529 Spaces in path prevent loading images from internet.

WORDSJAVA-539

WORDSJAVA-499 Human-readable exceptions for digital signature and ecription code.

WORDSJAVA-543

WORDSJAVA-499 Add signature examples back to Java samples.

WORDSNET-1685 Table borders are shown not properly in DOCX.

WORDSNET-2742 Right margin is set to 0 after open/save the document.

WORDSNET-4714 Shape height is read incorrectly.

WORDSNET-4833 Render custom footnote/endnote reference mark.

WORDSNET-5078 /anchor push:20/ Support floater anchor push algorithm (scenario 2a).

WORDSNET-5779 SDTs combo box, SelectedItem doesn't show up.

WORDSNET-6013 Create an article and code sample which demonstrates how to specify default substitution font that is used upon rendering.

WORDSNET-6167 Image quality problem with Doc format when use builder.InsertImage.

WORDSNET-6177 Support EMF+ embedded metafiles.

WORDSNET-6214

WORDSNET-6209 Support Vertical Alignment of elements in equations.

WORDSNET-6215

WORDSNET-6209 Support all variants of fraction.

WORDSNET-6219

WORDSNET-6209 Support column and row spacing in matrix and array.

WORDSNET-6257 Update Aspose.Words on Codeplex.

WORDSNET-6267 Support italic font simulation in GdiRenderer.

WORDSNET-6276 Improve writing gray colors to PDF.

WORDSNET-6278 Paragraph left indent increases in PDF.

WORDSNET-6308 PDF Validator rejects signed PDF/A-1b document.

WORDSNET-6315 Create an article for how to control how fonts are embedded in PDF.

WORDSNET-6316 Create an article for how to avoid embedding Base 14 fonts and standard Windows fonts.

WORDSNET-6324 Some internal git files appear in the examples archive.

WORDSNET-6336 Wrong Page Count while converting Docx to Pdf.

WORDSNET-6343 Fix any links using the old web address in the online documentation.

WORDSNET-6360 RTF to Doc conversion issue, text is not properly render between Grid Lines.

WORDSNET-6364

WORDSNET-6343 Check any old external links that can be updated or don't exist anymore.

WORDSNET-6365

WORDSNET-6343 Check and fix any red links in the documentation pages.

WORDSNET-6377 Support font styles simulation when rendering to SWF.

WORDSNET-6378 Support font styles simulation when rendering to SVG.

## Performance 

WORDSJAVA-540 Reduce memory usage during saving to PDF.

WORDSNET-6217

WORDSNET-6209 Investigate why height of glyphs in 'Cambria Math' is higher that needed when render to GDI. 

## Exceptions 

WORDSNET-4924 InvalidOperationException: "Cannot find a style with this style identifier." occurs during applying "BookTitle" style.

WORDSNET-5282 "NullReferenceException" exception occurs during getting width of page.

WORDSNET-5647 InvalidOperationException occurs during open/save.

WORDSNET-5796 Exception occurs when converting DOCX with comments to PDF.

WORDSNET-5812 Aspose.Words.FileCorruptedException occurs upon loading RTF.

WORDSNET-6168 Cannot properly create a Row level StructuredDocumentTag.

WORDSNET-6171 Exception throws "Item has already been added. Key in dictionary: "1062" Key being added: "1062" on AppendDocument.

WORDSNET-6334 System.StackOverFlowException occurs upon loading the DOC file.

WORDSNET-6361 Aspose.Words.FileCorruptedException occurs upon loading DOC.

WORDSNET-6370 NullReferenceException occurs during rendering Shapes to fixed page formats.

WORDSNET-6374 TiffCompression.Ccitt3 throws System.ArgumentException upon rendering Shape to TIFF format.

WORDSNET-6384 Aspose.Words.FileCorruptedException occurs upon loading DOC.

## Bugs 

WORDSJAVA-408 Picture colors are incorrect when rendering to graphics.

WORDSJAVA-429 The quality of PNG image is worsened upon HTML export.

WORDSJAVA-474 The same image with different chroma key.

WORDSJAVA-488 Exception Malformed pattern "#'##0.00" while using mail merge.

WORDSJAVA-489 Shape colors changed upon converting to PDF/XPS.

WORDSJAVA-497 Image appears black upon converting to Fixed page formats.

WORDSJAVA-512 Quality of downscaled image with non-standard dpi is degraded.

WORDSJAVA-528 Incorrect image backgorund problem occur while converting to pdf/xps.

WORDSJAVA-529 Doesn't follow redirect to mobile site when loading an image.

WORDSJAVA-536 Improve rendering to Gdi Emf Pens.

WORDSJAVA-549 Color shift if color matrix is applied to indexed image.

WORDSJAVA-550 OfficeMath symbols rendered in wrong vertical position.

WORDSJAVA-551 Emf-rendered text doesn't visible under background fill.

WORDSNET-1631 Manipulations with bookmarks corrupt the model.

WORDSNET-2280 Paragraph is placed before table but should be placed after it. Rendering/Convertign to PDF.

WORDSNET-2518 Formatting of WML document is changed after open/save.

WORDSNET-2696 Table rows are invisible after open/save DOCX (sdt).

WORDSNET-2988 Table in document is messed up after open save DOCX document.

WORDSNET-3528 Height of row is incorrect during rendering.

WORDSNET-3595 Shading patterns are lost during rendering.

WORDSNET-3597 Position of text on the page is changed during rendering.

WORDSNET-3642 Line appears to be of another color after converting metafile to bitmap while rendering into PDF/XPS.

WORDSNET-3776 Part of content is moved to the previous page during rendering.

WORDSNET-3791 Rendered content layout differs a little from template.

WORDSNET-4071 Fill pattern specified in MS Word is just pure gray after rendering.

WORDSNET-4246 Content layout is differs from template upon rendering.

WORDSNET-4305 EMF+ rendering problem.

WORDSNET-4668 Bold text becomes regular after converting DOC to DOCX.

WORDSNET-4788 Nested tables become misaligned when rendered.

WORDSNET-4836 Watermark image shifts during rendering.

WORDSNET-5025 Formatting of ODT document is broken after open/save.

WORDSNET-5235 Emf+ Dual // Border lines in metafile are too thin after rendering document.

WORDSNET-5253 Characters overlap each other during rendering.

WORDSNET-5431 Text appears with shadow after open/saveWORDSNET-5562Styles are lost during converting WML to DOCX.

WORDSNET-5615 EMF images are rendering with Question mark boxes in PDF.

WORDSNET-5698 Image is lost upon converting WML document to ODT formats.

WORDSNET-5733 Evaluation watermark causes page break when converting ODT.

WORDSNET-5755 /anchor push:20/ Pdf page count is less than input Word document, after converting doc to Pdf.

WORDSNET-5775 In SDT, LockContents=false doesn't work properly unless IsShowingPlaceholderText is specified.

WORDSNET-5866 Cell borders are rendering incorrectly in fixed page formats.

WORDSNET-5879 Aspose.Words does not show up in Visual Studio when the list is filtered to .NET 4.0.

WORDSNET-5932 Page Contents are overlapping in Fixed Page Formats.

WORDSNET-6154 sdt.RemoveSelfOnly() is not working properly.

WORDSNET-6161 /rtl/ Incorrect width of italic arabic text is returned by TrueType font classes.

WORDSNET-6210 Docx to PDF conversion. The Output quality of PDF is not good.

WORDSNET-6211Docx to PDF conversion with embedded Excel.

WORDSNET-6225 /signature line/ Support "Signature Line" shapes in DOC format.

WORDSNET-6243 When the rtf file is converted to doc file, the layout of first cell of the table is incorrect.

WORDSNET-6260 Partly loosing external schema references data during DOCX roundtrip.

WORDSNET-6279 During Mail merge, hidden paragraphs and fields are not visible in resultant docx file but visible in Pdf format.

WORDSNET-6290 Doc to SWF conversion issue. SWF output does not open in Browser.

WORDSNET-6306 Document background color is not retained when appended to anther Document.

WORDSNET-6307 /rtl/ Tabs in RTL paragraphs are ordered in line incorrectly.

WORDSNET-6310 Document.Save corrupts DOCX during sending to Client's Browser.

WORDSNET-6321 ArgumentNullException is thrown upon saving SVG to stream.

WORDSNET-6323

WORDSNET-6297 EMF rendering problem.

WORDSNET-6326 Doc to PDf conversion issue, extra space at the top of first page in pdf.

WORDSNET-6332 Font language settings are lost when converting DOCX to DOC.

WORDSNET-6338 Images transparency issue in exported PDF from Docx.

WORDSNET-6350 BaseJustification.Bottom is lost after open/save in OfficeMath.

WORDSNET-6351 PDF1A/B violation discovered in released features.

WORDSNET-6356 /rtl/ Incorrect order of characters in bidirectional text.

WORDSNET-6358 /rtl/ Exception while converting Docx to PDF.

WORDSNET-6388 Exception while converting doc to Tiff.
