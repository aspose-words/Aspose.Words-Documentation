---
title: Aspose.Words for .NET 21.6 Release Notes
type: docs
weight: 40
url: /net/aspose-words-for-net-21-6-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 21.6](https://www.nuget.org/packages/Aspose.Words/21.6.0).

{{% /alert %}} 

## Major Features

There are 98 improvements and fixes in this regular monthly release. The most notable are:

- Implemented an ability to set fill and stroke formatting for chart series, data points and markers.
- Introduced a new API for working with textures.
- Implemented rendering of OOXML Ink (InkML subset).
- TxtSaveOptions.MaxCharactersPerLine property was introduced.
- A new Document.LayoutOption is added to control page numbering in a continuous section.
- Provided an option to always generate an object for a JSON or XML root element for LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-21647 | DOCX to PDF: Content displacement   occurs | New Feature |
| WORDSNET-12748 | Provide API to change Color of Category Series of Chart | New Feature |
| WORDSNET-13907 | Support rendering DrawingML InkML ContentPart | New Feature |
| WORDSNET-12275 | Add feature to change the color of ChartSeries | New Feature |
| WORDSNET-21847 | Advanced OpenType font features not applied | New Feature |
| WORDSNET-21871 | Add feature to create Scatter chart with lines | New Feature |
| WORDSNET-22070 | Provide an option to always generate an object for an XML root element   for LINQ Reporting Engine | New Feature |
| WORDSNET-12529 | Add feature to get/set Asian Character Spacing properties | New Feature |
| WORDSNET-22082 | storeItemChecksum get/set method | New Feature |
| WORDSNET-22002 | Implement Fill.PresetTextured() method | New Feature |
| WORDSNET-20023 | Allow to change Pie chart colors | New Feature |
| WORDSNET-21972 | Provide an option to always generate an object for a JSON root element   for LINQ Reporting Engine | New Feature |
| WORDSNET-15201 | Implement MS Word 2013 behavior for continuous sections with footnotes | New Feature |
| WORDSNET-17510 | Aspose.Words does not mimic MS Word for document structure tags | Enhancement |
| WORDSNET-18186 | Ink annotations lost during conversion from Word to PDF | Enhancement |
| WORDSNET-20020 | Transparency in converted Word Document is not shown in PDF | Enhancement |
| WORDSNET-12640 | Add feature to set/get Chart series colors | Enhancement |
| WORDSNET-20462 | Handwritten contents are lost after DOCX to PDF | Enhancement |
| WORDSNET-21156 | Incorrect value returned by LayoutCollector | Enhancement |
| WORDSNET-19199 | DOCX to PDF with free hand drawing images | Enhancement |
| WORDSNET-22090 | Each Line in TXT File should have a Fix Length of Characters \| Maximum   Allowed Characters in Line | Enhancement |
| WORDSNET-21795 | DOCX to PDF/A conversion and validation fails: Problem with word/spaces   separation inside header | Enhancement |
| WORDSNET-15771 | Table overflows to next page while converting to PDF | Bug |
| WORDSNET-22155 | DOCX to PDF/A conversion: significant tagging overhead | Bug |
| WORDSNET-18780 | Table is rendered on the next page in output PDF | Bug |
| WORDSNET-22158 | MailMerge CleanupOptions does not remove the empty table rows | Bug |
| WORDSNET-14523 | After conversion to PDF, content is missing | Bug |
| WORDSNET-22171 | Missing SVG Shape in PDF | Bug |
| WORDSNET-16700 | PrinterMetrics does not work on Xamarin/NetStandard | Bug |
| WORDSNET-18091 | UpdateFields method throws System.InvalidOperationException | Bug |
| WORDSNET-22186 | Text of Frame is overlapped after DOCX to PDF conversion | Bug |
| WORDSNET-21845 | DOCX to PDF > Incorrect rendering of footnotes | Bug |
| WORDSNET-21848 | Text in images gets cut off after DOCX to PDF converison | Bug |
| WORDSNET-22189 | Incorrect list numbering when converting from DOCX to HTML | Bug |
| WORDSNET-18945 | System.InvalidOperationException is thrown while saving DOCX to PDF | Bug |
| WORDSNET-18275 | Document.UpdatePageLayout throws System.InvalidCastException | Bug |
| WORDSNET-22193 | Hidden text is rendered after DOCX to PDF conversion | Bug |
| WORDSNET-18618 | Document.UpdatePageLayout throws System.InvalidOperationException | Bug |
| WORDSNET-20733 | Incorrect rendering of Footnotes Content | Bug |
| WORDSNET-17613 | Content pushed down to subsequent pages in PDF causing overlapping in   Footnotes | Bug |
| WORDSNET-22201 | System.InvalidOperationException is thrown after removing styles | Bug |
| WORDSNET-22166 | Footnotes break continuous section break rendering (rendered as page   break) | Bug |
| WORDSNET-21332 | Overlapping - Embedded Table contents from 2nd & 3rd pages move to   1st page in TIFF | Bug |
| WORDSNET-21557 | Text is overlapped after DOCX to PDF conversion | Bug |
| WORDSNET-22207 | Bullet points order issue during Word to PDF conversion | Bug |
| WORDSNET-22209 | NullReferenceException occurs upon DOC to PDF conversion | Bug |
| WORDSNET-22208 | NullReferenceException occurs upon DOCX to PDF conversion | Bug |
| WORDSNET-22213 | Document.PageCount throws System.IndexOutOfRangeException | Bug |
| WORDSNET-20769 | .NET Core Parallel.ForEach, Aspose.Words.Document() load not thread safe | Bug |
| WORDSNET-22219 | Incorrect Image resolution and dimension units while importing Markdown | Bug |
| WORDSNET-20315 | A Legend Entry in Chart is missing when Converting Chart to JPEG | Bug |
| WORDSNET-19458 | DOCX to PDF conversion issue with document structure | Bug |
| WORDSNET-22224 | Hidden footnotes throws asserts during reflow | Bug |
| WORDSNET-22185 | Mail Merge field is lost after re-saving DOCX | Bug |
| WORDSNET-18562 | DOCX to PDF conversion issue with Chart's Data Label | Bug |
| WORDSNET-21707 | Font name of Hebrew text is changed to 'Times New Roman' after re-saving   DOCX | Bug |
| WORDSNET-20920 | StructuredDocumentTag content is changed on page extraction. | Bug |
| WORDSNET-15553 | Aspose.Words generated PDFA size issue | Bug |
| WORDSNET-20943 | Incorrect table position | Bug |
| WORDSNET-21730 | DOCX to PDF conversion issue with ExportDocumentStructure (incorrect   tags) | Bug |
| WORDSNET-22232 | Aspose.Words does not mimic MS Word for document structure tags | Bug |
| WORDSNET-22177 | Wrong Page Number when word converted to pdf | Bug |
| WORDSNET-22235 | Image is rendered as cross after inserting HTML into document at Linux | Bug |
| WORDSNET-21993 | DOCX to PDF conversion issue - PDF is not editable | Bug |
| WORDSNET-21609 | DOCX->HTML->DOCX conversion: table size changes in the output | Bug |
| WORDSNET-22241 | Checked symbol of content control is changed after first click | Bug |
| WORDSNET-22244 | Process hangs when calling UpdateFields method | Bug |
| WORDSNET-21701 | NullReferenceException is thrown when call UpdatePageLayout | Bug |
| WORDSNET-16663 | Problem with saving DOC with footnote to PDF | Bug |
| WORDSNET-21896 | FileCorruptedException occurs when loading a MHTML document | Bug |
| WORDSNET-22195 | Aspose.Words UpdateLayout method throws exception "Infinite   loop" | Bug |
| WORDSNET-22253 | Hyperlink is lost after re-saving DOCX | Bug |
| WORDSNET-21352 | ExportDocumentStructure creates incorrect tags in output PDF | Bug |
| WORDSNET-21937 | System.NullReferenceException is thrown when DOCX is saved to PDF | Bug |
| WORDSNET-22257 | AppendContent throws exception | Bug |
| WORDSNET-20631 | ExportDocumentStructure and NVDA application | Bug |
| WORDSNET-14495 | Alignment of OfficeMath is incorrect when it is inserted by InsertHtml | Bug |
| WORDSNET-22103 | Merging two documents and list numbering doesn't continue | Bug |
| WORDSNET-22276 | Incorrect rendering "Rectangle:Rounded Corners" shape | Bug |
| WORDSNET-22174 | DOCX to ODT conversion throws System.InvalidOperationException | Bug |
| WORDSNET-22259 | "Value was either too large or too small for an Int32."   exception when open DOCX file | Bug |
| WORDSNET-21968 | System.IndexOutOfRangeException occurs upon Word XML Document to PDF   conversion | Bug |
| WORDSNET-21969 | DOCX to PDF conversion \| Even numbers are skipped from x-axis of chart | Bug |
| WORDSNET-21975 | Heading is not properly rendered when exported to PDF | Bug |
| WORDSNET-22109 | System.NullReferenceException occurs upon DOCX to PDF conversion | Bug |
| WORDSNET-22113 | Text font is changed after DOCX to PDF conversion | Bug |
| WORDSNET-22129 | DocumentBuilder.InsertFootnote causes System.IndexOutOfRangeException   when saving to PDF | Bug |
| WORDSNET-21731 | DOCX to PDF conversion issue with ExportDocumentStructure (incorrect   list) | Bug |
| WORDSNET-22094 | Document.ExtractPages method removes Bookmarks | Bug |
| WORDSNET-22149 | Paragraph become list item after inserting one document into another | Bug |
| WORDSNET-22286 | InvalidOperationException: Unexpected ST_TrueFalse value occurs upon   loading a DOCX | Bug |
| WORDSNET-21622 | System.InvalidOperationException occurs upon DOCX to HTML conversion | Bug |
| WORDSNET-22292 | Update storeItemChecksum after XmlMapping update | Bug |
| WORDSNET-5293 | REF field should show hyperlink tooltip | Bug |
| WORDSNET-16691 | Printer metrics is rendered improperly | Bug |
| WORDSNET-17724 | DOCX to PDF conversion issue with table rendering | Bug |
| WORDSNET-17769 | Converting DOCX to PDF overlaps the tables | Bug |
| WORDSNET-21482 | LayoutCollector fails on .NET Standard | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new LayoutEntityType and new values for the Kind property within the LayoutEnumerator class

A new value *Note* has been added to the public enum LayoutEntityType:

{{< highlight csharp >}}
public enum LayoutEntityType
{
...
  /// <summary>
  /// Represents placeholder for note content.
  ///
  /// Note may have <see cref="Line"/> and <see cref="Row"/> child entities.
  /// </summary>
  Note
...
}
{{< /highlight >}}

This will help users iterate over notes inside footnotes/endnotes containers.

Use Case:
{{< highlight csharp >}}
Document doc = new Document("SomeDocument.docx")
LayoutEnumerator en = new LayoutEnumerator(doc);
 
// We start from the first page.
Debug.Assert(en.Type == LayoutEntityType.Page);
 
// Move to the first column on the page.
en.MoveFirstChild();
Debug.Assert(en.Type == LayoutEntityType.Column);
 
// Move to the first child in the column.
en.MoveFirstChild();
 
do
{
  // Iterate to a footnote container.
  if (en.Type == LayoutEntityType.Footnote)
   break;
}
while(en.MoveNext());
 
// If the footnote container exists in the column, we will process notes.
if (en.Type == LayoutEntityType.Footnote)
{
  // Move to the first note in the footnote container.
  if (en.MoveFirstChild())
  {
    do
    {
     // Move over notes inside the footnote container.
     Debug.Assert(en.Type == LayoutEntityType.Note);
     // Do something.
    }
    while (en.MoveNext());
   }
 }
}
{{< /highlight >}}

