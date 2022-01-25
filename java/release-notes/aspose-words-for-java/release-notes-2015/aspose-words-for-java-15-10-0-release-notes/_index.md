---
title: Aspose.Words for Java 15.10.0 Release Notes
description: "Aspose.Words for Java 15.10.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 20
url: /java/aspose-words-for-java-15-10-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 15.10.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-15.10.0/)

{{% /alert %}} 

## Aspose.Words for Java 15.10 Release Notes

### Major Features

There are 99 improvements and fixes in this regular monthly release. The most notable are:* Veracode security scan issues fixed 

- XSD schemas with cyclic dependencies are supported in documents
- Improvements in text wrapping around shapes and frames
- Improvements in rendering of Arabic and Chinese documents
- Improvements in rendering of shapes and EMF images
- Ruby is supported in HTML export
- Ruby import/export is supported for OpenDocument (ODT) documents
- DrawingML Charts can be rendered into images using ShapeRenderer 

## All Changes

|Key |Summary |Category |
| :- | :- | :- |
|WORDSJAVA-1006 |Contents of DrawingML is missing after conversion from Docx to Pdf |Bug |
|WORDSJAVA-1047 |Contents of OLE does not render correctly |Bug |
|WORDSJAVA-1097 |One tick diff in chart DateTime axis value. |Bug |
|WORDSJAVA-1143 |Spare &lt;c:marker&gt; tag is added while building Report with charts in multithread. |Bug |
|WORDSJAVA-1174 |Rendering mathematical formulas by OpenSymbol font. |Bug |
|WORDSJAVA-1177 |Spare &lt;c:spPr&gt; empty tag is added in multithread. |Bug |
|WORDSJAVA-1179 |Metrics of some shapes are changed while in multihreading enviroment |Bug |
|WORDSJAVA-1180 |WORDSJAVA-1152 issue was not fixed in v15.9.0 |Bug |
|WORDSJAVA-1185 |CVS isssue: Insufficient Entropy of java.util.Random. |Enhancement |
|WORDSJAVA-1186 |CVS isssue: Improper Restriction of XML External Entity Reference (XXE). |Enhancement |
|WORDSJAVA-1187 |CVS issue: Improper Resource Shutdown or Release. |Enhancement |
|WORDSJAVA-1183 |java.lang.ArrayIndexOutOfBoundsException while using Linq reporting |Exception |
|WORDSJAVA-1164 |Autoporting of Initializers. |Feature |
|WORDSJAVA-1184 |WORDSJAVA-1134 has not resolved in v15.9.0 |Regression |
|WORDSNET-10994 |Alignment of cell's text is changed after re-saving Docx |Bug |
|WORDSNET-11020 |Table layout issue after conversion from RTF to HTML |Bug |
|WORDSNET-11091 |Document.UpdateFields does not update Title field |Bug |
|WORDSNET-11383 |Table.AllowAutoFit ignores the merged cell |Bug |
|WORDSNET-11479 |StructuredDocumentTag of type DropDown does not show the correct value in output Doc/Docx/Pdf |Bug |
|WORDSNET-11518 |Bookmark.Text does not set the text for output Docx/Pdf |Bug |
|WORDSNET-11762 |ShapeRenderer does not render chart in output Png |Bug |
|WORDSNET-11764 |Contents of OLE does not render correctly |Bug |
|WORDSNET-11837 |Wrong font size of a symbol field after export to HTML |Bug |
|WORDSNET-12103 |Font properties of ::before pseudo-element are propagated to the HTML element itself |Bug |
|WORDSNET-12174 |ShapeRenderer.Save does not render the shape correctly |Bug |
|WORDSNET-12206 |SDT data is not preserved during open/save a DOCX |Bug |
|WORDSNET-12209 |Stamp is missing after DOCX to Html_Fixed |Bug |
|WORDSNET-12215 |Some shapes are misplaced after DOC to PDF |Bug |
|WORDSNET-12217 |Comma is reversed during rendering in Arabic language culture |Bug |
|WORDSNET-12238 |Windings font hand symbol coloring changes in PDF |Bug |
|WORDSNET-12241 |Inner Shadow Text Effect // Text effect of shape is lost in output Pdf |Bug |
|WORDSNET-12243 |Position of shapes is changed after saving docx to pdf |Bug |
|WORDSNET-12266 |some characters are misplaced after DOC to PDF |Bug |
|WORDSNET-12276 |One page document is converted to two pages after DOCX to HTML to DOCX |Bug |
|WORDSNET-12277 |Field is misplaced after DOCX-HTML-DOCX roundtrip |Bug |
|WORDSNET-12292 |Diagonal border and character position are not correct |Bug |
|WORDSNET-12308 |Widow and orphan control setting not respected during conversion |Bug |
|WORDSNET-12325 |Docx to Pdf conversion issue with Field's result |Bug |
|WORDSNET-12343 |Text position inside textbox is changed in output Pdf |Bug |
|WORDSNET-12344 |UpdateFields makes RTL Heading numbers in TOC LTR |Bug |
|WORDSNET-12354 |Values in chart are incorrect in rendered document |Bug |
|WORDSNET-12361 |If field does not evaluate correctly when used with SET field |Bug |
|WORDSNET-12379 |Document.Save throws System.InvalidCastException |Bug |
|WORDSNET-12402 |StrictFirstAndLastChars gets incorrect value when NoLineBreaksBefore/NoLineBreaksBefore are set in DOC files |Bug |
|WORDSNET-12436 |Text in SmatArt converted to square boxes in PDF |Bug |
|WORDSNET-12438 |Rtf to Pdf conversion issue with equation rendering |Bug |
|WORDSNET-12457 |Shape's text is overlapped after conversion from Docx to Pdf |Bug |
|WORDSNET-12464 |Many unwanted red crossed symbols appear in PDF |Bug |
|WORDSNET-12474 |System.InvalidOperationException is thrown while saving Docx to Pdf. |Bug |
|WORDSNET-12495 |Password protected document cannot be unlocked anymore after editing with aspose |Bug |
|WORDSNET-12500 |Chinese text is overlapped after conversion from Doc/Docx to HtmlFixed |Bug |
|WORDSNET-12508 |Pictures are converted to black boxes in PDF |Bug |
|WORDSNET-12510 |Shape (signature) is missing in output Pdf when DmlRenderingMode.DrawingML is used |Bug |
|WORDSNET-12512 |An assertion fails when an HTML tag contains non-ASCII uppercase characters |Bug |
|WORDSNET-12514 |Image is missing after conversion from Docx to Doc/Pdf |Bug |
|WORDSNET-12517 |Document.UpdatePageLayout corrupts word document |Bug |
|WORDSNET-12518 |StyleCollection.AddCopy ignores style's Font.Bold after copying Default Paragraph Font |Bug |
|WORDSNET-12519 |File with protection can't be unprotect after save |Bug |
|WORDSNET-12527 |Some characters are missing in the output pdf when we convert using aspose.words |Bug |
|WORDSNET-12551 |Document is not opened after re-saving Docx |Bug |
|WORDSNET-12553 |After updating page layout and saving to docx, MS Word cannot open document |Bug |
|WORDSNET-12577 |Styles.AddCopy change the font color of Style |Bug |
|WORDSNET-2846 |REFSTYLE fields are updated improperly in Headers/Footer upon rendering. |Bug |
|WORDSNET-4065 |Bookmarks are not definded for FORMCHECKBOX |Bug |
|WORDSNET-4659 |Borders are rendered incorrectly. |Bug |
|WORDSNET-4820 |Heading 1 run misses in TOC |Bug |
|WORDSNET-5008 |Auto spacing between paragraphs in tables are exported improperly to HTML |Bug |
|WORDSNET-5300 |Incorrect color of paragraph break for first paragraph in colored span |Bug |
|WORDSNET-5986 |Doc to PDF Conversion problem with lines and text block formatting |Bug |
|WORDSNET-6081 |Phonetic guide (EQ field) is lost during export to HTML |Bug |
|WORDSNET-6402 |List numbering is incorrect when converting to fixed page formats |Bug |
|WORDSNET-7433 |Page numbering in the Footer is incorrect in Pdf |Bug |
|WORDSNET-10140 |Contents do not render correctly in output Pdf file |Enhancement |
|WORDSNET-12216 |Extra empty pages are created after conversion from Doc to Pdf |Enhancement |
|WORDSNET-12356 |ruby is improperly imported from DOCX |Enhancement |
|WORDSNET-12472 |Inline Shape with WrapSide as Both pushes following paragraph down in PDF |Enhancement |
|WORDSNET-12485 |DoNotUseHTMLParagraphAutoSpacing compatibility option is improperly read from DOC |Enhancement |
|WORDSNET-12521 |Redundant &lt;c:marker&gt;, &lt;c:spPr&gt;, and incorrect values appear while testing in multi-threading mode |Enhancement |
|WORDSNET-4324 |Support of proper reading of footnote custom reference mark in Rtf reader. |Enhancement |
|WORDSNET-4819 |Format of TOC entries differs when TOC is updated by Word |Enhancement |
|WORDSNET-4821 |Paragraph marker in TOC entry has different format when updated by MS Word and AW |Enhancement |
|WORDSNET-6252 |/rtl/ Incorrect list labels are generated for Arabic and Hebrew number styles |Enhancement |
|WORDSNET-7873 |Incorrect text wrapping causes incorrect text box position and footer overlapping |Enhancement |
|WORDSNET-11394 |/comments/ System.NullReferenceException is thrown while saving Doc to Pdf |Exception |
|WORDSNET-12306 |Aspose.Words.FileCorruptedException is thrown while loading rtf |Exception |
|WORDSNET-12368 |Document.Compare throws System.InvalidCastException |Exception |
|WORDSNET-12479 |ReportingEngine.BuildReport throws System.InvalidOperationException when processing fields with UTF8 characters |Exception |
|WORDSNET-12486 |MailMerge.Execute throws System.InvalidOperationException when double quotes are used in field value |Exception |
|WORDSNET-12526 |Parsing glyph data of OpenType(CFF) font is not supported |Exception |
|WORDSNET-12569 |Aspose.Words.FileCorruptedException occurs when input HTML contains invalid base64 embedded image |Exception |
|WORDSNET-4035 |InvalidCastException is thrown when replacing OptionalHyphen char |Exception |
|WORDSNET-9224 |NullReferenceException occurs during rendering a DOCX to fixed page formats |Exception |
|WORDSNET-12146 |Preserve repeating section content control during open/save |Feature |
|WORDSNET-12349 |Aspose Words SdtType enumeration does not include REPEATING_SECTION |Feature |
|WORDSNET-3797 |Add support for skipping a record during mail merge |Feature |
|WORDSNET-8345 |Support ruby a.k.a phonetic guide |Feature |
|WORDSNET-12502 |CPU hangs for Document.PageCount property |Performance |
|WORDSNET-12558 |Regression Issue : StyleCollection.AddCopy |Regression |
|WORDSNET-12576 |List Bullet style issue with StyleCollection.AddCopy |Regression |

