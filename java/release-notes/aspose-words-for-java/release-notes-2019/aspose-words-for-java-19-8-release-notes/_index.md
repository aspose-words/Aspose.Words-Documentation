---
title: Aspose.Words for Java 19.8 Release Notes
description: "Aspose.Words for Java 19.8 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 50
url: /java/aspose-words-for-java-19-8-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 19.8](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/19.8).

{{% /alert %}} 

## Major Features

- Option to call HarfBuzz library (on Windows only yet) for better kerning.
- Separate Aspose.Words jdk16.jar is publically available on Aspose Downloads site.
- API Examples are fully updated and improved.
- Aspose.Words for Java is tested on Java 12.
- Simplified TIFFImageWriter is used when external TIFF image libs (JAI, etc.) are not available.
- Implemented an option that allows specifying whether to work with the original or revised version of a document.
- Implemented API to define default options for data labels of chart series.
- Fixed rendering of diagonal borders is vertically merged cells.
- Fixed issue when "keep with next" is applied to the last paragraph in a table cell.
- Improved computation of paragraph metrics for Asian text in a table.
- Improved surrogate pairs handling.
- Fixed problem with negative contrast images rendering. Now, if the document contains VML images with negative contrast, they are rendered in the same way as in MS Word, without causing exceptions.
- Fixed a bug with the incorrect association of data labels and series values when rendering DML charts.
- Fixed a bug with calculation of the X-values of the scatter chart while rendering.
- Fixed a bug with inheriting paragraph properties of data labels (Font size) when rendering DML charts.
- Fixed a bug with clipping of the user shape text when rendering DML charts.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1989|Use internal TIFFImageWriter when external tiff image libs (JAI) are not available.|New Feature|
|WORDSJAVA-2111|Clear FipsUnapprovedOperationException for non-FIPS operations in FIPS mode.|New Feature|
|WORDSJAVA-2122|Option to call HarfBuzz library (on Windows only yet) for better kerning.|New Feature|
|WORDSJAVA-2126|Update and improve API Examples.|New Feature|
|WORDSJAVA-2137|Separate Aspose.Words jdk16.jar on public Aspose Downloads site.|New Feature|
|WORDSJAVA-2149|Check Aspose.Words for Java on Java 12.|New Feature|
|WORDSJAVA-2154|New clean 3rd party licenses PDF file directly from internal FOSS database.|New Feature|
|WORDSNET-18808|Analyze what it takes to convert a document with images in docker (Linux)|New Feature|
|WORDSNET-2261|Kerning option is ignored upon rendering/converting to PDF|New Feature|
|WORDSJAVA-2093|An exception raises while loading Aspose.Words on Java 1.6 runtime.|Bug|
|WORDSJAVA-2138|java.lang.OutOfMemoryError is thrown while saving RTF to PDF|Bug|
|WORDSJAVA-2139|System.NullReferenceException is thrown when DOCX is converted to TIFF|Bug|
|WORDSJAVA-2140|SimplifiedJaiTiffWriter produces incorrect results|Bug|
|WORDSJAVA-2141|Conversion from DOCX to PDF hangs (Metafile with alpha-channel.)|Bug|
|WORDSJAVA-2144|Can't load RTF with the ugly table inside.|Bug|
|WORDSNET-18864|Iskoola Pota and Latha font rendering issues|Bug|
|WORDSNET-18561|Chart's axis is missing in output PDF|Bug|
|WORDSNET-18691|There is a formatting issue in word document whereby text becomes bold after conversion of policy write-up to PDF|Bug|
|WORDSNET-18875|Document format changed when inserting header|Bug|
|WORDSNET-18510|DOCX to HTML conversion issue with formula rendering|Bug|
|WORDSNET-18511|DOCX to HTML conversion issue with page break position|Bug|
|WORDSNET-18513|Infinity loop exception when converting DOCX to PDF|Bug|
|WORDSNET-18895|Paragraph's formatting is incorrect after export to HTML|Bug|
|WORDSNET-18894|Paragraph's formatting is incorrect after export to HTML|Bug|
|WORDSNET-18896|Paragraph's spaces aren't preserved after DOCX-HTML-DOCX roundtrip, even if HtmlSaveOptions.ExportRoundtripInformation is set to true.|Bug|
|WORDSNET-18751|Check suspicious code found by PVS studio|Bug|
|WORDSNET-18887|Aspose.Words.FileCorruptedException is thrown while loading DOCX|Bug|
|WORDSNET-9526|Body content overlaps the content of Primary Footer in PDF|Bug|
|WORDSNET-9391|Text position is changed after conversion from DOCX to fixed file format|Bug|
|WORDSNET-18903|ListLabel.LabelString returns incorrect value when the paragraph has revision|Bug|
|WORDSNET-11431|Text in the textbox is wrapped improperly|Bug|
|WORDSNET-17040|Aspose.Words 18.6: Wrong layout when converting particular DOCX to PDF|Bug|
|WORDSNET-17871|Hyperlink tooltip is missing during DOCX to HTML conversion|Bug|
|WORDSNET-15963|Shape's text is truncated after conversion from DOC to PDF|Bug|
|WORDSNET-18134|Document.UpdateFields changes table formatting|Bug|
|WORDSNET-18904|RTF to PDF improperly rendered|Bug|
|WORDSNET-18737|The diagonal line in the table's cell is lost in output PDF|Bug|
|WORDSNET-18893|Shape position is changed after conversion from DOCX to PDF|Bug|
|WORDSNET-14280|DOC to PDF conversion issue with text rendering|Bug|
|WORDSNET-13495|AW improperly works with surrogate pairs|Bug|
|WORDSNET-15183|Convert OO ODT document to PDF - checkbox frame missing|Bug|
|WORDSNET-15770|The last two lines moved to another page.|Bug|
|WORDSNET-18715|ToC is indented differently by Aspose.Words vs MS Word|Bug|
|WORDSNET-18617|The table is rendered outside the page at the right side in output HTMLFixed/PNG|Bug|
|WORDSNET-18622|HTML to DOCX - table columns get squeezed|Bug|
|WORDSNET-17945|DOCX to HTML conversion issue with table|Bug|
|WORDSNET-18469|The issue with list numbering|Bug|
|WORDSNET-18925|An unexpected increase of paragraph left indent on assigning ListFormat.ListId|Bug|
|WORDSNET-18797|Hebrew content disappears when converting an RTF|Bug|
|WORDSNET-18807|Position of data labels is different after conversion to PDF|Bug|
|WORDSNET-18946|System.NotImplementedException occurs on attempt to get VbaProject|Bug|
|WORDSNET-17520|Unordered lists retain bullets if bootstrap CSS is linked|Bug|
|WORDSNET-18820|System.InvalidCastException occurs upon loading an RTF|Bug|
|WORDSNET-18600|Chart data labels do not show Percentage and value after the update|Bug|
|WORDSNET-18922|ListFormat.ListLevel returns null for a paragraph with revision|Bug|
|WORDSNET-18958|Wrong numbering after documents import|Bug|
|WORDSNET-18959|The issue with StructuredDocumentTag comparison.|Bug|
|WORDSNET-17835|Two identical paragraphs are exported differently when converting to HTML|Bug|
|WORDSNET-18761|List numbering is broken, when the number of list levels is greater than 9, in HTML import|Bug|
|WORDSNET-18762|When list numbering is set with: before pseudo-element, list indent is incorrect in HTML import|Bug|
|WORDSNET-16483|DOCX to PDF conversion issue with text position|Bug|
|WORDSNET-18651|Aspose.Words.Document takes much time to import HTML|Bug|
|WORDSNET-18763|Hebrew number/text become reverse after converting HTML to DOCX/PDF|Bug|
|WORDSNET-15838|Text flow issue in resultant PDF|Bug|
|WORDSNET-15209|Image shifts to next page during DOCX to PDF conversion|Bug|
|WORDSNET-9495|Contents move to next line after conversion from DOC to PDF|Bug|
|WORDSNET-14586|Japanese text does not render correctly in output PDF|Bug|
|WORDSNET-18662|DOCX to PDF: Diagram conversion issue|Bug|
|WORDSNET-18558|The font size of the chart's data labels is increased when converted DOCX to PDF|Bug|
|WORDSNET-18865|FileFormatUtil.DetectFileFormat(Stream) recognizes some PNG images as Markdown|Bug|
|WORDSNET-18682|Loading HTML file takes too long|Bug|
|WORDSNET-18766|System.ArgumentOutOfRangeException occurs upon saving to PDF|Bug|
|WORDSNET-18767|UserShape appears after conversion to PDF|Bug|
|WORDSNET-18750|Check suspicious code found by PVS studio|Bug|
|WORDSNET-14584|Incorrect table width for an auto-fit table with Japanese text|Bug|
|WORDSNET-18869|Images are not displaying in PDF - .NET Core App - Visual Studio Code - Ubuntu 16.04|Bug|
|WORDSNET-12136|DOCX to PDF conversion issue with letter spacing|Bug|
|WORDSNET-13665|Kerning for fonts is not supported during rendering|Bug|
|WORDSNET-15324|Chinese text is not rendered correctly in the table's cell|Bug|
|WORDSNET-16023|DOCX to PDF conversion issue with table position|Bug|
|WORDSNET-13515|Process hangs during converting DOCX to PDF|Bug|
|WORDSNET-13877|Converting DOC to PDF alters table|Bug|
|WORDSNET-13533|Incorrect spacing on a paragraph imported from an HTML altchunk|Bug|
|WORDSNET-13466|The font size of the text inside SmartArt is increased in output DOC/PDF|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.


