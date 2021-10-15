---
title: Aspose.Words for Java 18.5 Release Notes
type: docs
weight: 80
url: /java/aspose-words-for-java-18-5-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 18.5](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.5).

{{% /alert %}} 

## Major Features

There are 75 improvements and fixes in this regular monthly release. The most notable are:

- Added public property StructuredDocumentTag.Color 
- Improved logic to detect the encoding of a short TXT file.
- Fixed line wrapping with trailing spaces at the end
- Fixed issue with paragraph after spacing in headers/footers
- Fixed issue with table width when widthAfter is specified for a jagged table
- Fixed issue with table width with complex column layout and default widths
- Fixed breaking of floating table row in compatibility mode
- Fixed issue with floating frame pushed from the page because of invalid wrap point
- Implemented support for "distribute space" and "distribute letter" types of alignment when rendering Ruby objects
- Improved rendering of a Doughnut DrawingML Chart with a few series
- Improved rendering of DrawingML Charts data labels with the direct layout and a layout specified in the extension properties
- Fixed a problem with metafile rendering when glyph offsets were wrongly read for EMF_EXTTEXTOUT record with glyph indices
- Fixed a problem with processing of control character (U+0019) in the text when rendering
- Fixed a problem with Adobe “Fast Find” function (words searching) in rendered PDF documents
- Fixed a bug with inaccurate processing of EMR_ALPHABLEND record while rendering metafiles. This bug caused a loss of fill in some figures
- Fixed a bug with rendering of PieChart data label separator when it is set directly
- Fixed rendering of a dashed line shapes with a shadow
- LINQ Reporting Engine supports ?. and ?[] null-conditional operators in template expressions

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1753|Path Gradient Brush disappears after Scale Transform.|Bug|
|WORDSJAVA-1758|Curly braces in chart are lost in PDF|Bug|
|WORDSJAVA-1772|Some Parts of Picture are not visible in rendered PDF|Bug|
|WORDSJAVA-1754|com.aspose.words.UnsupportedFileFormatException: Unknown file format: Unknown|Exception|
|WORDSJAVA-1755|UnsupportedOperationException is thrown when IMailMergeDataSource is implemented|Exception|
|WORDSJAVA-1761|com.aspose.words.FileCorruptedException is thrown when Locale language is invalid|Exception|
|WORDSJAVA-1765|Analyze what it takes to work Aspose Words for Java in Ruby using Docker container|Exception|
|WORDSNET-16781|Aspose does not recognize footer of WordML 2003|Bug|
|WORDSNET-16775|Charset is detected incorrectly if file has less then 10 symbols|Bug|
|WORDSNET-16756|Tables are stretched beyond the right Page boundaries in PDF|Bug|
|WORDSNET-16754|Document.Compare generate incorrect number for numbered list|Bug|
|WORDSNET-16729|REF-field with custom separator does not update when DOCX is saved to PDF|Bug|
|WORDSNET-16657|Dashed Arrow Line Disappears from PDF|Bug|
|WORDSNET-16641|Background color in picture not preserved in PDF|Bug|
|WORDSNET-16640|The data label with the manual layout is shifted when converting to PDF|Bug|
|WORDSNET-16630|MailMergeRegionInfo.Fields accepts Field instances in some cases|Bug|
|WORDSNET-16629|Unable to search for words in a PDF document|Bug|
|WORDSNET-16627|Content are lost after conversion from DOCX to PDF|Bug|
|WORDSNET-16624|Opening&Saving a Word document changes its layout|Bug|
|WORDSNET-16613|An extra character added after PDF rendition.|Bug|
|WORDSNET-16608|The text of one of the chart labels is changed when converting to PDF|Bug|
|WORDSNET-16589|Rotation of shape is lost after saving DOTX to DOCX|Bug|
|WORDSNET-16586|RTF > DOCX makes word joiner characters wide|Bug|
|WORDSNET-16573|Image is lost after conversion from DOCX to PDF|Bug|
|WORDSNET-16550|DOCX to PDF conversion issue with paragraph rendering inside table's cell|Bug|
|WORDSNET-16549|Shape renders partially in PDF|Bug|
|WORDSNET-16547|Indentation of a paragraph changes after RTF to DOCX conversion|Bug|
|WORDSNET-16538|EQ field representing Japanese Text renders incorrectly in PDF|Bug|
|WORDSNET-16529|Space after paragraph not included in header height|Bug|
|WORDSNET-16520|The label separator for PieChart is changed after converting DOCX to PDF.|Bug|
|WORDSNET-16519|Font size of paragraph break character is changed after saving DOTX to PDF|Bug|
|WORDSNET-16512|Incorrect detection of a Format Change Revision|Bug|
|WORDSNET-16383|Content are moved to next page after re-saving DOCX|Bug|
|WORDSNET-16360|WordArt shape fill picture is changed after document loading and saving|Bug|
|WORDSNET-15611|Table structure is invalid after import from HTML|Bug|
|WORDSNET-15518|Paragraphs are rendered on next page in output PDF|Bug|
|WORDSNET-15457|Incorrect page number reflecting in footer|Bug|
|WORDSNET-15456|Incorrect page number in footer|Bug|
|WORDSNET-15032|RTF document is read incorrectly.|Bug|
|WORDSNET-12964|Text in Cells not completely rendering in PDF|Bug|
|WORDSNET-12433|Shape rending issue while converting Doc to Pdf|Bug|
|WORDSNET-11698|Table's border appears after converting RTF to Tiff/Rtf|Bug|
|WORDSNET-11304|Docx to Pdf conversion issue with equation rendering|Bug|
|WORDSNET-10755|Table's columns are missing after conversion from Doc to Pdf|Bug|
|WORDSNET-10351|Content's position is changed after conversion from Doc to Pdf|Bug|
|WORDSNET-10179|Content and formatting of Table is partially preserved in PDF|Bug|
|WORDSNET-9066|Docx to Pdf conversion issue with chart rendering|Bug|
|WORDSNET-8291|Paragraph is rendering on the previous page in Pdf|Bug|
|WORDSNET-7737|Paragraph line spacing is improperly calculated upon rendering document with frame|Bug|
|WORDSNET-6537|Document.HasMacros returns incorrect value|Bug|
|WORDSNET-6172|Header text cut off from left side while converting doc to Pdf, XPS, Tiff|Bug|
|WORDSNET-6038|Width of Page Borders is not the same across a few pages|Bug|
|WORDSNET-5447|Shape is rendered with flipped dimensions|Bug|
|WORDSNET-5212|Non-ASCII character is stripped from the root in the navigation pane when exporting to EPUB|Bug|
|WORDSNET-10536|Left indentation of Table is increased by few points in PDF|Bug|
|WORDSNET-16738|Keep a color from a template for an OfPie chart slice that is beign detailed if dynamic chart series/point coloring is used|Enhancement|
|WORDSNET-16256|DOCX to PDF issue with Tables|Enhancement|
|WORDSNET-15266|Text and Shapes are lost in output PDF|Enhancement|
|WORDSNET-15265|Content position is change in output PDF|Enhancement|
|WORDSNET-15053|Converting DOCX to PDF produced an extra blank page|Enhancement|
|WORDSNET-13071|Frame with a section break is not pushed to follow the anchor|Enhancement|
|WORDSNET-13070|Floating frame not pushed to follow the anchor|Enhancement|
|WORDSNET-12516|Page contents are duplicated after conversion from Docx to Pdf|Enhancement|
|WORDSNET-11894|Docx to Pdf conversion issue with content position|Enhancement|
|WORDSNET-7630|Doc to PDF conversion issue with frame Position after mail merge|Enhancement|
|WORDSNET-6586|Consider rendering \r to PDF the way MS WORD does|Enhancement|
|WORDSNET-16779|An exception has been thrown while converting to the fixed layout.|Exception|
|WORDSNET-16638|InvalidDocumentModel error occurs when looping Range.Fields|Exception|
|WORDSNET-16594|Aspose.Words.FileCorruptedException is thrown while importing ODT|Exception|
|WORDSNET-16148|System.ArgumentOutOfRangeException is thrown while saving DOCX to HTML|Exception|
|WORDSNET-16571|Charts do not render correctly in output DOC/PDF|Feature|
|WORDSNET-16532|Allow to highlight and change outline color of Content Controls SDT|Feature|
|WORDSNET-16227|Add feature to support null-conditional (A?.B) and null-coalescing (A ?? B) operators|Feature|
|WORDSNET-16755|Incorrect conversion of bullet points in word|Regression|
|WORDSNET-16610|RTF to HTML loses bullets after upgrading Aspose|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose. Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Added Public Property StructuredDocumentTag.Color

