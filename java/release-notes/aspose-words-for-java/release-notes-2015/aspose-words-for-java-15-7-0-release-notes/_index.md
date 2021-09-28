---
title: Aspose.Words for Java 15.7.0 Release Notes
type: docs
weight: 50
url: /java/aspose-words-for-java-15-7-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 15.7.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-15.7.0/)

{{% /alert %}} 

## Aspose.Words for Java 15.7 Release Notes

### Major Features

There are 115 improvements and fixes in this regular monthly release. The most notable are: 

Added API to work with Themes

Allow inserting of TIFF images

API to change footnote/endnote separator

Improved footnote balancing

Improved text wrapping around objects in footers

Ternary raster operations for EMF/WMF rendering implemented

PDF background rendering improved

Text with gradient fill rendering implemented

Japanese OTF fonts overlapping characters problem in rendered images fixed 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-1082 |Japan otf font characters overlap in images. |Bug |
|WORDSJAVA-1098 |Missing wmf inside pict image. |Bug |
|WORDSJAVA-1099 |Missing underline in font rendered to pict image. |Bug |
|WORDSJAVA-1100 |Wrong number formatting in chart label. |Bug |
|WORDSJAVA-1102 |ChartSeriesCollection uses internal DataTime class in public API. |Bug |
|WORDSJAVA-1107 |Print quality via Aspose.Words library |Bug |
|WORDSJAVA-1103 |OutOfMemoryError is thrown while converting Docx to Html |Exception |
|WORDSJAVA-1109 |Very big picture encoded into o:gfxData attribute causes XMLStreamException during loading DOCX. |Exception |
|WORDSJAVA-1111 |Aspose.Words for Java 15.6.0 updateFields fails with NPE from WindowsNativeCall |Exception |
|WORDSJAVA-1114 |Aspose.Words for Java 15.6.0 throws WindowsNativeCall on Linux |Exception |
|WORDSJAVA-1112 |Aspose.Words for Java 15.6.0 updateFields fails with NPE from WindowsNativeCall |Regression |
|WORDSJAVA-1115 |java.lang.UnsatisfiedLinkError is thrown while converting Doc to Pdf |Regression |
|WORDSNET-10241 |Text with gradient fill not saved in PDF output |Bug |
|WORDSNET-10740 |Line breaks at incorrect word during open/save a RTF |Bug |
|WORDSNET-11093 |CheckBox is visible after re-saving Doc |Bug |
|WORDSNET-11117 |Bigger copy of existing image appears after open/save a DOC |Bug |
|WORDSNET-11258 |ParagraphFormat and ListFormat attribute values are not presevred when importing Style to another Document |Bug |
|WORDSNET-11260 |ParagraphFormat attribute values are not presevred when importing Style to another Document |Bug |
|WORDSNET-11282 |Picture inside word document turns into black square after converting to PDF/A |Bug |
|WORDSNET-11395 |Textboxes are incorrectly converted to images in MHTML |Bug |
|WORDSNET-11569 |HTML multilevel list is improperly imported when list item is empty. |Bug |
|WORDSNET-11629 |Html to Word document conversion issue with Svg |Bug |
|WORDSNET-11688 |/negative page margins/ Content missing and many pages are produced in PDF |Bug |
|WORDSNET-11701 |Editable SDT is no longer editable in generaed DOCX |Bug |
|WORDSNET-11857 |Docx to Pdf conversion issue with multi lines Chinese text |Bug |
|WORDSNET-11881 |Font size is changed after conversion from RTF to Docx |Bug |
|WORDSNET-11929 |Footnote symbol turns into square box and Footnote marker is repeated twice |Bug |
|WORDSNET-11974 |Text is missing after conversion form Docx to Jpeg |Bug |
|WORDSNET-11994 |Saving Word document with a Textbox changes the Textbox's layout |Bug |
|WORDSNET-12000 |Charts are missing after re-saving docx |Bug |
|WORDSNET-12005 |Html to Docx/pdf conversion issue with Superscript |Bug |
|WORDSNET-12021 |The symbol(†) is missing after conversion from Doc to pdf |Bug |
|WORDSNET-12024 |Some document elements and Layout is not preserved during open/save an ODT |Bug |
|WORDSNET-12038 |Unexpected information is presented in Footer |Bug |
|WORDSNET-12039 |CellFormat.Orientation return incorrect value |Bug |
|WORDSNET-12043 |Texture fill effect renders different when saving to PDF |Bug |
|WORDSNET-12044 |Logo on top left of page is not rendering correctly in PDF |Bug |
|WORDSNET-12052 |SDT data is lost during saving to PDF |Bug |
|WORDSNET-12055 |Aspose.Words.FileCorruptedException when reading HTML document. |Bug |
|WORDSNET-12060 |Watermark (shape node) is lost after re-saving Docx |Bug |
|WORDSNET-12074 |Doc to pdf/html conversion issue with list labels |Bug |
|WORDSNET-12082 |Update fields with "de-DE" culture doesn't work |Bug |
|WORDSNET-12084 |Convert RTF to PDF/RTF scrambles up document's paragraphs |Bug |
|WORDSNET-12087 |Page margins are changed after re-saving ODT |Bug |
|WORDSNET-12088 |Content position is changed after re-saving Odt |Bug |
|WORDSNET-12090 |Take in a count Dml textbox shape border width during rendering. |Bug |
|WORDSNET-12094 |Assert in LineReflower fires when the line starts with floating shape. |Bug |
|WORDSNET-12104 |Continuous Section break is converted to Section Break (Next Page) |Bug |
|WORDSNET-12109 |Document.GetPageInfo(0) goes into infinite loop |Bug |
|WORDSNET-12122 |Hand symbols inside Textboxs renderd upside down in PDF |Bug |
|WORDSNET-3898 |/tiff insert/ TIF image is too dark after inserting into a document. |Bug |
|WORDSNET-3987 |Rtl paragraph containing more than one inline element is imported incorrectly |Bug |
|WORDSNET-4158 |The field code of FormField is not changed after changing FormField type. |Bug |
|WORDSNET-4450 |Export table styles to HTML |Bug |
|WORDSNET-4465 |"Error! Unknown op code for conditional." is shown after executing mail merge. |Bug |
|WORDSNET-4498 |Support revisions upon importing HTML. |Bug |
|WORDSNET-4823 |Content from first two pages overlaps when exporting to HTML |Bug |
|WORDSNET-4929 |Items from field code go to TOC |Bug |
|WORDSNET-5144 |/import floating image/ Floating image is imported from Html as inline |Bug |
|WORDSNET-5202 |Aspose Generated PDF contains critical parser error |Bug |
|WORDSNET-5425 |Non-ASCII characters are missing from EPUB TOC entries |Bug |
|WORDSNET-5494 |Object reference exception occurs when inserting a table into a hanging cell via InsertHtml |Bug |
|WORDSNET-5507 |/hidden/ Hidden text causes a redundant blank page upon rendering. |Bug |
|WORDSNET-5540 |Document in memory is changed during saving to Doc. These changes break its saving to Html |Bug |
|WORDSNET-5611 |Figure misplaced and becomes black upon conversion to epub. |Bug |
|WORDSNET-5652 |Image followed the paragraph appears inside the paragraph after importing HTML. |Bug |
|WORDSNET-5982 |RTL paragraph alignment is not preserved upon DOC to HTML conversion |Bug |
|WORDSNET-6067 |/import floating image/ While converting html to doc, Image aligned centre to left. |Bug |
|WORDSNET-6169 |Extra page appears during rendering |Bug |
|WORDSNET-6247 |Header text position is slightly incorrect while converting docx to PDF format. |Bug |
|WORDSNET-6422 |The wrong layout. Inline shape truncation and incorrect horizontal position |Bug |
|WORDSNET-6475 |Frame lost when encounters paragraph tag of Html (Aspose.Words for java) |Bug |
|WORDSNET-6487 |Doc to PDF conversion issue, colour blocks appears on the page |Bug |
|WORDSNET-6526 |Unable to view Aspose.Words generated DOCX file with MS WORD WEB APP |Bug |
|WORDSNET-6637 |Unexpected empty bookmark appears in output pdf file |Bug |
|WORDSNET-9519 |UpdateFields does not calculate SUM forumla field's value correctly |Bug |
|WORDSNET-9647 |An extra page is rendered at the end of PDF |Bug |
|WORDSNET-9802 |ALPHABETIC switch of AUTONUM field is not preserved upon building TOC |Bug |
|WORDSNET-11289 |Include version in the file name of the MSI |Enhancement |
|WORDSNET-11619 |Ternary raster operations work incorrectly |Enhancement |
|WORDSNET-11784 |Check if there are any restrictions on certificate usage when signing |Enhancement |
|WORDSNET-11799 |Transparency is lost when converting Emf to Png |Enhancement |
|WORDSNET-11978 |Rectangles appear on some characters after ODT to HTML_Fixed |Enhancement |
|WORDSNET-12020 |Support 'width' attribute of 'col' element in HTML import |Enhancement |
|WORDSNET-12111 |Checkbox states are not preserved during open/save a DOCX |Enhancement |
|WORDSNET-12149 |DocumentBuilder.InsertOleObject behaves differently for MPP files created with Aspose.Tasks |Enhancement |
|WORDSNET-12154 |Shadow looks bigger than should be when DmlRenderingMode.DrawingML is set as default. |Enhancement |
|WORDSNET-2491 |Improve horizontal rule support |Enhancement |
|WORDSNET-8706 |/footnote balance/ Footnote balancing is not perfect |Enhancement |
|WORDSNET-9205 |Portable implementation of SRC_PAINT ternary raster operation for EMF/WMF. |Enhancement |
|WORDSNET-9831 |Mention expandTableStylesToDirectFormatting in Working with Tables docs |Enhancement |
|WORDSNET-9861 |Mention in Docs that Aspose.Words uses "system property for temporary dir" upon rendering |Enhancement |
|WORDSNET-11509 |System.ArgumentOutOfRangeException is thrown while saving Docx to Pdf |Exception |
|WORDSNET-11759 |System.NullReferenceException is thrown while creating instance of StructuredDocumentTag |Exception |
|WORDSNET-11945 |Aspose.Words.FileCorruptedException occurs during loading a DOCX |Exception |
|WORDSNET-11964 |Aspose.Words.FileCorruptedException is thrown while loading Docx |Exception |
|WORDSNET-12015 |Document.Save throws System.ArgumentOutOfRangeException |Exception |
|WORDSNET-12051 |System.ArgumentOutOfRangeException is thrown while saving Docx to Html |Exception |
|WORDSNET-12065 |Aspose.Words.FileCorruptedException is thrown while loading Docx |Exception |
|WORDSNET-12066 |System.ArgumentNullException thrown when ResourceLoadingCallback is specified |Exception |
|WORDSNET-12068 |System.InvalidOperationException is thrown while saving docx to pdf |Exception |
|WORDSNET-12144 |System.InvalidOperationException is thrown while converting RTF to Doc |Exception |
|WORDSNET-12185 |DOC file cannot be loaded and throws The document appears to be corrupted exception |Exception |
|WORDSNET-10513 |Provide API to programmatically manipulate Themes |Feature |
|WORDSNET-10557 |How to get/set Shape height/width when it is in GroupShape |Feature |
|WORDSNET-11763 |Footnote Continuation Notice is not preserved when saving a document |Feature |
|WORDSNET-11981 |Support for MERGEBARCODE merge field |Feature |
|WORDSNET-2748 |Provide an option to suppress writing CSS style sheet to external file. |Feature |
|WORDSNET-2768 |Implement Run.GetAutoFontColorResolved to determine actual color of text output that will be used for the "auto color" |Feature |
|WORDSNET-425 |Allow inserting TIFF images |Feature |
|WORDSNET-4255 |Allow changing footnote/endnote separator. |Feature |
|WORDSNET-5251 |Consider providing a one line method in the API for InsertDocument |Feature |
|WORDSNET-6051 |Implement Load and Save warnings for HTML/MHTML/EPUB formats |Feature |
|WORDSNET-866 |Support TABLE.borderColor attribute import. |Feature |
|WORDSNET-12114 |LineStyle.None does not work for table's borders |Regression |

