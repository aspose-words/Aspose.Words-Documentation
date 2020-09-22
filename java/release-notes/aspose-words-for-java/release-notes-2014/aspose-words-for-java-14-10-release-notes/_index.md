---
title: Aspose.Words for Java 14.10 Release Notes
type: docs
weight: 20
url: /java/aspose-words-for-java-14-10-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 14.10](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-14.10/)

{{% /alert %}} 

## **Aspose.Words for Java 14.10 Release Notes**

### **Major Features**

There are 106 improvements and fixes in this regular monthly release. The most notable are: 

- Improved DocumentBuilder to handle mixed LTR/RTL text
  Improved breaking of floating tables in layout 
  Improved custom tab stop beyond line ending 
  Implemented new features and effects in DrawingML rendering 
  Added LoadOptions.WebRequestTimeout property 

## **All Changes**

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-934 |Inaccurate wrapping of WordArt wtih coordinates. |Bug |
|WORDSJAVA-935 |Wrapped WordArt without coordinates is shifted down. |Bug |
|WORDSJAVA-941 |Transparent text border became non-transparent. |Bug |
|WORDSJAVA-943 |XOR obfuscation of documents, too long password. |Bug |
|WORDSJAVA-937 |Use BouncyCastle for all crypto tasks on .Net and Java. |Enhancement |
|WORDSJAVA-803 |Aspose.Words for Java does not work at Resin 4.0.37 |Exception |
|WORDSJAVA-906 |Add feature to sign PDF using JKS keystore type |Feature |
|WORDSJAVA-931 |Performance issue while converting Docx to mhtml |Performance |
|WORDSJAVA-920 |Small scaled revision markup differs from MS Word one. |Regression |
|WORDSNET-10037 |HTML to Doc/Docx/XPS conversion issue with image/Shape rendering |Bug |
|WORDSNET-10047 |FILENAME filed does not appear in output Pdf file |Bug |
|WORDSNET-10200 |Issue with MailMerge.ExecuteWithRegions when used with multiple same tables |Bug |
|WORDSNET-10223 |Contents are missing after conversion from HTML to Doc/Docx/XPS |Bug |
|WORDSNET-10231 |Extra line appears after conversion from Docx to PNG/XPS/PDF (fixed file format) |Bug |
|WORDSNET-10264 |The mail merge region (inside the IF statement) won't populate the merge field |Bug |
|WORDSNET-10271 |Docx to HTML conversion issue with image/text formatting |Bug |
|WORDSNET-10295 |Provide an option to mimic mergefield formatting numbers as in old versions of Aspose.Words |Bug |
|WORDSNET-10358 |Bullets do not render correclty in HtmlFixed format |Bug |
|WORDSNET-10565 |Issues with hebrew (right-to-left) text formatting |Bug |
|WORDSNET-10571 |System.InvalidCastException when Document.AcceptAllRevisions method is called |Bug |
|WORDSNET-10614 |Charts colors are changed after conversion from Docx to Pdf. |Bug |
|WORDSNET-10615 |Font of Chart Title/legend is changed after conversion from Docx to Pdf |Bug |
|WORDSNET-10642 |Renaming the fonts turns bullets into square boxes in HTML |Bug |
|WORDSNET-10681 |Background color is missing after conversion from HTML to Docx |Bug |
|WORDSNET-10719 |Hyphen{{< emoticons/cross >}} is converted to dot (.) after conversion from Doc to Pdf |Bug |
|WORDSNET-10780 |A Table in main body overlaps content of footer in PDF |Bug |
|WORDSNET-10784 |Bullet symbol's font is not preserved during Word-Html-Word roundtrip |Bug |
|WORDSNET-10810 |Font size gets larger after import from HTML format |Bug |
|WORDSNET-10817 |Firefox fails to use the 'Aldhabi' font embedded into a HtmlFixed document |Bug |
|WORDSNET-10818 |Baseline of adjacent spans is misaligned when a HtmlFixed document is rendered in IE11 |Bug |
|WORDSNET-10827 |Font.getBorder() and Font.getShading() creating rPr Nodes in pPr node |Bug |
|WORDSNET-10828 |Document.UpdateFields does not update TOC field correctly |Bug |
|WORDSNET-10861 |Text wrapping is incorrect around image in a floating table |Bug |
|WORDSNET-10890 |Aspose.Words hangs when converting Word to Pdf |Bug |
|WORDSNET-10898 |Firefox fails to use the 'MS Mincho' font embedded into a HtmlFixed document |Bug |
|WORDSNET-10903 |Contnet of cell is missing after conversion from Docx to Pdf |Bug |
|WORDSNET-10904 |Strikethrough formatting on space characters does not render in PDF |Bug |
|WORDSNET-10906 |/printer metrics/ Last digit of number in table's cell move to next line in output Pdf |Bug |
|WORDSNET-10911 |Chart series color is not visible in converted HTML |Bug |
|WORDSNET-10982 |MERGEFIELD and MERGEFORMAT texts are visible in PDF |Bug |
|WORDSNET-5710 |while converting html to doc, image properties not available |Bug |
|WORDSNET-5768 |UpdateFields calculates TOC page numbers incorrectly |Bug |
|WORDSNET-5977 |While converting doc to html, missing space between english and hebrew text. |Bug |
|WORDSNET-9672 |Textbox shape content is reversed and Paragraph breaks are not preserved |Bug |
|WORDSNET-9923 |Chinese letter is changed after conversion form RTF to Pdf |Bug |
|WORDSNET-10064 |Tables are truncated from the end of PDF pages |Enhancement |
|WORDSNET-10125 |Logos are misplaced after MHTML to PDF or any other format |Enhancement |
|WORDSNET-10274 |A Table moves down to the page which causes a few more layout issues in PDF |Enhancement |
|WORDSNET-10436 |A Page Break is not preserved during open/save a DOCX |Enhancement |
|WORDSNET-10509 |A table is rendered at the end of previous page in PDF |Enhancement |
|WORDSNET-10592 |ParagraphFormat.KeepWithNext = true does not work |Enhancement |
|WORDSNET-10635 |Document.UpdateFields doe not update TOC field correctly |Enhancement |
|WORDSNET-10706 |Background image is rendered incorrectly after conversion from ODT to Pdf |Enhancement |
|WORDSNET-10732 |Content formatted with incorrect fonts when importing a MHTML |Enhancement |
|WORDSNET-10774 |Process hangs during rendering of a document |Enhancement |
|WORDSNET-10815 |Aspose.Words takes too long when loading some MHTML files |Enhancement |
|WORDSNET-10824 |Provide support for 'clear' css property of break element. |Enhancement |
|WORDSNET-10825 |Importing of break element with 'clear' behavior adds additional vertical space. |Enhancement |
|WORDSNET-10829 |Charset is not recognized in HTML file |Enhancement |
|WORDSNET-10887 |Incorrect position of an inline table when left cell margins are different for first/last row |Enhancement |
|WORDSNET-5613 |Table does not render across pages in PDF |Enhancement |
|WORDSNET-6202 |PDF output is not correct as Doc output. |Enhancement |
|WORDSNET-7466 |/printer metrics/ Extra lines placed on page in pdf output |Enhancement |
|WORDSNET-7806 |A floating table pushed to the next page though there is enough space |Enhancement |
|WORDSNET-8221 |Asserts and incorrect row height/wrapping during conversion to fixed-page formats |Enhancement |
|WORDSNET-8460 |Docx to Pdf conversion issue with text rendering - Content are misplaced |Enhancement |
|WORDSNET-8633 |Docx to pdf conversion issue with content rendering |Enhancement |
|WORDSNET-8989 |Incorrect position of a nested shape with pushed anchor, line below is clipped |Enhancement |
|WORDSNET-9004 |Refactoring of HTML Import (Stage 2) |Enhancement |
|WORDSNET-9161 |Image position is not preserved during open/save a DOCX |Enhancement |
|WORDSNET-9497 |A Table moves to the next page in Pdf |Enhancement |
|WORDSNET-9719 |A table row renders on to the previous page in PDF |Enhancement |
|WORDSNET-9924 |Chinese letters become bold after conversion form RTF to Pdf |Enhancement |
|WORDSNET-9973 |Content is rendering on to the next pages in Pdf |Enhancement |
|WORDSNET-10637 |System.ArgumentException is thrown while converting Docx to Docm |Exception |
|WORDSNET-10758 |Aspose.Words.FileCorruptedException is thrown while loading HTML document |Exception |
|WORDSNET-10773 |System.ArgumentOutOfRangeException is thrown while converting Doc to Pdf |Exception |
|WORDSNET-10803 |System.NullReferenceException when saving to PDF |Exception |
|WORDSNET-10804 |Document.PageCount throws System.NullReferenceException |Exception |
|WORDSNET-10821 |Aspose.Words.FileCorruptedException occurs when loading a DOC file |Exception |
|WORDSNET-10822 |Aspose.Words.FileCorruptedException occurs when loading a DOC file |Exception |
|WORDSNET-10823 |Aspose.Words.FileCorruptedException occurs when loading a DOC file |Exception |
|WORDSNET-10838 |Aspose.Words.FileCorruptedException occurs when loading a DOC file |Exception |
|WORDSNET-10848 |System.NullReferenceException is thrown while converting Docx to Pdf/Doc |Exception |
|WORDSNET-10866 |Document.Save throws System.NullReferenceException |Exception |
|WORDSNET-10878 |System.InvalidOperationException when saving a DOCX |Exception |
|WORDSNET-5898 |Exception on unsupported image during Mhtml import |Exception |
|WORDSNET-9927 |Mail merge with regions do not work when multiple TableStart/TableEnd exists in one Paragraph |Exception |
|WORDSNET-10451 |Document.UpdateFields does not update the formula fields |Feature |
|WORDSNET-10519 |UpdateFields does not insert text from a like styled paragraph - STYLEREF |Feature |
|WORDSNET-10620 |Add feature to support field switches in mustache syntax |Feature |
|WORDSNET-10667 |Automatically switch Bidi context of DocumentBuilder for LTR/RTL mixed strings |Feature |
|WORDSNET-10679 |Automatically switch Bidi context of DocumentBuilder for LTR/RTL mixed strings |Feature |
|WORDSNET-10808 |[DML]() Render DrawingML textboxes. |Feature |
|WORDSNET-10841 |Repeat only part of a paragraph instead of repeating whole paragraph durign mail merge with regions |Feature |
|WORDSNET-3609 |Add full support "right to left text" in ODT export/import |Feature |
|WORDSNET-4684 |Support breaking nested floating tables across pages. |Feature |
|WORDSNET-5002 |Support anchor push for nested floating tables |Feature |
|WORDSNET-5409 |Consider importing/exporting document image background in HTML. |Feature |
|WORDSNET-5719 |Text direction in the Header/Footer sidebar doesn't flip to vertical |Feature |
|WORDSNET-5790 |Borders in HTML images after converting DOC to HTML |Feature |
|WORDSNET-10658 |Document.Save taking much time after creating table using DocumentBuilder |Performance |
|WORDSNET-10931 |Call to Document.Save does not return and high CPU usage |Performance |
|WORDSNET-10611 |Aspose.Words.FileCorruptedException occurs when loading HTML file |Regression |
|WORDSNET-10733 |A field's code and result both are rendered against STYLEREF field in PDF |Regression |
|WORDSNET-10897 |Merge field is not be merged in nested if field in footer or header |Regression |

