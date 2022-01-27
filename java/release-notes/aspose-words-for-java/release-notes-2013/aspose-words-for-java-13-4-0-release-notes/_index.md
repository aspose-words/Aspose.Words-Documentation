---
title: Aspose.Words for Java 13.4.0 Release Notes
description: "Aspose.Words for Java 13.4.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 80
url: /java/aspose-words-for-java-13-4-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 13.4.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-13.4.0/)

{{% /alert %}} 

## Aspose.Words for Java 13.4 Release Notes

### What's New

- Printing to multitray printers improved
- Printing documents that contain pages with different orientation
- Improved memory performance for large documents (now code uses ~20% less memory for 1Gb+ documents)
- DOC and DOCX document can be signed with digital signatures, also signatures can be removed;
- 3D color for VML extrusion effect is supported
- Improved performance of PDF rendering of documents with Jpeg images
- DML Charts enhancements: surface charts rendering, moving average trend lines rendering and more
- Supported rendering of revisions
- Improved pagination of footnotes
- Implemented character paragraph indents
- Fixed positioning of a table broken across pages when it has repeated header rows
- Improved table row wrapping around floaters
- Fixed issue with Arabic-Indic numerals inside SDT
- Aspose.Words allows to write OOXML documents that do not cause Compatibility Mode when opened in MS Word 2010-2013 

For a list of changes to the public API in this release refer to the following article in the documentation. 