### Implemented an option that allows to specify whether to work with the original or revised version of a document

Related issues: WORDSNET-18903, WORDSNET-18922.

The new public enumeration was added:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify whether to work with the original or revised version of a document.
/// </summary>
public enum RevisionsView
{{< /highlight >}}

Added new public option into Document class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value indicating whether to work with the original or revised version of a document.
/// </summary>
/// <remarks>
/// The default value is <b><see cref="Aspose.Words.RevisionsView.Original"/></b>.
/// </remarks>
public RevisionsView RevisionsView
{{< /highlight >}}


#### Use Case. Explains how to access the revised version of a document:

{{< highlight csharp >}}
Document doc = new Document(@"test.docx");
doc.UpdateListLabels();

// Switch to the revised version of the document.
doc.RevisionsView = RevisionsView.Final;
foreach (Revision revision in doc.Revisions)
{
    if (revision.ParentNode.NodeType == NodeType.Paragraph)
    {
        Paragraph paragraph = (Paragraph)revision.ParentNode;
        if (paragraph.IsListItem)
        {
            // Print revised version of LabelString and ListLevel.
            Console.WriteLine(paragraph.ListLabel.LabelString);
            Console.WriteLine(paragraph.ListFormat.ListLevel);
        }
    }
}
{{< /highlight >}}

