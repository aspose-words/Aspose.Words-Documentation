---
title: 13.1.0 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 13.1.0 Release Notes
linktitle: Aspose.Words for Java 13.1.0 Release Notes
description: "Aspose.Words for Java 13.1.0 Release Notes – the latest updates and fixes."
type: docs
weight: 110
url: /java/aspose-words-for-java-13-1-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 13.1.0](https://releases.aspose.com/words/java/new-releases/aspose.words-for-java-13.1.0/)

{{% /alert %}}

## Aspose.Words for .Java 13.1 Release Notes

### What's New

There are 120 improvements and fixes in this regular monthly release. The most notable are:

- Extended public API for working with fields in the document.
- Added public API to find on which page a particular document element is laid out.
- Layout performance improved by at least 10%.
- Improvements to layout of nested objects and tables.
- Improvements to rendering of special RTL characters and content of SDT tags.
- Added support for binary OLE objects in OpenDocument (ODT) documents.
- LISTNUM, AUTONUM and similar numbering fields are supported when rendering.
- Import of SVG images in HTML is supported.
- DrawingML line caps are rendered.
- DrawingML Chart custom axis title rotation and other features are rendered.

For a list of changes to the public API in this release refer to the following article in the documentation.

## All Fixes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-572|builder.insertHtml() issue with bullet points appear as hollow square under linux.|Bug|
|WORDSJAVA-595|Yet another color shift when saving CMYK image with 'inconsistent metadata' to PDF|Bug|
|WORDSJAVA-616|Microsoft Japanese font lost from EMF metafile during saving a DOC to HTML under Linux/Ubuntu.|Bug|
|WORDSJAVA-639|fonts in formula not rendered correctly when converting docx to pdf on Linux|Bug|
|WORDSJAVA-664|Number formatting issue with BigDecimal.value and Double.value|Bug|
|WORDSJAVA-668|RTL text becomes gibberish when rendering to TIFF/JPEG|Bug|
|WORDSJAVA-670|Images in DOCX are rendered to TIFF as black and white images.|Bug|
|WORDSJAVA-671|Aspose.Words produces a black and white TIFF|Bug|
|WORDSJAVA-675|Underlined RTL text is dissapiar.|Bug|
|WORDSJAVA-517|Color shift when saving CMYK image with inconsistent metadata to Pdf.|Enhancement|
|WORDSJAVA-583|Colors shifted due "inconsistent metadata" in CMYK/YCCK image|Enhancement|
|WORDSJAVA-599|Support in java .Net-style number formats like ",0.00".|Feature|


|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-7384|Document.Save method do not save the Shape correctly|Bug|
|WORDSNET-7385|Paragraphs with bullet list do not export correctly in Fixed File Format|Bug|
|WORDSNET-7386|Docx to Fixed file format conversion issue with bullets position|Bug|
|WORDSNET-7390|/IF spacing issue/ UpdateFields doesn't update the value of IF field after MailMerge|Bug|
|WORDSNET-7391|Docx to PDF conversion issue with text rendering|Bug|
|WORDSNET-7407|The Chart's axis values are different after conversion from Docx to PDF|Bug|
|WORDSNET-7408|Data Lable '1' is not displayed fully in PDF as displayed in input doc|Bug|
|WORDSNET-7415|ExecuteWithRegions turns a mustache region into a normal TableStart/TableEnd region|Bug|
|WORDSNET-7421|RemoveEmptyParagraphs does not remove empty Paragraphs left by Mustache regions|Bug|
|WORDSNET-7435|DML line AutoShape is positioned incorrectly in Pdf|Bug|
|WORDSNET-7439|Docx can not be opened in MS Word 2010 after saving it from Aspose.Words.|Bug|
|WORDSNET-7450|Shapes are not preserved during open/save FlatOpc|Bug|
|WORDSNET-7460|Shape is not visible when appending documents|Bug|
|WORDSNET-7486|Shape gradient fill is rendered incorrectly|Bug|
|WORDSNET-7509|History of tracked formatting changes is lost after conversion from RTF to Docx|Bug|
|WORDSNET-7515|Online Pdf Repair Tool reports a corruption in Pdf that is produced by Aspose.Words|Bug|
|WORDSNET-7517|Number formatting is incorrect in Dutch culture.|Bug|
|WORDSNET-7520|GetChildDataSource gets incorrectly called during processing MERGEFIELDs with Object.Attribute|Bug|
|WORDSNET-7524|A rotated DML is positioned incorrectly in PDF|Bug|
|WORDSNET-7530|Checkbox rendering issue while conversion from Doc to PDF|Bug|
|WORDSNET-7531|Unexpected characters appear in the RTF produced by Aspose.Words|Bug|
|WORDSNET-7533|Two Paragraph should display on single line during Doc to Rtf cnversion|Bug|
|WORDSNET-7535|Custom numbering template has wrong characters in Rtf|Bug|
|WORDSNET-7537|Docx to RTF conversion issue with page number format|Bug|
|WORDSNET-7542|Vertical borders disappear after saving to docx|Bug|
|WORDSNET-7576|Docx to PDF conversion issue while using Aspose.Words with Parallel.ForEach|Bug|
|WORDSNET-7577|Shape is moved towards the left page edge in fixed page formats|Bug|
|WORDSNET-7578|InsertCell throws NullReferenceException when inserting first cell in new Row|Bug|
|WORDSNET-7579|Arabic (RTL) text is rendering incorrectly to Pdf|Bug|
|WORDSNET-7580|Arabic (RTL) text is rendering incorrectly to Pdf|Bug|
|WORDSNET-7581|Arabic (RTL) text is rendering incorrectly to Pdf|Bug|
|WORDSNET-7583|Table border is lost during rendering a Docx to Pdf|Bug|
|WORDSNET-7585|Unicode zero width space character (\u200B) is not rendering correctly in PDF|Bug|
|WORDSNET-7590|Aspose.Words produces a corrupt XPS file.|Bug|
|WORDSNET-7600|System.InvalidOperationException occurs when calling License.SetLicense|Bug|
|WORDSNET-7608|Contents of &lt;body&gt; are getting lost during open/save|Bug|
|WORDSNET-7610|StyleCollection.AddCopy change NextParagraphStyleName value and add w:next|Bug|
|WORDSNET-7613|MS Word 2010 crashes when DrawingML docPr Id is negative.|Bug|
|WORDSNET-7614|/IF spacing issue/ Conditional field without a space do not show mail merge value|Bug|
|WORDSNET-7616|Document.UpdateFields do not update the TOC field correctly|Bug|
|WORDSNET-7618|Appending Documents with Pictures causes corrupt output Docx|Bug|
|WORDSNET-7623|UpdateFields doesn't insert text from a URL starting with HTTP|Bug|
|WORDSNET-7624|Password for AllowOnlyFormFields protection becomes invalid when importing Sections|Bug|
|WORDSNET-7635|Docx crashes when DrawingML docPr Id is negative.|Bug|
|WORDSNET-7641|Security Alert - WordML to Doc conversion issue|Bug|
|WORDSNET-7648|Extra columns are added after conversion from HTML to DOC|Bug|
|WORDSNET-7653|Dashstyle attribute of v:stroke is not preserved in fixed page formats|Bug|
|WORDSNET-7658|List formatting is lost after conversion to HTML|Bug|
|WORDSNET-7669|Gradient brush transforms incorrectly|Bug|
|WORDSNET-7680|Importing a Section twice corrupts Docx document|Bug|
|WORDSNET-2099|Bottom or top margins are wrong when the header or footer height is not set and calculated automatically|Enhancement|
|WORDSNET-2180|/listnum/ AUTONUM fields are missed during Rendering/Converting to PDF|Enhancement|
|WORDSNET-3953|AUTONUMLGL fields are missed during Rendering/Converting to PDF|Enhancement|
|WORDSNET-5960|Text alignment in RTL document is not preserved when converting to HTML|Enhancement|
|WORDSNET-7002|/listnum/ List numbering is incorrect in PDF (LISTNUM fields)|Enhancement|
|WORDSNET-7037|/listnum/ Docx to PDF conversion Numbering issue|Enhancement|
|WORDSNET-7185|/listnum/ AUTONUM fields are getting lost when rendering to PDF|Enhancement|
|WORDSNET-7344|A shading overlaps a line above|Enhancement|
|WORDSNET-7429|Fix error occurs during perspective projection|Enhancement|
|WORDSNET-7432|DML images are shifted down vertically from their expected position in Pdf|Enhancement|
|WORDSNET-7453|FontSettings.DefaultFontName do not work while rendering PDF/XPS|Enhancement|
|WORDSNET-7483|Styles.AddCopy break the link between paragraph/character styles|Enhancement|
|WORDSNET-7514|A Normal Table overlaps a floating Table in PDF|Enhancement|
|WORDSNET-7539|Doc to RTF conversion issue with TC fields|Enhancement|
|WORDSNET-7543|Unicode control characters become visible in PDF and TIFF files|Enhancement|
|WORDSNET-7553|Fix incorrect pattern fill of 3D objects|Enhancement|
|WORDSNET-7565|Support checkbox color rendering|Enhancement|
|WORDSNET-7570|System.InvalidOperationException : XPS file &lt;file&gt; does not conform|Enhancement|
|WORDSNET-7574|Incorrect encoding is used while loading TXT file.|Enhancement|
|WORDSNET-7607|Percent sign (%) is located incorrectly in RTL text|Enhancement|
|WORDSNET-7621|Silverlight Pdf vierwers do not display chinese text in Pdf|Enhancement|
|WORDSNET-7659|Perform fallback to GDI+ rendering for EMF EMR_ALPHABLEND record|Enhancement|
|WORDSNET-7666|Quotation marks are not preserved during importing HTML into DOM|Enhancement|
|WORDSNET-7675|Analysis of a new version of HTML Agility Pack library|Enhancement|
|WORDSNET-7693|Remove support for .NET Framework 1.1 from the installer and documentation|Enhancement|
|WORDSNET-5858|NullReferenceException occurs on saving RTF with Footnotes to Fixed Page Formats|Exception|
|WORDSNET-7597|NullReferenceException occurs during rendering to fixed page formats|Exception|
|WORDSNET-7611|InvalidCastException occurs during exporting DOCX to HTML|Exception|
|WORDSNET-7639|Aspose.Words.FileCorruptedException occurs when loading a WordML/Docx|Exception|
|WORDSNET-7642|Exception while loading WordML file into Aspose.Words.Document|Exception|
|WORDSNET-7643|Aspose.Words.FileCorruptedException occurs when loading a WordML|Exception|
|WORDSNET-7645|System.Xml.XmlException during loading Doc into DOM|Exception|
|WORDSNET-7647|Aspose.Words.FileCorruptedException occurs when loading XML file|Exception|
|WORDSNET-7650|Aspose.Words.FileCorruptedException occurs when loading a WordML|Exception|
|WORDSNET-2096|Add "text:table-of-content" import/export|Feature|
|WORDSNET-2902|Consider exposing pagination information for document elements.|Feature|
|WORDSNET-2978|Consider exposing layout information of nodes.|Feature|
|WORDSNET-5155|Support SVG in HTML|Feature|
|WORDSNET-6565|img.border is ignored when loading HTML|Feature|
|WORDSNET-7036|Rework FORMCHECKBOX rendering.|Feature|
|WORDSNET-7219|Support custom axis titles rotation angle|Feature|
|WORDSNET-7235|Arrows inside the DML are missing in PDF|Feature|
|WORDSNET-7254|Provide native Page Finder implementation|Feature|
|WORDSNET-7352|Implement public FieldCollection|Feature|
|WORDSNET-7378|Provide a Warning during layout of documents with hyphenation|Feature|
|WORDSNET-7431|Table borders are not rendering at the very bottom edge of Page in Pdf|Feature|
|WORDSNET-7476|Angle of Arrow Shape is lost in output documents|Feature|
|WORDSNET-7503|Hanging punctuation is not applied to header|Feature|
|WORDSNET-7518|Provide events in the API similar to those provided by Word.Application and Word.Document classes|Feature|
|WORDSNET-7598|SwfSaveOptions- Add an option to prevent printing of SWF file|Feature|
|WORDSNET-7676|Support import of images from HTML using embed, object and iframe tags|Feature|
|WORDSNET-7684|Support binary OLE objects (&lt;draw:object-ole&gt;) in ODT|Feature|
|WORDSNET-7620|Extract a calculation of RunPr for Node from a loop by DocumentRunSplitter|Performance|
|WORDSNET-7661|Move calculation of Font from LayoutSpan.Font to new method in class LprSpan|Performance|

