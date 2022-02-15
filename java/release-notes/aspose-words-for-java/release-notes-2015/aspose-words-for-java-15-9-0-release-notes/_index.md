---
title: Aspose.Words for Java 15.9.0 Release Notes
articleTitle: Aspose.Words for Java 15.9.0 Release Notes
linktitle: Aspose.Words for Java 15.9.0 Release Notes
description: "Aspose.Words for Java 15.9.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 30
url: /java/aspose-words-for-java-15-9-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 15.9.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-15.9.0/)

{{% /alert %}} 

## Aspose.Words for Java 15.9 Release Notes

### Major Features

There are 94 improvements and fixes in this regular monthly release. The most notable are:* Creation of EditableRange objects in DocumentBuilder 

- SVM image support in ODT
- DrawingML textbox wrapping is now rendered correctly (while cold rendering i.e. using DmlRenderingMode.DrawingML)
- Bookmark hyperlinks are now rendered correctly into PDF/A standard documents
- Overlapping problem while rendering of Chinese characters into HTML Fixed format resolved
- Improvements to DrawmingML Charts rendering 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-1132 |Printer tray information gets lost when printing with AsposeWordsPrintDocument |Bug |
|WORDSJAVA-1139 |Docx conversion to html is not working properly on my Linux Enviorment |Bug |
|WORDSJAVA-1142 |Missing ODT chart while saving to Png. |Bug |
|WORDSJAVA-1149 |DataTable does not propagate any changes to ResultSet |Bug |
|WORDSJAVA-1150 |DataColumn has invalid type when DataSet was created from XSD schema |Bug |
|WORDSJAVA-1152 |DataSet.readXmlSchema: date-time expression does not evaluate the date correctly |Bug |
|WORDSJAVA-1157 |Linq reporing engine with XML datasource do not merge field |Bug |
|WORDSJAVA-1158 |DataSet.readXml throws java.lang.NullPointerException |Exception |
|WORDSJAVA-1159 |ReportingEngine.buildReport throws java.lang.IllegalStateException |Exception |
|WORDSJAVA-1165 |Reporting: java.lang.VerifyError: (class: asposewobfuscated..) |Exception |
|WORDSJAVA-1127 |/performance/ Aspose.Words for Java consumes too much memory during PDF conversion |Performance |
|WORDSJAVA-1134 |ExecuteWithRegions call significantly slower after Aspose.Words upgrade (15.7.0) |Regression |
|WORDSJAVA-1148 |Hebrew text in WordArt is corrupted during conversion to PDF |Regression |
|WORDSNET-10594 |Docx to Pdf conversion issue wiht SmartArt rendering |Bug |
|WORDSNET-11175 |Document.AcceptAllRevisions does not remove revision containing mail merge field |Bug |
|WORDSNET-11281 |Document.UpdateFields does not update the TOC field correctly |Bug |
|WORDSNET-11911 |Drawing Canvas is changed to GroupShape after re-saving the Docx |Bug |
|WORDSNET-11960 |Docx to Pdf conversion issue with shape's position |Bug |
|WORDSNET-11997 |[hr]() elements exported to HTML by Aspose.Words are rendered incorrectly in modern browsers |Bug |
|WORDSNET-12018 |Text is overlapped in Pdf file after replacing text |Bug |
|WORDSNET-12162 |Table is missing after conversion from Doc to Docx/Doc/Pdf |Bug |
|WORDSNET-12203 |Word to Pdf Conversion - Bookmark hyperlinks are not seen if zoom level is around 200% |Bug |
|WORDSNET-12233 |Arabic text rendering issue in output Pdf |Bug |
|WORDSNET-12265 |Data is missing after DOCX to PDF |Bug |
|WORDSNET-12282 |Table from header is missing in generated PDF |Bug |
|WORDSNET-12283 |Docx to fixed file format conversion issue with Chinese text rendering |Bug |
|WORDSNET-12286 |BASE tag is not honored during HTML to Word conversion |Bug |
|WORDSNET-12287 |Document.UpdateFields does not update LastSavedTime |Bug |
|WORDSNET-12301 |Number Format of Calculation type Text Form Field is not correct in PDF |Bug |
|WORDSNET-12314 |Html to Pdf conversion issue with shape rendering |Bug |
|WORDSNET-12327 |Doc to Pdf conversion issue with list labels |Bug |
|WORDSNET-12334 |Content controls are missing after re-saving Docx |Bug |
|WORDSNET-12341 |Extra Paragraph is inserted when open/save a RTF |Bug |
|WORDSNET-12350 |Font changes during open/save a RTF |Bug |
|WORDSNET-12351 |Document.compare API not working when Table content is modified |Bug |
|WORDSNET-12357 |Shapes are misaligned |Bug |
|WORDSNET-12396 |Paragraph.InsertField creates invalid field |Bug |
|WORDSNET-12397 |Paragraph.InsertField NullReferenceException |Bug |
|WORDSNET-12399 |Document.Compare issue with list numbers |Bug |
|WORDSNET-12405 |Chart conversion/drawing issue in rendered document |Bug |
|WORDSNET-12406 |Min/Max series data points not considered during rendering |Bug |
|WORDSNET-12409 |Few x-axis labels are missing in converted SVG |Bug |
|WORDSNET-12410 |Extra x-axis labels are created in converted SVG |Bug |
|WORDSNET-12411 |Y-axis labels number are different in SVG image |Bug |
|WORDSNET-12414 |StyleCollection.AddCopy ignores style font size |Bug |
|WORDSNET-12416 |Chart labels itself missing in X axis in rendered document |Bug |
|WORDSNET-12417 |Highlight color is incorrectly applied to whole document during open/save a RTF |Bug |
|WORDSNET-12419 |INCLUDETEXT field returns Error! Not a valid filename |Bug |
|WORDSNET-12448 |Docx to Pdf conversion issue with spacing between the rows of the table |Bug |
|WORDSNET-1368 |Large number of duplicated styles in generated document |Bug |
|WORDSNET-3247 |MacroButton text is not displayed during converting to text. |Bug |
|WORDSNET-4043 |InvalidOperationException: Cannot remove because there is no parent. in CommentValidator |Bug |
|WORDSNET-4789 |Content in EPUB overlaps when viewed using Calibre |Bug |
|WORDSNET-5158 |ICO and WMF images cannot be converted properly when saving to HTML in Mono |Bug |
|WORDSNET-5440 |Ordered/Unordered Nested Lists numbering problem |Bug |
|WORDSNET-5670 |The serifs for the letter "f" in the word "myself" look to be partially cut off. |Bug |
|WORDSNET-5865 |While doc to pdf, table layout disturbed. |Bug |
|WORDSNET-6466 |Table shrinks while converting DOCM to HTML |Bug |
|WORDSNET-6685 |Incorrect list paragraph indent |Bug |
|WORDSNET-11785 |AcceptAllRevisions removes the contents from document and MS Word does not |Enhancement |
|WORDSNET-12025 |ImageData.GrayScale not taking any effect |Enhancement |
|WORDSNET-12095 |ImageData.GrayScale does not work for Docx |Enhancement |
|WORDSNET-12132 |Make DmlRenderingMode.DrawingML as default rendering mode. |Enhancement |
|WORDSNET-12164 |Incorrect text font issue |Enhancement |
|WORDSNET-12299 |Incorrect font size causes incorrect row height on conversion to docx, pdf |Enhancement |
|WORDSNET-12338 |Comparing word documents - showing image differences |Enhancement |
|WORDSNET-12363 |Incorrect inline shape position when rendering to pdf |Enhancement |
|WORDSNET-1643 |Replace all bullets in the document with “\u2022” during converting to TXT. |Enhancement |
|WORDSNET-2175 |“NotImplementedException” exception occurs during saving in HTML format/Rendering under MONO. |Enhancement |
|WORDSNET-4487 |Bookmark inserted disappears during save |Enhancement |
|WORDSNET-5242 |Language of noLineBreaksAfter/noLineBreaksBefore should be present in document model |Enhancement |
|WORDSNET-5549 |Add RowFormat.Hiddden property. |Enhancement |
|WORDSNET-6229 |Doc to html conversion; The floating blue background image is mis-aligned. |Enhancement |
|WORDSNET-6393 |Custom Xml markup is read incorrectly. |Enhancement |
|WORDSNET-12180 |DOCX to PDF never returns from the Document.save method |Exception |
|WORDSNET-12228 |Aspose.Words.FileCorruptedException is thrown while loading Docx |Exception |
|WORDSNET-12253 |Saving to Pdf after calling UpdateFields method throws "Stack empty" error |Exception |
|WORDSNET-12267 |Document.Compare throws System.InvalidCastException |Exception |
|WORDSNET-12297 |System.ObjectDisposedException is thrown when WebRequestTimeout is specified |Exception |
|WORDSNET-12316 |System.NullReferenceException is thrown while converting Doc to Fixed file formats |Exception |
|WORDSNET-12383 |Aspose.Words.FileCorruptedException is thrown while loading Dot |Exception |
|WORDSNET-12447 |Document.Print throws System.ArgumentException |Exception |
|WORDSNET-11440 |/svm/ ODT to PNG conversion issue with image rendering /triaged/ |Feature |
|WORDSNET-11517 |Root - Odt to Pdf conversion issue with 'signature' image (svm) |Feature |
|WORDSNET-11843 |/svm/ An image is not preserved during open/save an ODT |Feature |
|WORDSNET-12077 |Stretched Images produced with ReportingEngine issue |Feature |
|WORDSNET-12380 |ReportingEngine.buildReport throws exception no value is passed for a field in template |Feature |
|WORDSNET-3669 |Allow spesifying "Thai Distributed" paragraph alignment |Feature |
|WORDSNET-5741 |Implement support for new AbsolutePositionTab model node. |Feature |
|WORDSNET-7197 |/svm/ Images in ODT are not preserved during rendering (triaged) |Feature |
|WORDSNET-9000 |Add an ability to define new EditableRanges in API |Feature |
|WORDSNET-9290 |/svm/ Clustered column charts are not preserved in PDF |Feature |
|WORDSNET-9873 |/svm/ Support import of ODT specific SVM (Star View Metafaile) format into the model (triaged) |Feature |
|WORDSNET-12320 |Corrupted document is generated when InsertDocument is used |Regression |