### WORDSNET-18600 - Implemented API to define default options for data labels of chart series

The following new public properties have been added into the ChartDataLabelCollection class:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify whether category name is to be displayed for the data labels of the entire series.
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowCategoryName"/> property.
/// </remarks>
public bool ShowCategoryName { get; set; }
/// <summary>
/// Allows to specify whether bubble size is to be displayed for the data labels of the entire series.
/// Applies only to Bubble charts. 
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowBubbleSize"/> property.
/// </remarks>
public bool ShowBubbleSize { get; set; }
/// <summary>
/// Allows to specify whether legend key is to be displayed for the data labels of the entire series.
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowLegendKey"/> property.
/// </remarks>
public bool ShowLegendKey { get; set; }
/// <summary>
/// Allows to specify whether percentage value is to be displayed for the data labels of the entire series.
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowPercentage"/> property.
/// </remarks>
public bool ShowPercentage { get; set; }
/// <summary>
/// Returns or sets a Boolean to indicate the series name display behavior for the data labels of the entire series.
/// <b>True</b> to show the series name. <b>False</b> to hide. By default <b>false</b>.
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowSeriesName"/> property.
/// </remarks>
public bool ShowSeriesName { get; set; }
/// <summary>
/// Allows to specify whether values are to be displayed in the data labels of the entire series.
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowValue"/> property.
/// </remarks>
public bool ShowValue { get; set; }
/// <summary>
/// Allows to specify whether data label leader lines need be shown for the data labels of the entire series.
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// <para>Applies to Pie charts only. 
/// Leader lines create a visual connection between a data label and its corresponding data point.</para>
/// <para>Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowLeaderLines"/> property.</para>
/// </remarks>
public bool ShowLeaderLines { get; set; }
/// <summary>
/// Allows to specify whether values from data labels range to be displayed in the data labels of the entire series.
/// Default value is <b>false</b>.
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.ShowDataLabelsRange"/> property.
/// </remarks>
public bool ShowDataLabelsRange { get; set; }
/// <summary>
/// Gets or sets string separator used for the data labels of the entire series. 
/// The default is a comma, except for pie charts showing only category name and percentage, when a line break 
/// shall be used instead. 
/// </summary>
/// <remarks>
/// Value defined for this property can be overridden for an individual data label with using the
/// <see cref="ChartDataLabel.Separator"/> property.
/// </remarks>
public string Separator { get; set; }
/// <summary>
/// Gets an <see cref="ChartNumberFormat"/> instance allowing to set number format for the data labels of the
/// entire series.
/// </summary>
public ChartNumberFormat NumberFormat { get; set; }
{{< /highlight >}}



**Use Case:**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Shape shape = builder.InsertChart(ChartType.Pie, 432, 252);
Chart chart = shape.Chart;
chart.Series.Clear();
ChartSeries series = chart.Series.Add("Series 1", 
    new string[] { "Category1", "Category2", "Category3" }, 
    new double[] { 2.7, 3.2, 0.8 });
ChartDataLabelCollection labels = series.DataLabels;
labels.ShowPercentage = true;
labels.ShowValue = true;
labels.ShowLeaderLines = false;
labels.Separator = " - ";
doc.Save(dir + "Demo.docx");
{{< /highlight >}}
