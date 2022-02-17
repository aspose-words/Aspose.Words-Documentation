---
title: Aspose.Words for Java 14.6.0 Release Notes
articleTitle: Aspose.Words for Java 14.6.0 Release Notes
linktitle: Aspose.Words for Java 14.6.0 Release Notes
description: "Aspose.Words for Java 14.6.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 60
url: /java/aspose-words-for-java-14-6-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 14.6.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-14.6.0/)

{{% /alert %}}

## Aspose.Words for Java 14.6 Release Notes

### Major Features

There are 115 improvements and fixes in this regular monthly release. The most notable are: 

- Support of automatic change tracking on a document
  Added vertical text support to HTML\Epub\MHT 
  Footnote and endnote references now can be rendered as hyperlinks into output PDF 
  CJK (Chinese, Japanese, Korean) text is now properly rendered in multiline DrawingML textboxes 
  Default text AntiAliasing on Java is optimized for Chinese, Japanese and Korean fonts 
  Font substitution feature is added to public API 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-909 |Add Font Substitution feature to public API. |Feature |
|WORDSJAVA-908 |Document.save throws java.lang.NullPointerException |Exception |
|WORDSJAVA-905 |Html: paragraph margin inside div tag is shifted. |Bug |
|WORDSJAVA-899 |HtmlSaveOptions.UseAntiAliasing has no effect on images in HTML |Bug |
|WORDSJAVA-897 |Map NUnit [TestCase]() to TestNg @DataProvider. |Feature |
|WORDSJAVA-896 |Collection initializer warning. |Enhancement |
|WORDSJAVA-895 |Emf shape path outline thickness too thick. |Enhancement |
|WORDSJAVA-894 |Hidden formatting symbol: Line brerak is changed to Paragraph mark. |Bug |
|WORDSJAVA-892 |Rounding of double number in the field containing formula. |Bug |
|WORDSJAVA-887 |Unexpected characters appear in the output images produced on Ubuntu |Enhancement |
|WORDSJAVA-886 |Image resolution is lost for PDF when image is resized to a lower size |Regression |
|WORDSNET-10026 |DocumentBuilder.InsertHtml changes the paragraph indentation |Bug |
|WORDSNET-10090 |Text Frame position is changed after conversion from Doc to Pdf/Doc/Docx |Bug |
|WORDSNET-10112 |Cell vertical alignment is not preserved during rendering to PDF |Bug |
|WORDSNET-10147 |Hyperlinks do not work after conversion from RTF to Doc |Bug |
|WORDSNET-10163 |Normal style's font size is not applied to text inside Table when importing HTML using InsertHtml method |Bug |
|WORDSNET-10170 |Rendering of Cell's content in two line pushes some content to next page in PDF |Bug |
|WORDSNET-10171 |Text in the shape is hided by gradient fill. |Bug |
|WORDSNET-10174 |Inserting Image in table's cell does not fit according to table's cell |Bug |
|WORDSNET-10176 |DOCX to RTF conversion missing keyword \ftnbj |Bug |
|WORDSNET-10196 |A paragraph is not Hyphenated during rendering |Bug |
|WORDSNET-10198 |Document.PageCount returns wrong value |Bug |
|WORDSNET-10199 |Background color and dimensions of TextBox Shapes are not preserved in rendered documents |Bug |
|WORDSNET-10201 |/Justification text/ Debug.Assert occurs for document with new justification text. |Bug |
|WORDSNET-10215 |Rendering DrawingML (SmartArt) issue while saving Docx to Doc/Png file format |Bug |
|WORDSNET-10217 |InsertHtml inserts the # sign when document is converted to Doc file format |Bug |
|WORDSNET-10225 |Space between ListLabel and List item is decreased after conversion from Docx to Pdf |Bug |
|WORDSNET-10230 |Contents are missing after conversion from Docx to PNG/XPS/PDF (fixed file format) |Bug |
|WORDSNET-10240 |Conversion of Rtf containing embedded docx to HTML (rendered image incorrect) |Bug |
|WORDSNET-10254 |DocumentBuilder.InsertHyperlink inserts the # sign when document is converted to Doc file format |Bug |
|WORDSNET-10260 |Acrobat Distiller is unable to process Aspose.Words generated PostScript file |Bug |
|WORDSNET-10265 |A DrawingML in HeaderPrimary causes rendering of 129 blank pages in PDF |Bug |
|WORDSNET-10278 |Document.AcceptAllRevisions hide the contents in output Doc/Docx/Pdf |Bug |
|WORDSNET-10291 |Infinite loop detected during saving to PDF after applying Hyphenation |Bug |
|WORDSNET-10294 |Infinite loop detected during saving to PDF after applying Hyphenation |Bug |
|WORDSNET-10304 |CoverPage layout changes when imported to another document |Bug |
|WORDSNET-10315 |Aspose.Words.FileCorruptedException is thrown while loading ODT file |Bug |
|WORDSNET-10327 |Aspose.Words produces 100s of blank pages in PDF |Bug |
|WORDSNET-3654 |Extra space at the top of the page when converted DOC to ODT |Bug |
|WORDSNET-3844 |Field is not properly updated |Bug |
|WORDSNET-4461 |Arrows above text are displaced upon rendering |Bug |
|WORDSNET-4587 |Incorrect header layout |Bug |
|WORDSNET-4616 |Table looks incorrect during rendering. |Bug |
|WORDSNET-4949 |Image is given white background in ODT format |Bug |
|WORDSNET-5385 |formatting of document is broken after rendering. |Bug |
|WORDSNET-5455 |Paragraph shading is rendered shrinked. |Bug |
|WORDSNET-5493 |Position of floating table is incorrect during rendering. |Bug |
|WORDSNET-5602 |Extra pages are added during rendering. |Bug |
|WORDSNET-6238 |H1, H2 tags don't use existing 'Paragraph Space After' value of Heading1 and Heading2 styles correctly |Bug |
|WORDSNET-6508 |Text spacing is lost while rendering DOCX document to PDF |Bug |
|WORDSNET-6588 |Doc to PDF conversion issue with image position |Bug |
|WORDSNET-6595 |DrawingML images are causing incorrect rendering to PDF |Bug |
|WORDSNET-7434 |A background image is incorrectly appeared on 2nd page in Pdf |Bug |
|WORDSNET-8206 |OleFormat.IsLink return false for linked images |Bug |
|WORDSNET-8949 |Spans with bidirectional text are not reordered during HTML import |Bug |
|WORDSNET-9268 |MS Word doesn't wrap line with justify text alignment. |Bug |
|WORDSNET-9320 |InsertHtml method changes formatting of Heading styles |Bug |
|WORDSNET-9409 |DocumentBuilder.InsertHtml change the style of Heading 1 (font name/size) |Bug |
|WORDSNET-9411 |Content of SDT content controls is not preserved in PDF |Bug |
|WORDSNET-9416 |DocumentBuilder.InsertHtml changes the ParagraphFormat.StyleIdentifier |Bug |
|WORDSNET-9440 |InsertHtml resets formatting of the current paragraph in DocumentBuilder |Bug |
|WORDSNET-9736 |DocumentBuilder.InsertHtml loses the table formatting |Bug |
|WORDSNET-9762 |DocumentBuilder.InsertHtml changes the style of Heading 3 (font name/size) |Bug |
|WORDSNET-9787 |Doc to Pdf conversion issue with signature (Shape) rendering |Bug |
|WORDSNET-9887 |Document.Save moves the frame's contents outside of the page |Bug |
|WORDSNET-9928 |Aspose.Words produces a single page PDF |Bug |
|WORDSNET-9940 |Document.AppendDocument issue with CustomXmlPart |Bug |
|WORDSNET-9944 |UpdateFields does not include all items in TOC field |Bug |
|WORDSNET-9946 |"Repeat as a header row at the top of each page" option is not working in PDF |Bug |
|WORDSNET-9947 |MacroButton field value does not render in Tif file |Bug |
|WORDSNET-9986 |MACROBUTTON field disappear after conversion from FlatOpc to PDF |Bug |
|WORDSNET-10083 |Shape node does not preserve height/width after re-save the RTF |Enhancement |
|WORDSNET-10095 |"Page Number Start at" value does not preserve after conversion from RTF to Docx |Enhancement |
|WORDSNET-10205 |Improve font fallback for Arabic characters |Enhancement |
|WORDSNET-4257 |Content inserted using DocumentBuilder.Write or InsertHTML does not inherit the alignment of the set style |Enhancement |
|WORDSNET-4692 |Style Normal is not applied to paragraph inserted by InsertHtml. |Enhancement |
|WORDSNET-9370 |Incorrect indentation of HTML code generated for fixed-page HTML documents |Enhancement |
|WORDSNET-10114 |System.NullReferenceException is thrown while inserting HTML into Document |Exception |
|WORDSNET-10141 |ArgumentExceptionOutOfRangeException occurs during rendering to PDF |Exception |
|WORDSNET-10202 |Aspose.Words.FileCorruptedException occurs when loading DOCX file |Exception |
|WORDSNET-10226 |System.InvalidOperationException is thrown while using Hyphenation |Exception |
|WORDSNET-10229 |InvalidOperationException occurs during Open/Save a DOCX |Exception |
|WORDSNET-10245 |Aspose.Words hangs while saving DOC as ODT |Exception |
|WORDSNET-10246 |OverFlowException occurs when loading a Document |Exception |
|WORDSNET-10252 |System.NullReferenceException is thrown while converting Doc to Pdf |Exception |
|WORDSNET-10253 |System.IO.EndOfStreamException is thrown while getting size of a JPEG image |Exception |
|WORDSNET-10259 |System.Xml.XmlException occurs during loading Doc into DOM |Exception |
|WORDSNET-10263 |System.NullReferenceException is thrown while converting Docx to Pdf |Exception |
|WORDSNET-10268 |ArgumentException occurs during saving a DOCX to image formats |Exception |
|WORDSNET-10289 |InvalidOperationException occurs when saving to PDF after enabling Hyphenation |Exception |
|WORDSNET-10290 |InvalidOperationException occurs when saving to PDF after enabling Hyphenation |Exception |
|WORDSNET-10292 |InvalidOperationException occurs when saving to PDF after enabling Hyphenation |Exception |
|WORDSNET-10293 |InvalidOperationException occurs when saving to PDF after enabling Hyphenation |Exception |
|WORDSNET-10297 |ArgumentOutOfRangeException occurs when saving to PDF |Exception |
|WORDSNET-10302 |Document.UpdateFields thorws System.NullReferenceException |Exception |
|WORDSNET-10310 |Document.PageCount throws System.NullReferenceException |Exception |
|WORDSNET-9038 |Aspose.Words.FileCorruptedException occurs when loading Docx file |Exception |
|WORDSNET-10048 |Add feature to export custom properties of Word document as custom properties of PDF |Feature |
|WORDSNET-10106 |Add an option in PdfSaveOptions to create Hyperlink for Footnote |Feature |
|WORDSNET-10155 |Add vertical text support to HTML Export |Feature |
|WORDSNET-10220 |Add vertical text support to EPUB Export |Feature |
|WORDSNET-6104 |Add support of enclose characters for import/export. |Feature |
|WORDSNET-6105 |Add support of combine characters for import/export. |Feature |
|WORDSNET-754 |Make it possible to track all changes made programmatically |Feature |
|WORDSNET-7969 |Support extraction of pictures from OLE objects in ODT |Feature |
|WORDSNET-8492 |Detect "Asian" fonts e.g (SimSun) for Chinese text |Feature |
|WORDSNET-9642 |Make it possible to manually add revisions |Feature |
|WORDSNET-10008 |System.InvalidOperationException is thrown during MailMerge using IMailMergeDataSource |Regression |
|WORDSNET-10152 |One extra page is rendered because of Font and Table size differences |Regression |
|WORDSNET-10156 |The position of Arabic text is changed after conversion from RTF to Doc |Regression |
|WORDSNET-10258 |Font color is not changed for all Runs visited by DocumentVisitor |Regression |
|WORDSNET-10313 |Fix setting of two RTF default compatibility options: DoNotUseIndentAsNumberingTabStop & UseAnsiKerningPairs |Regression |
|WORDSNET-6726 |Provide an option to choose the formatting inside HTML or of DocumentBuiler |Regression |
|WORDSNET-9421 |InsertHtml method resets paragraph's style to 'Normal' |Regression |
|WORDSNET-9902 |NullReferenceException is thrown while using Document.JoinRunsWithSameFormatting in IReplacingCallback.Replacing |Regression |

