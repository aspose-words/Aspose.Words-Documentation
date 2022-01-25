---
title: Aspose.Words for .NET 16.12.0 Release Notes
description: "Aspose.Words for .NET 16.12.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 10
url: /net/aspose-words-for-net-16-12-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 16.12.0](https://www.nuget.org/packages/Aspose.Words/16.12.0)

{{% /alert %}} 

## Major Features

There are 73 improvements and fixes in this regular monthly release. The most notable are:

- Save to image formats can be fine-tuned by passing RenderingHints (TextRenderingHint, InterpolationMode etc.) to ImageSaveOptions.GraphicsQualityOptions
- Support of the "people" part (Word 2013 feature)
- StructuredDocumentTag extensions supported (Word 2013 feature)
- REVNUM, INFO fields supported
- Improved handling of hanging punctuation and hyphens in complex script content
- Improved handling of "Automatically adjust space between Asian text and numbers" compatibility option
- Improved paragraph alignment when text contains hidden content
- Improved reflow of vertically merged cells for complex table grid layout
- Implemented combining adjacent tables on document loading
- Path gradient fill support while rendering SVG implemented
- Leader lines rendering for all DrawingML Chart types (not only for pie-charts) implemented
- Styles are now properly applied for DrawingML Charts while rendering

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-13203|Incorrect cell width causes contents to wrap to the next line|Bug|
|WORDSNET-13350|Incorrect image size in AW pdf output|Bug|
|WORDSNET-13355|Some images not displayed correctly when converting from docx to pdf|Bug|
|WORDSNET-13398|Docx to Pdf conversion issue with Shape (image) rendering|Bug|
|WORDSNET-13413|Row deletion is not read properly.|Bug|
|WORDSNET-13469|Vertical position of stretched text is incorrect.|Bug|
|WORDSNET-13480|Formatting in CellFormat.Borders changes after read-only access|Bug|
|WORDSNET-13492|Table's cell shading is lost in output Pdf|Bug|
|WORDSNET-13647|Conversion from .odt file to .pdf file has TOC formatting issues|Bug|
|WORDSNET-13771|Hidden row is read incorrectly.|Bug|
|WORDSNET-13772|Hidden row is read incorrectly.|Bug|
|WORDSNET-13796|RTL text is getting reversed during Docx to Html conversion|Bug|
|WORDSNET-13990|Soft hyphen in HTML (&shy;) is exported to hyphen in output Docx|Bug|
|WORDSNET-14026|System.NullReferenceException during save to docx|Bug|
|WORDSNET-14038|Document.Compare produces wrong output|Bug|
|WORDSNET-14059|Docx to Pdf conversion issue with image border|Bug|
|WORDSNET-14070|When Chart object in Word document is converted to .jpg image, color of axis is different|Bug|
|WORDSNET-14080|Paragraphs containing nothing but tabs disappear in HTML|Bug|
|WORDSNET-14090|Hanging punctuation character is placed inside a line.|Bug|
|WORDSNET-14094|SpanHyphen width is incorrect when the document grid is defined.|Bug|
|WORDSNET-14191|Issue with embedded vsd after re-saving Docx|Bug|
|WORDSNET-14192|Document.Compare returns incorrect document for same input document|Bug|
|WORDSNET-14207|Getting Extra Revisions When Comparing Two Word Documents Which Contain TextBox With Some Changes|Bug|
|WORDSNET-14260|Custom Styles are lost on HTML-Aspose.Words-HTML roundtrip|Bug|
|WORDSNET-14262|Field.Type returns none for hyperlink when it is hidden|Bug|
|WORDSNET-14278|Content of the formatted balloons in the generated pdf file is different than in the doc file|Bug|
|WORDSNET-14279|Document.JoinRunsWithSameFormatting does not work for Docx|Bug|
|WORDSNET-14283|When DOCX converted to HTML, paragraph looks different in HTML.|Bug|
|WORDSNET-14295|Image is lost after re-saving Docx|Bug|
|WORDSNET-14309|Compare issues in table|Bug|
|WORDSNET-14312|Currency values disappearing in PDF|Bug|
|WORDSNET-14317|Color of SVG is lost in output Html/Pdf|Bug|
|WORDSNET-14368|Text of content control is lost after conversion from Docx to Xps|Bug|
|WORDSNET-14373|Rtf to Pdf conversion issue with paragraph's alignment|Bug|
|WORDSNET-14383|Document.PageCount returns wrong number of pages.|Bug|
|WORDSNET-14404|When Word document is converted to PDF, part of the content is missing|Bug|
|WORDSNET-14411|Cell revisions is written incorrectly.|Bug|
|WORDSNET-14418|Wrong indentation of text in List in PDF|Bug|
|WORDSNET-14420|Docx to Pdf conversion issue with shape's position|Bug|
|WORDSNET-14422|Document.UpdateFields updates the INDEX field incorrectly|Bug|
|WORDSNET-14426|Line break is converted to "*x000d*" in output Pdf|Bug|
|WORDSNET-14435|Excessive revisions number for minor change in table - Compare|Bug|
|WORDSNET-14438|Unexpected empty space is appeared after using DocumentBuilder.InsertDocument|Bug|
|WORDSNET-14447|Symbol are wrong in the genarted PDF rendition|Bug|
|WORDSNET-14455|Image is lost after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-8240|Embedded images are not preserved during open/save MHTML|Bug|
|WORDSNET-8340|Text color in SmartArt DML is not preserved during rendering|Bug|
|WORDSNET-8440|Incorrect spaces between words of bidirectional text in HTML Fixed Page documents|Bug|
|WORDSNET-9717|An embedded font is not written in output Word formats|Bug|
|WORDSNET-8563|MhtmlReader does not support complex body|Enhancement|
|WORDSNET-14030|Aspose.Words.FileCorruptedException is thrown while loading FlatOpc|Exception|
|WORDSNET-14061|System.NotSupportedException is thrown while loading mhtml|Exception|
|WORDSNET-14261|System.IndexOutOfRangeException is thrown while saving Docx to pdf|Exception|
|WORDSNET-14289|Document.UpdatePageLayout throws System.NullReferenceException|Exception|
|WORDSNET-14293|System.InvalidCastException is thrown while convert Docx to Html|Exception|
|WORDSNET-14421|Aspose.Words.FileCorruptedException is thrown while loading Docx|Exception|
|WORDSNET-14441|ArgumentNullException while save to html|Exception|
|WORDSNET-14442|Aspose.Words.FileCorruptedException occurs upon loading a RTF|Exception|
|WORDSNET-14443|Aspose.Words.FileCorruptedException occurs upon loading a ODT|Exception|
|WORDSNET-14487|NullReferenceException occurs when converting from Word to HTML or PDF|Exception|
|WORDSNET-12756|Docx to PDF table width wider than page width|Feature|
|WORDSNET-13761|Table's header rows are not rendered in output Pdf|Feature|
|WORDSNET-13916|Support rendering of leader lines for all chart types.|Feature|
|WORDSNET-14364|Support REVNUM field|Feature|
|WORDSNET-14365|Support INFO field|Feature|
|WORDSNET-14475|Word Document gets stuck in conversion with long period of high CPU|Performance|
|WORDSNET-13044|DocumentBuilder.InsertDocument changes table's layout|Regression|
|WORDSNET-13243|Table layout is corrupted after mail merge|Regression|
|WORDSNET-14390|Mail Merge problem with Nested Triggers|Regression|
|WORDSNET-14490|Value of ResourceLoadingArgs.Uri is ignored during HTML import|Regression|
|WORDSNET-14534|Document.UpdateFields throws System.NullReferenceException|Regression|
|WORDSNET-14549|System.NullReferenceException is thrown when docx is saved to pdf|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 16.12.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### WORDSJAVA-1447 - Pass RenderingHints as a parameter in ImageSaveOptions

ImageSaveOptions.GraphicsQualityOptions is added so user can pass RenderingHints (TextRenderingHint, InterpolationMode etc.) as a parameter of GdiRenderer:

### WORDSNET-14364 - REVNUM field supported

We have added the support for the REVNUM field. It can be updated now:

### WORDSNET-14365 - INFO field supported

We have added the support for the INFO field. It can be updated now:
