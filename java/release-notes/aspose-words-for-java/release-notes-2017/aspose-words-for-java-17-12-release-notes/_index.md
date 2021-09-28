---
title: Aspose.Words for Java 17.12 Release Notes
type: docs
weight: 10
url: /java/aspose-words-for-java-17-12-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 17.12](http://maven.aspose.com/repository/simple/ext-release-local/com/aspose/aspose-words/17.12/)

{{% /alert %}} 

## Major Features

There are 91 improvements and fixes in this regular monthly release. The most notable are:

- PixelFormat property in ImageSaveOptions class.
- Metered License upgraded to REST API 1.2.
- Fixed few Veracode issues reported by user.
- Implemented API to set chart axis properties.
- Added feature to get the docPartGallery value of StructuredDocumentTag of type SdtType.DocPartObj.
- Horizontal and vertical flipping attributes are now taken into account when rendering DML textboxes.
- Improved rendering of diacritics for "Courier New" font.
- Multiline MathML expressions rendering fixed.
- EMR_ROUNDRECT records processing while rendering metafiles fixed.
- PDF Rendering of indexed images while converting to CMYK color space fixed.
- OTF(CFF) fonts to PDF/A documents export fixed.
- DML Charts with empty area do not throw exception on rendering now.
- Fixed scaling problem with DML bubble charts on rendering.
- LINQ Reporting Engine supports dynamic setting of chart axes’ titles.
- Improved handling of decimal tab alignment in cells when paragraph has hanging indent.
- Improved text wrapping when line contains single or no characters.
- Improved handling of cell margins and table alignment.
- Improved cell alignment when line has trailing spaces and custom tabs.
- Improved handling of collapsed paragraphs.
- Fixed exception in rare case when line break point cannot be found.
- Fixed exception when document is saved with revision balloons inside of a cell.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1669|Implement PixelFormat property in ImageSaveOptions class in Aspose.Words for Java|New Feature|
|WORDSJAVA-1707|Metered License code upgraded to REST API 1.2.|Enhancement|
|WORDSJAVA-1675|Veracode issue: "Improper Resource Shutdown or Release"|Bug|
|WORDSJAVA-1682|Merging of Generic and CJK spans leads to bold text.|Bug|
|WORDSJAVA-1690|WarningCallback doesn't raise Warning on certain invalid XML content.|Bug|
|WORDSJAVA-1667|Exception when saving a file with drawing to PDF format|Exception|
|WORDSJAVA-1698|Exception in aspose.words - Keyframe positions must be increasing: 1.0|Exception|
|WORDSNET-10287|Check on summer 2015 // Doc to tiff conversion issue with text rendering issue|Bug|
|WORDSNET-10496|Merged cells are lost after when UpdateTableLayout method is called|Bug|
|WORDSNET-10648|/rounding/ Blank page is created after conversion from Docx to Pdf|Bug|
|WORDSNET-10673|TestCmykImageDefectJ21 is rendered to PDF incorrectly when ShowAllFormattingMarks are set to true|Bug|
|WORDSNET-12173|/text wrap/ Text moves after converting Word to PDF|Bug|
|WORDSNET-14035|/delete revisions balloons/ Failed to render revisions balloons when the last table row is deleted|Bug|
|WORDSNET-14194|Aspose Word hang when processing HTML|Bug|
|WORDSNET-14811|RTF to PDF, Issues with margins/indents|Bug|
|WORDSNET-15113|Image Rendering Issue|Bug|
|WORDSNET-15382|Document.UpdateFields does not stop (endless loop)|Bug|
|WORDSNET-15578|Chart get blurry when convert word to html|Bug|
|WORDSNET-15610|Borders specified for "colgroup" element are not applied to cell|Bug|
|WORDSNET-15796|RTF: Background image is lost for textboxes inlined with text|Bug|
|WORDSNET-15895|/Courier New + diacritics with non-zero advance/ Russian text accent rendering issue in resultant PDF|Bug|
|WORDSNET-15896|/Courier New + diacritics with non-zero advance/ Herbew text accent rendering issue in resultant PDF|Bug|
|WORDSNET-15909|Page number shifted to right in DOCX to PDF conversion|Bug|
|WORDSNET-15954|XmlMapping.SetMapping throws System.InvalidOperationException|Bug|
|WORDSNET-15979|DOCX to DOCX conversion issue with font of pie chart title|Bug|
|WORDSNET-15986|Footnote formatting is changed after joining RTF documents|Bug|
|WORDSNET-15994|/revisions/ List rendering issue in PDF document|Bug|
|WORDSNET-16025|DOCX to PDF rendering truncate the footer shape|Bug|
|WORDSNET-16026|Tables are not properly aligned in pdf output|Bug|
|WORDSNET-16028|Empty Area Chart. Exception is thrown when converting to PDF .|Bug|
|WORDSNET-16030|Cell's top border is lost after using Borders.Top|Bug|
|WORDSNET-16043|ImageSaveOptions.PageIndex is ignored when IPageSavingCallback is implements|Bug|
|WORDSNET-16046|System.ArgumentNullException when converting specific file|Bug|
|WORDSNET-16053|Symbol Field Color in Footer is lost in PDF conversion|Bug|
|WORDSNET-16061|Save as PDF Compliance PDF/A incorrectly includes OpenType Font|Bug|
|WORDSNET-16067|Incorrect inserting ole object as "htmlfile"|Bug|
|WORDSNET-16075|An exception raises when loading HTML document.|Bug|
|WORDSNET-16079|Position of cell's text is changed in output PDF|Bug|
|WORDSNET-16081|Text is rendered on next page in output PDF|Bug|
|WORDSNET-16082|Extra empty space is rendered in table's cell|Bug|
|WORDSNET-16085|Word demonstrates "Unknown" filename in Rename Package dialog.|Bug|
|WORDSNET-16090|Document.Save hangs while saving DOCX to PDF|Bug|
|WORDSNET-16095|RTF is corrupted after re-saving it|Bug|
|WORDSNET-16096|PNG image is not rendered in output PDF when PdfImageColorSpaceExportMode.SimpleCmyk is used|Bug|
|WORDSNET-16097|DOCX to PDF conversion issue with image rendering|Bug|
|WORDSNET-16118|Adding additional margin to the table cell when producing PDF output.|Bug|
|WORDSNET-16128|Math equation displaced in rendered PDF document|Bug|
|WORDSNET-16147|DOCX is corrupted after re-saving it|Bug|
|WORDSNET-6091|The line numbers have the incorrect size while saving in PDF format.|Bug|
|WORDSNET-6975|Doc to PDF conversion issue with Shape's contents|Bug|
|WORDSNET-9681|Paragraphs render on the previous page in Pdf|Bug|
|WORDSNET-9682|Text direction in SmartArt layout box for arrows is not preserved in Pdf|Bug|
|WORDSNET-10031|Extra empty space appear after conversion from Docx to Pdf|Enhancement|
|WORDSNET-10348|Document.UpdateFields does not update the AUTOTEXT|Enhancement|
|WORDSNET-12932|Content shifts down to the pages in PDF|Enhancement|
|WORDSNET-13334|Empty page is created after section break in output Pdf|Enhancement|
|WORDSNET-14485|Identify elements close to page boarder.|Enhancement|
|WORDSNET-15148|Transparent images are lost in output Pdf|Enhancement|
|WORDSNET-15384|Text is shifted down to the page in output PDF|Enhancement|
|WORDSNET-15479|Wrong empty formula appears in document after accepting revisions|Enhancement|
|WORDSNET-15491|Shape's position is changed in output PDF|Enhancement|
|WORDSNET-15599|DOCX to PDF, table on page moved down|Enhancement|
|WORDSNET-15690|Contents are pushed down to the page in output PDF|Enhancement|
|WORDSNET-15691|Table's position is changed after conversion from Docx to Pdf|Enhancement|
|WORDSNET-15818|Simplified font is used instead of Traditional in Chinese (Taiwan) document|Enhancement|
|WORDSNET-16066|Rtf's text font is changed|Enhancement|
|WORDSNET-16080|Position of numbers in cell is changed after conversion from DOCX to PDF|Enhancement|
|WORDSNET-16088|Expose switches in MailMerge Field|Enhancement|
|WORDSNET-16149|Add exception when TableEnd field is missing|Enhancement|
|WORDSNET-16164|Add support for svgBlip drawing extension.|Enhancement|
|WORDSNET-15785|/delete revisions balloons/ Exception occurs on saving document with showing revision balloons if it has revision in table|Exception|
|WORDSNET-15870|Document.Save throws System.NullReferenceException while re-saving RTF|Exception|
|WORDSNET-15923|DocumentBuilder.InsertChart throws System.NullReferenceException|Exception|
|WORDSNET-15968|System.NullReferenceException is thrown while saving DOCX to PDF|Exception|
|WORDSNET-16045|Infinite loop detected error during DOCX to TIFF image rendering|Exception|
|WORDSNET-16071|Aspose.Words.FileCorruptedException is thrown while loading DOC|Exception|
|WORDSNET-16084|An exception raises while comparing documents.|Exception|
|WORDSNET-16124|API throws FileCorruptedException upon loading RTF file|Exception|
|WORDSNET-16134|System.NullReferenceException is thrown while saving DOCX to PDF|Exception|
|WORDSNET-16157|System.NullReferenceException occurs when exporting RTF to PDF|Exception|
|WORDSNET-13512|Add feature to Format X/Y/Z Axis of chart.|Feature|
|WORDSNET-14022|Add feature to format axis numbers of chart|Feature|
|WORDSNET-14247|Add feature to format axis (minimum and maximum bounds)|Feature|
|WORDSNET-15164|Add feature to set Axis Title of Chart using LINQ Reporting|Feature|
|WORDSNET-15520|Adding the chart axis label formatting.|Feature|
|WORDSNET-15791|Add feature to set/get "Specify interval unit" of axis label|Feature|
|WORDSNET-15925|Add feature to Format Axis Number|Feature|
|WORDSNET-15972|Add feature to get the docPartGallery value of StructuredDocumentTag of type SdtType.DocPartObj|Feature|
|WORDSNET-13612|Implement Aspose.Words for .NET Core|Feature|
|WORDSNETSTD-1|Add feature to support Aspose.Words for .NET Core 2.0|Feature|
|WORDSNET-16127|Different behavior of Section New Page Break in 16.7 and 17.11|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.12. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose. Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Implemented API to Set Chart Axis Properties

Related issue WORDSNET-13512.

The following public classes and enumeration types are added to allow setting chart axis properties:

{{< highlight csharp >}}
/// <summary>
/// Represents the axis options of the chart.
/// </summary>
public class ChartAxis
{
    /// <summary>
    /// Returns type of the axis.
    /// </summary>
    public ChartAxisType Type { get; }
    /// <summary>
    /// Gets or sets type of the category axis.
    /// </summary>
    /// <remarks>
    /// Only text categories (AxisCategoryType.Category) are allowed in MS Office 2016 new charts.
    /// </remarks>
    public AxisCategoryType CategoryType { get; set; }
    /// <summary>
    /// Specifies how this axis crosses the perpendicular axis.
    /// </summary>
    /// <remarks>
    /// Default value is AxisCrosses.Automatic.
    /// The property is not supported by MS Office 2016 new charts.
    /// </remarks>
    public AxisCrosses Crosses { get; set; }
    /// <summary>
    /// Specifies where on the perpendicular axis the axis crosses.
    /// </summary>
    /// <remarks>
    /// The property has effect only if "Crosses" are set to AxisCrosses.Custom. It is not supported by MS Office 2016 new charts.
    /// The units are determined by the type of axis. When the axis is a value axis, the value of the property is a decimal number on
    /// the value axis. When the axis is a time category axis, the value is defined as an integer number of days relative to the base
    /// date (30/12/1899). For a text category axis, the value is an integer category number, starting with 1 as the first category.
    /// </remarks>
    public double CrossesAt { get; set; }
    /// <summary>
    /// Returns or sets a flag indicating whether values of axis should be displayed in reverse order, i.e. from max to min.
    /// </summary>
    /// <remarks>
    /// The property is not supported by MS Office 2016 new charts. Default value is false.
    /// </remarks>
    public bool ReverseOrder { get; set; }
    /// <summary>
    /// Returns or sets the major tick marks.
    /// </summary>
    public AxisTickMark MajorTickMark { get; set; }
    /// <summary>
    /// Returns or sets the minor tick marks for the axis.
    /// </summary>
    public AxisTickMark MinorTickMark { get; set; }
    /// <summary>
    /// Returns or sets the position of the tick labels on the axis.
    /// </summary>
    /// <remarks>
    /// The property is not supported by MS Office 2016 new charts.
    /// </remarks>
    public AxisTickLabelPosition TickLabelPosition { get; set; }
    /// <summary>
    /// Returns or sets the distance between major tick marks.
    /// </summary>
    /// <remarks>
    /// Valid range of a value is greater than zero. The property has effect for time category and value axes.
    /// Setting this property sets the MajorUnitIsAuto property to false.
    /// </remarks>
    public double MajorUnit { get; set; }
    /// <summary>
    /// Gets or sets a flag indicating whether default distance between major tick marks shall be used.
    /// </summary>
    /// <remarks>
    /// The property has effect for time category and value axes.
    /// </remarks>
    public bool MajorUnitIsAuto { get; set; }
    /// <summary>
    /// Returns or sets the scale value for major tick marks on the time category axis.
    /// </summary>
    /// <remarks>
    /// The property has effect only for time category axes.
    /// </remarks>
    public AxisTimeUnit MajorUnitScale { get; set; }
    /// <summary>
    /// Returns or sets the distance between minor tick marks.
    /// </summary>
    /// <remarks>
    /// Valid range of a value is greater than zero. The property has effect for time category and value axes.
    /// Setting this property sets the MinorUnitIsAuto property to false.
    /// </remarks>
    public double MinorUnit { get; set; }
    /// <summary>
    /// Gets or sets a flag indicating whether default distance between minor tick marks shall be used.
    /// </summary>
    /// <remarks>
    /// The property has effect for time category and value axes.
    /// </remarks>
    public bool MinorUnitIsAuto { get; set; }
    /// <summary>
    /// Returns or sets the scale value for minor tick marks on the time category axis.
    /// </summary>
    /// <remarks>
    /// The property has effect only for time category axes.
    /// </remarks>
    public AxisTimeUnit MinorUnitScale { get; set; }
    /// <summary>
    /// Returns or sets the smallest time unit that is represented on the time category axis.
    /// </summary>
    /// <remarks>
    /// The property has effect only for time category axes.
    /// </remarks>
    public AxisTimeUnit BaseTimeUnit { get; set; }
    /// <summary>
    /// Returns a ChartNumberFormat object that enables defining number formats for the axis.
    /// </summary>
    public ChartNumberFormat NumberFormat { get; }
    /// <summary>
    /// Gets or sets the distance of labels from the axis.
    /// </summary>
    /// <remarks>
    /// The property represents a percentage of the default label offset.
    /// Valid range is from 0 to 1000 percent inclusive. Default value is 100%.
    /// The property has effect only for category axes. It is not supported by MS Office 2016 new charts.
    /// </remarks>
    public int TickLabelOffset { get; set; }
    /// <summary>
    /// Specifies the scaling value of the display units for the value axis.
    /// </summary>
    /// <remarks>
    /// The property has effect only for value axes.
    /// </remarks>
    public AxisDisplayUnit DisplayUnit { get; }
    /// <summary>
    /// Gets or sets a flag indicating whether the value axis crosses the category axis between categories.
    /// </summary>
    /// <remarks>
    /// The property has effect only for value axes. It is not supported by MS Office 2016 new charts.
    /// </remarks>
    public bool AxisBetweenCategories { get; set; }
    /// <summary>
    /// Provides access to the scaling options of the axis.
    /// </summary>
    public AxisScaling Scaling { get; }
    /// <summary>
    /// Gets or sets the interval, at which tick labels are drawn.
    /// </summary>
    /// <remarks>
    /// The property has effect for text category and series axes. It is not supported by MS Office 2016 new charts.
    /// Valid range of a value is greater than or equal to 1.
    /// Setting this property sets the TickLabelSpacingIsAuto property to false.
    /// </remarks>
    public int TickLabelSpacing { get; set; }
    /// <summary>
    /// Gets or sets a flag indicating whether automatic interval of drawing tick labels shall be used.
    /// </summary>
    /// <remarks>
    /// Default value is true.
    /// The property has effect for text category and series axes. It is not supported by MS Office 2016 new charts.
    /// </remarks>
    public bool TickLabelSpacingIsAuto { get; set; }
    /// <summary>
    /// Gets or sets the interval, at which tick marks are drawn.
    /// </summary>
    /// <remarks>
    /// The property has effect for text category and series axes. It is not supported by MS Office 2016 new charts.
    /// Valid range of a value is greater than or equal to 1.
    /// </remarks>
    public int TickMarkSpacing { get; set; }
}
/// <summary>
/// Specifies type of chart axis.
/// </summary>
public enum ChartAxisType
{
    /// <summary>
    /// Category axis of a chart.
    /// </summary>
    Category,
    /// <summary>
    /// Series axis of a chart.
    /// </summary>
    Series,
    /// <summary>
    /// Value axis of a chart.
    /// </summary>
    Value
}
/// <summary>
/// Specifies type of a category axis.
/// </summary>
public enum AxisCategoryType
{
    /// <summary>
    /// Specifies that type of a category axis is determined automatically based on data.
    /// </summary>
    Automatic,
    /// <summary>
    /// Specifies an axis of an arbitrary set of categories.
    /// </summary>
    Category,
    /// <summary>
    /// Specifies a time category axis.
    /// </summary>
    Time
}
/// <summary>
/// Specifies the possible crossing points for an axis.
/// </summary>
public enum AxisCrosses
{
    /// <summary>
    /// The category axis crosses at the zero point of the value axis (if possible), or at the minimum value
    /// if the minimum is greater than zero, or at the maximum if the maximum is less than zero.
    /// </summary>
    Automatic,
    /// <summary>
    /// A perpendicular axis crosses at the maximum value of the axis.
    /// </summary>
    Maximum,
    /// <summary>
    /// A perpendicular axis crosses at the minimum value of the axis.
    /// </summary>
    Minimum,
    /// <summary>
    /// A perpendicular axis crosses at the specified value of the axis.
    /// </summary>
    Custom
}
/// <summary>
/// Specifies the possible positions for tick marks.
/// </summary>
public enum AxisTickMark
{
    /// <summary>
    /// Specifies that the tick marks shall cross the axis.
    /// </summary>
    Cross,
    /// <summary>
    /// Specifies that the tick marks shall be inside the plot area.
    /// </summary>
    Inside,
    /// <summary>
    /// Specifies that the tick marks shall be outside the plot area.
    /// </summary>
    Outside,
    /// <summary>
    /// Specifies that there shall be no tick marks.
    /// </summary>
    None
}
/// <summary>
/// Specifies the possible positions for tick labels.
/// </summary>
public enum AxisTickLabelPosition
{
    /// <summary>
    /// Specifies the axis labels shall be at the high end of the perpendicular axis.
    /// </summary>
    High,
    /// <summary>
    /// Specifies the axis labels shall be at the low end of the perpendicular axis.
    /// </summary>
    Low,
    /// <summary>
    /// Specifies the axis labels shall be next to the axis.
    /// </summary>
    NextToAxis,
    /// <summary>
    /// Specifies the axis labels are not drawn.
    /// </summary>
    None,
    /// <summary>
    /// Specifies default value of tick labels position.
    /// </summary>
    Default = NextToAxis
}
/// <summary>
/// Specifies the unit of time for axes.
/// </summary>
public enum AxisTimeUnit
{
    /// <summary>
    /// Specifies that unit was not set explicitly and default value should be used.
    /// </summary>
    Automatic,
    /// <summary>
    /// Specifies that the chart data shall be shown in days.
    /// </summary>
    Days,
    /// <summary>
    /// Specifies that the chart data shall be shown in months.
    /// </summary>
    Months,
    /// <summary>
    /// Specifies that the chart data shall be shown in years.
    /// </summary>
    Years
}
/// <summary>
/// Provides access to the scaling options of the display units for the value axis.
/// </summary>
public class AxisDisplayUnit
{
    /// <summary>
    /// Gets or sets the scaling value of the display units as one of the predefined values.
    /// </summary>
    /// <remarks>
    /// Default value is AxisBuiltInUnit.None. The AxisBuiltInUnit.Custom and AxisBuiltInUnit.Percentage values are not available
    /// in some chart types; see AxisBuiltInUnit for more information.
    /// </remarks>
    public AxisBuiltInUnit Unit { get; set; }
    /// <summary>
    /// Gets or sets a user-defined divisor to scale display units on the value axis.
    /// </summary>
    /// <remarks>
    /// The property is not supported by MS Office 2016 new charts. Default value is 1.
    /// Setting this property sets the Unit property to AxisBuiltInUnit.Custom.
    /// </remarks>
    public double CustomUnit { get; set; }
}
/// <summary>
/// Specifies the display units for an axis.
/// </summary>
public enum AxisBuiltInUnit
{
    /// <summary>
    /// Specifies the values on the chart shall displayed as is.
    /// </summary>
    None,
    /// <summary>
    /// Specifies the values on the chart shall be divided by a user-defined divisor. This value is not supported
    /// by the new chart types of MS Office 2016.
    /// </summary>
    Custom,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 1,000,000,000.
    /// </summary>
    Billions,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 100,000,000.
    /// </summary>
    HundredMillions,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 100.
    /// </summary>
    Hundreds,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 100,000.
    /// </summary>
    HundredThousands,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 1,000,000.
    /// </summary>
    Millions,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 10,000,000.
    /// </summary>
    TenMillions,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 10,000.
    /// </summary>
    TenThousands,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 1,000.
    /// </summary>
    Thousands,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 1,000,000,000,0000.
    /// </summary>
    Trillions,
    /// <summary>
    /// Specifies the values on the chart shall be divided by 0.01. This value is supported only by the new chart types of MS Office 2016.
    /// </summary>
    Percentage
}
/// <summary>
/// Represents the scaling options of the axis.
/// </summary>
public class AxisScaling
{
    /// <summary>
    /// Gets or sets scaling type of the axis.
    /// </summary>
    /// <remarks>
    /// The AxisScaleType.Linear value is the only that is allowed in MS Office 2016 new charts.
    /// </remarks>
    public AxisScaleType Type { get; set; }
    /// <summary>
    /// Gets or sets the logarithmic base for a logarithmic axis.
    /// </summary>
    /// <remarks>
    /// The property is not supported by MS Office 2016 new charts.
    /// Valid range of a floating point value is greater than or equal to 2 and less than or equal to 1000. The property has effect only
    /// if "Type" is set to AxisScaleType.Logarithmic.
    /// Setting this property sets the Type property to AxisScaleType.Logarithmic.
    /// </remarks>
    public double LogBase { get; set; }
    /// <summary>
    /// Gets or sets minimum value of the axis.
    /// </summary>
    /// <remarks>
    /// Setting this property sets the MinimumIsAuto property to false.
    /// </remarks>
    public double Minimum { get; set; }
    /// <summary>
    /// Gets or sets a flag indicating whether minimum value of the axis shall be set automatically depending on data.
    /// </summary>
    public bool MinimumIsAuto { get; set; }
    /// <summary>
    /// Gets or sets the maximum value of the axis.
    /// </summary>
    /// <remarks>
    /// Setting this property sets the MaximumIsAuto property to false.
    /// </remarks>
    public double Maximum { get; set; }
    /// <summary>
    /// Gets or sets a flag indicating whether maximum value of the axis shall be set automatically depending on data.
    /// </summary>
    public bool MaximumIsAuto { get; set; }
}
/// <summary>
/// Specifies the possible scale types for an axis.
/// </summary>
public enum AxisScaleType
{
    /// <summary>
    /// Linear scaling.
    /// </summary>
    Linear,
    /// <summary>
    /// Logarithmic scaling.
    /// </summary>
    Logarithmic
}
{{< /highlight >}}

**UC**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert chart.
Shape shape = builder.insertChart(ChartType.AREA, 432, 252);
Chart chart = shape.getChart();

// Clear demo data.
chart.getSeries().clear();

// Fill data.
chart.getSeries().add("AW Series 1",
        new Date[]{new Date(2002, 1, 1), new Date(2002, 6, 1), new Date(2015, 7, 1), new Date(2015, 8, 1), new Date(2015, 9, 1)},
        new double[]{640, 320, 280, 120, 150});
ChartAxis xAxis = chart.getAxisX();
ChartAxis yAxis = chart.getAxisY();

// Change the X axis to be category instead of date, so all the points will be put with equal interval on the X axis.
xAxis.setCategoryType(AxisCategoryType.CATEGORY);

// Define X axis properties.
xAxis.setCrosses(AxisCrosses.CUSTOM);
xAxis.setCrossesAt(3);
 // measured in display units of the Y axis (hundreds)
xAxis.setReverseOrder(true);
xAxis.setMajorTickMark(AxisTickMark.CROSS);
xAxis.setMinorTickMark(AxisTickMark.OUTSIDE);
xAxis.setTickLabelOffset(200);

// Define Y axis properties.
yAxis.setTickLabelPosition(AxisTickLabelPosition.HIGH);
yAxis.setMajorUnit(100);
yAxis.setMinorUnit(50);
yAxis.getDisplayUnit().setUnit(AxisBuiltInUnit.HUNDREDS);
yAxis.getScaling().setMinimum(100);
yAxis.getScaling().setMaximum(700);
dataDir = dataDir + "SetAxisProperties_out.docx";
doc.save(dataDir);
{{< /highlight >}}

**UC to set date/time values to axis properties**

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
        new Date[]{new Date(2017, 11, 06), new Date(2017, 11, 9), new Date(2017, 11, 15),
                new Date(2017, 11, 21), new Date(2017, 11, 25), new Date(2017, 11, 29)},
        new double[]{1.2, 0.3, 2.1, 2.9, 4.2, 5.3}
);