This property enables to control the ***Color*** of a content control.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the color of the structured document tag.
/// </summary>
public java.awt.color Color
{{< /highlight >}}

The ***Color*** affects content control in two situations:
\1) MSW highlights the background of the content control when the mouse moves over the content control. This helps user to identify that it is a content control.
The color of highlighting is a bit "softer", than the ***Color***. For example, MSW highlights background with the pink color, when ***Color*** is Red.
\2) When user interacts (editing, picking etc) with the content control, the border of content control is colored with the ***Color***.

Example of use:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "input.docx");
StructuredDocumentTag sdt = (StructuredDocumentTag)doc.getChild(NodeType.STRUCTURED_DOCUMENT_TAG, 0, true);
sdt.setColor(Color.RED);
dataDir = dataDir + "SetContentControlColor_out.docx";

// Save the document to disk.
doc.save(dataDir);
{{< /highlight >}}

### Obsolete Property HtmlSaveOptions.ExportMetafileAsRaster was Removed

Obsolete property ExportMetafileAsRaster was removed from the HtmlSaveOptions class. Please use the HtmlSaveOptions.MetafileFormat property instead.

### Supported Null-Conditional Operators in Template Expressions for LINQ Reporting Engine

Related issue: WORDSNET-16227

The "[Using Operators](/words/java/using-operators/)" section of the engine's documentation was updated to describe the change.
