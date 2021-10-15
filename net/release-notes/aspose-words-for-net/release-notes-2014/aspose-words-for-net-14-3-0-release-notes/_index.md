---
title: Aspose.Words for .NET 14.3.0 Release Notes
type: docs
weight: 80
url: /net/aspose-words-for-net-14-3-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 14.3.0](https://www.nuget.org/packages/Aspose.Words/14.3.0)

{{% /alert %}} 

## Aspose.Words for .NET 14.3 Release Notes

### Major Features

There are 88 improvements and fixes in this regular monthly release. The most notable are:

- Public API for insertion of OLE objects both linked and embedded
- Outline, Shadow, Reflection, Glow and Fill text effects for rendering text inside DrawingML shapes
- EUDC fonts rendering partially supported
- “PDF Logical Structure” export reworked, significantly improving memory usage

## All Changes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-6074|Aspose.Words does not take in account style set in &lt;head&gt;.|Bug|
|WORDSNET-6127|Table looks incorrectly while converting html to doc.|Bug|
|WORDSNET-7406|Hyperlinks split into several fragments/links in output PDF|Bug|
|WORDSNET-8435|Horizontal table position is wrong|Bug|
|WORDSNET-8545|Document.UpdateFields Does not Update TOC in DOCX|Bug|
|WORDSNET-8835|PDPageContentStream.drawImage draws an inverted image inside Aspose.Words generated Pdf|Bug|
|WORDSNET-8842|Content in the output html is overlapped at a few places in Html|Bug|
|WORDSNET-9135|Different table justify alignment for different compatibilityMode values.|Bug|
|WORDSNET-9176|CSS selectors do not work for &lt;thead&gt;, &lt;tbody&gt;, and &lt;tfoot&gt; elements|Bug|
|WORDSNET-9191|Chart Legend/Series do not render correctly in output Pdf file|Bug|
|WORDSNET-9254|Data labels with best fit position are rendering at incorrect places in Chart|Bug|
|WORDSNET-9315|Offset of the hyperlink text line is off by a few pixels in output Pdf|Bug|
|WORDSNET-9369|Hyperlinks split into numerous fragments/links in output PDF|Bug|
|WORDSNET-9474|Document.UpdateFields does not update SUM formula field|Bug|
|WORDSNET-9492|Paragraph's first line indent increases when exported to HTML|Bug|
|WORDSNET-9524|Space before a paragraph following a floating element is too large after HTML to DOCX conversion|Bug|
|WORDSNET-9525|Block-level SVG image become inline after HTML to DOCX conversion|Bug|
|WORDSNET-9541|Problem with vertical paragraph spacing when importing HTML using InsertHtml method|Bug|
|WORDSNET-9568|Shape is rotated after conversion from Doc to Pdf|Bug|
|WORDSNET-9573|Text color is changed after conversion from Docx to WordML/Doc|Bug|
|WORDSNET-9626|Word Table indentation is not correct when &lt;table&gt; is placed inside &lt;li&gt;|Bug|
|WORDSNET-9677|Arrows on the Lines gets distorted when converting to Pdf|Bug|
|WORDSNET-9689|A space character is exported to PDF output between Japanese and Numeric characters|Bug|
|WORDSNET-9691|System.NullReferenceException is thrown while using Node.ToString(SaveFormat.Html)|Bug|
|WORDSNET-9705|Line Shape from Header is merged with the top border of Table in Body|Bug|
|WORDSNET-9716|Docx to WordML conversion issue with content control|Bug|
|WORDSNET-9721|Junk text is rendered in fixed page formats|Bug|
|WORDSNET-9724|Document.Unprotect(String) doesn't remove protection from document|Bug|
|WORDSNET-9725|The typography "Character spacing control" option is not preserved during RTF to DOC conversion|Bug|
|WORDSNET-9728|Positions of some DrawingML circles are not preserved during rendering|Bug|
|WORDSNET-9732|A row and some content is rendering at the bottom of previous page|Bug|
|WORDSNET-9733|Header table rows and images are not preserved in PDF|Bug|
|WORDSNET-9734|Adding Image on Aspose.Words generated PDF is mirrored at wrong position|Bug|
|WORDSNET-9737|Document.Save change the color of text inside StructuredDocumentTag|Bug|
|WORDSNET-9739|RTF to HTML conversion issue with lists|Bug|
|WORDSNET-9748|List items do not line up correctly after conversion from RTF to HTML|Bug|
|WORDSNET-9778|LayoutEnumerator.Rectangle.Y returns a negative value|Bug|
|WORDSNET-9779|Conversion from Docm to Doc creates corrupted document|Bug|
|WORDSNET-9790|Aspose.Words loads the Pdf file into Aspose.Word DOM|Bug|
|WORDSNET-9806|'Allow row to break across pages' value is changed after re-saving the document|Bug|
|WORDSNET-9807|RowFormat.AllowBreakAcrossPages property does not work for dotx|Bug|
|WORDSNET-9819|Hyperlink for an icon is not preserved during HTML to PDF conversion|Bug|
|WORDSNET-9829|UpdateFields doesn't remove "square box" symbols from TOC items|Bug|
|WORDSNET-9865|Text is overlapped after conversion from Docx to Pdf|Bug|
|WORDSNET-9866|Text position is changed after conversion from Docx to Pdf|Bug|
|WORDSNET-2021|Support inheriting styles from parent objects.|Enhancement|
|WORDSNET-2110|Add image compression options for different image types|Enhancement|
|WORDSNET-9350|Add a link to the online documentation in the DLLs only release|Enhancement|
|WORDSNET-9353|Default run properties lose lang attribute value on DOCX to DOC conversions|Enhancement|
|WORDSNET-9537|Padding for image in table is lost when rendering to Pdf|Enhancement|
|WORDSNET-9711|Consider using "Don't vertically align cells containing floating objects" compatibility option when exporting to HTML|Enhancement|
|WORDSNET-9712|Shape in table's cell is improperly horizontally aligned to center after export to HTML|Enhancement|
|WORDSNET-9713|Floating shape is improperly vertically positioned after export to HTML|Enhancement|
|WORDSNET-9783|Warning : Unknown ProgId value 'Visio.Drawing.11'. This might cause inaccessible OLE embedding|Enhancement|
|WORDSNET-9814|Charts (DrawingML) do not render correctly in Pdf file|Enhancement|
|WORDSNET-9707|Document.UpdateFields throws System.ArgumentNullException for French (France) Regional Settings|Exception|
|WORDSNET-9753|LayoutCollector.GetEntity throws InvalidOperationException for a Section node|Exception|
|WORDSNET-9765|Aspose.Words.FileCorruptedException occurs when loading a DOCX|Exception|
|WORDSNET-9767|RenderedDocument constructor throws System.Collections.Generic.KeyNotFoundException|Exception|
|WORDSNET-9768|RenderedDocument.GetLayoutEntitiesOfNode method throws NullReferenceException|Exception|
|WORDSNET-9786|System.OverflowException is thrown while doing mail merge|Exception|
|WORDSNET-9800|System.OverflowException is thrown while doing mail merge|Exception|
|WORDSNET-9809|Document.UpdatePageLayout throws System.InvalidCastException|Exception|
|WORDSNET-9818|LayoutCollector.GetEndPageIndex method throws System.InvalidOperationException|Exception|
|WORDSNET-9840|NullReferenceException occurs during rendering to fixed page formats|Exception|
|WORDSNET-9843|Document.PageCount throws System.NullReferenceException|Exception|
|WORDSNET-9871|System.InvalidOperationException is thrown while saving document to ODT format|Exception|
|WORDSNET-1206|Support OLE embedding of documents and files|Feature|
|WORDSNET-4260|Write an article about how to work with Table of contents in Aspose.Words|Feature|
|WORDSNET-5147|Add &lt;col&gt; tag support|Feature|
|WORDSNET-7245|Support BestFit position of Pie chart's data labels.|Feature|
|WORDSNET-7528|Support style:text-decoration attribute of Paragraph tag.|Feature|
|WORDSNET-9496|Preserve private characters in EUDC.TTE during rendering to Pdf|Feature|
|WORDSNET-9773|Support HTML table row borders in HTML import|Feature|
|WORDSNET-9793|Support text outline effect.|Feature|
|WORDSNET-9794|Support text fill effect.|Feature|
|WORDSNET-9795|Support text shadow effect.|Feature|
|WORDSNET-9796|Support text reflection effect.|Feature|
|WORDSNET-9797|Support text glow effect.|Feature|
|WORDSNET-9798|Support text effects applied to text in Dml Shape or in SmartArt.|Feature|
|WORDSNET-9812|Implement reading text effects from rPr in DML.|Feature|
|WORDSNET-9775|Some tables have incorrect widths in output Pdf|Regression|
|WORDSNET-9811|Paragraph and some content is incorrectly rendering to next page in PDF|Regression|
|WORDSNET-9825|HTML class names are capitalized on import to Word|Regression|
|WORDSNET-9853|Aspose.Words.FileCorruptedException occurs when loading DOCX file|Regression|
|WORDSNET-9854|Aspose.Words.FileCorruptedException occurs when loading DOCX file|Regression|
|WORDSNET-9855|Aspose.Words.FileCorruptedException occurs when loading DOCX file|Regression|
|WORDSNET-9856|Aspose.Words.FileCorruptedException occurs when loading DOCX file|Regression|