New Kind enum values for the LayoutEnumerator class
8 new Kind enum values have been added for the LayoutEnumerator class:

{{< highlight csharp >}}
"FOOTNOTES"
"ENDNOTES"
"FOOTNOTESEPARATOR"
"ENDNOTESEPARATOR"
"FOOTNOTECONTINUATIONSEPARATOR"
"ENDNOTECONTINUATIONSEPARATOR"
"FOOTNOTECONTINUATIONNOTICE"
"ENDNOTECONTINUATIONNOTICE"
{{< /highlight >}}

The most useful values are the kinds that allow to unambiguously determine what type of separator you are working with. This is true because for all kinds of separators the LayoutEntityType is LayoutEntityType.NoteSeparator.

Use Case:
{{< highlight csharp >}}
Document doc = new Document("SomeDocument.docx")
LayoutEnumerator en = new LayoutEnumerator(doc);
 
// We start from the first page.
Debug.Assert(en.Type == LayoutEntityType.Page);
 
// Move to the first column on the page.
en.MoveFirstChild();
Debug.Assert(en.Type == LayoutEntityType.Column);
 
// Move to the first child in the column.
en.MoveFirstChild();
 
do
{
   if (en.Type == LayoutEntityType.NoteSeparator && en.Kind == "FOOTNOTESEPARATOR")
   {
      // Do something.
   }
 
   if (en.Type == LayoutEntityType.NoteSeparator && en.Kind == "FOOTNOTECONTINUATIONSEPARATOR")
   {
      // Do something.
   }
 
   if (en.Type == LayoutEntityType.NoteSeparator && en.Kind == "FOOTNOTECONTINUATIONNOTICE")
   {
      // Do something.
   }
}
while(en.MoveNext());
}
{{< /highlight >}}

