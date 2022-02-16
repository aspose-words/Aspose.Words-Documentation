---
title: Aspose.Words for .NET 13.7.0 Release Notes
articleTitle: Aspose.Words for .NET 13.7.0 Release Notes
linktitle: Aspose.Words for .NET 13.7.0 Release Notes
description: "Aspose.Words for .NET 13.7.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 40
url: /net/aspose-words-for-net-13-7-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 13.7.0](https://www.nuget.org/packages/Aspose.Words/13.7.0)

{{% /alert %}} 

## Aspose.Words for .NET 13.7 Release Notes

### What's New

There are 138 improvements and fixes in this regular monthly release. The most notable are: 

- Rendering of table diagonal borders
- Document structure output into PDF/A-1a compliance
- Export of SDT controls as editable PDF form fields
- Improved text wrapping logic for section breaks
- EQ (mathematical) fields rendering implemented
- Added options for setting image resolution while rendering to PDF
- Fixed problem with incorrect font rendering for Korean language
- Supported theme overrides (OOXML)
- Improved format revision support (including styles)
- Several improvements in OLE support area


## All Fixes

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-4965|Position of frame is incorrect after rendering.|Bug|
|WORDSNET-5021|A field with CHARFORMAT is bold on update, though field code is not bold.|Bug|
|WORDSNET-6002|Images are rendered as red crosses to document|Bug|
|WORDSNET-6142|Field switch is incorrectly added to the end of an INCLUDEPICTURE field|Bug|
|WORDSNET-6380|Image in DOCX is not visible when rendering to HTML|Bug|
|WORDSNET-6528|Mergefield with CAPS formatting switch produces incorrect results.|Bug|
|WORDSNET-6794|Content of Table in header is truncated in HTML|Bug|
|WORDSNET-7166|/revisions/ Cells have extra padding at the bottom in PDF|Bug|
|WORDSNET-7490|SEQ fields do not reset on the headings level|Bug|
|WORDSNET-7909|SEQ field "\s" option is not taken into account by UpdateFields|Bug|
|WORDSNET-8082|Unwanted border around the OLEObject is added in PDF|Bug|
|WORDSNET-8181|MS Word 2013 displays broken RTL text|Bug|
|WORDSNET-8183|RTL text is reversed in Fixed Page HTML|Bug|
|WORDSNET-8216|DocumentBuilder does not inherit Bookmark formatting when moving cursor to that Bookmark|Bug|
|WORDSNET-8249|Charts do not render in HtmlFixed after conversion from Doc|Bug|
|WORDSNET-8256|Incorrect ActiveX control sized cause inline shape to wrap to the next line in PDF|Bug|
|WORDSNET-8276|Font.Hidden property returns old value for a revised document|Bug|
|WORDSNET-8311|Composite nodes are joined in a wrong way while field result removal.|Bug|
|WORDSNET-8342|WordML to Pdf conversion issue with DOCPROPERTY|Bug|
|WORDSNET-8355|Calling UpdateFields method twice turns on the Link To Previous option|Bug|
|WORDSNET-8363|SaveOptions.WarningCallback do not work for ImageSaveOptions (Tiff)|Bug|
|WORDSNET-8374|Direct formatting attributes are added to the Paragraphs and Runs inside SDT during UpdatePageLayout.|Bug|
|WORDSNET-8409|Docx to Doc conversion issue with mathematical formulas|Bug|
|WORDSNET-8413|All formatting of copied style is not applied to Paragraphs|Bug|
|WORDSNET-8423|Docx to Pdf conversion issue with content misplacement|Bug|
|WORDSNET-8431|ImageData.GrayScale property is not respected during rendering to PDF|Bug|
|WORDSNET-8434|OfficeMath equations are exported to HTML as blank images in Windows 8|Bug|
|WORDSNET-8452|Fix JavaDoc error that occurs when running doc script|Bug|
|WORDSNET-8459|Doc to Pdf conversion issue with image rendering|Bug|
|WORDSNET-8462|Paragraph gets unexpected line spacing after mail merge|Bug|
|WORDSNET-8463|Transparent background of an image is lost during rendering to PDF|Bug|
|WORDSNET-8465|StructuredDocumentTag Node does not import from one document to another|Bug|
|WORDSNET-8477|OleFormat.Save does not save the data of the embedded object|Bug|
|WORDSNET-8479|Docx to Pdf conversion issue with date rendering|Bug|
|WORDSNET-8480|A Hyperlink does not work when converting document to PDF|Bug|
|WORDSNET-8481|Bullets are missing after conversion from Docx to Pdf|Bug|
|WORDSNET-8485|Margin-left of styled headers isn't correct when you have a table in the html|Bug|
|WORDSNET-8486|An image in PDF is displayed very small in when converted from RTF|Bug|
|WORDSNET-8494|Import characters in range 0x80 - 0x9F from HTML documents encoded in 'ISO-8859-1'|Bug|
|WORDSNET-8496|H2 heading causes Row to render on the next page|Bug|
|WORDSNET-8497|TextBox shape overlaps the content around it's edges in PDF|Bug|
|WORDSNET-8500|UpdateFields places a TOC at incorrect position in output document|Bug|
|WORDSNET-8505|Font changes during importing nodes into another document|Bug|
|WORDSNET-8508|PAGE and NUMPAGES fields are displaying 'Error! Bookmark not defined' message in PDF|Bug|
|WORDSNET-8510|While generating a PdfA1b from DOCX it is showing white strip and removing content from textbox|Bug|
|WORDSNET-8511|Number rendering issue with NumeralFormat.Context in mail merge|Bug|
|WORDSNET-8516|Bold simulation issue with Chinese font|Bug|
|WORDSNET-8519|Some items in existing list are nested inside a new numbered list|Bug|
|WORDSNET-8520|Docx to Pdf Conversion issue with chart position|Bug|
|WORDSNET-8521|Docx to Pdf conversion issue with Legends rendering|Bug|
|WORDSNET-8526|Font fallback issue with Korean text|Bug|
|WORDSNET-8527|List items and their indentations are not preserved during open/save HTML|Bug|
|WORDSNET-8529|Left indentation of list is not correct when converting HTML to DOC|Bug|
|WORDSNET-8544|Table.ClearBorders() adds borders to the Cells|Bug|
|WORDSNET-8546|Date Type StructuredDocumentTag do not render correctly in output Pdf|Bug|
|WORDSNET-8547|Bullet symbols are rendering as question marks in IE 7 and IE8|Bug|
|WORDSNET-8556|Docx to Pdf conversion issue with vertical axis title|Bug|
|WORDSNET-8559|Docx to SVG conversion issue with RTL text|Bug|
|WORDSNET-8560|Doc to Pdf conversion issue with Font Courier New|Bug|
|WORDSNET-8579|Hidden text becomes visible in XamlFlowPack|Bug|
|WORDSNET-8582|Extensive use of Frames in DOCX causes many formatting issues in EPUB|Bug|
|WORDSNET-8591|Shape.OleFormat.IconCaption return incorrect value|Bug|
|WORDSNET-2098|Line spacing is different when appending one document to another|Enhancement|
|WORDSNET-2968|Paragraph indentation is incorrect during rendering.|Enhancement|
|WORDSNET-3526|SUM(ABOVE) does not work if there are data inside brackets.|Enhancement|
|WORDSNET-4284|NEXTIF field with mail merge regions throws exception if last record in datasource|Enhancement|
|WORDSNET-4303|Paragraph alignment is changed after appending document.|Enhancement|
|WORDSNET-6612|Wingdings symbol in HTML are not appearing correctly in IE8 but Firefox.|Enhancement|
|WORDSNET-7651|Move external image files for TestImportJacobPalmeSamples tests into our wiki.|Enhancement|
|WORDSNET-8260|Caps of arrow disappear on shadows|Enhancement|
|WORDSNET-8261|Some arrows appear incorrectly if they have not extrusion effect.|Enhancement|
|WORDSNET-8295|Test SVG image support on mobile Safari|Enhancement|
|WORDSNET-8307|Border width is ignored when paragraphs are positioned in HTML|Enhancement|
|WORDSNET-8329|Update EULA to 1st June revision|Enhancement|
|WORDSNET-8337|Paragraphs overlap when viewing the output HtmlFixed file with IE6, IE7 or IE8|Enhancement|
|WORDSNET-8388|font-size mentioned in html span tag is imported incorrectly in DOM|Enhancement|
|WORDSNET-8433|Rendering of DrawingML in RGB color format|Enhancement|
|WORDSNET-8437|Get rid of Bbt. Use an easier implementation for iterator of PageParts.|Enhancement|
|WORDSNET-8445|MailMerge.Execute does not fill mail merge fields in the document|Enhancement|
|WORDSNET-8461|Inserting data into a merge field using DocumentBuilder inside FieldMerging no longer works|Enhancement|
|WORDSNET-8482|Do not include empty headings to the PDF document outline|Enhancement|
|WORDSNET-8484|Express - Update EULA to 1st June revision|Enhancement|
|WORDSNET-8488|A Table renders on to the bottom of previous page and gets truncated|Enhancement|
|WORDSNET-8489|Tables inside TextBox Shape overlap the remaining content|Enhancement|
|WORDSNET-8490|A logo image gets partially rendered more towards top page edge in Pdf|Enhancement|
|WORDSNET-8491|Mhtml filie is detected as txt|Enhancement|
|WORDSNET-8495|Extra blank page is added during rendering to PDF|Enhancement|
|WORDSNET-8507|Fix bugs reported with DocumentLayoutHelper|Enhancement|
|WORDSNET-8509|DrawingML gets clipped and distorted when viewing print preview in Chrome|Enhancement|
|WORDSNET-8524|Png image is read (parsed) twice during saving to pdf.|Enhancement|
|WORDSNET-8536|Docx to Pdf conversion issue with list items when Run.Font.Hidden is set to false|Enhancement|
|WORDSNET-8575|Text pushed to the next page, leaving a column empty.|Enhancement|
|WORDSNET-8597|Take into account shape type during textbox size calculation|Enhancement|
|WORDSNET-4569|FileCorruptedException is thrown on Mhtml import|Exception|
|WORDSNET-6303|Consider adding resilency during updating formula fields|Exception|
|WORDSNET-8282|Aspose.Words.FileCorruptedException occurs when loading MHTML file|Exception|
|WORDSNET-8444|DocumentLayoutHelper example code example throws Exception|Exception|
|WORDSNET-8448|Document.Save throws System.InvalidOperationException (Stack empty)|Exception|
|WORDSNET-8514|XamlReader.Load throws XamlParserException when loading XamlFlowPack|Exception|
|WORDSNET-8553|NullReferenceException occurs during exporting DOC to HTML|Exception|
|WORDSNET-8568|NullReferenceException occurs during rendering to PDF or HTML|Exception|
|WORDSNET-8571|NullReferenceException occurs during exporting DOC to HTML or PDF|Exception|
|WORDSNET-8573|InvalidOperationException occurs when converting Doc to Html or Pdf|Exception|
|WORDSNET-8577|InvalidCastException occurs during loading a DOCX|Exception|
|WORDSNET-8586|StackOverflowException occurs during appending document to another document|Exception|
|WORDSNET-8590|Shape.OleFormat.IconCaption throws exception|Exception|
|WORDSNET-8606|InvalidCastException occurs during Open/Save a DOC|Exception|
|WORDSNET-1673|Render EQ fields to a visual form in layout|Feature|
|WORDSNET-7987|Consider exporting SDT controls as editable PDF form fields|Feature|
|WORDSNET-8058|Line ends is not considered during appling extrusion effect|Feature|
|WORDSNET-8063|Colored chart becomes grayscale during open/save|Feature|
|WORDSNET-8111|Create an article that describes how to use Aspose.Words in MS Access application|Feature|
|WORDSNET-8167|/cell border diagonal/ Diagonal borders in table cells are missing from fixed page formats|Feature|
|WORDSNET-8271|Export document logical structure to PdfRenderer along with APS model|Feature|
|WORDSNET-8272|Write logical structure to PDF|Feature|
|WORDSNET-8275|Text inside FORMDROPDOWN is not wrapping to multiple lines in PDF|Feature|
|WORDSNET-8303|Implement 'volume line' building for line with different Dash Style.|Feature|
|WORDSNET-8390|Preserve protection of selected ranges upon RTF round-trip.|Feature|
|WORDSNET-8426|Render DrawingML picture as ApsImage|Feature|
|WORDSNET-8446|Support import of element 'image' in DOCX format|Feature|
|WORDSNET-8458|Implement 'volume line' building for line with different Dash Style for DML lines.|Feature|
|WORDSNET-8475|Provide PdfSaveOptions.ImageResolution property|Feature|
|WORDSNET-8522|Provide an option to keep source image resolution when rendering to PDF|Feature|
|WORDSNET-8533|Provide a way to distinguish different story types in LayoutApsBuilder|Feature|
|WORDSNET-8534|Provide a way to determine text language in LayoutApsBuilder|Feature|
|WORDSNET-8535|Provide a way to get AltText for pictures and tables in LayoutApsBuilder|Feature|
|WORDSNET-8236|Investigate if special tags get tempered during printing DOC to RightFax|Performance|
|WORDSNET-8555|Optimize process of creating/caching LprSpan objects in SpanGenerator|Performance|
|WORDSNET-8584|DrawingML causes Aspose.Words to hang during rendering DOCX to PDF|Performance|
|WORDSNET-8380|ExportFontResources causes System.ArgumentException when exporting a DOC to EPUB|Regression|
|WORDSNET-8385|Language information is no longer exported to HTML|Regression|
|WORDSNET-8432|A Table splits into two tables during open/save a DOCX|Regression|
|WORDSNET-8540|System.ArgumentOutOfRangeException occurs during rendering to HTML|Regression|
|WORDSNET-8548|Aspose.Words.FileCorruptedException occurs when loading a DOC|Regression|
|WORDSNET-8549|Aspose.Words.FileCorruptedException occurs when loading a DOC|Regression|
|WORDSNET-8550|System.InvalidOperationException occurs during rendering DOC to HTML|Regression|
|WORDSNET-8551|System.InvalidOperationException occurs during rendering DOC to HTML|Regression|
|WORDSNET-8554|InvalidOperationException occurs during exporting DOC to HTML|Regression|

