---
title: Aspose.Words for Java 18.1 Release Notes
type: docs
weight: 120
url: /java/aspose-words-for-java-18-1-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 18.1](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/18.1/)

{{% /alert %}} 

## Major Features

There are 63 improvements and fixes in this regular monthly release. The most notable are:

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
- Improved rendering of composite (with many series) charts.
- Chart title with ManualLayout rendering fixed.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1704|Gradient fill image is filled as solid fill in PDF|Bug|
|WORDSJAVA-1681|Thai words are showing as squares when converted to DOC.|Bug|
|WORDSJAVA-1680|Document.UpdateFields does not update LastSavedTime.|Bug|
|WORDSJAVA-1634|Bullets rendering issue on Linux|Bug|
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
|WORDSNET-15801|Add feature to show/hide axis of chart|Feature|
|WORDSNET-16042|API to get geometric position of element in Word Doc|Feature|
|WORDSNET-16060|Add feature to get w:storeItemID of StructuredDocumentTag|Feature|
|WORDSNET-16092|Add feature to add numerous replies to comment using Comment.AddReply|Feature|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.1. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose. Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Enhanced Support of Single-Column Table Data Bands and Conditional Blocks for LINQ Reporting Engine

Related issues WORDSNET-13863, WORDSNET-15776, WORDSNET-16188.

The "[Working with Table-Row Data Bands](/words/java/working-with-table-row-data-bands/)" and "[Working with Table-Row Conditional Blocks](/words/java/working-with-table-row-conditional-blocks/)" sections of the engine's documentation were updated to describe the change.

### Remove Obsolete Method in CompositeNode

Removed obsolete public method from CompositeNode class:

{{< highlight csharp >}}
public NodeCollection getChildNodes(NodeType nodeType, boolean isDeep, boolean isLive)
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
public boolean Hidden
{
    get; set;
}
{{< /highlight >}}

The property enables hiding/showing and getting visibility state of an axis of a chart.

#### UC to create a chart and hide its Y axis

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert chart.
Shape shape = builder.insertChart(ChartType.COLUMN, 432, 252);
Chart chart = shape.getChart();

// Clear demo data.
chart.getSeries().clear();

// Fill data.
chart.getSeries().add("AW Series 1",
        new String[] { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5" },
        new double[] { 1.2, 0.3, 2.1, 2.9, 4.2 });

// Hide the Y axis.
chart.getAxisY().setHidden(true);
dataDir = dataDir + "HideChartAxis_out.docx";
doc.save(dataDir);
{{< /highlight >}}

### Added Property for Preserving Meta-Characters during Replacement

Related Issue: WORDSNET-15840

We have added public get/set property for preserving meta-characters during replacement as an option in FindReplaceOptions class

{{< highlight csharp >}}
/// <summary>
/// True indicates that meta-characters beginning with "&" are preserved.
/// Default value is false.
/// </summary>
public boolean PreserveMetaCharacters
{{< /highlight >}}

This is useful for example in replacing html text with meta-characters such as "&ldquo" and others

Sample usage

{{< highlight csharp >}}

// The path to the documents directory.
String dataDir = Utils.getSharedDataDir(ReplaceTextWithField.class) + "FindAndReplace/";
String html = "<p>&ldquo;Some Text&rdquo;</p>";

// Initialize a Document.
Document doc = new Document();

// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("{PLACEHOLDER}");
FindReplaceOptions findReplaceOptions = new FindReplaceOptions();
findReplaceOptions.setReplacingCallback(new FindAndInsertHtml());
findReplaceOptions.setPreserveMetaCharacters(true);
doc.getRange().replace("{PLACEHOLDER}", html, findReplaceOptions);
dataDir = dataDir + "ReplaceHtmlTextWithMetaCharacters_out.doc";
doc.save(dataDir);
{{< /highlight >}}

{{< highlight csharp >}}
static class FindAndInsertHtml implements IReplacingCallback {
    public int replacing(ReplacingArgs e) throws Exception {
        // This is a Run node that contains either the beginning or the complete match.
        Node currentNode = e.getMatchNode();

        // create Document Buidler and insert MergeField
        DocumentBuilder builder = new DocumentBuilder((Document) e.getMatchNode().getDocument());
        builder.moveTo(currentNode);
        builder.insertHtml(e.getReplacement());
        currentNode.remove();
        //Signal to the replace engine to do nothing because we have already done all what we wanted.
        return ReplaceAction.SKIP;
    }
}
{{< /highlight >}}

### Added Feature to Get StoreItemID Property of StructuredDocumentTag

Related Issue: WORDSNET-16060

As per customer's request, we have made public get property StoreItemId of class XmlMapping:

{{< highlight csharp >}}
/// <summary>
/// Specifies the custom XML data identifier for the custom XML data part which
/// shall be used to evaluate the <see cref="XPath"/> expression.
/// </summary>
public String StoreItemId
{{< /highlight >}}

More info about storeItemID property: <https://msdn.microsoft.com/en-us/library/documentformat.openxml.wordprocessing.databinding(v=office.14).aspx>

Sample usage:

{{< highlight csharp >}}
Document doc = new Document("file.docx");
StructuredDocumentTag sdt = (StructuredDocumentTag) doc.getChild(NodeType.STRUCTURED_DOCUMENT_TAG, 0, true);
System.out.println("Id = " + sdt.getXmlMapping().getStoreItemId());
{{< /highlight >}}