// Set X axis bounds.
ChartAxis xAxis = chart.getAxisX();
xAxis.getScaling().setMinimum(new Date(2017, 11, 5).getTime());
xAxis.getScaling().setMaximum(new Date(2017, 12, 3).getTime());

// Set major units to a week and minor units to a day.
xAxis.setMajorUnit(7);
xAxis.setMinorUnit(1);
xAxis.setMajorTickMark(AxisTickMark.CROSS);
xAxis.setMinorTickMark(AxisTickMark.OUTSIDE);
dataDir = dataDir + "SetDateTimeValuesToAxis_out.docx";
doc.save(dataDir);
{{< /highlight >}}

**UC to change format of numbers on the value axis**

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
        new String[]{"Item 1", "Item 2", "Item 3", "Item 4", "Item 5"},
        new double[]{1900000, 850000, 2100000, 600000, 1500000});

// Set number format.
chart.getAxisY().getNumberFormat().setFormatCode("#,##0");
dataDir = dataDir + "FormatAxisNumber_out.docx";
doc.save(dataDir);
{{< /highlight >}}

**UC to set bounds of an axis**

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
        new String[]{"Item 1", "Item 2", "Item 3", "Item 4", "Item 5"},
        new double[]{1.2, 0.3, 2.1, 2.9, 4.2});