### Added a new public property CustomXmlPart.DataChecksum

Related issue: WORDSNET-22082

Added a new public property CustomXmlPart.DataChecksum:

{{< highlight csharp >}}
/// <summary>
/// Specifies a cyclic redundancy check (CRC) checksum of the <see cref="Data"/> content.
/// </summary>
public long DataChecksum
{{< /highlight >}}

It's readonly. It is numeric representation of the storeItemChecksum element. The checksum is computed using the data of the corresponding custom XML data part.

Use Case:
{{< highlight csharp >}}
Document doc = new Document("Document.docx");
StructuredDocumentTag sdt = (StructuredDocumentTag)doc.GetChild(NodeType.StructuredDocumentTag, 0, true);
Console.WriteLine(sdt.XmlMapping.CustomXmlPart.DataChecksum);
Document doc = new Document();
 
StructuredDocumentTag sdt = new StructuredDocumentTag(doc, SdtType.RichText, MarkupLevel.Block);
doc.FirstSection.Body.Insert(sdt, null, false);
             
sdt.XmlMapping.SetMapping(doc.CustomXmlParts.Add("C8FFD3B6-7EF8-4963-895B-3565F68A03E7",
    "<root><text>test</text></root>"), "/root/text", "");
Console.WriteLine(sdt.XmlMapping.CustomXmlPart.DataChecksum);
{{< /highlight >}}

