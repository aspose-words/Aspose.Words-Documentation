---
title: Aspose.Words for Java 11.9.0 Release Notes
type: docs
weight: 20
url: /java/aspose-words-for-java-11-9-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 11.9.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-11.9.0/)

{{% /alert %}} 

## Aspose.Words for Java 11.9 Release Notes

### What's New

There are 152 improvements and fixes in this regular monthly release. The most notable are:

- Many more features supported when rendering DrawingML charts.
- Borders for "conforming" paragraphs are exported to HTML correctly.
- It is possible to specify image size now when inserting images during mail merge.
- Significant improvements to layout of floating tables when converting to PDF and XPS.
- Improvements to handling of spaces for East Asian languages when converting to PDF and XPS.
- Improvements to RTL text layout when converting to PDF and XPS.

For a list of changes to the public API in this release refer to the following article in the documentation. 

## All Fixes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-609 |Short hour DateTime format |Bug |
|WORDSJAVA-610 |Yet another .Net DateTime custom patterns |Enhancement |
|WORDSJAVA-623 |DateTime.Parse support of locales |Enhancement |
|WORDSJAVA-624 |DateTime parser support of TimeZones |Enhancement |
|WORDSJAVA-625 |DateTime parser support of custom formats |Enhancement |
|WORDSJAVA-640 |automatic import of CultureInfo data from .Net |Enhancement |
|WORDSJAVA-641 |Parse date strings formatted with custom DateTimeFormatInfo |Enhancement |
|WORDSJAVA-628 |Public API to set ImageColorMode (Grayscale, BlackAndWhite) in ImageSaveOptions. |Feature |