## All Fixes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-652 |Page prints with incorrect orientation when printing to a physical printer |Bug |
|WORDSJAVA-659 |% formatting of doubles in charts. |Bug |
|WORDSJAVA-709 |Avoid duplicates in Java annotation arguments |Bug |
|WORDSJAVA-712 |Investigate if the conversions are performed twice |Bug |
|WORDSJAVA-713 |Consider removing temporary image files after save operation |Bug |
|WORDSJAVA-717 |Chart axis labels are stripped. |Bug |
|WORDSJAVA-719 |Chart axis labels: integer formatted as float |Bug |
|WORDSJAVA-627 |Autoporting of static classes |Enhancement |
|WORDSJAVA-702 |Effects are not applied correctly |Enhancement |
|WORDSJAVA-705 |Adding JavaDelete annotation should delete existing java file too. |Enhancement |
|WORDSJAVA-706 |Workaround for TestNG's explicit test class bug. |Enhancement |
|WORDSJAVA-710 |TestNG to not run non-test public mthods. |Enhancement |
|WORDSJAVA-711 |Full name of attribute should be stripped. |Enhancement |
|WORDSJAVA-718 |OfficeCripto manual lifting |Enhancement |
|WORDSJAVA-644 |Autoporter to support implicit and explicit castings |Feature |
|WORDSJAVA-716 |Add the examples dashboard to the Java release |Feature |
|WORDSJAVA-662 |Decrease memory usage when save multi-thousands-page PDF documents. |Performance |
|WORDSJAVA-669 |Investigate why does it take too long to save to Pdf |Performance |
|WORDSJAVA-714 |Performance issue during RTF loading and converting to other formats |Performance |
|WORDSNET-2504 |Hyperlink to an external document crashes XPS Viewer |Bug |
|WORDSNET-5411 |On DOC to PDF conversion, Logo inside header is misplaced |Bug |
|WORDSNET-5599 |Upon rendering to PDF, Body of document becomes invisible |Bug |
|WORDSNET-5633 |Shapes are rendering behind the DrawingML objects in PDF,XPS |Bug |
|WORDSNET-5634 |Content is overlapped by image during open/save. |Bug |
|WORDSNET-5966 |While converting doc to pdf, Tables overlapped because of text wrapping set to Around. |Bug |
|WORDSNET-6028 |Document looks different when rendered to Fixed page formats |Bug |
|WORDSNET-6107 |Red TextBox Shape becomes in front of all other objects after conversion/rendering |Bug |
|WORDSNET-6117 |Horizontal merged cells rendered incorrectly while saving in PDF format first. |Bug |
|WORDSNET-6123 |Table contents are cut off while converting doc to PDF format. |Bug |
|WORDSNET-6164 |While converting doc to Pdf, nested table text rendered incorrectly. |Bug |
|WORDSNET-6231 |Vertical WordArt is not converting properly to RTF |Bug |
|WORDSNET-6233 |OOXML Charts // DrawingML Chart disappears during converting to DOC |Bug |
|WORDSNET-6396 |Text is misplaced after conversion From Doc to PDF |Bug |
|WORDSNET-6562 |Aspose.Words hangs during rendering Microsoft Visio Drawing Object to PDF/XPS |Bug |
|WORDSNET-6568 |DrawingML images are misplaced during open/save |Bug |
|WORDSNET-6575 |BuiltInDocumentProperties.Words property returns incorrect value |Bug |
|WORDSNET-6664 |Drawing Objects are not being rendered properly to PNG |Bug |
|WORDSNET-6904 |Incorrect shapes zorder |Bug |
|WORDSNET-6972 |Autoshape is sent behind an image while saving DOCX to PDF |Bug |
|WORDSNET-7125 |DML inside SDT is transformed into a GroupShape during open/save |Bug |
|WORDSNET-7353 |Frame is not positioned at the correct place when exporting to Html |Bug |
|WORDSNET-7516 |A DML incorrectly renders in front of other DML nodes |Bug |
|WORDSNET-7722 |Line graph is missing with legends after conversion from Docx to Fixed file format |Bug |
|WORDSNET-7767 |Vertical border line appears besides logo image when printing |Bug |
|WORDSNET-7799 |TextBox shapes are sent behind other Shapes during open/save |Bug |
|WORDSNET-7807 |Ordinal Date field format is not correct in Fixed Page Formats |Bug |
|WORDSNET-7872 |Document contents are shifted to the next page in PDF document |Bug |
|WORDSNET-7908 |A string is repeated twice with two different formats in PDF |Bug |
|WORDSNET-7932 |Fonts used in PDF are different to those used by Microsoft Word |Bug |
|WORDSNET-7934 |TextBox and it's content is not visible in fixed page formats |Bug |
|WORDSNET-7935 |An image is incorrectly displayed on all pages in PDF other than first page |Bug |
|WORDSNET-7942 |Improve min/max axis values calculation algorithm for 3D charts. |Bug |
|WORDSNET-7943 |A TextBox is sent behind DrawingML image during rendering to fixed page formats |Bug |
|WORDSNET-7954 |Content from Text file is not read during loading into DOM |Bug |
|WORDSNET-7968 |Black lines appear in Rectangle Shape during open/save DOCX |Bug |
|WORDSNET-7980 |Lock aspect ratio of embedded object is set to active after re-save |Bug |
|WORDSNET-7982 |UpdateFields doesn't remove content formatted with Title style from TOC |Bug |
|WORDSNET-7986 |Width and alignment issue of a Text input form field in Pdf |Bug |
|WORDSNET-7994 |Document.UpdateFields duplicate Visio Drawing |Bug |
|WORDSNET-8000 |MS Word reports a corruption in Cloned DOCX |Bug |
|WORDSNET-8001 |Number formatting issue while Mail Merge |Bug |
|WORDSNET-8003 |Size of TextBox in DOCX is not preserved during open/save |Bug |
|WORDSNET-8005 |Date picker SDT control is positioned closer to the top page edge |Bug |
|WORDSNET-8009 |Altchunk content is not preserved during open/save |Bug |
|WORDSNET-8010 |Doc to PDF conversion issue with Group Shapes rendering |Bug |
|WORDSNET-8011 |Vertical space between Paragraph is not preserved in fixed page formats |Bug |
|WORDSNET-8012 |Tables are not splitting across pages in fixed page formats |Bug |
|WORDSNET-8013 |Table rows are overlapping the content in Header in fixed page formats |Bug |
|WORDSNET-8015 |Table is moved to next page after conversion from Docm to PDF |Bug |
|WORDSNET-8023 |Unwanted border around Cells of first Row appears during open/save |Bug |
|WORDSNET-8026 |Aspose.Words produces untidy Table structures in DOC |Bug |
|WORDSNET-8028 |Incorrect text effective rectangle with 3D effect |Bug |
|WORDSNET-8030 |MS Word reports a corruption in converted DOCX |Bug |
|WORDSNET-8038 |Actual bounds are calculated incorrectly |Bug |
|WORDSNET-8044 |SDT content in RTL Table is partially reversed when specifying NumeralFormat.ArabicIndic |Bug |
|WORDSNET-8064 |Paragraph w:vertAlign has changed from superscript to baseline |Bug |
|WORDSNET-8072 |Detect an encoding in TxtReader if LoadOptions.Encoding is null. |Bug |
|WORDSNET-8085 |Mozilla Firefox does not render DrawingML in PDF properly |Bug |
|WORDSNET-8113 |Open/Save Docx lose the bullet |Bug |
|WORDSNET-8146 |Unexpected line numbers appear during open/save ODT |Bug |
|WORDSNET-2092 |Avoid using fonts during rendering checboxes. |Enhancement |
|WORDSNET-2198 |Size of images is changed after open/save the document. |Enhancement |
|WORDSNET-2226 |File size is increased two times after open/save the document. |Enhancement |
|WORDSNET-3580 |Support transparency in WMF emulated by SRCPAINT and SRCAND raster operations. |Enhancement |
|WORDSNET-3849 |VML // Shape shadow effect rendering |Enhancement |
|WORDSNET-4351 |Text inside textbox is cropped during rendering. |Enhancement |
|WORDSNET-4861 |Position of Textbox is incorrect after converting to DOCX |Enhancement |
|WORDSNET-5169 |Investigate whether we can decrease memory usage upon rendering documents. |Enhancement |
|WORDSNET-5529 |DML linear gradient brushes should use transformation matrices instead of angle. |Enhancement |
|WORDSNET-5697 |/page vertical alignment/document to pdf conversion, image lose its postion |Enhancement |
|WORDSNET-5754 |while converting doc to pdf, image properties not available |Enhancement |
|WORDSNET-5756 |Pdf page count is greater than input Word document, after converting doc to Pdf |Enhancement |
|WORDSNET-5784 |document to pdf conversion, creating multiple tables |Enhancement |
|WORDSNET-5830 |DOC to PDF conversion issue; All pages not exported to PDF |Enhancement |
|WORDSNET-5831 |Document text out of position, While saving Word document in Pdf format |Enhancement |
|WORDSNET-5842 |While doc to Pdf, footer image render incorrectly. |Enhancement |
|WORDSNET-5889 |While converting Word document to Multipage Tiff image, first image missing. |Enhancement |
|WORDSNET-6203 |TextBox is hidden while rendering. |Enhancement |
|WORDSNET-6218 |Docx to PDF conversion issue with tables |Enhancement |
|WORDSNET-6327 |Doc to PDF conversion issue with left margin |Enhancement |
|WORDSNET-6381 |Doc to PDF conversion issue with Text field's text |Enhancement |
|WORDSNET-6410 |Work out a useful way to avoid running into Compatibility Mode when saving OOXML and opening in Word 2010 |Enhancement |
|WORDSNET-6531 |Docx to Html conversion issue with text position |Enhancement |
|WORDSNET-6570 |Text is misplaced after conversion from Doc to Pdf |Enhancement |
|WORDSNET-6954 |Improve work with brushes upon rendering charts. |Enhancement |
|WORDSNET-7256 |Complete and release the offline examples dashboard |Enhancement |
|WORDSNET-7324 |Unexpected vertical border line appears besides characters in Html |Enhancement |
|WORDSNET-7557 |Errors with math symbols when converting .docx to .pdf on Ubuntu |Enhancement |
|WORDSNET-7758 |Table Width Changed Issue in Html2Doc2Html |Enhancement |
|WORDSNET-7797 |Font is incorrectly imported from HTML |Enhancement |
|WORDSNET-7798 |Two tables are joined into one |Enhancement |
|WORDSNET-7880 |One of the tables incorrectly reads into model |Enhancement |
|WORDSNET-7883 |Content is imported as a single Paragraph |Enhancement |
|WORDSNET-7892 |Text contents misplaced while conveying from Doc to Fixed file format |Enhancement |
|WORDSNET-7919 |HTML to Doc conversion issue with Paragraph Left Indent |Enhancement |
|WORDSNET-7920 |Open and Save HTML file lost Left Indentation of Paragraphs |Enhancement |
|WORDSNET-7936 |XPS printing issue with text at physical printer |Enhancement |
|WORDSNET-7937 |Shape's z-order is incorrect in HTML export. |Enhancement |
|WORDSNET-7953 |Create infrastructure for compliance info gathering during OOXML document loading |Enhancement |
|WORDSNET-7973 |Failed assertion in BorderGrid.AddCell() |Enhancement |
|WORDSNET-7984 |Word 2013 does not respect zoom level set by Aspose.Words |Enhancement |
|WORDSNET-8019 |Add support of 3D color to extrusion effect. |Enhancement |
|WORDSNET-8020 |Add support of gradient brush scale. |Enhancement |
|WORDSNET-8040 |Incorrect tab width when list aligned tab occurs after another tab |Enhancement |
|WORDSNET-8055 |Shadow for shapes with broad stroke differs from MS Word 2013 result |Enhancement |
|WORDSNET-8057 |Line width is not considered during appling extrusion effect |Enhancement |
|WORDSNET-8089 |Support Z-Axis labels rendering. |Enhancement |
|WORDSNET-8090 |Improve drop lines rendering for 3D line charts. |Enhancement |
|WORDSNET-8100 |/footnote balancing/ Docx to PDF conversion issue |Enhancement |
|WORDSNET-8125 |Line chart is rendered as smooth but should be rendered as straight lines. |Enhancement |
|WORDSNET-8151 |Font of text inside WordArt Shape is incorrect in PDF |Enhancement |
|WORDSNET-8154 |Update links to Aspose site in shortcuts created by the installer |Enhancement |
|WORDSNET-3926 |OutOfMemoryException occurs during converting to PDF. |Exception |
|WORDSNET-4143 |Ref field in footer causes exception while UpdateField running |Exception |
|WORDSNET-4243 |/performance/ OutOfMemoryException is thrown upon rendering. |Exception |
|WORDSNET-4293 |ArgumentException occurs during UpdateField. |Exception |
|WORDSNET-4672 |ArgumentException is thrown upon rendering. |Exception |
|WORDSNET-6265 |Stack Empty Exception when UpdatePageLayout() is called |Exception |
|WORDSNET-6298 |InvalidOperationException occurs during converting DOC to fixed page formats |Exception |
|WORDSNET-7830 |Aspose.Words.FileCorruptedException is thrown when load Doc file into Aspose.Word DOM |Exception |
|WORDSNET-7945 |Aspose.Words.FileCorruptedException occurs when loading a DOCX |Exception |
|WORDSNET-7976 |System.InvalidOperationException occurs during rendering to fixed page formats |Exception |
|WORDSNET-7983 |'Infinite loop detected' error occurs during rendering to fixed page formats |Exception |
|WORDSNET-7993 |UnsupportedFileFormatException occurs during loading Unknown file format |Exception |
|WORDSNET-8002 |DrawingML causes Aspose.Words to throw InvalidOperationException during open/save DOCX |Exception |
|WORDSNET-8051 |Documents fall into infinite loop when rendering to fixed page formats |Exception |
|WORDSNET-8098 |NullReferenceException occurs during rendering to fixed page formats |Exception |
|WORDSNET-8137 |Aspose.Words.FileCorruptedException occurs when loading a DOC |Exception |
|WORDSNET-2018 |Support XAML (Flow document). |Feature |
|WORDSNET-2120 |/revision marks/ Support revision marks upon rendering/converting to PDF. |Feature |
|WORDSNET-2852 |Digitally sign a DOCX document |Feature |
|WORDSNET-656 |Digitally sign a DOC document |Feature |
|WORDSNET-6750 |Support surface chart rendering. |Feature |
|WORDSNET-6826 |Parapragh Tight Wrap property do not preserve on re save the document |Feature |
|WORDSNET-7368 |Docx to HTML conversion issue with Paragraph rendering |Feature |
|WORDSNET-7612 |/revision marks/ Hidden text becomes visible in PDF |Feature |
|WORDSNET-7884 |Text wrapping is changed from "Square" to "in line with text" in output Doc/Docx |Feature |
|WORDSNET-7894 |/revision marks/ Revision formatting and comments are not preserved in PDF |Feature |
|WORDSNET-8006 |Support AlternateContent upon reading charts for rendering. |Feature |
|WORDSNET-8061 |Force LoadFormat during document load |Feature |
|WORDSNET-8076 |Add another Automation to Aspose migration tip to the docs |Feature |
|WORDSNET-8093 |Support band formats upon rendering surface charts. |Feature |
|WORDSNET-8105 |Support rendering of Linear trendlines. |Feature |
|WORDSNET-8107 |Support rendering of Moving Average trendlines. |Feature |
|WORDSNET-8130 |Review the blog release for the dashboard |Feature |
|WORDSNET-8131 |Add the release to the downloads module |Feature |
|WORDSNET-8133 |Include dashboard in the MSI and add prompt the user to open at the end of the installer |Feature |
|WORDSNET-8134 |Add dashboard to dlls only zip for all products |Feature |
|WORDSNET-8135 |Remove .sh file to register Aspose.Words.dll on Mono |Feature |
|WORDSNET-8136 |Remove existing demo code from the installer |Feature |
|WORDSNET-7852 |Feasibility study // Avoid reconvertion of non-JPEG images for texture brush. |Performance |
|WORDSNET-8022 |Line AutoShape causes Aspose.Words to hang during rendering |Performance |
|WORDSNET-7963 |System.InvalidCastException throws while converting from RTF document to other file formats |Regression |