### A new Document.LayoutOption is added to control page numbering in a continuous section

Related issues: WORDSNET-22177, WORDSNET-17760.

A new layout option is added to control Aspose.Words behavior when computing page numbers in a continuous section that restarts page numbering:

{{< highlight csharp >}}
namespace Aspose.Words.Layout
{
...
    public class LayoutOptions
    {
...
        /// <summary>
        /// Gets or sets the mode of behavior for computing page numbers when a continuous section
        /// restarts the page numbering.
        /// </summary>
        /// <remarks>
        /// The default behavior matches the latest MS Word version.
        /// Older page numbering logic demonstrated by MS Word 2016 is available via this option.
        /// </remarks>
        public ContinuosSectionRestart ContinuousSectionPageNumberingRestart
}
...
    /// <summary>
    /// Represents different behaviors when computing page numbers in a continuous section that restarts page numbering.
    /// </summary>
    public enum ContinuosSectionRestart
    {
        /// <summary>
        /// Page numbering always restarts regardless of content flow.
        /// </summary>
        /// <remarks>
        /// This behavior is demonstrated by all MS Word versions, except Word 2016.
        /// </remarks>
        Always = 0,
        /// <summary>
        /// Page numbering restarts only if there is no other content before the section on the page where the section starts.
        /// </summary>
        /// <remarks>
        /// The behavior is demonstrated by MS Word 2016.
        /// </remarks>
        FromNewPageOnly,
    }
}
{{< /highlight >}}

