---
title: Aspose.Words for Java 14.8.0 Release Notes
type: docs
weight: 40
url: /java/aspose-words-for-java-14-8-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 14.8.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-14.8.0/)

{{% /alert %}} 
## **Aspose.Words for Java 14.8 Release Notes**
### **Major Features**
There are 79 improvements and fixes in this regular monthly release. The most notable are: 

- Improved how TOC field culture and formatting is handled
  Timestamping of PDF digital signature using external timestamp server implemented 
  Improvements to advanced rendering features e.g. pre-blending semi-transparent images 
  Horizontal rotation of characters having HorizontalRotatedFarEast orientation supported 
  Improved page layout for additional compatibility modes 
  Improved floater positioning in complex cases 
## **All Changes**

|**Key** |**Summary** |**Category** |
| :- | :- | :- |
|WORDSJAVA-913 |Incorrect conversion of watermark from word document to pdf |Bug |
|WORDSJAVA-916 |Svg: spare text tags for empty text. |Bug |
|WORDSJAVA-922 |Table Border properties in multithread environment. |Bug |
|WORDSJAVA-898 |Table.setAllowAutoFit(false) takes much time as compared to Table.setAllowAutoFit(true) |Performance |
|WORDSNET-10074 |/negative page margins/ Content wraps to the next page not like in Word |Bug |
|WORDSNET-10097 |Shape becomes shifted down after DOCX-HTMl-DOCX round-trip |Bug |
|WORDSNET-10135 |Contents move to next pages after conversion from Docx to fixed file format |Bug |
|WORDSNET-10189 |Doc to Pdf conversion issue with text alignment in a cell |Bug |
|WORDSNET-10242 |Leading spaces are lost after conversion from RTF to HTML |Bug |
|WORDSNET-10247 |Contents move to next page after conversion from Doc to PDF |Bug |
|WORDSNET-10286 |Document.Unprotect(String) doesn't remove protection from document |Bug |
|WORDSNET-10383 |Some characters garbled during converting RTF to DOC |Bug |
|WORDSNET-10387 |Contents position is changed after conversion from Docx to Pdf |Bug |
|WORDSNET-10392 |Table of Content Fails to follow the document headings font formats |Bug |
|WORDSNET-10421 |Degrees Fahrenheit and Degrees Celsius not being displayed correctly in output documents |Bug |
|WORDSNET-10456 |Txt to Pdf/Doc/Docx/Txt convesion issue with number text |Bug |
|WORDSNET-10465 |TOC field ("Überschrift 1;1;Überschrift 2;2;Überschrift 3;3") does not work for German language |Bug |
|WORDSNET-10467 |Shape (Arrow) is changed after conversion from Doc to Doc/Docx/Pdf |Bug |
|WORDSNET-10481 |Text is not selectable when viewing the HtmlFixed document with browsers |Bug |
|WORDSNET-10522 |Acrobat Distiller produces garbage characters and overlapping content during converting AW generated PostScript file to PDF |Bug |
|WORDSNET-10523 |Acrobat Distiller produces garbage characters during converting AW generated PostScript file to PDF |Bug |
|WORDSNET-10527 |Text is not hyphenated after unflow. |Bug |
|WORDSNET-10540 |Document.AppendDocument rename the bookmarks |Bug |
|WORDSNET-10541 |Hidden bookmark are created after joining documents |Bug |
|WORDSNET-10554 |Doc to PDF conversion - numbered list indent is not preserved |Bug |
|WORDSNET-10583 |WORDSNET-10464 is not resolved yet |Bug |
|WORDSNET-10589 |OleFormat.Save method save the corrupt vsdx |Bug |
|WORDSNET-10590 |OleFormat.SuggestedExtension return incorrect file extension |Bug |
|WORDSNET-10601 |OleFormat.Save method save the corrupted docm |Bug |
|WORDSNET-10629 |Lines do not wrap at correct words in PDF |Bug |
|WORDSNET-2897 |Shapes in ODT files after convertion with Excel2Word aren't shown properly. |Bug |
|WORDSNET-3241 |Lists with the same style should not continue numbering |Bug |
|WORDSNET-4571 |Vertically oriented text appears outside the table upon rendering. |Bug |
|WORDSNET-4979 |Header disappears after converting ODT document. |Bug |
|WORDSNET-5068 |/measurements/ Part of content is moved to the next page upon rendering. |Bug |
|WORDSNET-6193 |Headers/Footers are lost during loading the document |Bug |
|WORDSNET-8116 |Table LeftPadding and RightPadding values should inherit Table style values also. |Bug |
|WORDSNET-9216 |Docx to fixed file format conversion issue with Row height |Bug |
|WORDSNET-9448 |DocumentBuilder.insertHtml() in mailmerge process corrupts a Heading1 paragraph formatting |Bug |
|WORDSNET-9456 |Shapes are rendered at incorrect places in PDF |Bug |
|WORDSNET-9592 |Returned Table and Cell padding values are incorrect |Bug |
|WORDSNET-10018 |A picture is not preserved during saving to fixed page formats |Enhancement |
|WORDSNET-10092 |Improve DOCX-HTML-DOCX round-trip of given documents |Enhancement |
|WORDSNET-10121 |Images overlap each other in converted PDF |Enhancement |
|WORDSNET-10402 |/Wrapped anchor/ Position of DrawingML is changed after conversion from Docx to Pdf |Enhancement |
|WORDSNET-10405 |Extra space appears between list label and value after re-saving the RTF |Enhancement |
|WORDSNET-10504 |Enable "Repeat as the header row at the top of each page" option when importing HTML thead rows |Enhancement |
|WORDSNET-10595 |Contents shift down after conversion from Doc to Pdf |Enhancement |
|WORDSNET-10631 |Hyperlink text overlaps in HTML |Enhancement |
|WORDSNET-10639 |Extra spaces are presented for particular DOC file |Enhancement |
|WORDSNET-10663 |A multi-page Table started rendering from next page in PDF |Enhancement |
|WORDSNET-4667 |Multiple font families specified in HTML are not imported as expected. |Enhancement |
|WORDSNET-6469 |Bottom border formatting of table is malfunctioning |Enhancement |
|WORDSNET-7248 |/floater col X/ AutoShape is rendering towards the left edge of Page in PDF |Enhancement |
|WORDSNET-7458 |Nested shape position is not correct |Enhancement |
|WORDSNET-9050 |Incorrect wrapping scope for nested wrapped shapes in Word 2013 mode |Enhancement |
|WORDSNET-9195 |Position of Text Box is changed in output Pdf after conversion from Docx |Enhancement |
|WORDSNET-9848 |Style.Remove throws System.ArgumentException |Enhancement |
|WORDSNET-9914 |A table is shifted to the next page in PDF |Enhancement |
|WORDSNET-10249 |FileFormatUtil.DetectFileFormat throws System.StackOverflowException |Exception |
|WORDSNET-10350 |Aspose.Words.FileCorruptedException is thrown while loading Docx file |Exception |
|WORDSNET-10530 |java.lang.IllegalStateException occurs when Document.UpdateFields method is called |Exception |
|WORDSNET-10533 |Aspose.Words.FileCorruptedException occurs during loading a Word 2003 XML document |Exception |
|WORDSNET-10535 |NullReferenceException occurs during inserting string via DocumentBuilder.InsertHtml method |Exception |
|WORDSNET-10550 |InvalidCastException occurs during rendering a DrawingML Chart to PDF |Exception |
|WORDSNET-10558 |Aspose.Words.FileCorruptedException is thrown while loading document |Exception |
|WORDSNET-10584 |System.ArgumentException occurs when removing a style using Style.Remove method |Exception |
|WORDSNET-10597 |Aspose.Words.FileCorruptedException occurs when loading HTML file |Exception |
|WORDSNET-10605 |System.ArgumentException occurs during rendering a DrawingML |Exception |
|WORDSNET-10606 |System.ArgumentException occurs when rendering a DOCX to PDF |Exception |
|WORDSNET-10636 |System.InvalidOperationException is thrown while converting Docx to Pdf |Exception |
|WORDSNET-10638 |System.InvalidOperationException is thrown while converting Doc to Pdf |Exception |
|WORDSNET-10650 |Aspose.Words.FileCorruptedException is thrown while loading Doc file format |Exception |
|WORDSNET-10705 |System.ArgumentException occurs during saving to PDF |Exception |
|WORDSNET-10004 |Add property to check either a style is linked or not |Feature |
|WORDSNET-10632 |Implement horizontal rotation of characters having HorizontalRotatedFarEast orientation |Feature |
|WORDSNET-3296 |Consider providing user more control over Styles. |Feature |
|WORDSNET-9649 |Add an option to preblend images when saving to PDF |Feature |
|WORDSNET-10185 |Document.PageCount hangs the process |Performance |

