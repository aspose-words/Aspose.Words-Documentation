---
title: Aspose.Words for Java 14.2.0 Release Notes
type: docs
weight: 110
url: /java/aspose-words-for-java-14-2-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 14.2.0](http://www.aspose.com/downloads/words/java/new-releases/aspose.words-for-java-14.2.0/)

{{% /alert %}} 
## **Aspose.Words for Java 14.2 Release Notes**
### **Major Features**
There are 131 improvements and fixes in this regular monthly release. The most notable are: 

- Improved export of tabs and tab stop positions to HTML
  Tab leaders are preserved when exporting to HTML 
  Move revisions are supported in RTF 
  Hyphenation is now supported in the layout engine (with external dictionaries) 
  Drop caps positioning improved 
  Improved rendering of hidden text 
  Improved rendering of Asian text, ordering of Arabic punctuation marks 
  DrawingML "Inner Shadow" effect rendering implemented 
  Multiline watermark rendering supports "Fit to Bezier curves" cases 
  Digitally signing XPS documents is possible now 
## **All Changes**

|**Key** |**Summary** |**Category** |
| :- | :- | :- |
|WORDSJAVA-508 |Table render differently, while saving in doc, png and Pdf format. |Bug |
|WORDSJAVA-819 |Conversion to TIFF: setting PhotometricInterpretation tag |Bug |
|WORDSJAVA-820 |Conversion to TIFF: setting PhotometricInterpretation tag |Bug |
|WORDSJAVA-832 |Spaces between Words are not preserved in output Image formats |Bug |
|WORDSJAVA-843 |Style is changed after conversion from RTF to Doc/Docx |Bug |
|WORDSJAVA-852 |Relative hyperlink with Unicode is improperly saved to Pdf. |Bug |
|WORDSJAVA-854 |WordArt letters are condensed. |Bug |
|WORDSJAVA-855 |Shifted position and size of WordArt in watermarks. |Bug |
|WORDSJAVA-69 |Formatting PalFormatter.DoubleToStr2Decimals sometimes produces different output. |Enhancement |
|WORDSJAVA-775 |createLinkedImage example under ExImage.java no longer working |Feature |
|WORDSJAVA-850 |Xml/Html writer indents. |Feature |
|WORDSJAVA-813 |Aspose.Words for Java 13.10.0 consumes too much memory during rendering to PDF as compared to 13.5.0 |Regression |
|WORDSJAVA-840 |InsertHtml method no longer reads image from img's src=\"file:///path |Regression |
|WORDSNET-2150 |MS Word does not highlight white spaces. AW should do the same. |Bug |
|WORDSNET-4838 |Vertical alignment of table cell defined using table style, is lost during converting and rendering. |Bug |
|WORDSNET-5332 |Content is moved to the next page after rendering. |Bug |
|WORDSNET-5333 |Floating tables overlap and wrong text wrapping after rendering. |Bug |
|WORDSNET-5498 |There is no chapter number before page number in TOC after updating fields. |Bug |
|WORDSNET-5574 |Indent of text in table is incorrect after rendering. |Bug |
|WORDSNET-5928 |/tab/ TabStops, TabLeader disappear when exporting to HTML |Bug |
|WORDSNET-6294 |Stop rendering Highlight color of Empty Run in PDF |Bug |
|WORDSNET-6584 |/revision marks/ Revisions are rendering incorrectly in PDF |Bug |
|WORDSNET-6907 |/tab/ Support tabs in TOC on HTML export |Bug |
|WORDSNET-7116 |Doc to Mhtml conversion issue with text alignment |Bug |
|WORDSNET-7269 |Docx to HTML conversion issue with left indent |Bug |
|WORDSNET-7606 |Dotted Tabs disappear when exporting to HTML |Bug |
|WORDSNET-7670 |Include chapter number do not export in output PDF file |Bug |
|WORDSNET-7765 |TabStops in FooterPrimary are not respected during exporting to Html |Bug |
|WORDSNET-8097 |Doc to ODT conversion issue with merged cell |Bug |
|WORDSNET-9114 |/Advanced tabs/ Tab character disturbs Paragraph layout in footer in PDF |Bug |
|WORDSNET-9188 |Document.AppendDocument changes the text color using ImportFormatMode as UseDestinationStyles |Bug |
|WORDSNET-9199 |Chinese font changes after conversion form RTF to Doc/Docx/Pdf |Bug |
|WORDSNET-9250 |Document.Save does not preserve table's border line |Bug |
|WORDSNET-9276 |A TextBox shape with Through wrapping causes misplaced rendering of another TextBox |Bug |
|WORDSNET-9298 |supportMisalignedColumns tag is being inserted during open/save a HTML |Bug |
|WORDSNET-9321 |Incorrect hyperlinks are imported into Aspose.Words DOM |Bug |
|WORDSNET-9339 |First lines of list paragraphs have different left indentation in fixed page formats |Bug |
|WORDSNET-9359 |UpdatePageLayout or UpdateFields changes left indentations of first lines of lists |Bug |
|WORDSNET-9364 |Aspose.Words hangs when Document.PageCount is invoked |Bug |
|WORDSNET-9378 |ROOT Improve hidden text handling. Incorrect alphabet is shown for a list item in PDF. |Bug |
|WORDSNET-9384 |Link does not preserve in output Pdf file after conversion from HTML |Bug |
|WORDSNET-9395 |Aspose.Words renders more pages in PDF than Microsoft Word 2013 |Bug |
|WORDSNET-9447 |Tab leaders (dots) are not preserved when exporting to HTML |Bug |
|WORDSNET-9449 |A tab character is exported to html incorrectly |Bug |
|WORDSNET-9461 |Chinese characters in url are corrupted when rendering to Pdf |Bug |
|WORDSNET-9462 |Aspose.Words does not import table's style attribute 'border-collapse:collapse' |Bug |
|WORDSNET-9470 |Text in header is placed incorrectly after conversion from Docx to HTML |Bug |
|WORDSNET-9482 |Text tags contained inside Text FormField are not merged |Bug |
|WORDSNET-9485 |Suppress rendering of all hidden content in output Pdf |Bug |
|WORDSNET-9490 |Suppress rendering of all hidden content in output Pdf |Bug |
|WORDSNET-9494 |HTML to Docx/Doc conversion issue with table's border |Bug |
|WORDSNET-9502 |Order of digits separated by arabic commas become invalid when saved to fixed formats |Bug |
|WORDSNET-9535 |"Error! Not a valid filename" is displayed for INCLUDETEXT after mail merge |Bug |
|WORDSNET-9566 |Aspose.Words.FileCorruptedException occurs when loading RTF file |Bug |
|WORDSNET-9576 |Document.UpdateFields changes the PAGE field value |Bug |
|WORDSNET-9583 |Text is truncated after conversion from Docx to BMP file format |Bug |
|WORDSNET-9607 |HTML to Pdf conversion issue with font rendering |Bug |
|WORDSNET-9610 |IMailMergeDataSource.GetValue is not invoked for nested regions contained inside IF field |Bug |
|WORDSNET-9611 |Author, DateTime of a Revision is incorrectly returned |Bug |
|WORDSNET-9618 |Non-zero space before the first paragraph of a document imported from preformatted HTML |Bug |
|WORDSNET-9619 |No new paragraph is created for inline text imported from &lt;pre&gt; elements |Bug |
|WORDSNET-9620 |Incorrect size of text imported from a paragraph that is a child of a &lt;pre&gt; element |Bug |
|WORDSNET-9621 |A new line is not imported if it separates child elements of &lt;pre&gt; |Bug |
|WORDSNET-9624 |Heading3 gray color appears when rendering to fixed page formats |Bug |
|WORDSNET-9639 |RowFormat.HeightRule is changed after conversion from MHT to Doc/Docx |Bug |
|WORDSNET-9648 |Company logo size is not preserved in Pdf |Bug |
|WORDSNET-9650 |An AutoShape drawing renders at the end of previous page in Pdf |Bug |
|WORDSNET-9652 |Shapes overlap the Table in HeaderPrimary during open/save an ODT |Bug |
|WORDSNET-9653 |NullReferenceException occurs during rendering a DOC to fixed page formats |Bug |
|WORDSNET-9662 |A DrawingML (.emf image) is not rendering as expected in Pdf |Bug |
|WORDSNET-9668 |Tab stop positions are not preserved during open/save a DOC |Bug |
|WORDSNET-9671 |Size of image is changed during importing from Html |Bug |
|WORDSNET-9683 |SmartArt DrawingML is distorted when rendering to Pdf |Bug |
|WORDSNET-9699 |JPG images are getting lost during rendering |Bug |
|WORDSNET-9700 |Header/Footer heights are not reserved during open/save an ODT |Bug |
|WORDSNET-9714 |Tabs are not respected during exporting to Html |Bug |
|WORDSNET-9723 |A Shape and DrawingML are not visible in fixed page formats |Bug |
|WORDSNET-9735 |Aspose.Words.Document does not load the checkboxes (Wingdings 2 font) |Bug |
|WORDSNET-2309 |Line of text is missed during rendering/converting to PDF. |Enhancement |
|WORDSNET-4986 |WordArt // Multiline // Multi-line watermark is not rendered properly. |Enhancement |
|WORDSNET-5084 |Position of floating frames is incorrect after rendering. |Enhancement |
|WORDSNET-6376 |RTF to PDF conversion issue |Enhancement |
|WORDSNET-8302 |Formatting of PAGE field is not retained during rendering |Enhancement |
|WORDSNET-8368 |/Advanced tabs/ A Paragraph's text wraps to the next line in FooterPrimary in PDF |Enhancement |
|WORDSNET-8574 |Compatibility mode attribute is overwritten by DocumentValidator, breaking the document layout |Enhancement |
|WORDSNET-8639 |Export/import tabs with center alignment to/from HTML |Enhancement |
|WORDSNET-9464 |Tab spacing is incorrect when exporting to Html |Enhancement |
|WORDSNET-9465 |Tab spacing is incorrect when exporting to Html |Enhancement |
|WORDSNET-9478 |A Paragraph renders to the right side of Table in Pdf |Enhancement |
|WORDSNET-9556 |Replace WriteRaw with StartElement/EndElement pair in HTML Export. |Enhancement |
|WORDSNET-9643 |Alignment of WordArt text is not preserved during rendering/printing |Enhancement |
|WORDSNET-9663 |Content is rendering on the previous pages in fixed page formats |Enhancement |
|WORDSNET-9665 |DrawingML positions are not preserved when saving to fixed page formats |Enhancement |
|WORDSNET-9666 |linked image does not update in output documents |Enhancement |
|WORDSNET-9693 |Horizontal axis of composite chart are combined incorrectly |Enhancement |
|WORDSNET-9694 |Axis labels if very right axis is rendered left, but should be rendered right. |Enhancement |
|WORDSNET-9710 |Revision bar is displaying as very thick line in generated PDF |Enhancement |
|WORDSNET-9731 |A picture is shifted up towards top page edge in Pdf |Enhancement |
|WORDSNET-9738 |Paragraphs below Tables render (wrap) to their right sides in fixed page formats |Enhancement |
|WORDSNET-7667 |NullReferenceException occurs during rendering to fixed page formats |Exception |
|WORDSNET-8905 |NullReferenceException occurs when calling UpdateFields after Document.AppendDocument method |Exception |
|WORDSNET-9601 |System.NullReferenceException is thrown while converting Docx to Fixed file format (Tiff) |Exception |
|WORDSNET-9608 |System.InvalidOperationException is thrown while converting Docx to Pdf/Png |Exception |
|WORDSNET-9609 |InvalidOperationException occurs during rendering to fixed page formats |Exception |
|WORDSNET-9616 |Aspose.Words.FileCorruptedException occurs when loading a DOCX |Exception |
|WORDSNET-9623 |System.InvalidOperationException is thrown while converting Docx to Tiff/Doc/Html |Exception |
|WORDSNET-9654 |Aspose.Words.FileCorruptedException is thrown while loading MS Word 2013 document |Exception |
|WORDSNET-9656 |InvalidOperationException with AcceptAllRevisions() |Exception |
|WORDSNET-9659 |Document.UpdatePageLayout throws System.NullReferenceException |Exception |
|WORDSNET-9690 |Document.Save method throws System.ArgumentOutOfRangeException while saving docx to Pdf |Exception |
|WORDSNET-1035 |/tab/ Try to export tabs and tab positions to HTML better. |Feature |
|WORDSNET-2177 |Consider adding “Automatically update document styles” option. |Feature |
|WORDSNET-2707 |/hyphenation/ ROOT Support hyphenation |Feature |
|WORDSNET-2854 |Digitally sign XPS documents |Feature |
|WORDSNET-4353 |DrawingML SFX // Support "Soft edges" effect of shape upon rendering. |Feature |
|WORDSNET-5003 |/tab/ Support tab leaders upon exporting to HTML |Feature |
|WORDSNET-6448 |/revision marks/ Docx to PDF conver issue with text style. |Feature |
|WORDSNET-6618 |/tab/ DOCX to HTML conversion issue with spaces after bullets |Feature |
|WORDSNET-6743 |/revision marks/ Docx to Pdf conversion issue with hidden text when track changes is ON |Feature |
|WORDSNET-6901 |/hyphenation/ Support hyphenation |Feature |
|WORDSNET-7096 |/hyphenation/ Saving Word with one page as PDF results in a second page |Feature |
|WORDSNET-7280 |Consider providing a property similar to UpdateStylesOnOpen |Feature |
|WORDSNET-7748 |Export layout options as per Microsoft Word 2010 standard |Feature |
|WORDSNET-8677 |Table position is changed after re-saving Docx |Feature |
|WORDSNET-9044 |/hyphenation/ Docx to Pdf conversion issue with automatic text wrapping |Feature |
|WORDSNET-9100 |Support rendering DrawingML effects. |Feature |
|WORDSNET-9174 |/hyphenation/ Spacing between words is increaed in fixed page formats |Feature |
|WORDSNET-9213 |/hyphenation/ Hyphenated content is not rendering correctly in PDF |Feature |
|WORDSNET-9319 |Preserve trackmoves revision upon RTF round-trip. |Feature |
|WORDSNET-9540 |Expose the compatibility mode property |Feature |
|WORDSNET-9528 |List numbering is not visible in output Rtf |Regression |