After the changes, the default Aspose.Words behavior matches the current MS Word version (2019).
The older behavior implemented per WORDSNET-17760 is still avaialable via the introduced option:

{{< highlight csharp >}}
Document doc = new Document("input.docx");
doc.LayoutOptions.ContinuousSectionPageNumberingRestart = ContinuosSectionRestart.FromNewPageOnly;
doc.Save("out.pdf");
{{< /highlight >}}

Note: It is required to rebuild the document page layout (via Document.UpdatePageLayout() method) after changing the Document.LayoutOptions values.

### Implemented ability to set fill and stroke formatting for chart series, data points and markers

Related issue: WORDSNET-12275

Properties of the new ChartFormat type have been added to the ChartSeries, ChartDataPoint and ChartMarker classes.

{{< highlight csharp >}}
public class ChartSeries
{
    /// <summary>
    /// Provides access to fill and line formatting of the series.
    /// </summary>
    public ChartFormat Format { get; }
}
 
public class ChartDataPoint
{
    /// <summary>
    /// Provides access to fill and line formatting of this data point.
    /// </summary>
    public ChartFormat Format { get; }
}
 
public class ChartMarker
{
    /// <summary>
    /// Provides access to fill and line formatting of this marker.
    /// </summary>
    public ChartFormat Format { get; }
}
 
/// <summary>
/// Represents the formatting of a chart element.
/// </summary>
public class ChartFormat
{
    /// <summary>
    /// Gets fill formatting for the parent chart element.
    /// </summary>
    public Fill Fill { get; }
 
    /// <summary>
    /// Gets line formatting for the parent chart element.
    /// </summary>
    public Stroke Stroke { get; }
}
{{< /highlight >}}

Also aliases to some existing properties have been added to the Stroke class: ForeColor, BackColor, Visible and Transparency. The original Color, Color2, On and Opacity properties will be made obsolete in a future version of Aspose.Words.

{{< highlight csharp >}}
public class Stroke
{
    /// <summary>
    /// Gets or sets the foreground color of the stroke.
    /// </summary>
    public Color ForeColor { get; set; }
 
    /// <summary>
    /// Gets or sets the background color of the stroke.
    /// </summary>
    public Color BackColor { get; set; }
 
    /// <summary>
    /// Gets or sets a flag indicating whether the stroke is visible.
    /// </summary>
    public bool Visible { get; set; }
 
    /// <summary>
    /// Gets or sets a value between 0.0 (opaque) and 1.0 (clear) representing the degree of transparency of the stroke.
    /// </summary>
    /// <remarks>
    /// The default value is 0.
    /// </remarks>
    public double Transparency { get; set; }
}
{{< /highlight >}}

Use Case: Explains how to set series color
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
 
Shape shape = builder.InsertChart(ChartType.Column, 432, 252);
 
Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;
 
// Delete default generated series.
seriesColl.Clear();
 
// Create category names array.
string[] categories = new string[] { "AW Category 1", "AW Category 2" };
 
