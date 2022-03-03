---
title: Aspose.Words for Java 11.10.0 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 11.10.0 Release Notes
linktitle: Aspose.Words for Java 11.10.0 Release Notes
description: "Aspose.Words for Java 11.10.0 Release Notes – the latest updates and fixes."
type: docs
weight: 10
url: /java/aspose-words-for-java-11-10-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 11.10.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-11.10.0/)

{{% /alert %}}

## Aspose.Words for Java 11.10 Release Notes

### What's New

There are 171 improvements and fixes in this regular monthly release. The most notable are:

- Gradient fills are exported to PDF now.
- TOC (Table Of Contents) field update performance dramatically improved.
- Supported the Object.Attr syntax for both merge fields and tags.
- Shape handling improved. Text wrapping polygon info read/written.
- SvgSaveOptions.ImageSavingCallback public API member added.
- Range.ToDocument() public API member added.
- Added an option to specify image compression to produce smaller output PDF files.
- Optimized multipage PDF rendering.
- Multiple enhancements in DrawingML charts rendering.
- Improved floater object handling in code (performance and stability).
- Improved performance for .NET 4.0.
- Supported Asian Typography hanging punctuation.
- Multiple improvements in RTL layout.
  For a list of changes to the public API in this release refer to the following article in the documentation. 

## All Fixes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-602 |Image gets dark when save Doc to Pdf. |Bug |
|WORDSJAVA-637 |Copying styles doesn't work as expected when using StyleIdentifer |Bug |
|WORDSJAVA-643 |Small Jar Hell with Xerces-J |Bug |
|WORDSJAVA-647 |WORDSJAVA-636 Time zone shift in certificate date |Bug |
|WORDSJAVA-649 |File name in hyperlink URL gets corrupted when exporting to PDF by using Aspose.Word for Java |Bug |
|WORDSJAVA-650 |java.lang.ArrayIndexOutOfBoundsException occurs during rendering to Pdf |Bug |
|WORDSJAVA-645 |WORDSJAVA-608 Better support of Hebrew and Japanese for DateTime parsing and formatting |Enhancement |
|WORDSJAVA-635 |Exception on saving the document |Exception |
|WORDSJAVA-636 |Create Digitally Signed PDF Documents throws exception |Exception |
|WORDSJAVA-638 |Style.setName throws java.lang.ClassCastException |Exception |
|WORDSJAVA-383 |Path gradient fill is not rendered to graphics on Java |Feature |
|WORDSJAVA-533 |Support path gradient brush |Feature |
|WORDSJAVA-653 |Export gradient fills to PDF |Feature |
|WORDSJAVA-490 |When Aspose.Words for Java 10.8.0 is used, the Aspose.Words.jdk14.jar is not working with JDK 1.4.2 |Regression |


