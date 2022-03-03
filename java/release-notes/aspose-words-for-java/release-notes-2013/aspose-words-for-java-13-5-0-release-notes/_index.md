---
title: Aspose.Words for Java 13.5.0 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 13.5.0 Release Notes
linktitle: Aspose.Words for Java 13.5.0 Release Notes
description: "Aspose.Words for Java 13.5.0 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /java/aspose-words-for-java-13-5-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 13.5.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-13.5.0/)

{{% /alert %}}

## Aspose.Words for Java 13.5 Release Notes

### What's New

There are 138 improvements and fixes in this regular monthly release. The most notable are:

- Update of the INDEX field is supported by the field update engine.
- The HTML parser inside Aspose.Words now conforms to the HTML 5 Specification.
- New public Paragraph.GetEffectiveTabs() method now allows to get fully resolved tabstops.
- Multiple pages setup options are added to the public API and roundtrip for DOC/RTF/DOCX/WML is supported.
- Implemented booklet rendering and printing according to multiple pages setup.
- Supported MS Word 2010 text effects (e.g. shadows, outlines, 3d-looks etc.) roundtrip for DOCX.
- StructuredDocumentTag databinding to document properties supported.
- Generation of ordinal/cardinal list labels in Spanish and Portuguese.
- Improved text wrapping, it now uses correct shape boundaries with 3d effects, rotations, shadows etc for Square/Top-Bottom wrapping types.
- Added support for the "Balance SBCS characters and DBCS characters" compatibility option.
- Added options of different font embedding for optimal PDF output size.
- DrawingML Charts rendering enhancements: overlap option, depth grid lines, trend lines, subcharts for pie charts.

For a list of changes to the public API in this release refer to the following article in the documentation. 

