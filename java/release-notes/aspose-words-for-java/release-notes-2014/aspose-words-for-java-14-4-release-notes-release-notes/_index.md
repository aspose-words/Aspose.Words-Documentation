---
title: 14.4 Release Notes Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 14.4 Release Notes Release Notes
linktitle: Aspose.Words for Java 14.4 Release Notes Release Notes
description: "Aspose.Words for Java 14.4 Release Notes Release Notes – the latest updates and fixes."
type: docs
weight: 90
url: /java/aspose-words-for-java-14-4-release-notes-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 14.4 Release Notes](https://releases.aspose.com/words/java/new-releases/aspose.words-for-java-14.4-release-notes/)

{{% /alert %}}

## Aspose.Words for Java 14.4 Release Notes

### Major Features

There are 83 improvements and fixes in this regular monthly release. The most notable are: 

- Improvements to rendering of Arabic texts
  Improvements to rendering of complex document layouts 
  Improved handling of themes, list styles and building blocks when joining documents 
  Added support of text frames in ODT import/export 
  Improvements in TXT import capabilities 
  Gradient fill with transparency rendering in PDF implemented 
  3D rotated DrawingML shapes (and images) rendering implemented 
  Better support of tab stops and underlines in HTML import/export 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-870 |Horisontal gradient fill doesn't work inside Smart Art. |Bug |
|WORDSJAVA-872 |Linked image is lost while converting from html to pdf. |Bug |
|WORDSJAVA-838 |Autoportable WordArtApsBuilder. |Feature |
|WORDSJAVA-863 |Use internally (value-type) long instead of (reference-type) Size and SizeF for performance and memory optimization. |Performance |
|WORDSJAVA-869 |Filter is lost in Cmyk image. |Regression |
|WORDSNET-10014 |Logo in top left corners of pages is missing from Pdf |Bug |
|WORDSNET-6333 |Language information of the 'Field with CARDTEXT switch' is lost upon calling UpdateFields |Bug |
|WORDSNET-6355 |Shape with BehindText wrapping is shifted towards right in HTML |Bug |
|WORDSNET-6600 |Html to Doc conversion issue with table width, border and cell merge |Bug |
|WORDSNET-7974 |Contents are misplaced after conversion from Doc to ODT |Bug |
|WORDSNET-8321 |UpdateFields updates the REF field values incorrectly |Bug |
|WORDSNET-9412 |Document.Save truncate the Hyperlink |Bug |
|WORDSNET-9479 |Vertical alignment of table's cell is changed from Center to Top after conversion from Html to Docx |Bug |
|WORDSNET-9633 |Docx to Pdf conversion issue with line shape rendering |Bug |
|WORDSNET-9684 |Paragraphs in even/odd page headers are dislocated in Pdf |Bug |
|WORDSNET-9755 |Extra dots appear after saving document as PDF |Bug |
|WORDSNET-9823 |Setting Font.Color in DocumentBuilder does not change the color of the first paragraph's list label |Bug |
|WORDSNET-9826 |System.NullReferenceException is thrown while re-saving Doc file |Bug |
|WORDSNET-9830 |"*x000d*" is rendered after line break character in SDT in Pdf |Bug |
|WORDSNET-9841 |Chapter number (PageRef field Grp_OrigAuth) does not update after merging documents |Bug |
|WORDSNET-9852 |Output documents are empty when using MailMergeCleanupOptions.REMOVE_UNUSED_REGIONS |Bug |
|WORDSNET-9858 |Some text in Paragraph is incorrectly made Bold when exporting to HTML |Bug |
|WORDSNET-9863 |Document.AppendDocument change the color of charts |Bug |
|WORDSNET-9864 |Heading text gets bold after being written into a template document |Bug |
|WORDSNET-9879 |Unexpected Y position is returned by LayoutEnumerator |Bug |
|WORDSNET-9885 |STYLEREF fields in Header/Footer display error messages when saving to PDF |Bug |
|WORDSNET-9892 |Arabic character {{< emoticons/cross >}} is missing from word ??????? in PDF |Bug |
|WORDSNET-9895 |Objects filled with pattern disapear after transparent Glyphs in PDF. |Bug |
|WORDSNET-9896 |Document is rendered in multiple pages when use special font character |Bug |
|WORDSNET-9898 |An HTML part of an MHTML document is imported using the Windows-1252 encoding instead of UTF-8 |Bug |
|WORDSNET-9911 |Opening and saving word document causes a bullet list to become a number list |Bug |
|WORDSNET-9948 |Table header does not render correctly in Pdf file |Bug |
|WORDSNET-9968 |Txt file to Pdf conversion issue with text (asterisk) |Bug |
|WORDSNET-9988 |Extra lines appears after re-saving the Doc file |Bug |
|WORDSNET-9998 |UpdateFields does not include items formatted with a custom style |Bug |
|WORDSNET-9999 |Custom XML to SDT binding: leading slash required |Bug |
|WORDSNET-10015 |Image height/width are not preserved during open/save a RTF |Enhancement |
|WORDSNET-10035 |Tabstop becomes outside of a table in output HTML if it's a last character in the last table cell |Enhancement |
|WORDSNET-2017 |Support gradient fill with transparency |Enhancement |
|WORDSNET-5911 |While converting doc to html, text alignment disturbed. |Enhancement |
|WORDSNET-7104 |Transparency of objects lost when Docx is converted to PDF |Enhancement |
|WORDSNET-7708 |Import back dummy tabs |Enhancement |
|WORDSNET-8313 |RTF to PDF convertsion issue with table borders |Enhancement |
|WORDSNET-8598 |Rotation settings of a DML are discarded when rendering to PDF |Enhancement |
|WORDSNET-9580 |Wrap OfficeMath equation upon rendering if there is not enough space. |Enhancement |
|WORDSNET-9722 |Floating shape after section break overlaps following content in HTML export |Enhancement |
|WORDSNET-9824 |Hyperlink to file does not export correctly |Enhancement |
|WORDSNET-9847 |Track Formatting option is not preserved during open/save a document |Enhancement |
|WORDSNET-9905 |StylePaneFormatFilterSettings writing problem. |Enhancement |
|WORDSNET-9919 |List numbering is continuous instead of restarting |Enhancement |
|WORDSNET-9950 |Shape width/height is changed after conversion from RTF to Docx |Enhancement |
|WORDSNET-9958 |Text document with form feeds/page breaks is not rendering to PDF correctly |Enhancement |
|WORDSNET-9961 |Problems with ImageColorMode.Grayscale with ImagePixelFormat |Enhancement |
|WORDSNET-9967 |Doc to Pdf conversion issue with Code39 font |Enhancement |
|WORDSNET-10013 |InvalidOperationException occurs during open/save a DOC |Exception |
|WORDSNET-7156 |Can't save document as XamlFixed into the stream |Exception |
|WORDSNET-9543 |Document.Save method throws System.ArgumentException while conversion of Docx to Pdf |Exception |
|WORDSNET-9816 |System.ArgumentException is thrown when saving to Pdf over .NET Framework 4.5 |Exception |
|WORDSNET-9842 |System.NullReferenceException is thrown while converting Docx to HTML |Exception |
|WORDSNET-9872 |Aspose.Words.FileCorruptedException is thrown while loading HTML |Exception |
|WORDSNET-9891 |Aspose.Words.FileCorruptedException occurs when loading RTF file |Exception |
|WORDSNET-9901 |System.OverflowException is thrown while saving Docx to HTML |Exception |
|WORDSNET-9915 |Aspose.Words.FileCorruptedException occurs when loading a DOCX |Exception |
|WORDSNET-9916 |Aspose.Words.FileCorruptedException occurs when loading a DOCX |Exception |
|WORDSNET-9917 |Aspose.Words.FileCorruptedException occurs when loading DOCX file |Exception |
|WORDSNET-9934 |UpdateFields throws System.NullReferenceException |Exception |
|WORDSNET-9937 |System.ArgumentException is thrown while saving Docx to Html |Exception |
|WORDSNET-9938 |NullReferenceException occurs during exporting DOCX to HTML |Exception |
|WORDSNET-9962 |ArgumentException occurs during saving after appending document to another document |Exception |
|WORDSNET-9976 |Aspose.Words.FileCorruptedException is thrown while loading Docx |Exception |
|WORDSNET-10022 |Underline tab characters are missed in output HTML |Feature |
|WORDSNET-10025 |Support HTML round-trip of underline tab characters |Feature |
|WORDSNET-10039 |Aspose.Words does not preserve white space while loading HTML document |Feature |
|WORDSNET-6764 |To add support of text frames in ODT import/export |Feature |
|WORDSNET-7059 |DrawingML // Implement Content Controls rendering |Feature |
|WORDSNET-8615 |MHTML to Pdf conversion issue with backgound image |Feature |
|WORDSNET-9845 |Altchunk contents are not preserved during open/save Docx |Feature |
|WORDSNET-9941 |Add feature to import Building Blocks from one document to another |Feature |
|WORDSNET-9942 |Background of DrawingML is not preserved in PDF |Feature |
|WORDSNET-9688 |EpubCheck throws many errors upon validating Aspose.Words generated Epub |Regression |
|WORDSNET-9884 |Tables are not handled properly by Aspose 14.2.0 |Regression |
|WORDSNET-9913 |Importing one document to another using ImportFormatMode.UseDestinationStyles causes issue with list style |Regression |
|WORDSNET-9960 |Aspose.Words.FileCorruptedException occurs when loading a DOTX |Regression |