|Key |Summary |Category |
| :- | :- | :- |
|WORDSNET-5225 |Left border of RTL table is lost |Bug |
|WORDSNET-5226 |Centered floating table in RTL context is exported to HTML as left aligned |Bug |
|WORDSNET-5458 |Style applied to hyperlink is not imported. |Bug |
|WORDSNET-5570 |Text moves to the next row during rendering. |Bug |
|WORDSNET-5589 |DOTX to DOT: DrawingML picture is not converting to Shape object |Bug |
|WORDSNET-5724 |css drop while converting html to png/tiff |Bug |
|WORDSNET-5970 |While converting doc to mhtml, bullet points behaves like symbol and Times New Roman spaces. |Bug |
|WORDSNET-6188 |There should be at least a few pages of content before truncation in evaluation mode |Bug |
|WORDSNET-6274 |Section break (Continues) in ODT is rendering as a Page Break in PDF |Bug |
|WORDSNET-6893 |Docx to EPUB conversion issue, bullets displayed as question marks in output EPUB |Bug |
|WORDSNET-6991 |UpdateFields calculates QUOTE field value incorrectly |Bug |
|WORDSNET-7015 |Paragraphs in Shape are overlapping each other during printing |Bug |
|WORDSNET-7027 |Incorrect table position when rendering to fixed page formats |Bug |
|WORDSNET-7033 |Extra Style are created while converting xlsm cell to Aspose.Words.Tables.Table.Cell |Bug |
|WORDSNET-7067 |MailMergeCleanupOptions.RemoveUnusedRegions remove only top-level regions |Bug |
|WORDSNET-7068 |Different cleanup behaviour for mail merge based on merged fields and templates |Bug |
|WORDSNET-7070 |Docx to PDF conversion issue with text rendering |Bug |
|WORDSNET-7080 |X and Y axis have incorrect numbering in DrawingMl charts in PDF |Bug |
|WORDSNET-7084 |Floating table is rendering outside the Top edge of Page in PDF |Bug |
|WORDSNET-7085 |Document.UpdateFields call freezes when License is set |Bug |
|WORDSNET-7086 |ODT to HTML conversion issue with GroupShapes. |Bug |
|WORDSNET-7087 |Null reference exception occurs when adding a new run to paragraph |Bug |
|WORDSNET-7090 |NullReferenceException occurs during rendering to PDF |Bug |
|WORDSNET-7101 |Aspose.Words hangs during rendering. |Bug |
|WORDSNET-7102 |Unexpected character appears during DOC to RTF to PNG conversion |Bug |
|WORDSNET-7114 |Shape in truncated at the bottom in page header on 2nd page in PDF |Bug |
|WORDSNET-7115 |Paragraphs in Shape are overlapping each other in PDF |Bug |
|WORDSNET-7118 |Incorrect table row height, too small. |Bug |
|WORDSNET-7119 |Math Type Equations not converted properly Docx to PDF |Bug |
|WORDSNET-7120 |Incorrect page number alignment in page header |Bug |
|WORDSNET-7121 |Exception when saving Doc to EPUB with ExportFontResources option |Bug |
|WORDSNET-7122 |Word for MAC is unable to merge Aspose.Words generated document |Bug |
|WORDSNET-7130 |Content is not rendering with correct Fonts in PDF |Bug |
|WORDSNET-7133 |Regions contained in IF fields are not removed |Bug |
|WORDSNET-7134 |PdfSaveOptions.ExportCustomPropertiesAsMetadata do not export custom properties |Bug |
|WORDSNET-7139 |Doc to PDF conversion issue with form controls |Bug |
|WORDSNET-7142 |Object.Attribute notation does not work when using IMailMergeDataSource |Bug |
|WORDSNET-7157 |Can't save document as XamlFlow into the stream |Bug |
|WORDSNET-7160 |ODT Invisible field problem |Bug |
|WORDSNET-7164 |Extra characters in Farsi Language (RTL) is inserted in PDF |Bug |
|WORDSNET-7165 |Docx to HTML conversion issue with bookmarks |Bug |
|WORDSNET-7167 |Border LineStyle set as HairLine do not visible in output Docx/Docm |Bug |
|WORDSNET-7168 |Alternate background color of Rows is lost during importing HTML |Bug |
|WORDSNET-7172 |Paragraph alignment is incorrect when importing HTML |Bug |
|WORDSNET-7174 |Docx to Tiff conversion issue with shape |Bug |
|WORDSNET-7177 |Docx to HTML conversion issue with chart rendering |Bug |
|WORDSNET-7182 |Docm to PDF conversion issue with NumeralFormat.ArabicIndic |Bug |
|WORDSNET-7183 |HTML Table Caption spans only first Cell instead of the entire table |Bug |
|WORDSNET-7191 |&lt;p&gt; inside &lt;li&gt; which is nested in a &lt;OL&gt; is imported incorrectly |Bug |
|WORDSNET-7199 |Aspose.Words freeze on loading docx file |Bug |
|WORDSNET-7202 |Consider exporting Table Alignment as 'align' instead of 'style:text-align' attribute to &lt;div&gt; |Bug |
|WORDSNET-7207 |Column width is imported incorrectly from HTML into Portrait Orientation of DOC |Bug |
|WORDSNET-7213 |DrawingML is squeezed to occupy smaller space in PDF |Bug |
|WORDSNET-7215 |Bar chart's data point values are not rendering to PDF |Bug |
|WORDSNET-7218 |The scale at Y-axis has incorrect values in PDF |Bug |
|WORDSNET-7220 |Min Max scale value and range of values in between are incorrect in PDF |Bug |
|WORDSNET-7221 |Document.UpdateFields call freezes |Bug |
|WORDSNET-7223 |Section protection is lost when importing it to another Document |Bug |
|WORDSNET-7224 |Aspose.Words hangs during rendering to PDF |Bug |
|WORDSNET-7230 |Cell borders are not preserved when importing Mhtml file |Bug |
|WORDSNET-7232 |Paragraph is incorrectly aligned as Justified when importing MHTML |Bug |
|WORDSNET-7239 |Not all Cells have correct Paragraph Alignment during Html import |Bug |
|WORDSNET-7240 |Aspose.Words hangs during rendering DOC to fixed page formats |Bug |
|WORDSNET-7257 |Page numbering restarts at the beginning of the Sections in PDF |Bug |
|WORDSNET-7271 |Aspose.Words adds unwanted space between words |Bug |
|WORDSNET-7276 |Font name attribute is visible in RTF that is generated by Aspose.Words |Bug |
|WORDSNET-7288 |StructuredDocumentTag.Id Property return incorrect value |Bug |
|WORDSNET-7290 |List numbering is not preserved during open/save |Bug |
|WORDSNET-7307 |Font embedding problems in XPS |Bug |
|WORDSNET-7322 |Image is misaligned and shifted towards the right page edge in Pdf |Bug |
|WORDSNET-7325 |Track Change history lost on converting RTF to Doc |Bug |
|WORDSNET-7337 |Checkbox FormField is not preserved during rendering to Pdf |Bug |
|WORDSNET-7346 |FieldChar.IsLocked Property do not work for Doc file format. |Bug |
|WORDSNET-4606 |/text wrap:5/ Position of shapes is incorrect during rendering |Enhancement |
|WORDSNET-4860 |/anchor push:20/ Support floater anchor push algorithm. |Enhancement |
|WORDSNET-6094 |List with multiple levels is not converted correctly to HTML |Enhancement |
|WORDSNET-6493 |Docx to HTML conversion issue with text position after Bullet symbols |Enhancement |
|WORDSNET-6647 |Table cell widths calculation wrong for fixed preferred width tables. |Enhancement |
|WORDSNET-6776 |WORDSNET-6968 Support fixed maximum and minimum values of axis |Enhancement |
|WORDSNET-6866 |PNG images produced by latest Aspose.Words are all blured |Enhancement |
|WORDSNET-6898 |WORDSNET-6804 Implement influence of light on color of face |Enhancement |
|WORDSNET-6899 |WORDSNET-6804 Implement drawing of edges |Enhancement |
|WORDSNET-6900 |WORDSNET-6804 Implement influence of light on color of edge |Enhancement |
|WORDSNET-6986 |Make better support of complex bookmark on HTML export |Enhancement |
|WORDSNET-7123 |Use shape's wrap points for building wrapping polygon. |Enhancement |
|WORDSNET-7124 |Cache wrapping polygon |Enhancement |
|WORDSNET-7147 |NodeCollection refactoring |Enhancement |
|WORDSNET-7152 |text:display attribute of Section is not preserved during open/save |Enhancement |
|WORDSNET-7154 |Rework floater object creation and storage to prepare for tight wrapping and vertical alignment integration |Enhancement |
|WORDSNET-7161 |WORDSNET-6804 Adjust shape boundaries during MHT rendering |Enhancement |
|WORDSNET-7162 |PdfSaveOptions.NumeralFormat does not function as expected if page layout is already built |Enhancement |
|WORDSNET-7163 |Update third party licenses list |Enhancement |
|WORDSNET-7188 |Page Borders are getting distorted in PDF |Enhancement |
|WORDSNET-7206 |Investigate whether there is the better place to assign FallBack parent. |Enhancement |
|WORDSNET-7210 |Update ExtractImageToFiles example to include DrawingML |Enhancement |
|WORDSNET-7211 |Publish a list of the public API changes in the latest release |Enhancement |
|WORDSNET-7228 |Rework IsSvg function. |Enhancement |
|WORDSNET-7234 |ApsBoundingBoxCalculator clipping improvements |Enhancement |
|WORDSNET-7238 |Not all the characters inserted in MERGEFIELD have same formatting |Enhancement |
|WORDSNET-7241 |Shading.ForegroundPatternColor return incorrect value for ODT file |Enhancement |
|WORDSNET-7246 |Implement wrapping polygon calculation for a group shape |Enhancement |
|WORDSNET-7255 |Problem in MailMergeRegions when remove empty paragraph |Enhancement |
|WORDSNET-7261 |Chart's data label invisible after Docx to PDF Conversion |Enhancement |
|WORDSNET-7281 |ImageSaveOptions.TiffCompression changes the color of image |Enhancement |
|WORDSNET-7305 |Splitting Pdf into pages results in creation of all resources for every new Pdf |Enhancement |
|WORDSNET-7323 |WORDSNET-6804 Fix incorrect projection for turned shape with direction == center. |Enhancement |
|WORDSNET-7350 |Contents are missing on converting Doc to Fixed file format. |Enhancement |
|WORDSNET-2395 |“InvalidCastException” exception occurs when try to save document in MergeField event handler. |Exception |
|WORDSNET-3944 |OutOfMemoryException is thrown when try saving large docuemnt as RTF or DOC. |Exception |
|WORDSNET-6144 |System.NullReferenceException occurs while moving the cursor to a table cell. |Exception |
|WORDSNET-6187 |UpdateFields results in exception when a field uses a very specific value |Exception |
|WORDSNET-6234 |InvalidOperationException occurs when specifying MailMergeCleanupOptions.RemoveEmptyParagraphs |Exception |
|WORDSNET-6322 |Exception occur while converting Doc to PDf |Exception |
|WORDSNET-6496 |Unknown shading texture index / InvalidOperationException occurs during rendering DOC to PDF |Exception |
|WORDSNET-6619 |Exception while converting doc to pdf when PreserveFormFields = true |Exception |
|WORDSNET-6708 |Exception thrown while appending document. |Exception |
|WORDSNET-7063 |Aspose.Words.FileCorruptedException occurs when loading DOCX file |Exception |
|WORDSNET-7129 |InvalidOperationException occurs when specifying MailMergeCleanupOptions.RemoveEmptyParagraphs |Exception |
|WORDSNET-7131 |ArgumentOutOfRangeException occurs during rendering to PDF |Exception |
|WORDSNET-7143 |Exception on working with Document/DocumentBuilder over IIS Express and IIS |Exception |
|WORDSNET-7151 |Exception on loading Docx |Exception |
|WORDSNET-7169 |shape.GetShapeRenderer() throws exception |Exception |
|WORDSNET-7175 |Exception on converting Doc to HTML |Exception |
|WORDSNET-7250 |NullReferenceException occurs upon Chart rendering. |Exception |
|WORDSNET-7265 |Exception on loading ODT file. |Exception |
|WORDSNET-7267 |Exception on loading Document |Exception |
|WORDSNET-7268 |NullReferenceException occurs during rendering to PDF |Exception |
|WORDSNET-7274 |Exception on loading TXT file |Exception |
|WORDSNET-7275 |Exception on converting Doc to Fixed file format |Exception |
|WORDSNET-7285 |Document.Save throws exception on converting Docx to Fixed file format |Exception |
|WORDSNET-7345 |Exception on Loading ODT file |Exception |
|WORDSNET-7373 |InvalidOperationException occurs when specifying MailMergeCleanupOptions.RemoveEmptyParagraphs |Exception |
|WORDSNET-7387 |Document.UpdateFields throws Exception for IF fields |Exception |
|WORDSNET-1170 |Add an option that controls how to export list labels to HTML |Feature |
|WORDSNET-3518 |Allow getting Field from FieldChar's descendants |Feature |
|WORDSNET-5471 |UnsupportedFileFormatException is thrown upon opening ODT document. |Feature |
|WORDSNET-600 |Support stuck ending punctuation |Feature |
|WORDSNET-6696 |Loading DOCX is throwing Aspose.Words.FileCorruptedException |Feature |
|WORDSNET-6771 |/stuck punctuation/ Doc to PDF conversion issue with page layout |Feature |
|WORDSNET-6896 |WORDSNET-6804 Implement drawing of filled faces (without influence of light, considering z-coordinate) |Feature |
|WORDSNET-6897 |WORDSNET-6804 Implement filling of faces with certain color |Feature |
|WORDSNET-6926 |Implement node.ToDocument() function. |Feature |
|WORDSNET-6930 |Export Bullet lists as UL and LI tags to HTML |Feature |
|WORDSNET-6941 |WORDSNET-6968 Render axis title. |Feature |
|WORDSNET-6942 |WORDSNET-6968 Render data labels |Feature |
|WORDSNET-6945 |WORDSNET-6968 Render Error Bars. |Feature |
|WORDSNET-6946 |WORDSNET-6968 Support rendering Pictures, Shapes and Textboxes on Chart Area |Feature |
|WORDSNET-7007 |Add Shape compression options |Feature |
|WORDSNET-7145 |Read wrapping points from .docx file |Feature |
|WORDSNET-7158 |SvgSaveOptions doesn't contains callback for saving resources |Feature |
|WORDSNET-7236 |File size of PDF files generated by Aspose.Words is too big. |Feature |
|WORDSNET-7249 |Read/Write wrapping points from/to .rtf file. |Feature |
|WORDSNET-7301 |Support inline style attribute of anchor tag |Feature |
|WORDSNET-7077 |Concurrent processing degrades Aspose.Words' performance |Performance |
|WORDSNET-7186 |MailMerge.Execute method throws exception |Regression |
|WORDSNET-7237 |InvalidCastException occurs during open/save a DOCX |Regression |
|WORDSNET-6876 |Investigate why UpdatePageLayout is taking too long to build layout of page |Regression |