|Key |Summary |Category |
| :- | :- | :- |
|WORDSNET-4160 |MergeFields which contain white spaces in the name are not replaced with value during mail merge. |Bug |
|WORDSNET-4782 |Paragraph SpaceAfter/SpaceBefore is incorrect. |Bug |
|WORDSNET-5688 |If TOC is inside table cell, its page numbers on right become invisible |Bug |
|WORDSNET-5933 |File name in hyperlink URL gets corrupted when exporting to PDF |Bug |
|WORDSNET-6021 |Font is changed during converting DOCX to RTF |Bug |
|WORDSNET-6064 |Incorrect paragraph borders height |Bug |
|WORDSNET-6269 |Standard style lost when open/save Word document. |Bug |
|WORDSNET-6304 |Missing spaces in document after resave the docx file |Bug |
|WORDSNET-6367 |Field value is surrounded by unwanted border in DOCX |Bug |
|WORDSNET-6397 |Calling StructuredDocumentTag.ChildNodes.Clear() removes the SDT itself |Bug |
|WORDSNET-6435 |Table in Header overlaps the Table in body during rendering to fixed page formats |Bug |
|WORDSNET-6540 |Paragraph Mirror Indenting Issue |Bug |
|WORDSNET-6606 |Drop Cap: DropCapPostion property not working properly |Bug |
|WORDSNET-6631 |Leading space is missing upon rendering DOCX document to PDF, while using Aspose.Words v11.5.0. |Bug |
|WORDSNET-6652 |cell.CellFormat.HorizontalMerge do not return correct value |Bug |
|WORDSNET-6756 |Changed behaviour of Form field while rendering DOCX to PDF |Bug |
|WORDSNET-6811 |Bullets are rendering as square boxes in fixed page formats |Bug |
|WORDSNET-6837 |Text font issue while converting Docx to Pdf |Bug |
|WORDSNET-6858 |SpecialChars are displaying as question marks in DOC |Bug |
|WORDSNET-6895 |Text is repeated when converting Docx to PDF |Bug |
|WORDSNET-6911 |StructuredDocumentTag Dropdown and ComboBox SelectedValue is null |Bug |
|WORDSNET-6913 |FORMCHECKBOX fields don't appear after calling doc.UpdateFields |Bug |
|WORDSNET-6918 |Floating table in Word duplicates when converted to PDF |Bug |
|WORDSNET-6951 |RTF to Doc conversion issue with [Line spacing and Spacing after]() after adding section breaks |Bug |
|WORDSNET-6969 |Right-To-Left Hebrew RTF conversion to DOC/DOCX problems |Bug |
|WORDSNET-6976 |Docx to Epub file conversion issue with image rendering |Bug |
|WORDSNET-6985 |Doc to RTF conversion issue with text rendering |Bug |
|WORDSNET-6990 |Doc to PDF conversion issue with Japanese characters |Bug |
|WORDSNET-7006 |Docx to PDF conversion issue with bullet, bullet is italic |Bug |
|WORDSNET-7009 |Docx to PDF conversion issue with StructuredDocumentTag |Bug |
|WORDSNET-7017 |Dot To PDF conversion issue with checkboxes |Bug |
|WORDSNET-7018 |RTF to PDF conversion issue with contents rendering |Bug |
|WORDSNET-7019 |A text box with vertical text is rendered horizontally. |Bug |
|WORDSNET-7020 |HTML to TXT conversion issue with text rendering |Bug |
|WORDSNET-7021 |Doc to PDF conversion issue with image rendering |Bug |
|WORDSNET-7026 |A floating table overlaps another floating table |Bug |
|WORDSNET-7028 |Tables in DOC are imported as Rows in DOM |Bug |
|WORDSNET-7029 |GetText returns text with incorrect character encoding |Bug |
|WORDSNET-7030 |Set Bookmark's text to empty string change the text formatting/style |Bug |
|WORDSNET-7031 |BFFValidator does not validate DOC produced by Aspose.Words |Bug |
|WORDSNET-7032 |InvalidOperationException occurs when calling SetLicense |Bug |
|WORDSNET-7035 |Treat '\x3000' (Ideographic Space) at the end of a line as normal Space character |Bug |
|WORDSNET-7048 |IF field fails to update when true or false argument is merged |Bug |
|WORDSNET-7051 |RTF to Doc conversion issue with Track changes |Bug |
|WORDSNET-7053 |Text in Textbox is cut off after conversion |Bug |
|WORDSNET-7057 |Page numbering scheme is not correct in PDF |Bug |
|WORDSNET-7072 |Doc to PDF conversion issue with Shape Rendering |Bug |
|WORDSNET-7081 |Glyphs become squares in Doc to PDF conversion |Bug |
|WORDSNET-7082 |Unable to set Width and Height of DrawingML in fixed page formats |Bug |
|WORDSNET-7089 |Doc to Docx conversion issue with table width |Bug |
|WORDSNET-7092 |Telephone symbol in DOCX is rendering as question mark in PDF |Bug |
|WORDSNET-7098 |AcceptAllRevisions inserts a square box character in DOCX |Bug |
|WORDSNET-7146 |RTL text is reversed when converting to TIFF |Bug |
|WORDSNET-3903 |White-spaces are replaced with tabs after open/save document. |Enhancement |
|WORDSNET-4070 |Font size is chenged upon loading DOCX document. |Enhancement |
|WORDSNET-4732 |Name and description of DrawingML object are lost after converting to WML |Enhancement |
|WORDSNET-5036 |Position of floating table is incorrect. |Enhancement |
|WORDSNET-5954 |Shapes are getting overlapped and positioned incorrectly in fixed page formats |Enhancement |
|WORDSNET-6027 |/floater par Y/ Table's position is changed after doc to pdf conversion |Enhancement |
|WORDSNET-6207 |Support insertion of SVG images |Enhancement |
|WORDSNET-6314 |Shape overlaps its child Paragraphs in PDF |Enhancement |
|WORDSNET-6373 |Docx to PDF conversion issue with table overlap (Allow overlap = true) |Enhancement |
|WORDSNET-6425 |Text of text boxes and shapes is not exported in output PDF file |Enhancement |
|WORDSNET-6442 |Support getting text wrapping bounds for DrawingML objects. |Enhancement |
|WORDSNET-6504 |Issue with AppendDocument method, the image disappears after appending document. |Enhancement |
|WORDSNET-6665 |Extra frames around text on HTML to DOCX conversion |Enhancement |
|WORDSNET-6686 |Nested floating table position incorrect, overlaps another table. |Enhancement |
|WORDSNET-6885 |Alignment of cell contents is imported incorrectly |Enhancement |
|WORDSNET-6938 |Support elements overlapping on chart area. |Enhancement |
|WORDSNET-6981 |Rework EMF and WMF clipping |Enhancement |
|WORDSNET-6995 |Improve handling of Auto flag in Axis. |Enhancement |
|WORDSNET-6998 |Support suppressOverlap paragraph attribute |Enhancement |
|WORDSNET-7024 |Paragraph MirrorIndents attribute is lost after open/save RTF |Enhancement |
|WORDSNET-7043 |Add supported features for OOXML Chart rendering |Enhancement |
|WORDSNET-7044 |Create a list of new API changes for this months release |Enhancement |
|WORDSNET-7049 |Issue with SECTIONPAGES field when Docx file is converted to PDF |Enhancement |
|WORDSNET-7058 |Floating frame is rendering at the right edge of page |Enhancement |
|WORDSNET-7060 |DrawingML formula is rendered incorrectly |Enhancement |
|WORDSNET-7065 |Floating tables are overlapping each other in fixed page formats |Enhancement |
|WORDSNET-7075 |Incorporate code from API changes article into main code base |Enhancement |
|WORDSNET-7076 |Update any articles that reference ToTxt method |Enhancement |
|WORDSNET-7093 |Bold font formatting is lost when rendering to PDF |Enhancement |
|WORDSNET-7109 |Font size renders smaller than the actual size in DOCX |Enhancement |
|WORDSNET-7144 |Floating table is broken between pages in pdf output |Enhancement |
|WORDSNET-7170 |Unexpected square boxes appear when converting to TIFF format |Enhancement |
|WORDSNET-3945 |UriFormatException is thrown upon executign mail merge. |Exception |
|WORDSNET-4618 |StackOverflowException occurs upon updating fields. |Exception |
|WORDSNET-5624 |IndexOutOfRangeException occurs upon executing mail merge. |Exception |
|WORDSNET-5927 |Exception while using updateFields() after appending document |Exception |
|WORDSNET-6108 |Exception while using mail merge with nested regions |Exception |
|WORDSNET-6232 |InvalidOperationException occurs during converting DOCX to DOC |Exception |
|WORDSNET-6700 |Office 2013 document throwing Aspose.Words.FileCorruptedException |Exception |
|WORDSNET-6949 |ArgumentOutOfRangeException occurs on specifying TxtSaveOptions.PreserveTableLayout property |Exception |
|WORDSNET-6984 |Unable to load a Word 2013 document into Aspose.Words' DOM |Exception |
|WORDSNET-6988 |Image.GetFrameCount(FrameDimension) throws GDI+ error |Exception |
|WORDSNET-7000 |UnsupportedFileFormatException occurs when loading a TEXT file into DOM |Exception |
|WORDSNET-7011 |NullReferenceException occurs during rendering to PDF |Exception |
|WORDSNET-7042 |Exception throws while converting Docx to PDF conversion |Exception |
|WORDSNET-7047 |Aspose.Words.FileCorruptedException occurs when loading ODT file |Exception |
|WORDSNET-7071 |InvalidOperationException occurs during exporting to ePub |Exception |
|WORDSNET-7091 |System.ArgumentException occurs when processing document in a few threads |Exception |
|WORDSNET-7100 |UnsupportedFileFormatException occurs when loading a TEXT file into DOM |Exception |
|WORDSNET-7107 |Exception on saving Doc file to Doc/Docx |Exception |
|WORDSNET-7108 |InvalidOperationException occurs during rendering DOC to PNG |Exception |
|WORDSNET-7176 |Exception on converting Docx to PDF/XPS |Exception |
|WORDSNET-2809 |/conforming borders/ Border around few paragraphs appears for each paragraph in HTML. |Feature |
|WORDSNET-3909 |Support rendering DrawingML basic features |Feature |
|WORDSNET-4479 |/conforming borders/ Extra border line appears upon HTML export. |Feature |
|WORDSNET-4702 |Allow specifying image size in Image:Mergefield. |Feature |
|WORDSNET-5087 |Support "Allow overlap" attribute for floaters. |Feature |
|WORDSNET-5190 |Floating table moves to the top of the page and overlaps content when rendering |Feature |
|WORDSNET-5362 |Add the ability to intercept an image being inserted into a document |Feature |
|WORDSNET-5951 |/conforming borders/ While converting docx to html, additional borders are generated. |Feature |
|WORDSNET-6054 |/conforming borders/ Hide borders between paragraphs if they have the save format |Feature |
|WORDSNET-6116 |Floating table overlaps in rendered output |Feature |
|WORDSNET-6521 |Floating table overlaps another floating table in PDF |Feature |
|WORDSNET-6767 |Implement ASK and FILLIN fields |Feature |
|WORDSNET-6774 |Add support for locked fields (fldLock attribute) |Feature |
|WORDSNET-6915 |Floating tables are overlapping each other in fixed page formats |Feature |
|WORDSNET-6935 |Support Data Point formatting. |Feature |
|WORDSNET-6936 |Support custom font formatting. |Feature |
|WORDSNET-6937 |Support manual layout of chart elements. |Feature |
|WORDSNET-6939 |Support custom axis formatting. |Feature |
|WORDSNET-6940 |Support custom legend formatting. |Feature |
|WORDSNET-6957 |Horizontal axis labels are rendered improperly. |Feature |
|WORDSNET-6958 |Make sure charts are rendered upon converting to flow formats. |Feature |
|WORDSNET-6959 |Support explosion upon rendering Pie charts. |Feature |
|WORDSNET-6961 |Support gap width upon rendering bar charts. |Feature |
|WORDSNET-6970 |Floating tables are overlapping the first Paragraph in PDF |Feature |
|WORDSNET-6996 |Support tickLblPos upon rendering axis labels. |Feature |
|WORDSNET-7039 |Docx to PDF conversion issue with image position |Feature |
|WORDSNET-7056 |Floating tables are overlapping each other in fixed page formats |Feature |
|WORDSNET-7061 |A document with DrawingML Chart is not rendered. |Feature |
|WORDSNET-7094 |Images overlap each other |Feature |
|WORDSNET-7126 |Support locked fields |Feature |
|WORDSNET-6925 |Visio.Drawing.11 objects are rendered very slow to PDF |Performance |
|WORDSNET-6982 |Interrupt metafile processing if fall-back should be performed |Performance |
|WORDSNET-6992 |Column width is imported incorrectly from HTML |Regression |
|WORDSNET-7025 |am/pm mergefield time format is no longer working |Regression |