## All Fixes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-708 |Background gradient fill of shapes in Visio.Drawing.11 object are not preserved in PDF |Bug |
|WORDSJAVA-721 |SetLicense throws IllegalStateException when loading license from folder that contains the Aspose.Words.jar |Bug |
|WORDSJAVA-730 |MailMerge duplicate regions from a single data source. |Bug |
|WORDSJAVA-723 |DigitalSignatureUtil.sign throws java.lang.NullPointerException |Exception |
|WORDSJAVA-726 |NullPointerException when setPreserveFormFields used under Linux/OpenJDK |Exception |
|WORDSJAVA-722 |Performance issue during DOC loading and rendering to PDF |Performance |
|WORDSNET-5107 |Text appears as a link after importing MHT. |Bug |
|WORDSNET-5382 |Indent of paragraph before list is incorrect after importing HTML. |Bug |
|WORDSNET-5575 |/keep with next paragraph break/ Empty page is created upon rendering if page break is in paragraph with "Keep with Next" option set. |Bug |
|WORDSNET-5641 |Indent of the second line of list item is incorrect after rendering. |Bug |
|WORDSNET-6066 |Group image breaks while converting doc to HTML. |Bug |
|WORDSNET-6120 |Frame text collapsed after open / save Word document. |Bug |
|WORDSNET-6788 |Incorrect link in info panel of Flash document viewer |Bug |
|WORDSNET-6856 |Paragraph highlight colour appears in HTML |Bug |
|WORDSNET-6908 |ParagraphBreakFont.HighlightColor is visible when converting to HTML |Bug |
|WORDSNET-7374 |Databound values of SDT are not visible in fixed page formats |Bug |
|WORDSNET-7380 |ParagraphFormat.TabStops Property return no TabStops |Bug |
|WORDSNET-7382 |DrawingML nodes in Header/Footer are repeated multiple times during open/save |Bug |
|WORDSNET-7677 |Line Breaks Issue in Text Files |Bug |
|WORDSNET-7682 |SDT values are getting lost in fixed formats |Bug |
|WORDSNET-7849 |Floating Table is truncated at the end of Page in Fixed Page Formats |Bug |
|WORDSNET-7853 |Word for MAC is unable to merge Aspose.Words generated document |Bug |
|WORDSNET-7854 |ShapeRenderer doesn't correctly render shape with shadows. |Bug |
|WORDSNET-7876 |Shape is getting truncated from bottom when exporting to HTML |Bug |
|WORDSNET-7970 |System.NullReferenceException throws while conversion from Doc to Pdf conversion |Bug |
|WORDSNET-7995 |Doc to HTML conversion issue with table's cell width |Bug |
|WORDSNET-8021 |STYLEREF "Überschrift 1" (Heading 1) is not working for German language |Bug |
|WORDSNET-8024 |Horizontal Cell merging information is not preserved during open/save a DOCX |Bug |
|WORDSNET-8070 |HtmlSaveOptions.ExportRelativeFontSize do not work with bullet text |Bug |
|WORDSNET-8073 |Fix FileFormatDetector to detect the file as Text |Bug |
|WORDSNET-8103 |NodeImporter copies undesired styles to destination document |Bug |
|WORDSNET-8145 |Footnote numbers do not maintain super-scripted state during open/save odt |Bug |
|WORDSNET-8149 |DrawingML causes Aspose.Words to render a black strip on top of PDF |Bug |
|WORDSNET-8150 |DrawingML.ImageData.ImageType return unknown for gif images |Bug |
|WORDSNET-8152 |Afer mail merge the page numbers in TOC are not aligned |Bug |
|WORDSNET-8155 |Shape position is chagned after re-save the document |Bug |
|WORDSNET-8162 |Shapes fill is drawn outside of the shapes in ouput PDF |Bug |
|WORDSNET-8163 |The child nodes of StructuredDocumentTag become the NextSibling in Aspose.Words.Document |Bug |
|WORDSNET-8164 |After re-saving the docx the content formatting of StructuredDocumentTag is lost |Bug |
|WORDSNET-8172 |Customer's 3D Charts look many times higher than they should in output PDF |Bug |
|WORDSNET-8184 |RTF to Pdf conversion issue with fonts |Bug |
|WORDSNET-8186 |Doc to Pdf conversion issue with NumeralFormat |Bug |
|WORDSNET-8188 |RTF to html conversion issue with output html size |Bug |
|WORDSNET-8190 |Horizontal axis values of a Chart are displayed in place of Legend in PDF |Bug |
|WORDSNET-8199 |Image width is not preserved during rendering to PDF |Bug |
|WORDSNET-8200 |Image is overlapping text when rendering to PDF |Bug |
|WORDSNET-8201 |/keep with next paragraph break/ A blank page is inserted at the middle of PDF |Bug |
|WORDSNET-8202 |List Tab character incorrectly inherits formatting of ListLabel during rendering to PDF |Bug |
|WORDSNET-8205 |A nested Table is rendering on to the previous Page in PDF |Bug |
|WORDSNET-8229 |UpdateFields does not respect formatting specified via Advance field |Bug |
|WORDSNET-8230 |Incorrect List numbering after merging documents with UseDestinationStyles |Bug |
|WORDSNET-8239 |ParagraphFormat.SpaceBefore is not preserved during open/save RTF |Bug |
|WORDSNET-8245 |Hyperlink font is not retained during importing it to another Document |Bug |
|WORDSNET-8246 |A Table disappears from the output documents |Bug |
|WORDSNET-8250 |Vertical y-axis label is rotated by 45 degrees during rendering EMF chart image |Bug |
|WORDSNET-8255 |A blank page is inserted at the middle of PDF |Bug |
|WORDSNET-8258 |Shape.AlternativeText is empty when Shape node is inserted with insertHTML |Bug |
|WORDSNET-1789 |TabStop returns not correct value of Position and Alignment. |Enhancement |
|WORDSNET-3507 |Word 2010 text effects are lost during open/save. |Enhancement |
|WORDSNET-3900 |Part of content inside Content Control is cut off during rendering (sdt). |Enhancement |
|WORDSNET-3941 |Two lines of text are moved to the previous page upon rendering. |Enhancement |
|WORDSNET-3988 |TH ? TD table elements is being out of parental TR elements does not imported |Enhancement |
|WORDSNET-4678 |ContentControl name is shown instead of value after converting DOCX document to other formats (sdt). |Enhancement |
|WORDSNET-5105 |Support anchor push for floating tables (scenario 2a). |Enhancement |
|WORDSNET-5718 |DrawingML should be rendered on next page, instead it is truncated in TIFF |Enhancement |
|WORDSNET-5873 |'img' tag is ignored if it is direct child of 'table'. |Enhancement |
|WORDSNET-6179 |TextBox shape in DOCX is not rendering to epub/html |Enhancement |
|WORDSNET-6237 |Table contents are messed up with footer after saving in Pdf format. |Enhancement |
|WORDSNET-6390 |Docx to PDF conversion issue with split tables |Enhancement |
|WORDSNET-6446 |Multiple and incorrect pages are been produced, While converting from doc to PDF |Enhancement |
|WORDSNET-6486 |Table with missing closing Tag in HTML is lost when loading into DOM |Enhancement |
|WORDSNET-6801 |TestIndexAndTable.TestJira6554 |Enhancement |
|WORDSNET-7189 |Page numbers in odd pages are not visible in PDF |Enhancement |
|WORDSNET-7656 |Make multiple pages setup options public |Enhancement |
|WORDSNET-7744 |Word Art Text Object is cut when converted to HTML |Enhancement |
|WORDSNET-7745 |Protected View Message for Created Word Document |Enhancement |
|WORDSNET-7855 |WORDSNET-7561 Development of CSS to Document Styles engine |Enhancement |
|WORDSNET-7888 |Html contents are not loaded into Aspose.Words DOM |Enhancement |
|WORDSNET-7889 |HTML TD contents are not loaded into Aspose.Words DOM |Enhancement |
|WORDSNET-7905 |Make the HTML parser conforming to HTML 5 |Enhancement |
|WORDSNET-7933 |Images should be behind text in HTML |Enhancement |
|WORDSNET-8029 |Shapes with thick borders or other effects affecting size are not aligned correctly |Enhancement |
|WORDSNET-8033 |Document.AppendDocument change the style name |Enhancement |
|WORDSNET-8034 |Shape boundaries outside page are not corrected properly for shapes with shadows and other effects |Enhancement |
|WORDSNET-8035 |MS DocumentViewer does not render images from Aspose.Words generated XPS |Enhancement |
|WORDSNET-8067 |Shape.Rotation change the shape's position in output PDF |Enhancement |
|WORDSNET-8091 |Support rendering of depth grid lines. |Enhancement |
|WORDSNET-8092 |Make sure data labels position is correct for all 3D charts. |Enhancement |
|WORDSNET-8095 |Migrate existing CSS tests to new CSS Engine |Enhancement |
|WORDSNET-8096 |Contents are missing while conversion from HTML To PDF |Enhancement |
|WORDSNET-8128 |Development of CSS to string function |Enhancement |
|WORDSNET-8147 |LayoutEnumerator.GetStartPageIndex return incorrect page number |Enhancement |
|WORDSNET-8180 |Reduce pdf file size |Enhancement |
|WORDSNET-8182 |Investigate why is the Shape not anchored at the first Paragraph of Page |Enhancement |
|WORDSNET-8189 |Bookmark spanning across multiple Paragraphs is exported to HTML incorrectly |Enhancement |
|WORDSNET-8198 |Table Row height is not preserved during rendering to PDF |Enhancement |
|WORDSNET-8222 |Two Paragraphs in Frame render as a single line in PDF |Enhancement |
|WORDSNET-8228 |Contents are moved to next pages after conversion from Doc to Tiff |Enhancement |
|WORDSNET-8237 |Refactor changes made while implementing WORDSNET-7948 |Enhancement |
|WORDSNET-8244 |Mozilla Firefox renders DrawingML in PDF upside down |Enhancement |
|WORDSNET-8060 |Aspose.Words.FileCorruptedException occurs when loading a TEXT file |Exception |
|WORDSNET-8102 |Dcoument.Save method throws System.NullReferenceException on pdf conversion |Exception |
|WORDSNET-8121 |Rendering of document with image in macrobutton fails with InvalidOperationException |Exception |
|WORDSNET-8158 |NullReferenceException occurs during rendering to fixed page formats |Exception |
|WORDSNET-8170 |Aspose.Words.FileCorruptedException while loading Doc into Aspose.Words.Document |Exception |
|WORDSNET-8176 |Aspose.Words.FileCorruptedException occurs when loading RTF file |Exception |
|WORDSNET-8196 |UnsupportedFileFormatException occurs when loading a TEXT file into DOM |Exception |
|WORDSNET-8203 |Aspose.Words.FileCorruptedException occurs when loading DOC file |Exception |
|WORDSNET-8204 |'Infinite loop detected' error occurs during rendering to fixed page formats |Exception |
|WORDSNET-8211 |FileCorruptedException while loading Docx into DOM. |Exception |
|WORDSNET-8268 |Aspose.Words.FileCorruptedException exception while loading document into DOM |Exception |
|WORDSNET-8273 |Document.Save method throws System.NullReferenceException while conversion from Docx to Pdf |Exception |
|WORDSNET-2813 |List labels in Portuguese appears in English during rendering |Feature |
|WORDSNET-3583 |Support INDEX field updating. |Feature |
|WORDSNET-4101 |Incorrect WordArt rendering. |Feature |
|WORDSNET-5759 |Root / ordinalText is not supported for Spanish. |Feature |
|WORDSNET-6560 |/import floating image/ Consider preserving <img style="float: left" during HTML open/save |Feature |
|WORDSNET-6623 |text effects are lost after conversion to 2010 Docx file format. |Feature |
|WORDSNET-6944 |Render Trend Lines. |Feature |
|WORDSNET-7506 |Foreign language (Spanish) list labels are not preserved in fixed page formats |Feature |
|WORDSNET-7573 |Consider rendering to PDF according to Book Fold setting of Page Setup |Feature |
|WORDSNET-7689 |Support Book Fold multiple page setup |Feature |
|WORDSNET-7832 |Actual shape size is calculated incorrectly |Feature |
|WORDSNET-7965 |Support DocumentFormat.OpenXml.Office2010.Word.TextOutlineEffect |Feature |
|WORDSNET-8049 |Resolve the problem with the difference between relationship types in strict and transitional OOXML. |Feature |
|WORDSNET-8062 |ParagraphFormat.Style.ParagraphFormat.TabStops.Count return incorrect value |Feature |
|WORDSNET-8086 |/Balance SBCS characters and DBCS charactes/ White space width is narrowed when rendering to fixed page formats |Feature |
|WORDSNET-8094 |Support rendering OfPie charts. |Feature |
|WORDSNET-8104 |Support rendering of Exponential trendlines. |Feature |
|WORDSNET-8106 |Support rendering of Logarithmic trendlines. |Feature |
|WORDSNET-8108 |Support rendering of Polynomial trendlines. |Feature |
|WORDSNET-8109 |Support rendering of Power trendlines. |Feature |
|WORDSNET-8191 |Support Overlap option upon rendering bar charts. |Feature |
|WORDSNET-8218 |(w14:contentPart) Aspose.Words.FileCorruptedException while loading Docx |Feature |
|WORDSNET-8241 |Resolve the problem with the difference between namespaces in strict and transitional OOXML. |Feature |
|WORDSNET-6603 |Horizontal cell merging is malfunctioning |Regression |
|WORDSNET-8050 |Conditional mail merge stop mail merge operation - MoveToMergeField(String) |Regression |
|WORDSNET-8088 |ExecuteWithRegions merges values in a region from incorrect DataTable |Regression |

