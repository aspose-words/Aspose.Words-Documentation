---
title: 23.4 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 23.4 Release Notes
linktitle: Aspose.Words for .NET 23.4 Release Notes
description: "Aspose.Words for .NET 23.4 Release Notes – the latest updates and fixes."
type: docs
weight: 55
url: /net/aspose-words-for-net-23-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 23.4](https://www.nuget.org/packages/Aspose.Words/23.4.0).

{{% /alert %}}

## Major Features

There are 70 improvements and fixes in this regular monthly release. The most notable are:

- Added an ability to set distance between table and surrounding text.
- Provided an ability to determine whether a Run is a phonetic guide run.
- Implemented the simple way to work with series and axes of a combo charts.
- Provided the new public properties connected to the shape relative positioning and sizing.
- Improved accuracy and performance of color brightness calculation for automatic text color resolution in accordance with the latest versions of MS Word.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24937|Ability to set foreground color with update of all gradient stops having the same color|New Feature
|WORDSNET-24973|Ability to determine whether run is ruby text|New Feature
|WORDSNET-25164|Floating table margins setters|New Feature
|WORDSNET-24908|Provide access to all series and axes of a chart in API|New Feature
|WORDSNET-25054|When loading CHM documents, also read articles that are referenced by index only|Enhancement
|WORDSNET-24907|Inconsistent behavior when Printing/Saving with values from field value or from the field code|Enhancement
|WORDSNET-25083|Different number of images in PDF document|Bug
|WORDSNET-24839|Font color is changed after rendering a document|Bug
|WORDSNET-25121|Incorrect auto-color resolution on textured shading|Bug
|WORDSNET-25120|Incorrect calculation and evaluation of background luminance|Bug
|WORDSNET-25108|NullReferenceException is thrown upon calling UpdatePageLayout|Bug
|WORDSNET-24905|Part of content is missed from the document upon conversion|Bug
|WORDSNET-24930|Text is missed upon rendering ODT document|Bug
|WORDSNET-24666|InvalidOperationException: Footnotes are only allowed inside the main text of the document|Bug
|WORDSNET-25064|Header numbers are not preserved when converting to PDF|Bug
|WORDSNET-25105|ArgumentException is thrown upon setting bookmark text|Bug
|WORDSNET-21185|Shapes position are changed and pushed down to next page in output PDF|Bug
|WORDSNET-24888|API performance issue with large documents|Bug
|WORDSNET-24919|Image in header is shifted after rendering the document|Bug
|WORDSNET-25038|DOCX to PDF: Extra page is added upon conversion|Bug
|WORDSNET-25204|Shape position in header is incorrect after rendering|Bug
|WORDSNET-25216|Aspose.Words produces corrupted document after open/save DOCX file|Bug
|WORDSNET-25139|Image is not loaded properly if the document is loaded form LazyLoadingReadOnlyStream |Bug
|WORDSNET-24746|MHTML document is loaded as empty document|Bug
|WORDSNET-25183|Incorrect calculation of maximum size and position of PieChart label inside the sector|Bug
|WORDSNET-23626|Radius of Pie chart differs from the original|Bug
|WORDSNET-25113|NullReferenceException is thrown upon rendering document|Bug
|WORDSNET-22005|Incomplete access to series of a combo charts|Bug
|WORDSNET-25040|DOCX to PDF: Table does not retain width|Bug
|WORDSNET-25032|Text color is changed after appending document with ImportFormatMode.KeepSourceFormatting|Bug
|WORDSNET-24880|Ordered list is imported improperly from DOC file|Bug
|WORDSNET-24968|HTML to MD: Table formatting is not retain in resultant file|Bug
|WORDSNET-19633|Document.UpdateFields throws exception - Master value already initialized|Bug
|WORDSNET-25211|"Root element is missing" error when opening DOCX|Bug
|WORDSNET-25144|Save to EMF failed when inserting SVG document on .NET 6|Bug
|WORDSNET-25217|Chinese fonts are not used upon rendering|Bug
|WORDSNET-25184|UpdateFields throws NullReferenceException exception |Bug
|WORDSNET-25122|Content is pushed down upon rendering the document|Bug
|WORDSNET-24897|Do not rename bookmarks when import building blocks|Bug
|WORDSNET-25185|InvalidOperationException : PDF corrupt. Invalid PDF page node object|Bug
|WORDSNET-25119|Inner shadow to wide converting to PDF|Bug
|WORDSNET-25159|Aspose.Words produces a broken document|Bug
|WORDSNET-25174|ZlibException: Bad state (invalid bit length repeat)|Bug
|WORDSNET-25170|NotImplementedException : cannot add ImageWrapper into PageModel|Bug
|WORDSNET-25131|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-25145|Update GhostPCL to the latest version|Bug
|WORDSNET-25048|PCL file produced by Aspose.Words is displayed/printed improperly|Bug
|WORDSNET-25104|Colors in the chart are turned to black and white after updating page layout|Bug
|WORDSNET-24715|Rendering chart shape produces cropped output|Bug
|WORDSNET-25033|Incorrect scaling of horizontal axis of bar chart with a manual layout|Bug
|WORDSNET-25021|Text is wrapped improperly in SmartArt Radial picture list diagram|Bug
|WORDSNET-25020|Text is wrapped improperly in SmartArt Hexagon diagram|Bug
|WORDSNET-25022|Text is wrapped improperly upon rendering SmartArt Varying Width List diagram|Bug
|WORDSNET-25019|Text is wrapped improperly in SmartArt diagram|Bug
|WORDSNET-25109|ZIP arhive is loaded as TXT document into Aspose.Words|Bug
|WORDSNET-24982|PPTX document is wrongly loaded into Document as Text document|Bug
|WORDSNET-25078|Append document method is adding blank page|Bug
|WORDSNET-25188|RTF to PDF: New lines are added upon conversion|Bug
|WORDSNET-25208|When converting a PDF to SVG a while line appears in the image that is not in the source|Bug
|WORDSNET-24772|DOCX to PDF: Nested alternate text failed|Bug
|WORDSNET-25172|Setting CharacterUnit indents to zero does not work|Bug
|WORDSNET-22437|Image Truncating from top when saving in to HTML|Bug
|WORDSNET-24664|Compare() method Memory Leak|Bug
|WORDSNET-25198|Content is missing on conversion from HTML to DOCX or PDF|Bug
|WORDSNET-25196|Exception raised load a document form a stream generated by DocumentFormat.OpenXml.Packaging |Bug
|WORDSNET-25100|Multiline text Run lose white-spaces after line-breaks |Bug
|WORDSNET-25140|Ordered list discrepancy in MS Word and HTML|Bug
|WORDSNET-24949|Poor quality of the resulting rendered shape after converting DOCX to JPG|Bug
|WORDSNET-20142|Text rotates after DOCX to HTML conversion|Bug
|WORDSNET-20006|HTML is exported in one vertical line after conversion from DOCX|Bug

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to set distance between table and surrounding text

Related issue: WORDSNET-25164

Now you can set the following properties of the Table class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets distance between table left and the surrounding text, in points.
/// </summary>
public double DistanceLeft { get; set; }

/// <summary>
/// Gets or sets distance between table right and the surrounding text, in points.
/// </summary>
public double DistanceRight { get; set; }

/// <summary>
/// Gets or sets distance between table top and the surrounding text, in points.
/// </summary>
public double DistanceTop { get; set; }

/// <summary>
/// Gets or sets distance between table bottom and the surrounding text, in points.
/// </summary>
public double DistanceBottom { get; set; }
{{< /highlight >}}

Please note: setting these properties makes the table floating.

#### Use Case: 
Explains how to set distance between table and surrounding text.
{{< highlight csharp >}}
Document doc = new Document("input.docx");
Table table = doc.FirstSection.Body.Tables[0];

// Set distance between table and surrounding text.
table.DistanceLeft = 24;
table.DistanceRight = 24;
table.DistanceTop = 3;
table.DistanceBottom = 3;

doc.Save("output.docx");
{{< /highlight >}}

### Added public property GradientStop.BaseColor

Related issue: WORDSNET-24937

The following public property was added to Aspose.Words.Drawing.GradientStop class:
{{< highlight csharp >}}
/// <summary>
/// Gets a value representing the color of the gradient stop without any modifiers.
/// </summary>
public Color BaseColor { get; }
{{< /highlight >}}

#### Use Case: 
Explains how to get unmodified Color of the gradient stop.
{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
Shape shape = builder.InsertShape(ShapeType.Balloon, 300, 300);

// Set stroke thickness to 7pt.
shape.Stroke.Weight = 7;

// Fill the stroke with one-color gradient.
shape.Stroke.Fill.OneColorGradient(Color.Red, GradientStyle.Horizontal, GradientVariant.Variant1, 0.1);

// In OneColorGradient the second color is set automatically by adding to the first color either tint or shade.
// So, we can check unmodified color is actually those we set to the first color.
GradientStop gradientStop = shape.Stroke.Fill.GradientStops[1];
Console.WriteLine("The color is: {0}", gradientStop.Color);
Console.WriteLine("The base (unmodified) color is: {0}", gradientStop.BaseColor);

/* This code produces the following output:
The color is: Color [A=255, R=51, G=0, B=0]
The base (unmodified) color is: Color [A=255, R=255, G=0, B=0]
*/
{{< /highlight >}}

### Added public property Run.IsPhoneticGuide

Related issue: WORDSNET-24973

The following public property was added to Aspose.Words.Run class:
{{< highlight csharp >}}
/// <summary>
/// Gets a boolean value indicating either the run is a phonetic guide.
/// </summary>
public bool IsPhoneticGuide { get; }
{{< /highlight >}}

#### Use Case:
Explains how to determine either a Run is a phonetic guide run.
{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();

builder.Write("text");

Run run = builder.Document.FirstSection.Body.FirstParagraph.Runs[0];
Console.WriteLine("The phonetic guide value of the run is '{0}'", run.IsPhoneticGuide);

/* This code produces the following output:
The phonetic guide value of the run is 'False'
*/
{{< /highlight >}}

### Added public property Stroke.Fill

Related issue: WORDSNET-24937

The following public property was added to Aspose.Words.Drawing.Stroke class:
{{< highlight csharp >}}
/// <summary>
/// Gets fill formatting for the <see cref="Stroke"/>.
/// </summary>
public Fill Fill { get; }
{{< /highlight >}}

#### Use Case:
Explains how to fill a stroke of the shape.
{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
Shape shape =  builder.InsertShape(ShapeType.Balloon, 300, 300);

// Set stroke thickness to 7pt.
shape.Stroke.Weight = 7;

// Fill the stroke with two-color gradient.
shape.Stroke.Fill.TwoColorGradient(Color.Red, Color.Blue, GradientStyle.Vertical, GradientVariant.Variant1);

builder.Document.Save("GradientStroke.docx");
{{< /highlight >}}

### Improvements in Chart class for Combo charts

Related issue: WORDSNET-24908

The following changes have been implemented:

A ChartSeriesCollection instance returned by the Chart.Series property includes all series of a combo chart, not just those of a main chart type.

Implemented the ChartAxisCollection class. Added the Chart.Axes property of this type, which allows access to all axes of a combo chart.
{{< highlight csharp >}}
/// <summary>
/// Gets a collection of all axes of this chart.
/// </summary>
public ChartAxisCollection Axes { get; }
/// <summary>
/// Represents a collection of chart axes.
/// </summary>
public class ChartAxisCollection : IEnumerable<ChartAxis>
{
    /// <summary>
    /// Gets the axis at the specified index.
    /// </summary>
    public ChartAxis this[int index] { get; }

    /// <summary>
    /// Gets the number of axes in this collection.
    /// </summary>
    public int Count { get; }
}
{{< /highlight >}}

#### Use Case:
Explains how to work with series and axes of a combo chart.
{{< highlight csharp >}}
Document doc = new Document("ComboChart.docx");
Chart chart = doc.FirstSection.Body.Shapes[0].Chart;

// Show markers in the line series named 'Series 3'.
foreach (ChartSeries series in chart.Series)
{
    if (series.Name == "Series 3")
    {
        series.Marker.Symbol = MarkerSymbol.Circle;
        series.Marker.Size = 18;
        break;
    }
}

// Hide the major grid lines on the primary and secondary Y axes.
foreach (ChartAxis axis in chart.Axes)
{
    if (axis.Type == ChartAxisType.Value)
        axis.HasMajorGridlines = false;
}

doc.Save("output.docx");
{{< /highlight >}}

### New public properties for working with the shape relative positioning and sizing have been added

Related issue: WORDSNET-24502

New public properties RelativeHorizontalSize and RelativeVerticalSize for specifying the relative size binding of the shape have been added to Shape class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the value of shape's relative size in horizontal direction.
/// </summary>
public RelativeHorizontalSize RelativeHorizontalSize { get; set; }

/// <summary>
/// Gets or sets the value of shape's relative size in vertical direction.
/// </summary>
public RelativeVerticalSize RelativeVerticalSize { get; set; }
{{< /highlight >}}

New public properties HeightRelative and WidthRelative for specifying the shape relative size in percent have been added to Shape class: 
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the value that represents the percentage of shape's relative height.
/// </summary>
public float HeightRelative { get; set; }

/// <summary>
/// Gets or sets the value that represents the percentage of shape's relative width.
/// </summary>
public float WidthRelative { get; set; }
{{< /highlight >}}

New public properties LeftRelative and TopRelative for specifying the shape relative position in percent have been added to Shape class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the value that represents shape's relative left position in percent.
/// </summary>
public float LeftRelative { get; set; }

/// <summary>
/// Gets or sets the value that represents shape's relative top position in percent.
/// </summary>
public float TopRelative { get; set; }
{{< /highlight >}}

New public enums RelativeHorizontalSize and RelativeVerticalSize have been introduced:
{{< highlight csharp >}}
/// <summary>
/// Specifies relatively to what the width of a shape or a text frame is calculated horizontally.
/// </summary>
public enum RelativeHorizontalSize

/// <summary>
/// Specifies relatively to what the height of a shape or a text frame is calculated vertically.
/// </summary>
public enum RelativeVerticalSize
{{< /highlight >}}

#### Use Case:
Customers may now get and set the shape relative positioning and sizing.
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Adding a simple shape with absolute size and position.
Shape shape = builder.InsertShape(ShapeType.Rectangle, 100, 40);
// Set WrapType to WrapType.None since Inline shapes are automatically converted to absolute units.
shape.WrapType = WrapType.None;

// Checking and setting the relative horizontal size.
if (shape.RelativeHorizontalSize == RelativeHorizontalSize.Default)
{
    // Setting the horizontal size binding to Margin.
    shape.RelativeHorizontalSize = RelativeHorizontalSize.Margin;
    // Setting the width to 50% of Margin width.
    shape.WidthRelative = 50;
}

// Checking and setting the relative vertical size.
if (shape.RelativeVerticalSize == RelativeVerticalSize.Default)
{
    // Setting the vertical size binding to Margin.
    shape.RelativeVerticalSize = RelativeVerticalSize.Margin;
    // Setting the heigh to 30% of Margin height.
    shape.HeightRelative = 30;
}

// Checking and setting the relative vertical position.
if (shape.RelativeVerticalPosition == RelativeVerticalPosition.Paragraph)
{
    // etting the position binding to TopMargin.
    shape.RelativeVerticalPosition = RelativeVerticalPosition.TopMargin;
    // Setting relative Top to 30% of TopMargin position.
    shape.TopRelative = 30;
}

// Checking and setting the relative horizontal position.
if (shape.RelativeHorizontalPosition == RelativeHorizontalPosition.Default)
{
    // Setting the position binding to RightMargin.
    shape.RelativeHorizontalPosition = RelativeHorizontalPosition.RightMargin;
    // The position relative value can be negative.
    shape.LeftRelative = -260;
}

doc.Save("output.docx");
{{< /highlight >}}

### Removed obsolete property JsonDataLoadOptions.ExactDateTimeParseFormat

The obsolete property JsonDataLoadOptions.ExactDateTimeParseFormat has been removed. Please use the JsonDataLoadOptions.ExactDateTimeParseFormats property instead.

#### Use Case:
{{< highlight csharp >}}
const string dateTimeParseFormat = "dd.MM.yy";
JsonDataLoadOptions options = new JsonDataLoadOptions();

//options.ExactDateTimeParseFormat = dateTimeParseFormat;
List<string> formats = new List<string> { dateTimeParseFormat };
options.ExactDateTimeParseFormats = formats;

JsonDataSource dataSource = new JsonDataSource(stream, options);
{{< /highlight >}}

Or use the following function to get the behavior of the removed ExactDateTimeParseFormat property:
{{< highlight csharp >}}
const string dateTimeParseFormat = "dd.MM.yy";
JsonDataLoadOptions options = new JsonDataLoadOptions();
SetExactDateTimeParseFormat(options, dateTimeParseFormat);
JsonDataSource dataSource = new JsonDataSource(stream, options);

void SetExactDateTimeParseFormat(JsonDataLoadOptions options, string format)
{
    if (format == null)
    {
        options.ExactDateTimeParseFormats = null;
        return;
    }

    List<string> list = (options.ExactDateTimeParseFormats != null)
        ? new List<string>(options.ExactDateTimeParseFormats)
        : new List<string>();

    options.ExactDateTimeParseFormats = list;

    if (format == string.Empty)
    {
        list.Clear();
        return;
    }

    if (list.Count > 0)
        list[0] = format;
    else
        list.Add(format);
}
{{< /highlight >}}