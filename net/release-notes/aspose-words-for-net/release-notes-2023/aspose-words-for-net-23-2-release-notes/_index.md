---
title: 23.2 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 23.2 Release Notes
linktitle: Aspose.Words for .NET 23.2 Release Notes
description: "Aspose.Words for .NET 23.2 Release Notes – the latest updates and fixes."
type: docs
weight: 65
url: /net/aspose-words-for-net-23-2-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 23.2](https://www.nuget.org/packages/Aspose.Words/23.2.0).

{{% /alert %}}

## Major Features

There are 77 improvements and fixes in this regular monthly release. The most notable are:

- MOBI (also called PRC, AZW) is Amazon Kindle's proprietary e-book file format is now supported for import and export.
- Added un ability to specify the character spacing adjustment of a document.
- Provided the way to instruct Aspose.Words whether to include textboxes, footnotes and endnotes in word count statistics.
- Introduced the new option for the document style, which allows specifying whether this style is automatically redefined based on the appropriate value.
- Significantly improved chart rendering.
- Implemented support for "Lay out footnotes the way Word 6.x/95/97 does" compatibility option.


## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24556|Make the Document.DocPr.DoNotIncludeSubDocsInStats property public|New Feature
|WORDSNET-24819|Count words from Footnotes and Endnotes|New Feature
|WORDSNET-24162|Add support for saving to MOBI|New Feature
|WORDSNET-24246|Provide functionality to merge PDF documents|New Feature
|WORDSNET-24455|Provide public API to get/set characterSpacingControl|New Feature
|WORDSNET-18310|Compress generated AZW3 documents|New Feature
|WORDSNET-24785|Implement relative coordinates support for rendering radial gradient brushes|New Feature
|WORDSNET-19864|Support rendering of the trendline equation|New Feature
|WORDSNET-19865|Support endering of the trendline R-squared value|New Feature
|WORDSNET-24798|Support rendering trendline equation and R-squared value on chart|New Feature
|WORDSNET-24741|Rendering of power trendline label|New Feature
|WORDSNET-24749|Rendering of polynomial trendline label|New Feature
|WORDSNET-24277|Prepare .Net 7 build and tests|New Feature
|WORDSNET-24712|Rendering of logarithmic trendline label|New Feature
|WORDSNET-24695|Rendering of exponential trendline label|New Feature
|WORDSNET-24743|Provide an ability of lazy document preview rendering|New Feature
|WORDSNET-17799|HTML to Word to PDF - Inline Anchor Tags|New Feature
|WORDSNET-24025|Load fonts in FontSearchInfoLoader in parallel|Enhancement
|WORDSNET-5018|Support "Lay out footnotes the way Word 6.x/95/97 does" compatibility option|Enhancement
|WORDSNET-16568|Add bookmarks for imported HTML elements with "id" attributes so that they can be referenced by hyperlinks in the same document|Enhancement
|WORDSNET-24343|DOCX->HTML->DOCX: Preserve TOC field codes|Enhancement
|WORDSNET-24835|Lowered inline image is improperly imported from HTML|Bug
|WORDSNET-1792|Manipulations with e.Node (on NodeInserted and NodeInserting events) have no effect in the result document|Bug
|WORDSNET-24699|Issue with Document.ExtractPages|Bug
|WORDSNET-24702|Different tab spaces inside the same ordered list|Bug
|WORDSNET-24795|Document with embedded fonts is rendered improperly|Bug
|WORDSNET-24739|Bullet point missing when mapping input XML to SDT|Bug
|WORDSNET-24842|Image cropping is lost after open/save RTF document|Bug
|WORDSNET-24782|Aspose.Words improperly updates formula fields hen group separator is used in numbers|Bug
|WORDSNET-24816|Header row is doubled after using ExtractPages method|Bug
|WORDSNET-19754|BadImageFormatException is thrown when using Aspose.Words.Shaping.Harfbuzz in Web application|Bug
|WORDSNET-21399|HarfBuzz does not work in .NET Web Application|Bug
|WORDSNET-24784|Document comparison produces unnecessary revisions|Bug
|WORDSNET-24805|FileCorruptedException is thrown upon loading DOCX document with HTML altChunk|Bug
|WORDSNET-24690|Position of footnote is incorrect after rendering|Bug
|WORDSNET-24791|Hanging indentation is lost after open/save DOCX document|Bug
|WORDSNET-24713|DOCX to PDF: Extra page is added upon conversion|Bug
|WORDSNET-24828|"TypeError: unknown wrapper type" error when try setting LayoutEnumerator.current|Bug
|WORDSNET-24875|Line count is incorrect with sub-docs included in statistics|Bug
|WORDSNET-24628|ArgumentException: 'Parameter is not valid.' is thrown upon converting DOCX to PDF|Bug
|WORDSNET-24720|LINQ Reporting Engine - JsonDataSource gets confused about objects|Bug
|WORDSNET-24584|Distorted image when converting from DOCX to HTML|Bug
|WORDSNET-24379|DOCX to HTML: Document not split by headings|Bug
|WORDSNET-20568|Stamp Image should be transparent in Html Fixed|Bug
|WORDSNET-24689|Radial gradients are rendered incorrectly|Bug
|WORDSNET-24667|Footer is lost after rendering ODT document|Bug
|WORDSNET-24701|Aspose.Words replace behavior differs from MS Word when matched text contains a shape|Bug
|WORDSNET-20428|Chart contents are lost after saving DOCX to PDF|Bug
|WORDSNET-18224|Trend-line Label of chart is lost after conversion from DOCX to HTML|Bug
|WORDSNET-20545|Trendline Equation Label Data (Formulae) of Chart in Word DOCX missing in PDF|Bug
|WORDSNET-21342|Chart element missing in AW output conversion from DOCX to PDF|Bug
|WORDSNET-20329|Data of Chart Labels missing in PDF|Bug
|WORDSNET-17891|Chart series is lost after conversion from DOCX to PDF|Bug
|WORDSNET-24797|Colors of image are inverted after conversion of PDF to DOCX|Bug
|WORDSNET-24862|OverflowException is thrown upon comparing documents|Bug
|WORDSNET-24793|SDT dropdown list item with empty value is lost after open/save document|Bug
|WORDSNET-24783|ArgumentOutOfRangeException when Range.Replace is sued with "A*" regex|Bug
|WORDSNET-24638|Update Noto fallback table to use new fonts|Bug
|WORDSNET-24679|PDF to PDF with signing: Formatting issues|Bug
|WORDSNET-24829|ArgumentOutOfRangeException when converting DOCX to PDF|Bug
|WORDSNET-24848|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-24342|DOCX->HTML->DOCX: Footer differences|Bug
|WORDSNET-24821|NullReferenceException is thrown upon calling UpdatePageLayout after comparing documents|Bug
|WORDSNET-24751|Parenthesis in RTL document are reversed when render the document with HarfBuzz text shaping|Bug
|WORDSNET-24824|Calibri (Body) fonts is substituted with Times New Roman upon rendering the document|Bug
|WORDSNET-24686|Make Style.AutomaticallyUpdate property public|Bug
|WORDSNET-24811|Word to PDF: links are not tagged|Bug
|WORDSNET-24493|Invalid positioning of signature|Bug
|WORDSNET-24802|Inconsistent result when use number formats in LINQ Reporting Engine and Mail Merge|Bug
|WORDSNET-24789|Link is truncated in PDF document|Bug
|WORDSNET-24670|Inaccurate table size when inserting HTML string into another table|Bug
|WORDSNET-24827|ArgumentOutOfRangeException is thrown upon rendering documents|Bug
|WORDSNET-24886|Unable load harfbuzz lib in docker|Bug
|WORDSNET-19329|TOC and List Numbering issues during Word-HTML-Word round-trip|Bug
|WORDSNET-19409|List item's indent is incorrect after DOCX-HTML-DOCX roundtrip|Bug
|WORDSNET-20795|List labels are exported incorrectly when document is save to HTML using Node.ToString|Bug
|WORDSNET-24731|Image in header is flipped on PDF import|Bug

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.1. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added public property Document.IncludeTextboxesFootnotesEndnotesInStat

Related issue: WORDSNET-24819

The following public property was added to Aspose.Words.Document class:
{{< highlight csharp >}}
/// <summary>
/// Specifies whether to include textboxes, footnotes and endnotes in word count statistics.
/// </summary>
public bool IncludeTextboxesFootnotesEndnotesInStat
{{< /highlight >}}

Use Case: Explains how to include or exclude textboxes, footnotes and endnotes from word count statistics.
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Lorem ipsum");
builder.InsertFootnote(FootnoteType.Footnote, "sit amet");

// Check the option is set to 'false' by default when a new document is created.
Console.WriteLine("By default for new document this option is set to '{0}'", doc.IncludeTextboxesFootnotesEndnotesInStat);

doc.UpdateWordCount();
Console.WriteLine("Words count without textboxes, footnotes and endnotes: {0}", doc.BuiltInDocumentProperties.Words);

// Change option.
doc.IncludeTextboxesFootnotesEndnotesInStat = true;
doc.UpdateWordCount();
Console.WriteLine("Words count with textboxes, footnotes and endnotes: {0}", doc.BuiltInDocumentProperties.Words);

/* This code produces the following output:
By default for new document this option is set to 'False'
Words count without textboxes, footnotes and endnotes: 2
Words count with textboxes, footnotes and endnotes: 4
*/
{{< /highlight >}}

### Added public property Document.JustificationMode

Related issue: WORDSNET-24455

A new public property JustificationMode has been added to class Document:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the character spacing adjustment of a document.
/// </summary>
public JustificationMode JustificationMode { get; set; }
{{< /highlight >}}

Use Case: Explains how to get and set the character spacing adjustment of a document.
{{< highlight csharp >}}
Document doc = new Document("in.docx");
// Getting JustificationMode.
JustificationMode justificationMode = doc.JustificationMode;
if (justificationMode == JustificationMode.Expand)
  // Setting JustificationMode.
  doc.JustificationMode = JustificationMode.Compress;
{{< /highlight >}}

### Added public property Style.AutomaticallyUpdate

Related issue: WORDSNET-24686

A new public property AutomaticallyUpdate has been added to class Style:
{{< highlight csharp >}}
/// <summary>
/// Specifies whether this style is automatically redefined based on the appropriate value.
/// </summary>
public bool AutomaticallyUpdate { get; set; }
{{< /highlight >}}

Use Case: Explains how to get and set AutomaticallyUpdate property of a Style.
{{< highlight csharp >}}
Document doc = new Document("in.docx");
// Getting AutomaticallyUpdate.
if (!doc.Styles[StyleIdentifier.Normal].AutomaticallyUpdate)
{
  Style style = doc.Styles.Add(StyleType.Paragraph, "Redefined");
  style.BaseStyleName = "Normal";
  // Setting AutomaticallyUpdate.
  style.AutomaticallyUpdate = true;
}
{{< /highlight >}}

### Added support for MOBI export

Related issue: WORDSNET-24162

Aspose.Words now can export documents to MOBI file format.

MOBI (also called PRC, AZW) is Amazon Kindle's proprietary e-book file format.

The following publicly visible enum values were added:
{{< highlight csharp >}}
FileFormat.Mobi
SaveFormat.Mobi
{{< /highlight >}}

The use cases for saving a document to MOBI file format are as follows:
{{< highlight csharp >}}
Document doc = new Document("in.docx");
doc.Save("out.mobi");
{{< /highlight >}}

or
{{< highlight csharp >}}
Document doc = new Document("in.docx");
HtmlSaveOptions options = new HtmlSaveOptions(SaveFormat.Mobi);
doc.Save("out.mobi", options);
{{< /highlight >}}

HtmlSaveOptions properties that are not applicable for MOBI export:

- ImagesFolder
- ImagesFolderAlias
- FontsFolder
- FontsFolderAlias
- ResourceFolder
- ResourceFolderAlias
- ExportImagesAsBase64 (always false)
- ExportFontsAsBase64 (always false)
- ExportDropDownFormFieldAsText (always true)
- ExportTextInputFormFieldAsText (always true)
- ExportRoundtripInformation (always false)
- CssStyleSheetType (always CssStyleSheetType.Inline)
- CssStyleSheetFileName
- DocumentSplitCriteria (always DocumentSplitCriteria.None)
- ExportListLabels (always ExportListLabels.ByHtmlTags)
- ExportRelativeFontSize (always false)