// Adding new series. Value and category arrays must be the same size.
ChartSeries series1 = seriesColl.Add("AW Series 1", categories, new double[] { 1, 2 });
ChartSeries series2 = seriesColl.Add("AW Series 2", categories, new double[] { 3, 4 });
ChartSeries series3 = seriesColl.Add("AW Series 3", categories, new double[] { 5, 6 });
 
// Set series color.
series1.Format.Fill.ForeColor = Color.Red;
series2.Format.Fill.ForeColor = Color.Yellow;
series3.Format.Fill.ForeColor = Color.Blue;
 
doc.Save("ColumnColor.docx");
{{< /highlight >}}

Use Case: Explains how to set individual formatting for categories of a column chart
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
 
Shape shape = builder.InsertChart(ChartType.Column, 432, 252);
Chart chart = shape.Chart;
 
// Delete default generated series.
chart.Series.Clear();
 
// Adding new series.
ChartSeries series = chart.Series.Add("AW Series 1", new string[] { "AW Category 1", "AW Category 2", "AW Category 3", "AW Category 4" }, new double[] { 1, 2, 3, 4 });
 
// Set column formatting.
ChartDataPointCollection dataPoints = series.DataPoints;
dataPoints[0].Format.Fill.PresetTextured(PresetTexture.Denim);
dataPoints[1].Format.Fill.ForeColor = Color.Red;
dataPoints[2].Format.Fill.ForeColor = Color.Yellow;
dataPoints[3].Format.Fill.ForeColor = Color.Blue;
 
doc.Save("IndividualColumnFormatting.docx");
{{< /highlight >}}

Use Case: Explains how to set line color and weight
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
 
Shape shape = builder.InsertChart(ChartType.Line, 432, 252);
 
Chart chart = shape.Chart;
ChartSeriesCollection seriesColl = chart.Series;
 
// Delete default generated series.
seriesColl.Clear();
 
// Adding new series.
ChartSeries series1 = seriesColl.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6 }, new double[] { 2.7, 3.2, 0.8 });
ChartSeries series2 = seriesColl.Add("AW Series 2", new double[] { 0.5, 1.5, 2.5 }, new double[] { 3, 1, 2 });
 
// Set series color.
series1.Format.Stroke.ForeColor = Color.Red;
series1.Format.Stroke.Weight = 5;
series2.Format.Stroke.ForeColor = Color.LightGreen;
series2.Format.Stroke.Weight = 5;
 
doc.Save("LineColorAndWeight.docx");
{{< /highlight >}}

Use Case: Explains how to set line segment colors
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
 
Shape shape = builder.InsertChart(ChartType.Line, 432, 252);
Chart chart = shape.Chart;
 
// Delete default generated series.
chart.Series.Clear();
 
// Adding new series.
ChartSeries series = chart.Series.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6, 3.5 }, new double[] { 2.7, 3.2, 0.8, 0.1 });
series.Format.Stroke.Weight = 4;
 
// Set line colors.
ChartDataPointCollection dataPoints = series.DataPoints;
dataPoints[1].Format.Stroke.ForeColor = Color.Red;
dataPoints[2].Format.Stroke.ForeColor = Color.Yellow;
dataPoints[3].Format.Stroke.ForeColor = Color.Blue;
 
doc.Save("LineSegmentColor.docx");
{{< /highlight >}}

Use Case: Explains how to set Pie chart colors
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
 
Shape shape = builder.InsertChart(ChartType.Pie, 432, 252);
Chart chart = shape.Chart;
 
// Delete default generated series.
chart.Series.Clear();
 
// Adding new series.
ChartSeries series = chart.Series.Add("Series 1", new string[] { "Category1", "Category2", "Category3" }, new double[] { 2.7, 3.2, 0.8 });
 
