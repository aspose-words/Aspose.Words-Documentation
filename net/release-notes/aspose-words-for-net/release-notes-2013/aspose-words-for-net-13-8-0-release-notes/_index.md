---
title: Aspose.Words for .NET 13.8.0 Release Notes
type: docs
weight: 30
url: /net/aspose-words-for-net-13-8-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 13.8.0](https://www.nuget.org/packages/Aspose.Words/13.8.0)

{{% /alert %}} 

## Aspose.Words for .NET 13.8 Release Notes

### What's New

There are 142 improvements and fixes in this regular monthly release. The most notable are: 

- Rendering to PostScript 3.0 is now supported
- Metafile rendering performance significantly improved
- EditableRange API introduced
- German ordinal/cardinal list label generation supported
- Improved tab width computation in marginal scenarios
- Improved table border rendering with conflicting or missing attributes


## All Fixes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-1739|Colspan duplicates cells during opening HTML.|Bug|
|WORDSNET-5239|Numbering in RTL document goes outside right margin|Bug|
|WORDSNET-5286|Vertical merge information lost after open/save HTML.|Bug|
|WORDSNET-5358|Shapes does not appear on "Selection Pane" in MS Word 2010 after open/save DOCX|Bug|
|WORDSNET-5416|On DOC to PDF conversion, Table at the end of page is truncated|Bug|
|WORDSNET-5630|Incorrect page layout in PDF and Debug.Assert warnings while loading the document.|Bug|
|WORDSNET-5636|Incorrect rotation of the image|Bug|
|WORDSNET-5669|Word Table header row content is aligned incorrectly in HTML|Bug|
|WORDSNET-5771|Horizontally merged cells doesn't work in PDF/DOC etc|Bug|
|WORDSNET-5923|A graybox is added on top left corner in Fixed page formats|Bug|
|WORDSNET-5944|While converting docx to html, left border of the table is missing.|Bug|
|WORDSNET-5952|While converting doc to html, empty paragraphs are missing.|Bug|
|WORDSNET-5967|Frame around the image is misplaced during rendering|Bug|
|WORDSNET-6068|Missing table contents after converting doc to PDF.|Bug|
|WORDSNET-6263|Incorrect text font occurs while simple merge field execute (merge field within page footer).|Bug|
|WORDSNET-6272|Incorrect DrawingML image layout while rendering.|Bug|
|WORDSNET-6348|Surrogate characters are not visible in Docx format.|Bug|
|WORDSNET-6407|RTF to PDF conversion same page duplicated numerous times|Bug|
|WORDSNET-6429|Output PDF/TIFF/XPS has one more page than the input DOC|Bug|
|WORDSNET-6539|One line Paragraph is rendering into two lines of text|Bug|
|WORDSNET-6604|Paragraph's first line is hanging incorrectly to the left|Bug|
|WORDSNET-7010|Cell widths are not maintained during open/save DOCX file|Bug|
|WORDSNET-7192|Content Controls display incorrect values after AppendDocument|Bug|
|WORDSNET-7692|Negative font size of a list label|Bug|
|WORDSNET-8353|SVG image do not render correctly in exported document|Bug|
|WORDSNET-8420|Text in Tables is made extra bold when rendering to PNG/TIFF|Bug|
|WORDSNET-8451|RemoveEmptyParagraphs does not remove empty Paragraphs containing NEXTIF fields|Bug|
|WORDSNET-8493|Doc to Pdf conversion issue - Underline is missing in PDF|Bug|
|WORDSNET-8512|Inaccurate baseline position of text fields when rendering to PDF|Bug|
|WORDSNET-8523|Hidden checkboxes become visible in PDF|Bug|
|WORDSNET-8528|STYLEREF is not working for German language|Bug|
|WORDSNET-8562|Docx to Pdf conversion issue with (pictograph) chart rendering|Bug|
|WORDSNET-8599|/extra long runs/ Base64 image data (text) is partially rendering to PDF|Bug|
|WORDSNET-8605|"Unknown document property name" error message is displayed in place of a DOCPROPERTY in PDF|Bug|
|WORDSNET-8617|Rectangle Shapes are shifted vertically down when appending document to another document|Bug|
|WORDSNET-8625|Paragraphs are not preserved during open/save an ODT|Bug|
|WORDSNET-8627|Content inside Shape is truncated from bottom in fixed page formats|Bug|
|WORDSNET-8628|Shape overlaps the content on it's right side in fixed page formats|Bug|
|WORDSNET-8629|Shape is rendering at incorrect place in PDF|Bug|
|WORDSNET-8630|Incorrect position of checkboxes when rendering to PDF|Bug|
|WORDSNET-8631|Incorrect position of text fields when rendering to PDF|Bug|
|WORDSNET-8643|After conversion from DOCX, text inside table becomes bold|Bug|
|WORDSNET-8654|Values of Date picker StructuredDocumentTags are not preserved when rendering to Pdf|Bug|
|WORDSNET-8657|DropCapPostion property is not working|Bug|
|WORDSNET-8660|Font size of non-English text increases when rendering to PDF|Bug|
|WORDSNET-8664|Document.AcceptAllRevisions do not work correctly|Bug|
|WORDSNET-8680|Docx to Fixed file format conversion issue with table borders rendering|Bug|
|WORDSNET-8682|Images are not imported from HTML when href contains escaped percent character (%25)|Bug|
|WORDSNET-8683|Text in Shapes is truncated from bottom when rendering Docx to Pdf|Bug|
|WORDSNET-8695|Doc to Pdf conversion issue with comment's position|Bug|
|WORDSNET-8699|List changes its number format after appending one document to another|Bug|
|WORDSNET-8713|Investigate if wrong fonts are used when rendering a Docx to Pdf or not|Bug|
|WORDSNET-8714|OleFormat.SuggestedExtension returns .bin for an embedded Doc|Bug|
|WORDSNET-8723|Font rendering issue after conversion from Doc to Png|Bug|
|WORDSNET-8746|Frames are not positioned at correct places when rendering to Pdf|Bug|
|WORDSNET-8753|Text is missing after conversion from RTF to Pdf|Bug|
|WORDSNET-8759|UpdateFields hangs on calculating PAGE and NUMPAGES fields|Bug|
|WORDSNET-8774|Field.Remove method doesn't remove all INCLUDEPICTURE fields from a Doc|Bug|
|WORDSNET-8778|Bitmap, Worksheet and Slide OleObjects are not preserved during open/save DOT|Bug|
|WORDSNET-8781|Value of FORMTEXT field is not preserved during open/save a Docx|Bug|
|WORDSNET-8782|Dash character is added right after the bullet after conversion from Docx to Pdf|Bug|
|WORDSNET-8791|Paragraph Font's inconsistency when it is set via DocumentBuilder.Font|Bug|
|WORDSNET-8793|Doc to Pdf conversion issue with page border|Bug|
|WORDSNET-8800|Shape causes Aspose.Words to hang during rendering DOC to HTML|Bug|
|WORDSNET-8806|A graph image is cropped from bottom and right during appending documents|Bug|
|WORDSNET-8831|Doc to Pdf conversion issue with Eq field|Bug|
|WORDSNET-2570|Center-aligned text becomes left-aligned after HTML roundtrip|Enhancement|
|WORDSNET-2778|Background specified using patterns is not displayed in HTML.|Enhancement|
|WORDSNET-2800|< br > between two tables doesn't take effect|Enhancement|
|WORDSNET-3550|Left alignment of text in one cell is changed to center alignment during HTML export.|Enhancement|
|WORDSNET-3703|Color specified in row style has no effect during HTML import.|Enhancement|
|WORDSNET-3726|First table row appears bold during converting to HTML.|Enhancement|
|WORDSNET-4244|Formating of table is incorrect when save to DOCX.|Enhancement|
|WORDSNET-4467|Make it possible to detect floating tables via the public API|Enhancement|
|WORDSNET-4477|Documents when saved in doc and pdf format looks different|Enhancement|
|WORDSNET-4482|File size is unacceptably increased after HTML export.|Enhancement|
|WORDSNET-4566|Background color applied to paragraph has no effect during HTML export.|Enhancement|
|WORDSNET-4703|FileCorruptedException is thrown upon loading MHTML.|Enhancement|
|WORDSNET-4951|Part of content is moved to the next page upon rendering.|Enhancement|
|WORDSNET-5702|WMF Raster operations is not supported // Doc to PDF conversion issue, when an excel embedded object exists in doc file|Enhancement|
|WORDSNET-5723|Image appears as "red cross" after open and save in html format.|Enhancement|
|WORDSNET-5791|section.PageSetup.RestartPageNumbering does not effect after conversion|Enhancement|
|WORDSNET-5857|table layouts get corrupted when "PAGE" field inserted|Enhancement|
|WORDSNET-6106|Improve Paragraph border rendering|Enhancement|
|WORDSNET-6262|UpdateFields messes the rendering of merged cells of table|Enhancement|
|WORDSNET-6385|CellMerge do not work properly when InsertField("Page") inserted after table|Enhancement|
|WORDSNET-6641|Layout Problems with DOC to PDF conversion|Enhancement|
|WORDSNET-7214|Consider adding a Callback event that triggers when a table is split across pages|Enhancement|
|WORDSNET-7819|Revision is read incorrecly.|Enhancement|
|WORDSNET-7981|Arrow heads in flow chart Shape are not visible in PDF|Enhancement|
|WORDSNET-8583|Table Borders are missing when converting Docx to PDF|Enhancement|
|WORDSNET-8611|Value of PAGE field is incorrectly calculated during RTF to PDF conversion|Enhancement|
|WORDSNET-8620|A Paragraph renders on to the previous page in PDF|Enhancement|
|WORDSNET-8653|StyleCollection.AddCopy do not work correctly with themes|Enhancement|
|WORDSNET-8666|Copies of the template are not getting separated by a section break in destination document|Enhancement|
|WORDSNET-8684|/legacy lists/ Amount of Tab space between List number and Text is incorrectly calculated during rendering to PDF|Enhancement|
|WORDSNET-8694|Aspose.Words.FileCorruptedException while loading Docx file int DOM|Enhancement|
|WORDSNET-8703|doc.Styles[StyleIdentifier.xxxx](https://apireference.aspose.com/words/net/aspose.words/styleidentifier) creates new style in the empty document|Enhancement|
|WORDSNET-8720|System.ArgumentException is thrown when exporting a Doc to Html|Enhancement|
|WORDSNET-8722|Font formatting issue after conversion from Doc to Png|Enhancement|
|WORDSNET-8807|TextBox overlaps the content of following Paragraph after appending documents|Enhancement|
|WORDSNET-366|Specifying an asterisk as table width during HTML import throws|Exception|
|WORDSNET-5192|InvalidOperationException is thrown upon rendering/converting to HTML|Exception|
|WORDSNET-6760|System.InvalidOperationException thrown while rendering DOCX to PDF|Exception|
|WORDSNET-7291|Aspose.Words.Document unable to load HTML file|Exception|
|WORDSNET-8270|Investigate exception with Aspose.Email dashboard examples|Exception|
|WORDSNET-8371|Exception while loading RTF file into Aspose.Words DOM.|Exception|
|WORDSNET-8572|NullReferenceException occurs during rendering Shape to Html or PDF|Exception|
|WORDSNET-8648|Aspose.Words.FileCorruptedException occurs when loading Docx file|Exception|
|WORDSNET-8697|Dashboard exception with Aspose.Email product|Exception|
|WORDSNET-8708|System.DivideByZeroException occurs during rendering Docx to Pdf|Exception|
|WORDSNET-8709|System.IndexOutOfRangeException occurs when converting Docx to Pdf|Exception|
|WORDSNET-8717|Can not find part of the path - Aspose.Email dashboard exception|Exception|
|WORDSNET-8748|InvalidCastException occurs during exporting DOCX to HTML|Exception|
|WORDSNET-8751|System.DivideByZeroException occurs during rendering Docx to Pdf|Exception|
|WORDSNET-8777|InvalidOperationException occurs during open/save a Docx|Exception|
|WORDSNET-8787|InvalidOperationException occurs when calling Document.AcceptAllRevisions method|Exception|
|WORDSNET-8817|Aspose.Words.FileCorruptedException occurs when loading DOC file|Exception|
|WORDSNET-1067|/protection ranges/ Support protection of selected ranges in documents.|Feature|
|WORDSNET-1960|Add an option to resample images to size and resolution before writing to PDF|Feature|
|WORDSNET-2304|Consider adding an ability to remove style from the document.|Feature|
|WORDSNET-3995|Support rendering document to PostScript|Feature|
|WORDSNET-4252|Consider adding a property to Style class which demonstrates if a Style is part of the Quick Styles gallery in a document|Feature|
|WORDSNET-4726|/protection ranges/ permStart/permEnd tags are lost during open/save DOCX and WML|Feature|
|WORDSNET-5998|Consider public API for removal of External Custom XML Schema References|Feature|
|WORDSNET-6196|Support German numbering localization|Feature|
|WORDSNET-6719|/protection ranges/ Header footer protection while document remains editable|Feature|
|WORDSNET-6905|Content controls become non-editable during open/save|Feature|
|WORDSNET-8389|Preserve protection of selected ranges upon DOC round-trip.|Feature|
|WORDSNET-8593|Document.Save do not preserve unprotected regions|Feature|
|WORDSNET-8594|Span width is not preserved during converting MHTML to Word|Feature|
|WORDSNET-8655|Add option to convert SVG to EMF instead of PNG in output Pdf file|Feature|
|WORDSNET-8765|Text moves to next line after conversion from Docx to Pdf|Feature|
|WORDSNET-8799|Render path gradient in SWF.|Feature|
|WORDSNET-8118|Document constructor hangs during loading a MHTML|Performance|
|WORDSNET-8543|Slow conversion of word to pdf with 13.6.0.0 but not with 11.4.0.0|Performance|
|WORDSNET-8822|System.OutOfMemoryException occurs during loading a MHTML|Performance|
|WORDSNET-8370|PageNumberFinder does no longer generate two column structured document|Regression|
|WORDSNET-8565|System.ArgumentOutOfRangeException occurs during rendering to HTML|Regression|
|WORDSNET-8578|Aspose.Pdf no longer reads metadata keys/values correctly in PDF generated by Aspose.Words|Regression|
|WORDSNET-8802|InvalidOperationException occurs during exporting DOC to HTML|Regression|
|WORDSNET-8803|Aspose.Words.FileCorruptedException occurs when loading DOC file|Regression|