chart.getAxisY().getScaling().setMinimum(0);
chart.getAxisY().getScaling().setMaximum(6);
dataDir = dataDir + "SetboundsOfAxis_out.docx";
doc.save(dataDir);
{{< /highlight >}}

**UC to set the interval unit between labels on an axis**

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
        new String[]{"Item 1", "Item 2", "Item 3", "Item 4", "Item 5"},
        new double[]{1.2, 0.3, 2.1, 2.9, 4.2});
chart.getAxisX().setTickLabelSpacing(2);
dataDir = dataDir + "SetIntervalUnitBetweenLabelsOnAxis_out.docx";
doc.save(dataDir);
{{< /highlight >}}

### Added Feature to Get the docPartGallery Value of StructuredDocumentTag of Type SdtType.DocPartObj.

Related issue WORDSNET-15972.

The behavior of the following properties was improved:

{{< highlight csharp >}}
public class StructuredDocumentTag
{
    .....
    public String BuildingBlockGallery{ get; set;}
    public String BuildingBlockCategory{get; set;}
    .....
}
{{< /highlight >}}

Now it is possible to obtain the value of these properties for "Markup.SdtType.DocPartObj" SDT type. The exception was thrown in previous versions.

Note: these properties still can no be set for SDT of the document part type.

### Changed Return Type for FieldMergingArgsBase.Field

Related Issue: WORDSNET-16088 

To provide typed access to a merge field's properties requested by a customer we have changed the return type of the FieldMergingArgsBase.Field property (and hence of the corresponding descendants' properties) from **Field** to **FieldMergeField**.

{{< highlight csharp >}}
/// <summary>
/// Gets the object that represents the current merge field.
/// </summary>
public FieldMergeField Field
{
    get { return mField; }
}
{{< /highlight >}}
