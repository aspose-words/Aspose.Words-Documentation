---
title: 14.7.0 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 14.7.0 Release Notes
linktitle: Aspose.Words for Java 14.7.0 Release Notes
description: "Aspose.Words for Java 14.7.0 Release Notes – the latest updates and fixes."
type: docs
weight: 50
url: /java/aspose-words-for-java-14-7-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 14.7.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-14.7.0/)

{{% /alert %}}

## Aspose.Words for Java 14.7 Release Notes

### Major Features

There are 114 improvements and fixes in this regular monthly release. The most notable are: 

- Improvements to DrawingML shadow, extrusion and 3D rendering algorithms
  New public API to specify revision marks appearance for rendering 
  Vertical text is supported in HTML, MHTML and EPUB 
  Improvements to rendering and line wrapping for Arabic and Far East scripts 
  Improvements to rendering of inline shapes within rotated text 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-904 |Docx to Pdf conversion issue with mailto link |Bug |
|WORDSJAVA-907 |Conversion of HTML to Docx issue with Img tag at Linux |Bug |
|WORDSJAVA-911 |Pdf: rasterised SVG image looks highly upscaled in Acrobat. |Bug |
|WORDSJAVA-893 |Test Aspose.Words for Java with Java 8 and consider providing special JAR for Java 8. |Enhancement |
|WORDSJAVA-915 |Improve rasterisation of thin outline lines. |Enhancement |
|WORDSJAVA-921 |Point->PointF implicit casting. |Enhancement |
|WORDSJAVA-912 |License.setLicense throws java.lang.IllegalStateException |Exception |
|WORDSJAVA-918 |Exception on 3D DML Image with perspective rendering. |Exception |
|WORDSNET-10032 |Aspose.Words return incorrect values for Paragraph.ParagraphFormat properties |Bug |
|WORDSNET-10080 |Word control characters break document formatting when imported from HTML |Bug |
|WORDSNET-10110 |Docx-HTML-Docx : CommentRangeStart and CommentRangeEnd position are changed |Bug |
|WORDSNET-10136 |Unexpected characters appear in the output documents when importing MHTML |Bug |
|WORDSNET-10157 |Setting Table.AllowAutoFit value as false changes the cell's width |Bug |
|WORDSNET-10222 |Table's border is lost after re-saving the Doc file |Bug |
|WORDSNET-10237 |Table in the document body is split into 2 parts in Pdf |Bug |
|WORDSNET-10255 |Saving a DOC multiple times corrupts Table layout |Bug |
|WORDSNET-10261 |Multilingual text rendering issue in Fixed file format (Tiff/Pdf) |Bug |
|WORDSNET-10273 |A Shape is not visible in generated PDF |Bug |
|WORDSNET-10300 |Contents move to next page after conversion from Doc to PDF |Bug |
|WORDSNET-10309 |Document.UpdateFields does not the SUM(ABOVE) field |Bug |
|WORDSNET-10347 |Debug.Assert in the block of code which responsible for justification. |Bug |
|WORDSNET-10353 |Trim leading/trailing spaces from merge field values during mail merge |Bug |
|WORDSNET-10359 |System.InvalidCastException when Document.AcceptAllRevisions method is called |Bug |
|WORDSNET-10361 |Bookmark conversion issue with RTF to HTML |Bug |
|WORDSNET-10362 |RemoveEmptyParagraphs changes the Paragraph spacing value |Bug |
|WORDSNET-10375 |ODT to Docx conversion issue with list items |Bug |
|WORDSNET-10380 |Textbox frame overlap the text after conversion from Docx to Pdf |Bug |
|WORDSNET-10385 |After resaving the Doc file, # sign is added before hyperlinks |Bug |
|WORDSNET-10386 |Arrow (Shape) is changed after conversion from Docx to Pdf |Bug |
|WORDSNET-10394 |Docx to Doc conversion issue with table' row formatting |Bug |
|WORDSNET-10412 |RTF to HTML conversion issue with OLE object icons |Bug |
|WORDSNET-10425 |Error occurs during printing Aspose.Words generated PostScript file |Bug |
|WORDSNET-10434 |Paragraphs in a column of table are not preserved during open/save a DOCX |Bug |
|WORDSNET-10452 |Header contents are missing after re-saving the ODT |Bug |
|WORDSNET-10457 |Table's cell layout issue while re-saving ODT |Bug |
|WORDSNET-10462 |Contents of an [iframe]() element get visible after HTML import |Bug |
|WORDSNET-10463 |Table border becomes visible during open/save a DOCX |Bug |
|WORDSNET-10464 |Top margin issue after conversion from Docx to Pdf |Bug |
|WORDSNET-10475 |A Word is rendered in multiple SPAN tags in HtmlFixed |Bug |
|WORDSNET-10498 |HtmlFixed export doesn't consider Font.Spacing during exporting |Bug |
|WORDSNET-4651 |Font becomes bold in a cell in ODT output |Bug |
|WORDSNET-5296 |Table looks incorrect in MS Words after open/save ODT document using AW |Bug |
|WORDSNET-6878 |TabStop positions are not correctly reflected in HTML |Bug |
|WORDSNET-6997 |Support 'text-align' style attribute of [ul]()|Bug |
|WORDSNET-7173 |margin-bottom attribute in CSS style is not imported into DOM |Bug |
|WORDSNET-7233 |Text inside [blockquote]() is not having indent from left in PDF |Bug |
|WORDSNET-7316 |Attributes of Normal Style are not preserved during Docx to Html to Docx roundtrip |Bug |
|WORDSNET-7317 |Cell content is unexpectedly formatted as bold during Docx to Html to Docx |Bug |
|WORDSNET-7874 |'Visiblity' style attribute of div is not preserved when importing HTML |Bug |
|WORDSNET-8775 |Docx-Html-Docx round-trip issue with bullet's text |Bug |
|WORDSNET-8881 |Nested order lists are not preserved in output Html |Bug |
|WORDSNET-9582 |Text become bold after conversion from Docx to HTML |Bug |
|WORDSNET-9597 |Vertical alignment of table's cell is changed from Bottom to Top after conversion from Html to Docx |Bug |
|WORDSNET-9729 |Style margin-left does not work with -ive value while exporting document to Docx |Bug |
|WORDSNET-9820 |Text decoration imported from HTML is applied to floating elements |Bug |
|WORDSNET-9821 |Formatting of list labels is imported from HTML incorrectly |Bug |
|WORDSNET-9953 |Field in footer of document shows error in output Pdf |Bug |
|WORDSNET-10236 |/header truncated/ A Table in header is truncated when converting to Pdf |Enhancement |
|WORDSNET-10316 |Converting Word to Pdf issue with RTL text |Enhancement |
|WORDSNET-10329 |Provide an option to choose the formatting inside HTML or of DocumentBuiler |Enhancement |
|WORDSNET-10341 |Footnote/Endnote character appears in the Bookmark in PDF |Enhancement |
|WORDSNET-10371 |The arrow shape has incorrect fill in output document. |Enhancement |
|WORDSNET-10416 |Improve font fallback for "MICR Encoding" font |Enhancement |
|WORDSNET-10459 |Docx-HTML-Docx : BookmarkStart and BookmarkEnd position are changed |Enhancement |
|WORDSNET-10497 |Narrow fonts rendered by Chrome looks wider than computed by AW in HtmlFixed format writer |Enhancement |
|WORDSNET-1633 |First list label is formatted incorrectly after import. |Enhancement |
|WORDSNET-2057 |Width of table is incorrect when use InsertHtml method. |Enhancement |
|WORDSNET-2320 |RowFormat. LeftPadding/ RightPadding causes problem with table width during exporting to HTML. |Enhancement |
|WORDSNET-2646 |List label attributes resolved incorrectly |Enhancement |
|WORDSNET-2759 |Font is changed from Regular to Italic after inserting HTML to the document. |Enhancement |
|WORDSNET-3516 |Table looks improperly in FireFox after expoerting DOCT to HTML |Enhancement |
|WORDSNET-3611 |Extra column and lines in imported HTML tables |Enhancement |
|WORDSNET-3917 |Images are replaced with “red cross” after open/save MHTML document. |Enhancement |
|WORDSNET-4202 |Text in DIVs placed incorrectly. |Enhancement |
|WORDSNET-4473 |Extra Span with dir="rtl" is added during HTML export. |Enhancement |
|WORDSNET-4563 |Merged cells are not properly imported from HTML |Enhancement |
|WORDSNET-4870 |Paragraph alignment “Justify Low” is changed to “Justified” after open/save. |Enhancement |
|WORDSNET-5910 |Nested list 's formatting is disturbed |Enhancement |
|WORDSNET-6060 |Doc to html conversion problem with tables |Enhancement |
|WORDSNET-6131 |DrawingML are misplaced in PDF |Enhancement |
|WORDSNET-6162 |Need to ignore service elements with "display: none" css property on Html import |Enhancement |
|WORDSNET-6195 |Aspose.Words for .NET 2.0 and 3.5 DLLs appear to depend on .NET 1.1 |Enhancement |
|WORDSNET-6230 |Doc to HTML conversion : Extra characters are present beside the table |Enhancement |
|WORDSNET-6312 |Table cell needs to be hidden when exporting style=display:none to DOCX |Enhancement |
|WORDSNET-6597 |Doc to Html conversion issue, extra spaces in output file |Enhancement |
|WORDSNET-6694 |HTML writer incorrectly determines LocaleId |Enhancement |
|WORDSNET-7054 |Tables are cutting at the right edge of page in PDF |Enhancement |
|WORDSNET-9335 |Non-zero space after text inserted with DocumentBuilder.InsertHtml() |Enhancement |
|WORDSNET-10306 |InvalidCastException occurs during loading a DOC |Exception |
|WORDSNET-10345 |InvalidOperationException occurs when saving to PDF |Exception |
|WORDSNET-10346 |InvalidCastException occurs during rendering RTF to PDF |Exception |
|WORDSNET-10357 |System.ArithmeticException is thrown while converting ODT to PDF |Exception |
|WORDSNET-10395 |Aspose.Words.FileCorruptedException is thrown while loading HTML |Exception |
|WORDSNET-10397 |System.ArgumentException occurs when UpdateFields method is called |Exception |
|WORDSNET-10428 |System.IO.EndOfStreamException exception is thrown while converting Doc to Pdf |Exception |
|WORDSNET-10442 |System.NullReferenceException occurs during rendering to PDF |Exception |
|WORDSNET-10461 |InvalidCastException occurs during rendering a DrawinML Chart to PDF |Exception |
|WORDSNET-10494 |Document.AcceptAllRevisions throws System.InvalidCastException |Exception |
|WORDSNET-4232 |OutOfMemoryException is thrown upon rendering large HTML |Exception |
|WORDSNET-4233 |OutOfMemoryException is thrown upon loading large HTML |Exception |
|WORDSNET-4406 |FileCorruptedException is thrown upon loading HTML document. |Exception |
|WORDSNET-10073 |/negative page margins/ Line numbers are not rendering for all the lines in PDF pages |Feature |
|WORDSNET-10093 |Preserve Different First Page option during DOCX-HTML-DOCX roundtrip |Feature |
|WORDSNET-10210 |Add a Priority property to FontSourceBase class |Feature |
|WORDSNET-10218 |Add vertical text support to HTML\Epub |Feature |
|WORDSNET-10221 |Add vertical text support to HTML Import |Feature |
|WORDSNET-10384 |Text color is changed after conversion from ODT to Docx |Feature |
|WORDSNET-2612 |Support relative measurement units on import and export |Feature |
|WORDSNET-6194 |Provide a way to get the names of mustache fields in a document |Feature |
|WORDSNET-6347 |Special characters are rendering as question marks in HTML |Feature |
|WORDSNET-6368 |Save images in CMYK color space to PDF |Feature |
|WORDSNET-6616 |Table border is lost during importing MHTML |Feature |
|WORDSNET-6829 |Incorrect image text wrapping type (inline) on html import |Feature |
|WORDSNET-6891 |Consider preserving Cell height during converting HTML to Word documents |Feature |
|WORDSNET-7022 |/table grid/ Incorrect table cell width on HTML to Tiff conversion, cell content wraps to the second line |Feature |
|WORDSNET-8948 |Preserve Table.StyleName value during Word to Html to Word roundtrip |Feature |
|WORDSNET-9361 |Provide options to control as to how Track Changes Text appears in PDF |Feature |
|WORDSNET-9569 |Provide an ability to render only the Track Changes Revision Bars in Pdf |Feature |
|WORDSNET-9965 |Consider including XML documentation in the NuGet package |Feature |
|WORDSNET-10333 |Word to PDF conversion hangs |Performance |
|WORDSNET-10398 |Font size increase and text is wrapped to the next line in PDF |Regression |
|WORDSNET-9571 |InsertHtml method changes formatting of Heading1 paragraph |Regression |

