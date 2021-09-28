---
title: Aspose.Words for Java 14.12.0 Release Notes
type: docs
weight: 10
url: /java/aspose-words-for-java-14-12-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 14.12.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-14.12.0/)

{{% /alert %}} 

## Aspose.Words for Java 14.12 Release Notes

### Major Features

There are 103 improvements and fixes in this regular monthly release. The most notable are: 

- WordArt rendering does not rely on GDI+ now and supported on .NET, Mono and Java
  New mode of handling styles during Import via public ImportFormatMode.KeepDifferentStyles 
  Public API for specifying text effects for Revisions during rendering to fixed formats 
  Shape connectors supported 
  Improved tight wrapping mode for floating objects 
  Improved rendering of overlapped and nested floating objects 
  Enhanced inter-characters spacing calculation for Asian documents with kerning 
  Improved text direction detection for documents with missing RTL attributes 
  Hyperlinks on shapes and text inside textboxes are exported correctly to HTML 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-970 |Dml Shadow Effects are smaller on Java. |Bug |
|WORDSJAVA-976 |Workaround for ZipInputStream bug/peculiarity for some types of encrypted ODT documents. |Bug |
|WORDSNET-10053 |Font formatting of generated DOC is not correct when importing from RTF |Bug |
|WORDSNET-10109 |Docx-HTML-Docx : Author details for all inserts and deletes revision become unknown |Bug |
|WORDSNET-10396 |Links on Shapes don't work when exported to HTML |Bug |
|WORDSNET-10744 |Some characters garbled during converting RTF to DOC |Bug |
|WORDSNET-10832 |Footer content overlaps during rendering to PDF |Bug |
|WORDSNET-10875 |A Drawing partially renders byond the right page edge in PDF |Bug |
|WORDSNET-10879 |A picture in header goes behind a Table in PDF |Bug |
|WORDSNET-10886 |background-color style does not reflected in output document |Bug |
|WORDSNET-10940 |Content position is changed after re-saving Docx |Bug |
|WORDSNET-10943 |Document.UpdateFields does not update the formula field |Bug |
|WORDSNET-10966 |A VML grouped shape is rendered incorrectly on conversion to pdf, docx |Bug |
|WORDSNET-10968 |Table cell (0,0) is having number ZERO in PDF |Bug |
|WORDSNET-10973 |Equations not correctly rendered in generated PDF |Bug |
|WORDSNET-10974 |Body content layout is disturbed because of a DML in header |Bug |
|WORDSNET-10975 |Horizontal Category Axis are not rendering correctly in PDF |Bug |
|WORDSNET-10993 |Aspose.Words inserting additional periods after numbers in the content while importing from TXT |Bug |
|WORDSNET-11011 |Position of Math equation is changed after re-saving RTF |Bug |
|WORDSNET-11022 |Doc to Pdf conversion issue with hebrew text |Bug |
|WORDSNET-11040 |Object type has changed from Worksheet object to Packager Shell Object |Bug |
|WORDSNET-11041 |InsertOleObject change the size of OLE object |Bug |
|WORDSNET-11044 |System.IndexOutOfRangeException is thrown while converting Docx to Doc/Pdf |Bug |
|WORDSNET-11048 |A Section Break is inserted during open/save a DOC |Bug |
|WORDSNET-11051 |Aspose.Word loads numbers as List items of Txt file |Bug |
|WORDSNET-11056 |Docx to Pdf conversion issue with text rendering |Bug |
|WORDSNET-11059 |Document.UpdateFields does not update SUM(ABOVE) correctly |Bug |
|WORDSNET-11078 |Incorrect header font imported from RTF. |Bug |
|WORDSNET-11082 |Merge fields are not merged when document is saved to Pdf |Bug |
|WORDSNET-11099 |DocumentBulder.InsertImage does not insert a SVG |Bug |
|WORDSNET-11104 |Docx to Html conversion issue with image position |Bug |
|WORDSNET-11105 |Words in RTF overlaps when converting to Image |Bug |
|WORDSNET-11108 |Hyperlink in textbox does not work when exporting to HTML |Bug |
|WORDSNET-11112 |Run.Font.Bold return incorrect value |Bug |
|WORDSNET-11115 |Shadow of text in DrawingML text box is not preserved in PDF |Bug |
|WORDSNET-11130 |Doc to Pdf conversion issue with text position |Bug |
|WORDSNET-11131 |'Allow Spacing between cells' option of a Table is not preserved during open/save a DOC |Bug |
|WORDSNET-11136 |The DrawingML text is rotated after converting from Docx to Pdf |Bug |
|WORDSNET-11140 |PDF readers are unable to open a Aspose.Words generated PDF |Bug |
|WORDSNET-11154 |Word 2013 is unable to open a Aspose.Words generated DOCX |Bug |
|WORDSNET-11165 |Mail merge does not work if fields are inside DrawingML |Bug |
|WORDSNET-11169 |Page breaks are lost when converting from .odt to .docx |Bug |
|WORDSNET-11198 |Double or triple space after full stop or colon change to single space. |Bug |
|WORDSNET-11232 |Document.AcceptAllRevisions removes bullet numbers in output HTML |Bug |
|WORDSNET-11233 |Document.AcceptAllRevisions removes bullet numbers in output Pdf |Bug |
|WORDSNET-4457 |Part of content is moved to the previous page during rendering. |Bug |
|WORDSNET-7313 |RowFormat.HeadingFormat is not preserved during Docx to Html to Docx roundtrip |Bug |
|WORDSNET-7546 |Table border is lost during converting a MHTML to Pdf |Bug |
|WORDSNET-8016 |Shading effect of text inside textbox is not preserved in PDF |Bug |
|WORDSNET-8542 |Aspose.Words load the rtf font incorrectly. |Bug |
|WORDSNET-9542 |A Table is not visible in Pdf |Bug |
|WORDSNET-9810 |Arrow shape connection in flow chart is lost during open/save a DOC |Bug |
|WORDSNET-10778 |A WordArt is not preserved in PDF when rendering on Mono 2.10.8.1 |Enhancement |
|WORDSNET-10854 |Add feature to save the document to OpenDocument v1.2 |Enhancement |
|WORDSNET-11172 |Problems with template names containing the "}" character |Enhancement |
|WORDSNET-11184 |Logo is printed twice in DOCX to PDF conversion |Enhancement |
|WORDSNET-11227 |Image position is changed after conversion from ODT to PDF |Enhancement |
|WORDSNET-11235 |/field result filtering/ Footnote repeats and comment is duplicated at REF field in PDF |Enhancement |
|WORDSNET-3466 |Table layout is incorrect during HTML import. |Enhancement |
|WORDSNET-3697 |Footnote is positioned incorrectly during rendering. |Enhancement |
|WORDSNET-4662 |Picture switches does not work as expected in Dutch culture. |Enhancement |
|WORDSNET-9839 |Unicode supplemental characters are not preserved during open/save a DOC |Enhancement |
|WORDSNET-10697 |"There are too numerous styles in the document" error occurs during appending documents |Exception |
|WORDSNET-11006 |DocumentBuilder.InsertHtml throws System.ArgumentNullException |Exception |
|WORDSNET-11025 |DocumentBuilder insertHtml h1 tag causes System.FormatException |Exception |
|WORDSNET-11053 |Aspose.Words.FileCorruptedException occurs when loading a DOC file |Exception |
|WORDSNET-11095 |Document.UpdatePageLayout throws System.NullReferenceException |Exception |
|WORDSNET-11101 |Document.Save throws System.OutOfMemoryException |Exception |
|WORDSNET-11118 |Save method throws System.FormatException after when Document.AcceptAllRevisions is called |Exception |
|WORDSNET-11120 |DrawingML.GetShapeRenderer throws System.IndexOutOfRangeException |Exception |
|WORDSNET-11122 |System.NullReferenceException when saving to PDF |Exception |
|WORDSNET-11139 |Aspose.Words.FileCorruptedException is thrown while loading Doc file |Exception |
|WORDSNET-11150 |Aspose.Words.FileCorruptedException occurs when loading a DOC file |Exception |
|WORDSNET-11163 |Aspose.Words.FileCorruptedException is thrown while loading Doc file |Exception |
|WORDSNET-11164 |Document.UpdateFields throws System.InvalidCastException |Exception |
|WORDSNET-11170 |System.NullReferenceException is thrown while converting from Doc to pdf |Exception |
|WORDSNET-11171 |Document.UpdateWordCount throws System.InvalidOperationException |Exception |
|WORDSNET-11210 |System.ArgumentOutOfRangeException is thrown while converting RTF to Pdf |Exception |
|WORDSNET-11249 |System.FormatException occurs when saving document after h1 tag is inserted using InsertHtml method |Exception |
|WORDSNET-10277 |Provide an option to specify horizontal alignment of Page in HtmlFixed format |Feature |
|WORDSNET-10367 |Add feature to sign Word document using JKS keystore type |Feature |
|WORDSNET-10769 |Add feature to set markup for insert and delete revisions |Feature |
|WORDSNET-10776 |/asian kerning/ Aspose.Words renders content in two lines in PDF |Feature |
|WORDSNET-10807 |Add feature to set markup for move revisions |Feature |
|WORDSNET-10933 |Add feature to remove "margin: 10pt auto 10pt auto;" from a CSS when is exported to HtmlFixed |Feature |
|WORDSNET-11085 |Support hyphenation option "Hyphenation zone" |Feature |
|WORDSNET-11213 |Alignment of OfficeMath is lost after conversion from Docx to Pdf/Doc |Feature |
|WORDSNET-3877 |Import BDO element |Feature |
|WORDSNET-4173 |Consider adding a new import format mode which only creates a new style when conflicting styles are different |Feature |
|WORDSNET-4974 |Express: Consider adding an option to control how formatting is applied in internal HTML (CSS) |Feature |
|WORDSNET-752 |Connected shapes will disconnect |Feature |
|WORDSNET-7721 |/omath default alignment/ Horizontal space between OfficeMath nodes is not preserved in fixed formats |Feature |
|WORDSNET-798 |Support Glossary / AutoText / QuickParts in model and all formats |Feature |
|WORDSNET-9419 |/equation alignment/ OfficeMath equations are rendering at the left page edge in pdf |Feature |
|WORDSNET-9554 |/equation alignment/ Alignments of OfficeMath equations are not preserved in fixed page formats |Feature |
|WORDSNET-11063 |HTML docment takes time to load into Aspose.Words DOM |Performance |
|WORDSNET-10939 |MERGEFIELD in text box is not getting replaced with value |Regression |
|WORDSNET-10998 |Merge fields in text boxes lose values after conversion to PDF |Regression |
|WORDSNET-11100 |DocumentBuilder.InsertHtml inserts extra space in case of two consecutive calls |Regression |
|WORDSNET-11113 |Font size of text is changed after re-saving HTML |Regression |
|WORDSNET-11146 |Footnote text is changed after conversion from Docx to HTML |Regression |
|WORDSNET-11157 |System.NullReferenceException when saving to HTML |Regression |
|WORDSNET-11167 |Document.UpdateWordCount throws System.InvalidOperationException |Regression |