// Set data point color.
ChartDataPointCollection dataPoints = series.DataPoints;
dataPoints[0].Format.Fill.ForeColor = Color.Red;
dataPoints[1].Format.Fill.ForeColor = Color.Yellow;
dataPoints[2].Format.Fill.ForeColor = Color.Green;
 
doc.Save("PieColor.docx");
{{< /highlight >}}

Use Case: Explains how to set marker formatting
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
 
Shape shape = builder.InsertChart(ChartType.Scatter, 432, 252);
Chart chart = shape.Chart;
 
// Delete default generated series.
chart.Series.Clear();
 
// Adding new series.
ChartSeries series = chart.Series.Add("AW Series 1", new double[] { 0.7, 1.8, 2.6, 3.9 }, new double[] { 2.7, 3.2, 0.8, 1.7 });
 
// Set marker formatting.
series.Marker.Size = 40;
series.Marker.Symbol = MarkerSymbol.Square;
ChartDataPointCollection dataPoints = series.DataPoints;
dataPoints[0].Marker.Format.Fill.PresetTextured(PresetTexture.Denim);
dataPoints[0].Marker.Format.Stroke.ForeColor = Color.Yellow;
dataPoints[1].Marker.Format.Fill.PresetTextured(PresetTexture.WaterDroplets);
dataPoints[1].Marker.Format.Stroke.ForeColor = Color.Yellow;
dataPoints[2].Marker.Format.Fill.PresetTextured(PresetTexture.GreenMarble);
dataPoints[2].Marker.Format.Stroke.ForeColor = Color.Yellow;
dataPoints[3].Marker.Format.Fill.PresetTextured(PresetTexture.Oak);
dataPoints[3].Marker.Format.Stroke.ForeColor = Color.Yellow;
 
doc.Save("MarkerFormatting.docx");
{{< /highlight >}}

### Implemented Rendering of OOXML Ink (InkML subset)

