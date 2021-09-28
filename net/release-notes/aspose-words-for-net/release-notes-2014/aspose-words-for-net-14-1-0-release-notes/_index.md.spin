---
title: Aspose.Words for .NET 14.1.0 Release Notes
type: docs
weight: 100
url: /net/aspose-words-for-net-14-1-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 14.1.0](https://www.nuget.org/packages/Aspose.Words/14.1.0)

{{% /alert %}} 

## Aspose.Words for .NET 14.1 Release Notes

### Major Features

There are 101 improvements and fixes in this regular monthly release. The most notable are:

- Support for password-protected documents created in MS Word 2013
- New public API to control rendering of tracking changes / revisions
- Reduced peak memory usage for large documents
- Performance improvements to the page layout engine
- Rendering of hidden text is improved
- Calculation of line height for Chinese characters improved
- Export comments to HTML as footnotes
- Export of drop-down fields and form fields as text into HTML
- Document headers and footers can now be preserved in DOC-HTML-DOC roundtrip
- DrawingML Soft Edge rendering effect implemented
- DrawingML preset shadows rendering implemented
- Hyperlink fragmentation in PDF resolved

## All Changes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-3025|Some characters are not displayed during inserting.|Bug|
|WORDSNET-4522|STYLEREF field in header/footer is improperly updated upon rendering|Bug|
|WORDSNET-5388|STYLEREF field shows error "Error! No text of specified style in document." in the output PDF document.|Bug|
|WORDSNET-6452|Doc to PDF conversion issue with fields in page header|Bug|
|WORDSNET-7519|OL element should not be nested within element OL in Html|Bug|
|WORDSNET-7532|Docx to RTF conversion issue with font size.|Bug|
|WORDSNET-7690|/cjk line spacing/Incorrect LineSpacing results in an incorrect number of pages|Bug|
|WORDSNET-8561|TOC hyperlinks and superscript hyperlinks split into multiple fragments in output PDF|Bug|
|WORDSNET-8623|/asian baseline/ Empty page is inserted after conversion from Doc to PDF|Bug|
|WORDSNET-8637|Images are placed incorrectly after RTF-HTML-DOCX round-trip|Bug|
|WORDSNET-8638|Font size of table text gets smaller after export to HTML|Bug|
|WORDSNET-8668|A hyperlink causes LinkAnnotation to be generated for each word|Bug|
|WORDSNET-8820|Unwanted margin-left is added to &lt;p&gt; during exporting a Docx to Html|Bug|
|WORDSNET-8950|Numbers with digit grouping break order of RTL text during HTML import|Bug|
|WORDSNET-8953|Columns of adjacent tables get misaligned after DOCX-HTML-DOCX round trip|Bug|
|WORDSNET-8954|Image is placed incorrectly when exported to HTML|Bug|
|WORDSNET-9039|STYLEREF field value in Header/Footer is not correct when saving to PDF|Bug|
|WORDSNET-9040|Document.UpdateFields remove table's cell|Bug|
|WORDSNET-9162|MailMergeCleanupOptions.RemoveUnusedFields does not remove unmerged merge fields during mail merge|Bug|
|WORDSNET-9201|Mimic MS Word for rounding decimal numbers to correct precision|Bug|
|WORDSNET-9225|A Table gets resized during open/save a DOCX|Bug|
|WORDSNET-9228|Incorrect rendering of StyleRef field in header of Word document|Bug|
|WORDSNET-9229|Unexpected 'ul' tag when converting Docx to ePub|Bug|
|WORDSNET-9239|Document.UpdateFields method does not calculate a TOC field in DOC|Bug|
|WORDSNET-9303|Aspose.Words hangs during rendering DOC to HTML|Bug|
|WORDSNET-9305|An Elbow Arrow Connector Shape is not preserved during rendering to fixed page formts|Bug|
|WORDSNET-9334|Font size of text imported from &lt;pre&gt; HTML elements is too large|Bug|
|WORDSNET-9351|"Error : Unknown op code for conditional" is shown after calling Document.UpdateFields|Bug|
|WORDSNET-9356|/asian baseline/ A Paragraph renders on to the next page in PDF|Bug|
|WORDSNET-9375|SmartArt does not preserve when Doc file is converted to Docx|Bug|
|WORDSNET-9404|HYPERLINK field color and formatting is not preserved when saving ODT to Word formats|Bug|
|WORDSNET-9405|HYPERLINK field color and formatting is not preserved when saving ODT to Word formats|Bug|
|WORDSNET-9420|OfficeMath equations are incorrectly rendering to PDF|Bug|
|WORDSNET-9426|A list paragraph doesn't use existing style in destination document when using ImportFormatMode.UseDestinationStyles|Bug|
|WORDSNET-9437|Line numbering overlap in fixed page formats|Bug|
|WORDSNET-9439|Problems with template names containing the "}" character|Bug|
|WORDSNET-9441|Font size in table cells is not preserved during saving DOCX to PDF/HTML|Bug|
|WORDSNET-9442|MS Word throws error when loading Aspose.Words generated output document with it|Bug|
|WORDSNET-9460|A table in Hebrew language document becomes invisible during open/save|Bug|
|WORDSNET-9466|UpdateFields does not calculate value of a TOC|Bug|
|WORDSNET-9471|GroupShape's size is changed after re-saving the Doc file|Bug|
|WORDSNET-9480|Formula (OfficeMath) background color is lost after conversion from Docx to HTML|Bug|
|WORDSNET-9481|Word to HTML conversion issue with formula (OfficeMath) square brackets|Bug|
|WORDSNET-9483|Almost all text is formatted as italic in output Html|Bug|
|WORDSNET-9484|Suppress rendering of all hidden content in output Pdf|Bug|
|WORDSNET-9487|Aspose removes header and footer during open/save ODT|Bug|
|WORDSNET-9488|Bold font formatting is not preserved when saving to HtmlFixed format|Bug|
|WORDSNET-9491|A Table renders on to the next page in Pdf|Bug|
|WORDSNET-9517|Bullets do not render in PDF for tracked document|Bug|
|WORDSNET-9527|Some words in HtmlFixed overlap next consecutive word|Bug|
|WORDSNET-9533|Shape size is changed after re-saving the Doc file|Bug|
|WORDSNET-9553|After fixing WORDSNET-9229 inheritance of list item's properties is violated.|Bug|
|WORDSNET-3520|/chinese line breaking:40/ Part of content was moved to the next row during rendering|Enhancement|
|WORDSNET-4128|/asian baseline/ Fix height of lines containing mixed Asian and non-Asian text|Enhancement|
|WORDSNET-4130|/asian baseline/ PDF rendering: part of text from second page jumps to the first page after rendering|Enhancement|
|WORDSNET-8251|Word art style 22 is not preserved during rendering to PDF|Enhancement|
|WORDSNET-8299|Import paragraphs with hanging indent from HTML|Enhancement|
|WORDSNET-8636|Improve HTML round-trip of document headers and footers|Enhancement|
|WORDSNET-8902|WordArt // Multiline // Docx to PDF conversion issue with ShapeType.TextPlainText (Multi line watermark alignment issue)|Enhancement|
|WORDSNET-9299|WordArt // Multiline // Alignment of WordArt Shape text is not preserved during rendering to PDF|Enhancement|
|WORDSNET-9376|WordArt // Multiline // WordArt does not preserve when Doc file is converted to PDF|Enhancement|
|WORDSNET-9389|Provide a way in API to down sample only selected images in PDF|Enhancement|
|WORDSNET-9401|Consider paddings and borders width in HTML cell width computing algorithm during export tables to HTML|Enhancement|
|WORDSNET-9414|Consider paddings and borders width in AW cell width computing algorithm during import HTML tables|Enhancement|
|WORDSNET-9415|Save corrected table width during export to HTML|Enhancement|
|WORDSNET-9438|Correct table width during loading from HTML|Enhancement|
|WORDSNET-9446|Provide HtmlSaveOptions.ExportDropDownFormFieldAsText property|Enhancement|
|WORDSNET-9458|Image is placed incorrectly when exported to HTML|Enhancement|
|WORDSNET-9459|Image is placed incorrectly when imported from HTML|Enhancement|
|WORDSNET-9467|Doc to Pdf conversion issue with contents position|Enhancement|
|WORDSNET-9521|A table overlaps the content of another Table in fixed page formats|Enhancement|
|WORDSNET-9567|Write an empty value to FormField in the same way like MS Word does.|Enhancement|
|WORDSNET-8418|/rtl + absolute tab/ System.InvalidOperationException while conversion from Docx to PDF|Exception|
|WORDSNET-8649|/rtl + absolute tab/ InvalidOperationException occurs when rendering Special characters to fixed page formats|Exception|
|WORDSNET-9288|System.OutOfMemoryException is thrown while conversion from Docx to Pdf.|Exception|
|WORDSNET-9326|Unable to load RTF file into Aspose.Words DOM|Exception|
|WORDSNET-9340|Aspose.Words.FileCorruptedException occurs when loading RTF file|Exception|
|WORDSNET-9372|CLONE - Document clones with multi threading do not save the document properly|Exception|
|WORDSNET-9413|System.ArgumentException is thrown while appending documents|Exception|
|WORDSNET-9473|Aspose.Words.FileCorruptedException is thrown while loading WordML file|Exception|
|WORDSNET-9475|Document.AppendDocument method throws System.ArgumentException exception|Exception|
|WORDSNET-9503|Document.AppendDocument method throws System.ArgumentException exception|Exception|
|WORDSNET-9522|Aspose.Words.FileCorruptedException is thrown while loading Docx file|Exception|
|WORDSNET-9570|UpdateFields throws exception upon encountering invalid path in INCLUDETEXT field|Exception|
|WORDSNET-9572|LayoutCollector.GetEntity method returns NULL object when instantiating LayoutEnumerator before LayoutCollector|Exception|
|WORDSNET-9594|System.NullReferenceException is thrown while converting Docx to Pdf|Exception|
|WORDSNET-333|Add possibility of loading document via URI|Feature|
|WORDSNET-4705|Export comments to HTML as footnotes|Feature|
|WORDSNET-7964|Load Office 2013 encrypted document into Aspose.Words DOM|Feature|
|WORDSNET-7967|Full reflection picture effect is not rendered in fixed page formats|Feature|
|WORDSNET-8376|Softened/rounded edges of the image (feathering) are not retained in PDF|Feature|
|WORDSNET-8647|Provide roundtrip of export comments to HTML and import back to AW|Feature|
|WORDSNET-9045|Roundtripping of footnotes/endnotes Doc to HTML and HTML to DOC|Feature|
|WORDSNET-9287|Tight reflection picture effect is not preserved in fixed page formats|Feature|
|WORDSNET-9354|Provide options to change colors of Track Changes|Feature|
|WORDSNET-9408|Layout of table is not preserved during saving a Odt to Docx|Feature|
|WORDSNET-9433|Size of Aspose.Words generated PDF is too big|Performance|
|WORDSNET-9443|Reduce the size of Span instances|Performance|
|WORDSNET-9455|Aspose.Words hangs during open/save a DOC|Performance|
|WORDSNET-5322|Row properties are copied over from the previous row|Regression|
|WORDSNET-9387|NullReferenceException occurs during open/save a DOC|Regression|

