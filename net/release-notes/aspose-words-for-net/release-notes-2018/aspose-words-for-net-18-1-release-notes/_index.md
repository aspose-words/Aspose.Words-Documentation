---
title: Aspose.Words for .NET 18.1 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 18.1 Release Notes
linktitle: Aspose.Words for .NET 18.1 Release Notes
description: "Aspose.Words for .NET 18.1 Release Notes – the latest updates and fixes."
type: docs
weight: 120
url: /net/aspose-words-for-net-18-1-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 18.1](https://www.nuget.org/packages/Aspose.Words/18.1.0)

{{% /alert %}}

## Major Features

There are 61 improvements and fixes in this regular monthly release. The most notable are:

- Signing of PDF document is supported in .NET Standard 2.0.
- Saving to BMP is supported in .NET Standard 2.0.
- Improved rendering of Path gradients in .NET Standard 2.0/Xamarin.
- Improved character spacing control logic.
- Improved space shrinking for Verdana font.
- Improved "allow handing punctuation" handling when kerning is enabled.
- Fixed clip issue with semi-broken tables.
- Fixed draw order of wrapped shapes in 2013 mode.
- Fixed repeated header height problem during field update.
- Fixed the bug causing error in page numbers in multi-page documents rendered into PostScript.
- Proper calculation of undocumented margins in DrawingML Charts implemented.
- Horizontal axis of Bubble Chart scaling fixed.
- Vertical axis of 3DArea Chart scaling fixed.
- MS Word 2016 approach for rendering of DrawingML Charts axis labels implemented; (Labels are rotated to fit the chart).
- Fixed rendering of Legend markers for 3D-LineChart.
- Improved rendering of composite (with multiple series) charts.
- Chart title with ManualLayout rendering fixed.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10235|Header contents are overlapped with body contents after conversion from Docx to Pdf|Bug|
|WORDSNET-15389|Content overlaps footer|Bug|
|WORDSNET-15609|Right borders specified for "tr" or "tbody" elements are not applied to cell|Bug|
|WORDSNET-15840|ReplacingArgs.Replacement returns incorrect value|Bug|
|WORDSNET-15944|Scaling issue of charts in DOCX to PDF conversion|Bug|
|WORDSNET-15958|Difference in values of axis in DOCX to PDF rendering|Bug|
|WORDSNET-15991|Barcode images are missing upon RTF conversion|Bug|
|WORDSNET-16019|DOCX to PDF conversion loses some images|Bug|
|WORDSNET-16070|Font information garbled in RTF document|Bug|
|WORDSNET-16117|White Paragraphs in Cells Turn Black during Saving a RTF|Bug|
|WORDSNET-16125|Incorrect TOC page number in RTF to DOCX conversion|Bug|
|WORDSNET-16126|Incorrect TOC page number in RTF to DOCX conversion|Bug|
|WORDSNET-16137|System.NullReferenceException is thrown when RevisionOptions.ShowRevisionBalloons is set to true|Bug|
|WORDSNET-16155|Repeating Section Content Control is not rendered in output PDF|Bug|
|WORDSNET-16163|RTF to DOCX conversion issue for Footnote Words Become Superscript|Bug|
|WORDSNET-16173|Incorrect rotation of the X-axis label text when exporting to PDF|Bug|
|WORDSNET-16174|Legend markers for 3D-LineChart are rendered incorrectly when exporting to PDF|Bug|
|WORDSNET-16184|Incorrect TOC page number in RTF to DOCX conversion|Bug|
|WORDSNET-16187|Error in page number when converting to PostScript|Bug|
|WORDSNET-16189|Range.Replace text within GroupShape does not Replace|Bug|
|WORDSNET-16192|DOCX to HTML conversion issue with chart rendering|Bug|
|WORDSNET-16200|OfficeMath is changed after re-saving DOCX|Bug|
|WORDSNET-16203|AllowHangingPunctuation rule is improperly processed|Bug|
|WORDSNET-16208|When open DOCX file, an exception occurs|Bug|
|WORDSNET-16212|Html save as Odt - view of table is different than in Docx and in MS Word|Bug|
|WORDSNET-16215|Document.Compare returns incorrect revisions|Bug|
|WORDSNET-16222|Incorrect TOC page number in RTF to DOCX conversion|Bug|
|WORDSNET-16223|Incorrect TOC page number in RTF to DOCX conversion|Bug|
|WORDSNET-16234|FontInfoCollection.EmbedSystemFonts default value is incorrect|Bug|
|WORDSNET-16236|Problem with ChartTitle with ManualLayout when exporting to PDF|Bug|
|WORDSNET-16246|BorderGrid class fires assertion when renders cell borders|Bug|
|WORDSNET-16253|Some characters are changed after conversion RTF to DOCX|Bug|
|WORDSNET-16273|Table with image renders incorrectly while saving DOCX to PDF|Bug|
|WORDSNET-5426|Autofit doesn't work properly when the table has merged cells.|Bug|
|WORDSNET-7251|ListLabel.LabelValue is incorrectly imported from HTML to Docx/Doc|Bug|
|WORDSNET-7505|PDF rendering issue with the insertion of images|Bug|
|WORDSNET-7859|3D shape renders incorrectly if it has relative size|Bug|
|WORDSNET-8672|Font size of Watermark text is increased and Shape is partially displaying in PDF|Bug|
|WORDSNETSTD-27|RtfSaveOptions.ExportImagesForOldReaders does not work properly|Bug|
|WORDSNET-14244|RTF to Pdf conversion issue with text-box position|Enhancement|
|WORDSNET-15776|Empty row gets added when closing tag <</foreach>> is in last row of table|Enhancement|
|WORDSNET-16069|Incorrect ChartDataPoint Cloning|Enhancement|
|WORDSNET-16144|Some headers/footers have height of 0 in XMLs obtained by internal layout API|Enhancement|
|WORDSNET-16167|Rework Pdf digital signing code to be compatible with NetStandart 2.0|Enhancement|
|WORDSNET-16194|The length of superscripted footnote's text is incorrect in RTF output.|Enhancement|
|WORDSNET-16267|Shape is not rendered correctly in output PDF|Enhancement|
|WORDSNETSTD-44|Cleen up System.Security.Cryptography.Xml.|Enhancement|
|WORDSNETSTD-45|Removed Aspose.Xamarin.Security project.|Enhancement|
|WORDSNET-13863|ReportingEngine.BuildReport throws System.NullReferenceException|Exception|
|WORDSNET-15397|Application crashes on loading MHT file in Document Object|Exception|
|WORDSNET-16143|DOCX to HTML conversion fails with "Stack empty" error message|Exception|
|WORDSNET-16197|System.InvalidOperationException occurs when saving to PDF|Exception|
|WORDSNET-16201|Exception is thrown when exporting to HTML|Exception|
|WORDSNET-16209|Setting RevisionOptions.ShowRevisionBalloons to True causes System.InvalidCastException|Exception|
|WORDSNET-16262|When DOCX is opened, FileCorruptedException occurs|Exception|
|WORDSNET-6919|Consider adding resiliency during saving nested empty Tables|Exception|
|WORDSNETSTD-42|InvalidOperationException is thrown in netstandard|Exception|
|WORDSNET-15801|Add feature to show/hide axis of chart|Feature|
|WORDSNET-16042|API to get geometric position of element in Word Doc|Feature|
|WORDSNET-16060|Add feature to get w:storeItemID of StructuredDocumentTag|Feature|
|WORDSNET-16092|Add feature to add multiple replies to comment using Comment.AddReply|Feature|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.1. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Enhanced Support of Single-Column Table Data Bands and Conditional Blocks for LINQ Reporting Engine

Related issues WORDSNET-13863, WORDSNET-15776, WORDSNET-16188.

The "[Working with Table-Row Data Bands](/words/net/template-syntax/#templatesyntax-workingwithtable-rowdatabands)" and "[Working with Table-Row Conditional Blocks](/words/net/template-syntax/#templatesyntax-workingwithtable-rowconditionalblocks)" sections of the engine's documentation were updated to describe the change.

### Remove Obsolete Method in CompositeNode

Removed obsolete public method from CompositeNode class:

{{< highlight csharp >}}
public NodeCollection GetChildNodes(NodeType nodeType, bool isDeep, bool isLive)
{{< /highlight >}}

Parameter "isLive" is not used anymore. Please use CompositeNode.GetChildNodes(NodeType nodeType, bool isDeep) instead.

### Added the ChartAxis.Hidden Property

Related Issue: WORDSNET-15801

The following public property has been added into the **ChartAxis** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a flag indicating whether this axis is hidden or not.
/// </summary>
/// <remarks>
/// Default value is false.
/// </remarks>
public bool Hidden
{
    get; set;
}
{{< /highlight >}}

The property allows hiding/showing and getting visibility state of an axis of a chart.

#### UC to create a chart and hide its Y axis

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert chart.
Shape shape = builder.InsertChart(ChartType.Column, 432, 252);
Chart chart = shape.Chart;

// Clear demo data.
chart.Series.Clear();

// Fill data.
chart.Series.Add("AW Series 1",
    new string[] { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" },
    new double[] { 1.2, 0.3, 2.1, 2.9, 4.2 });

// Hide the Y axis.
chart.AxisY.Hidden = true;
doc.Save(dir + "TestHiddenAxis.docx");
{{< /highlight >}}

### Added Property for Preserving Meta-Characters during Replacement

Related Issue: WORDSNET-15840

We have added public get/set property for preserving meta-characters during replacement as an option in FindReplaceOptions class

{{< highlight csharp >}}

 /// <summary>

/// True indicates that meta-characters beginning with "&" are preserved.

/// Default value is false.

/// </summary>

public bool PreserveMetaCharacters

{{< /highlight >}}

This is useful for example in replacing html text with meta-characters such as "&ldquo" and others

Sample usage

{{< highlight javascript >}}

 var doc = new Document();

var text = "some text";

var replaceWithText = @"&ldquo;some text&rdquo;";

var builder = new DocumentBuilder(doc);

builder.Write(text);

doc.Range.Replace(text, replaceWithText,

  new FindReplaceOptions

    {

      PreserveMetaCharacters = true

    }

);

{{< /highlight >}}

### Added Feature to Get StoreItemID Property of StructuredDocumentTag

Related Issue: WORDSNET-16060

As per customer's request, we have made public get property StoreItemId of class XmlMapping:

{{< highlight csharp >}}

 /// <summary>

/// Specifies the custom XML data identifier for the custom XML data part which

/// shall be used to evaluate the <see cref="XPath"/> expression.

/// </summary>

public string StoreItemId

{{< /highlight >}}

More info about storeItemID property: <https://docs.microsoft.com/en-us/previous-versions/office/developer/office-2010/cc844281(v=office.14)>

Sample usage:

{{< highlight javascript >}}

 var doc = new Document("file.docx");

var sdt = (StructuredDocumentTag) doc.GetChild(NodeType.StructuredDocumentTag, 0, true);

Console.WriteLine("Id = {0}", sdt.XmlMapping.StoreItemId);

{{< /highlight >}}