OOXML Ink content is specified by a subset of syntax and semantics for the Ink Markup Language (see ["InkML specification"](https://www.w3.org/TR/InkML/)). The details of the subset are described in "2.1.4 Ink Content Part" of OOXML specification.

Prior to this version Aspose.Words could render only fallback shapes for OOXML Ink objects, i.e. InkML was not actually processed and a simple prerendered image was used instead. And now OOXML ink content part can be rendered directly ("cold" rendering).

To control the mode of Ink rendering a new public property SaveOptions.ImlRenderingMode was introduced and the corresponding enum was added:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining how ink (InkML) objects are rendered.
/// </summary>
/// <remarks>
/// The default value is <see cref="Aspose.Words.Saving.ImlRenderingMode.InkML"/>.
/// <para>This property is used when the document is exported to fixed page formats.</para>
/// </remarks>
public ImlRenderingMode ImlRenderingMode
/// <summary>
/// Specifies how ink (InkML) objects are rendered to fixed page formats.
/// </summary>
public enum ImlRenderingMode
{
    /// <summary>
    /// If fall-back shape is available for ink (InkML) object, Aspose.Words renders fall-back shape instead of the InkML.
    /// </summary>
    /// <remarks>
    /// Please note that after saving a document to a fixed page format with fall-back rendering mode,
    /// InkML objects in the Aspose.Words document model are permanently replaced with their fall-back counterparts.
    /// As a result, saving the same document again will always use fall-back shapes, even if ImlRenderingMode is set to InkML.
    /// </remarks>
    Fallback,
    /// <summary>
    /// Aspose.Words ignores fall-back shape of ink (InkML) object and renders InkML itself.
    /// This is the default mode.
    /// </summary>
    InkML
}
{{< /highlight >}}

In addition to limitations described in ["2.1.4 Ink Content Part"](https://docs.microsoft.com/en-us/openspecs/office_standards/ms-odrawxml/096dacae-0d2c-4861-bc4d-c8e4c6405ad3) of OOXML specification, the first version of InkML cold rendering has the following limitations:

InkML Structural Element: 

- *channel*  - The *name* attribute can be any string, but strings other than the following strings are ignored: X, Y, F.
The units attribute can be any string, but any value other than the following value is ignored: dev, in, cm 

InkML Structural Element: 
- *channel* 
	The *name* attribute can be any string, but strings other than the following strings are ignored: X, Y, F. 
	The *units* attribute can be any string, but any value other than the following value is ignored: dev, in, cm
- *traceGroup*
	Any content other than *trace* and *traceGroup* is ignored and not persisted.
- *brushProperty*
	*rasterOp* A value that defines how the colors of the pen and background interact. Is ignored. 
	*antiAliased* A value that indicates if the drawn ink is anti-aliased. Is ignored.
	*fitToCurve* A value that indicates if the ink is rendered as a series of curves versus as lines between pen sample points. Is ignored. 
- *annotationXML*
	Is ignored and not persisted.

Due to the limitations described above the Aspose.Words output may not exactly match the MS Word output in some cases.
If the rendering result is unsatisfactory, please use the fallback mode to get a result similar to previous versions of Aspose.Words.

### ImportFormatOptions.MergePastedLists property was introduced

Related issue: WORDSNET-22103

The following new public property was added into the ImportFormatOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value that specifies whether pasted lists will be merged with surrounding lists.
/// The default value is <c>false</c>.
/// </summary>
public bool MergePastedLists
{{< /highlight >}}

Use Case: Explains how to merge pasted lists with surrounding lists when adding one document to another
{{< highlight csharp >}}
Document srcDoc = new Document("src.docx");
Document dstDoc = new Document("dst.docx");
 
ImportFormatOptions importFormatOptions = new ImportFormatOptions();
importFormatOptions.MergePastedLists = true;
dstDoc.AppendDocument(srcDoc, ImportFormatMode.UseDestinationStyles, importFormatOptions);
 
dstDoc.Save("out.docx");
{{< /highlight >}}

### Public API for working with textures has been introduced

Related issue: WORDSNET-22002

A new Fill.PresetTextured() public method has been added:

{{< highlight csharp >}}
/// <summary>
/// Sets the fill to a preset texture.
/// <param name="presetTexture"><see cref="Drawing.PresetTexture"/></param>
/// </summary>
public void PresetTextured(PresetTexture presetTexture)
A new Fill.PresetTexture public property has been added:

/// <summary>
/// Gets a <see cref="Drawing.PresetTexture"/> for the fill.
/// </summary>
public PresetTexture PresetTexture{ get; }
A new public enum has been introduced:

/// <summary>
/// Specifies texture to be used to fill a shape.
/// </summary>
public enum PresetTexture
{{< /highlight >}}

Use Case: Explains how to get and apply a texture to a fill

{{< highlight csharp >}}
// Open some document with a shape.
Document doc = new Document("DocWithShape.docx");
 
// Get Fill object for the first shape.
Fill fill = doc.FirstSection.Body.Shapes[0].Fill;
 
// Check Fill PresetTexture value.
Console.WriteLine("PresetTexture value is: {0}", fill.PresetTexture);
 
// Apply BrownMarble texture to the shape fill.
fill.PresetTextured(PresetTexture.BrownMarble);
 
doc.Save("BrownMarble.docx");
{{< /highlight >}}

### TxtSaveOptions.MaxCharactersPerLine property was introduced

Related issue: WORDSNET-22090

The following new public property was added into the TxtSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets an integer value that specifies the maximum number of characters per one line.
/// The default value is 0, that means no limit.
/// </summary>
public int MaxCharactersPerLine { get; set; }
{{< /highlight >}}

Use Case: Explains how to limit maximum characters per line in output document of TXT format:
{{< highlight csharp >}}
Document doc = new Document("input.docx");
 
TxtSaveOptions saveOptions = new TxtSaveOptions();
// Set 60 characters as maximum allowed per one line.
saveOptions.MaxCharactersPerLine = 60;
 
doc.Save("out.txt", saveOptions);
{{< /highlight >}}