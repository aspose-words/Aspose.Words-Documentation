---
title: Aspose.Words for Java 13.3.0 Release Notes
type: docs
weight: 90
url: /java/aspose-words-for-java-13-3-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 13.3.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-13.3.0/)

{{% /alert %}} 

## Aspose.Words for Java 13.3 Release Notes

### What's New

There are 110 improvements and fixes in this regular monthly release. The most notable are:

- Improvements in style handing in Tables, Format Revisions
- Improvements and resiliency code for ODT, RTF and DOCX
- DrawingML Charts 3D mode rendering implemented
- VML perspective shadows rendering implemented
- Outline rendering to PDF and XPS improved
- Multi-level bookmark rendering supported
- PDF rendering performance improved for documents with images
- Improved clipping of text boxes
- Fixed issue with missing footnotes in complex page layout

For a list of changes to the public API in this release refer to the following article in the documentation. 

## All Fixes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-437 |The wrong printer is chosen as the default printer when printing a document on Windows |Bug |
|WORDSJAVA-580 |Updating INCLUDETEXT field causes MalformedURLException on Linux |Bug |
|WORDSJAVA-655 |Can't validate signature of (probably) broken DOC. |Bug |
|WORDSJAVA-676 |Border line issue while rendering image from Docx to MHTML. |Bug |
|WORDSJAVA-682 |Doc to MHTML conversion issue with text at Linux |Bug |
|WORDSJAVA-683 |Doc to MHTML conversion issue with image rendering at Linux |Bug |
|WORDSJAVA-703 |Incorrect DateTime TimeZone shift for few Russian timezones |Bug |
|WORDSJAVA-688 |EULA 28th August 2012 update |Enhancement |
|WORDSJAVA-700 |Support Object.Attr syntax for merge fields |Enhancement |
|WORDSJAVA-701 |GBK code page on windows |Enhancement |
|WORDSJAVA-699 |java.io.IOException while loading Docx into Aspose.Words.Document |Exception |
|WORDSJAVA-698 |Consider improving the RTF load time |Performance |
|WORDSJAVA-697 |com.sun.* Spi class slips into release. |Regression |


|Key |Summary |Category |
| :- | :- | :- |
|WORDSNET-6488 |Bullet symbols are rendering incorrectly in HTML |Bug |
|WORDSNET-7196 |Shading effect of AutoShapes are getting lost when rendering to PDF |Bug |
|WORDSNET-7402 |StyleCollection.AddCopy changes Font Color |Bug |
|WORDSNET-7485 |Document.UpdateFields incorrectly update TOC |Bug |
|WORDSNET-7538 |DML properties are lost when saving Docx to Rtf |Bug |
|WORDSNET-7592 |Icons for embedded objects are not saved in pdf |Bug |
|WORDSNET-7619 |Doc to HTML conversion issue with image rendering |Bug |
|WORDSNET-7688 |ListLabel.LabelValue values are rendering incorrectly in fixed page formats |Bug |
|WORDSNET-7769 |Shapes in Footer become invisible during open/save RTF |Bug |
|WORDSNET-7796 |Image do not preserve in output doc/docx |Bug |
|WORDSNET-7801 |Unable to Open RTF Document |Bug |
|WORDSNET-7824 |Font size of Hebrew content do not preserve in output document. |Bug |
|WORDSNET-7826 |Link between multiple grouped textboxes breaks when save to Docx |Bug |
|WORDSNET-7827 |Link between multiple grouped textboxes breaks after merging multiple document |Bug |
|WORDSNET-7836 |Document.HasRevisions returns false but document contain revisions |Bug |
|WORDSNET-7837 |Document.AcceptAllRevisions do not work with Paragraph formatting changes |Bug |
|WORDSNET-7851 |Table is not preserved during open/save RTF |Bug |
|WORDSNET-7856 |MS Word 2007 incorrectly layouts List at second ListLevel in DOC |Bug |
|WORDSNET-7860 |Text misplaced after conversion from Doc to Fixed file format. |Bug |
|WORDSNET-7864 |Footnote numbering restarts with each page in output ODT |Bug |
|WORDSNET-7866 |Document to PDF conversion issue with image position |Bug |
|WORDSNET-7867 |UpdateFields doesn't update the value of a STYLEREF field in PDF file |Bug |
|WORDSNET-7870 |Sizes of Shapes are not preserved during open/save DOC |Bug |
|WORDSNET-7879 |Incorrect rendering of footnotes in Fixed Page Formats |Bug |
|WORDSNET-7881 |Document.UpdateFields duplicate the Shape node |Bug |
|WORDSNET-7886 |3D shape without rotation renders incorrectly if it has relative size. |Bug |
|WORDSNET-7897 |Aspose.Words hangs during rendering Line AutoShape to Pdf |Bug |
|WORDSNET-7898 |Aspose.Words hangs during rendering DOC to Pdf |Bug |
|WORDSNET-7899 |Line AutoShapes cause Aspose.Words to hang during rendering |Bug |
|WORDSNET-7901 |FileFormatInfo.LoadFormat return Docx for password protected docm |Bug |
|WORDSNET-7915 |Text moved to next page after conversion from Doc to Pdf |Bug |
|WORDSNET-7917 |altchunk contents are lost while open/save |Bug |
|WORDSNET-7926 |StyleIdentifier is not applied to Table unless cell/row formatting is reset to defaults |Bug |
|WORDSNET-7928 |UpdateFields inserts an error message in document against a DOCPROPERTY field |Bug |
|WORDSNET-7941 |Fill color of pie chart is rendered as white in PDF |Bug |
|WORDSNET-7946 |Label numbering of first TOC item is missed by UpdateFields |Bug |
|WORDSNET-7949 |WPF host/viewer is unable to load XAML generated by Aspose.Words |Bug |
|WORDSNET-7952 |Non standard Quotation marks are not recoginzed during MailMerge |Bug |
|WORDSNET-7958 |Document.Save method hangs while converting Doc to fixed file formats |Bug |
|WORDSNET-7989 |A Bookmark is displayed twice in PDF document outline |Bug |
|WORDSNET-7990 |A Bookmark is not preserved during open/save a DOCX |Bug |
|WORDSNET-7991 |A Bookmark is not preserved during open/save a DOCX |Bug |
|WORDSNET-7992 |Bookmarks are not preserved during open/save a DOCX |Bug |
|WORDSNET-8036 |Left page margin for even pages is not respected in fixed page formats |Bug |
|WORDSNET-3906 |Rewrite PDF signing code to avoid using X509Certificate2 |Enhancement |
|WORDSNET-5290 |Consider making a single data source merge duplicate regions |Enhancement |
|WORDSNET-6823 |Issue with paragraph borders in TextBox |Enhancement |
|WORDSNET-7110 |Shadow effect of TextBox Shape is not preserved in PDF |Enhancement |
|WORDSNET-7178 |Add a warning to the PdfSaveOptions.NumeralFormat description that modifying this option can rebuild page layout |Enhancement |
|WORDSNET-7627 |Support multi-level Bookmarks rendering |Enhancement |
|WORDSNET-7671 |Improve outlines rendering to PDF, XPS and SWF |Enhancement |
|WORDSNET-7754 |Implement support of perspective shadows. |Enhancement |
|WORDSNET-7755 |Implement support of additional shadow styles. |Enhancement |
|WORDSNET-7811 |EULA 28th August 2012 update |Enhancement |
|WORDSNET-7861 |Big square shape is colored incorrectly while rendered. |Enhancement |
|WORDSNET-7863 |Create required method for testing Fixed Html output. |Enhancement |
|WORDSNET-7865 |Investigate what save options are required for Fixed Html. |Enhancement |
|WORDSNET-7904 |Express: EULA 28th August 2012 update |Enhancement |
|WORDSNET-7907 |CustomDocumentProperties are not retrieved in the order they were added |Enhancement |
|WORDSNET-7916 |Conversion from doc to tiff - black text in colored background produced solid black output |Enhancement |
|WORDSNET-7924 |ODF OLE object ("draw:object" element) is imported incorrectly when it contains pictures |Enhancement |
|WORDSNET-7929 |Check code comments for new public API members of FixedHTML classes |Enhancement |
|WORDSNET-7947 |Investigate why does Aspose.Words add a blank Paragraph at the start of Bookmark |Enhancement |
|WORDSNET-7972 |/revisions/ StyleId is incorrect in ParaPr.FormatRevision.RevPr |Enhancement |
|WORDSNET-7587 |Exception while loading Doc file into Aspose.Words.Document |Exception |
|WORDSNET-7794 |Exception (System.IndexOutOfRangeException) Error in Doc2Html |Exception |
|WORDSNET-7857 |Aspose.Words.FileCorruptedException occurs when loading a DOCX |Exception |
|WORDSNET-7910 |System.ArgumentOutOfRangeException occurs during rendering to PDF |Exception |
|WORDSNET-7913 |System.InvalidOperationException occurs during rendering Doc to Pdf |Exception |
|WORDSNET-7923 |Fix the code of DocumentLayoutHelper example project |Exception |
|WORDSNET-7930 |System.ArgumentException is thrown when rendering a DML chart to PDF |Exception |
|WORDSNET-7931 |System.ArgumentException is thrown when rendering a DOCX to PDF |Exception |
|WORDSNET-7957 |StackOverflowError occurs during open/save RTF |Exception |
|WORDSNET-7971 |Aspose.Words.FileCorruptedException occurs when loading RTF documents |Exception |
|WORDSNET-7113 |Support rendering of 3D Charts |Feature |
|WORDSNET-7132 |Support pyramid charts. |Feature |
|WORDSNET-7440 |Expose property for Shape to detect 3D shapes |Feature |
|WORDSNET-7774 |Support 3D Column/Bar charts. |Feature |
|WORDSNET-7775 |Support cone charts. |Feature |
|WORDSNET-7776 |Support cylinder charts. |Feature |
|WORDSNET-7777 |Support 3D line charts. |Feature |
|WORDSNET-7778 |Support pie 3D charts. |Feature |
|WORDSNET-7779 |Support area 3D charts. |Feature |
|WORDSNET-7790 |Support rendering Cartesian axis plane in 3D mode. |Feature |
|WORDSNET-7834 |Support "Do full justification the way WordPerfect 6.x for Windows does" compatibility option |Feature |
|WORDSNET-7843 |Support export to FixedPage HTML. |Feature |
|WORDSNET-7862 |Development of attributes inheritance model |Feature |
|WORDSNET-7906 |Read characterSet attribute (strict OOXML). |Feature |
|WORDSNET-7927 |Publish this month's blog post and public API changes |Feature |
|WORDSNET-7955 |Support rendering of bubbles in 3D mode. |Feature |
|WORDSNET-7802 |Slow saving documents with images (to PDF) |Performance |
|WORDSNET-7804 |Investigate the PrinterSettingsContainer storage with Multi-threaded print operation |Performance |
|WORDSNET-7948 |Consider improving the execution time of the updateFields method |Performance |
|WORDSNET-7961 |A Table causes Aspose.Words to hang during rendering to PDF |Performance |
|WORDSNET-7625 |Even pages have incorrect left page margin in PDF |Regression |
|WORDSNET-7939 |Consider filling mail merge region with empty name |Regression |
|WORDSNET-7975 |Conditional mail merge stop mail merge operation |Regression |

