---
title: Aspose.Words for .NET 18.6 Release Notes
type: docs
weight: 70
url: /net/aspose-words-for-net-18-6-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 18.6](https://www.nuget.org/packages/Aspose.Words/18.6.0)

{{% /alert %}} 

## Major Features

There are 62 improvements and fixes in this regular monthly release. The most notable are:

- Exposed Title and Description properties into Table class
- Added feature to insert shapes through the DocumentBuilder using ShapeType
- Changed public properties of AxisScaling class
- Implemented API allowing to set up language preferences
- Added IsMoveFromRevision and IsMoveToRevision properties
- Exposed properties for Asian typography into ParagraphFormat class
- Public TXT save option AddBidiMarks is added
- Implemented "left" and "right" alignment support for Ruby objects rendering
- Improved rendering of DrawingML chart data labels with percentage values and the specified format
- Flat shapes that are perpendicular to the projection plane are not rendered now
- Zero-width characters in DrawingML textboxes no longer cause an exception during rendering
- Fixed an issue with font fallback rendering for 1F600 - 1F64F (Emoticons) Unicode range
- Fixed a bug with the rendering of the chart data labels, when label text and SpPr are specified
- Fixed a bug with the maximum value of the chart axis when rendering DrawingML charts
- Fixed a problem with rendering of subscript and superscript text in DrawingML charts
- Fixed a bug where the shadowed shapes with compound outline lost their fill
- Fixed MathML alignment issue inside text boxes
- Fixed layout when large inline shape is attached to a paragraph with space after overflowing page
- Fixed issue with preferred width of vertically merged table cells accounted for during width computation
- Fixed exception when revision balloons are displayed in certain cases
- Enhanced logic which handles page breaks inside text frames
- LINQ Reporting Engine supports dynamic insertion of hyperlinks

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-11253|A Paragraph is pushed down to the next page in output Documents|Bug|
|WORDSNET-16555|Aspose.Words drops header/footer from altchunk document|Bug|
|WORDSNET-15837|Contents position is changed after conversion from DOC to PDF|Bug|
|WORDSNET-16846|Debug assertion failure when loading an HTML document|Bug|
|WORDSNET-16404|Document.Protect is not worked with AllowOnlyFormFields protection type|Bug|
|WORDSNET-16796|DOCX does not open in MS Word 2016 after re-saving it|Bug|
|WORDSNET-16772|DOCX to PDF conversion issue with shapes' position|Bug|
|WORDSNET-11870|Docx to Pdf conversion issue with spacing at the top of page|Bug|
|WORDSNET-16748|Extra line appears in rendered PDF|Bug|
|WORDSNET-6636|Extract contents between bookmark is not working for bullets|Bug|
|WORDSNET-16834|Field.Unlink changes font size of paragraph break|Bug|
|WORDSNET-16495|Foreign language rendering as square boxes|Bug|
|WORDSNET-16896|Images are not rendered in output PDF|Bug|
|WORDSNET-16808|Incorrect alignment when converting docx with Ruby to PDF|Bug|
|WORDSNET-16521|Incorrect percentage value for data labels after converting DOCX to PDF|Bug|
|WORDSNET-16317|List numbering incorrect when comparing documents|Bug|
|WORDSNET-16401|LprSpan.LocaleIdFarEast is not populated from the document model|Bug|
|WORDSNET-15195|Negative indent issue in DOCX to HTML conversion|Bug|
|WORDSNET-16814|Node.ToString returns incorrect output for English and Arabic text|Bug|
|WORDSNET-9970|Non-XML data in CustomXmlPart causes Aspose.Words to produce a corrupted DOCX|Bug|
|WORDSNET-16790|ODT To DOCX - Conversion problems with tables|Bug|
|WORDSNET-15510|RTF to HTML conversion converts Text boxes to Image|Bug|
|WORDSNET-14893|RTF to Html conversion issue paragraph indent|Bug|
|WORDSNET-16732|Shape.Filled property returns incorrect value|Bug|
|WORDSNET-16827|Shape.Rotation does not rotate the text of shape|Bug|
|WORDSNET-16773|Shape's background color is lost after conversion from DOCX to PDF|Bug|
|WORDSNET-16257|System.NullReference is thrown when show revision balloons is on|Bug|
|WORDSNET-15579|Text formatting lost in DOC to DOCX conversion|Bug|
|WORDSNET-11581|Text position is changed after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-16857|The alignment of the paragraph is changed in the output DOCX|Bug|
|WORDSNET-16785|The conversion MHTML to PDF produces corrupted output|Bug|
|WORDSNET-16793|The small letters in the chart are rendered incorrectly after converting to PDF|Bug|
|WORDSNET-16765|The table moved to the next page in PDF output|Bug|
|WORDSNET-16609|The text color of the chart data labels is changed when converting to PDF|Bug|
|WORDSNET-11451|Wrong page headers during Word to PDF conversion with merged document (AltChunk)|Bug|
|WORDSNET-11469|AW throws NRE if a field contains a comment|Enhancement|
|WORDSNET-10862|Blank page added in generated PDF|Enhancement|
|WORDSNET-10555|Document.Save lose the 'Image Size and Quality' setting|Enhancement|
|WORDSNET-16786|Emulate special "page break before" handling|Enhancement|
|WORDSNET-16389|Fonts of SVG fragments saved to HTML are not included in font resources|Enhancement|
|WORDSNET-16270|Paragraph moves to the right during DOCX to PDF conversion|Enhancement|
|WORDSNET-16803|RTF to HTML is not Converting all the RTF content to HTML|Enhancement|
|WORDSNET-13801|Shape.Rotation does not work for Shape node created by Aspose.Words|Enhancement|
|WORDSNET-16868|System.TypeInitializationException when try to create new CertificateHolder at .Net Standard 2.0|Enhancement|
|WORDSNET-16727|Throw a meaningful exception when inserting a Shape in GroupShape with wrong markup language|Enhancement|
|WORDSNET-16826|Error: Could not create the bitmap with the specified parameters|Exception|
|WORDSNET-16825|Error: Could not create the bitmap with the specified parameters|Exception|
|WORDSNET-15808|System.NullReferenceException is thrown while converting DOCX to HTML|Exception|
|WORDSNET-16859|System.NullReferenceException is thrown while saving DOCX to HTML|Exception|
|WORDSNET-16034|System.NullReferenceException occurs when exporting DOCX to HTML|Exception|
|WORDSNET-16345|Add DateTime type to Minimum/Maximum AxisScaling|Feature|
|WORDSNET-16452|Add feature to get Move From and To revision type|Feature|
|WORDSNET-16461|Add feature to insert mailto link using LINQ Reporting|Feature|
|WORDSNET-15112|Add feature to insert shapes through the DocumentBuilder using ShapeType|Feature|
|WORDSNET-14535|Add feature to rotate VML text box (shape)|Feature|
|WORDSNET-5890|Add Table properties in table object to get/set Title, Descriptions in table>properties>Alt Text tab|Feature|
|WORDSNET-5418|Consider adding a InsertShape method to DocumentBuilder|Feature|
|WORDSNET-11493|Implement possibility to create DML shapes by default.|Feature|
|WORDSNET-16664|Support Asian Typography options of Paragraph|Feature|
|WORDSNET-16888|Document.UpdatePageLayout does not stop|Performance|
|WORDSNET-16667|Significant decrease of performance (getting bookmark)|Regression|
|WORDSNET-16384|System.NullReferenceException is thrown while saving DOC to HTML|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Supported Dynamic Insertion of Hyperlinks for LINQ Reporting Engine

The "[Inserting Hyperlinks Dynamically](/words/net/template-syntax/#templatesyntax-insertinghyperlinksdynamically)" section of the LINQ Reporting Engine's documentation was added to describe the change.

### Added Title and Description Properties into Table Class

WORDSNET-5890 has been resolved. The following public properties have been added into the Table class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets title of this table. It provides an alternative text representation of the information contained in the table.
/// </summary>
/// <remarks>
/// The default value is an empty string.
/// This property is meaningful for ISO/IEC 29500 compliant DOCX documents (see the OoxmlCompliance class).
/// When saved to pre-ISO/IEC 29500 formats, the property is ignored.
/// </remarks>
public string Title
{
    get; set;
}
/// <summary>
/// Gets or sets description of this table. It provides an alternative text representation of the information contained in the table.
/// </summary>
/// <remarks>
/// The default value is an empty string.
/// This property is meaningful for ISO/IEC 29500 compliant DOCX documents (see the OoxmlCompliance class).
/// When saved to pre-ISO/IEC 29500 formats, the property is ignored.
/// </remarks>
public string Description
{
    get; set;
}
{{< /highlight >}}

#### Usage

{{< highlight csharp >}}
Document document = new Document(myDir + "Test.docx");
Table table = document.FirstSection.Body.Tables[0];
table.Title = "Test title";
table.Description = "Test description";
document.Save(myDir + "Output.docx");
{{< /highlight >}}

### Added Feature to Insert Shapes through DocumentBuilder using ShapeType

` `WORDSNET-15112 has been resolved. The following methods were added in the DocumentBuilder:

{{< highlight csharp >}}
/// <summary>
/// Inserts inline shape with specified type and size.
/// </summary>
/// <param name="shapeType">The shape type to insert into the document.</param>
/// <param name="width">The width of the shape in points.</param>
/// <param name="height">The height of the shape in points.</param>
/// <returns>The shape node that was inserted.</returns>
public Shape InsertShape(ShapeType shapeType, double width, double height)
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Inserts free-floating shape with specified position, size and text wrap type.
/// </summary>
/// <param name="shapeType">The shape type to insert into the document</param>
/// <param name="horzPos">Specifies where the horizontal distance to the shape is measured from.</param>
/// <param name="left">Distance in points from the origin to the left side of the shape.</param>
/// <param name="vertPos">Specifies where the vertical distance to the shape is measured from.</param>
/// <param name="top">Distance in points from the origin to the top side of the shape.</param>
/// <param name="width">The width of the shape in points.</param>
/// <param name="height">The width of the shape in points.</param>
/// <param name="wrapType">Specifies how to wrap text around the shape.</param>
/// <returns>The shape node that was inserted.</returns>
public Shape InsertShape(ShapeType shapeType, RelativeHorizontalPosition horzPos, double left, RelativeVerticalPosition vertPos, double top, double width, double height, WrapType wrapType)
{{< /highlight >}}

These methods allow to insert DML shape into the document model. Document must be saved in the format, which support DML shapes, otherwise such nodes will be converted to VML shape, while document saving.

See, few use cases below:

\1. Free-floating shape insertion.

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Shape shape = builder.InsertShape(ShapeType.TextBox, RelativeHorizontalPosition.Page, 100, RelativeVerticalPosition.Page, 100, 50, 50, WrapType.None);
shape.Rotation = 30.0;
OoxmlSaveOptions so = new OoxmlSaveOptions(SaveFormat.Docx);

// "Strict" or "Transitional" compliance allows to save shape as DML.
so.Compliance = OoxmlCompliance.Iso29500_2008_Transitional;
doc.Save("RotatedShape.docx", so);
{{< /highlight >}}

\2. Inline shape insertion.

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Shape shape = builder.InsertShape(ShapeType.TextBox, 50, 50);
shape.Rotation = 30.0;
OoxmlSaveOptions so = new OoxmlSaveOptions(SaveFormat.Docx);
so.Compliance = OoxmlCompliance.Iso29500_2008_Transitional;
doc.Save("RotatedShape.docx", so);
{{< /highlight >}}

### Changed Public Properties of AxisScaling Class

` `WORDSNET-16345 has been resolved. The properties MinimumIsAuto and MaximumIsAuto have been removed from the AxisScaling class. Type of the Minimum and Maximum properties has been changed from **double** to AxisBound.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets minimum value of the axis.
/// </summary>
/// <remarks>
/// The default value is "auto".
/// </remarks>
public AxisBound Minimum
{
    get; set;
}
/// <summary>
/// Gets or sets the maximum value of the axis.
/// </summary>
/// <remarks>
/// The default value is "auto".
/// </remarks>
public AxisBound Maximum
{
    get; set;
}
{{< /highlight >}}

The new AxisBound class allows specifying axis bound as a numeric, datetime or "auto" value.

{{< highlight csharp >}}
namespace Aspose.Words.Drawing.Charts
{
    /// <summary>
    /// Represents minimum or maximum bound of axis values.
    /// </summary>
    /// <remarks>
    /// Bound can be specified as a numeric, datetime or a special "auto" value.
    /// The instances of this class are immutable.
    /// </remarks>
    public class AxisBound
    {
        /// <summary>
        /// Creates a new instance indicating that axis bound should be determined automatically by a word-processing application.
        /// </summary>
        public AxisBound();
        /// <summary>
        /// Creates an axis bound represented as a number.
        /// </summary>
        public AxisBound(double value);
        /// <summary>
        /// Creates an axis bound represented as datetime value.
        /// </summary>
        public AxisBound(DateTime datetime);
        /// <summary>
        /// Returns a flag indicating that axis bound should be determined automatically.
        /// </summary>
        public bool IsAuto
        {
            get;
        }
        /// <summary>
        /// Returns numeric value of axis bound.
        /// </summary>
        public double Value
        {
            get;
        }
        /// <summary>
        /// Returns value of axis bound represented as datetime.
        /// </summary>
        public DateTime ValueAsDate
        {
            get;
        }
    }
}
{{< /highlight >}}

#### UC

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert chart.
Shape shape = builder.InsertChart(ChartType.Area, 432, 252);
Chart chart = shape.Chart;

// Clear demo data.
chart.Series.Clear();

// Fill data.
chart.Series.Add("AW Series 1",
    new DateTime[] { new DateTime(2002, 01, 01), new DateTime(2002, 06, 01), new DateTime(2002, 07, 01),
        new DateTime(2002, 08, 01), new DateTime(2002, 09, 01)},
    new double[] { 640, 320, 280, 120, 150 });
ChartAxis xAxis = chart.AxisX;
ChartAxis yAxis = chart.AxisY;

// Change the X axis to be category instead of date, so all the points will be put with equal interval on the X axis.
xAxis.CategoryType = AxisCategoryType.Category;

// Define X axis properties.
xAxis.Crosses = AxisCrosses.Custom;
xAxis.CrossesAt = 3;
 // measured in display units of the Y axis (hundreds)
xAxis.ReverseOrder = true;
xAxis.MajorTickMark = AxisTickMark.Cross;
xAxis.MinorTickMark = AxisTickMark.Outside;
xAxis.TickLabelOffset = 200;

// Define Y axis properties.
yAxis.TickLabelPosition = AxisTickLabelPosition.High;
yAxis.MajorUnit = 100;
yAxis.MinorUnit = 50;
yAxis.DisplayUnit.Unit = AxisBuiltInUnit.Hundreds;
yAxis.Scaling.Minimum = new AxisBound(100);
yAxis.Scaling.Maximum = new AxisBound(700);
doc.Save(dir + "TestAxis.docx");
{{< /highlight >}}

##### UC to set date/time values to axis properties

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
    new DateTime[] { new DateTime(2017, 11, 06), new DateTime(2017, 11, 09), new DateTime(2017, 11, 15),
        new DateTime(2017, 11, 21), new DateTime(2017, 11, 25), new DateTime(2017, 11, 29) },
    new double[] { 1.2, 0.3, 2.1, 2.9, 4.2, 5.3 });

// Set X axis bounds.
ChartAxis xAxis = chart.AxisX;
xAxis.Scaling.Minimum = new AxisBound(new DateTime(2017, 11, 05));
xAxis.Scaling.Maximum = new AxisBound(new DateTime(2017, 12, 03));

// Set major units to a week and minor units to a day.
xAxis.MajorUnitScale = AxisTimeUnit.Days;
xAxis.MajorUnit = 7;
xAxis.MinorUnitScale = AxisTimeUnit.Days;
xAxis.MinorUnit = 1;
xAxis.MajorTickMark = AxisTickMark.Cross;
xAxis.MinorTickMark = AxisTickMark.Outside;
doc.Save(dir + "TestDateValues.docx");
{{< /highlight >}}

###### UC to set bounds of an axis

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
chart.AxisY.Scaling.Minimum = new AxisBound(0);
chart.AxisY.Scaling.Maximum = new AxisBound(6);
doc.Save(dir + "TestAxisBounds.docx");
{{< /highlight >}}

### Added API Allowing to Setup Language Preferences

WORDSNET-16401 has been resolved. Displaying the document in Word depends on what languages are set in defaults of that document. But what to do, if there are no any languages are set in defaults? In this case Word takes information from 'Set the Office Language Preferences' dialog, which for example, can be found under 'File -> Options -> Language' menu in Word 2016.

The new API implements such dialog of Word:

{{< highlight csharp >}}
/// <summary>
/// Allows to set up language preferences.
/// </summary>
/// <remarks>
/// Implements 'Set the Office Language Preferences' dialog in Word.
/// </remarks>
public class LanguagePreferences
{{< /highlight >}}

This class implements the following public members:

{{< highlight csharp >}}
/// <summary>
/// Adds additional editing language.
/// </summary>
public void AddEditingLanguage(EditingLanguage language)
/// <summary>
/// Adds additional editing languages.
/// </summary>
public void AddEditingLanguages(EditingLanguage[] languages)
/// <summary>
/// Sets default editing language.
/// </summary>
public void SetAsDefault(EditingLanguage language)
/// <summary>
/// <para>Gets or sets default editing language.</para>
/// <para>The default value is <see cref="EditingLanguage.EnglishUS"/>.</para>
/// </summary>
public EditingLanguage DefaultEditingLanguage
{{< /highlight >}}

Also added a new public enumeration:

{{< highlight csharp >}}
/// <summary>
/// Specifies the editing language.
/// </summary>
public enum EditingLanguage
{{< /highlight >}}

And finally, a new public property is added to LoadOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets language preferences that will be used when document is loading.
/// </summary>
public LanguagePreferences LanguagePreferences
{{< /highlight >}}

The use cases will be as follows.

#### UC: Add Japanese language to the editing languages:

{{< highlight csharp >}}
LoadOptions loadOptions = new LoadOptions();
loadOptions.LanguagePreferences.AddEditingLanguage(EditingLanguage.Japanese);
Document doc = TestUtil.Open(@"in.docx", loadOptions);
int localeIdFarEast = doc.Styles.DefaultFont.LocaleIdFarEast;
if (localeIdFarEast == (int)EditingLanguage.Japanese)
    Console.WriteLine("The document either has no any FarEast language set in defaults or it was set to Japanese originally.");
else
    Console.WriteLine("The document default FarEast language was set to another than Japanese language originally, so it is not overridden.");
{{< /highlight >}}

##### UC: Set Russian language as the default editing language:

{{< highlight csharp >}}
LoadOptions loadOptions = new LoadOptions();
loadOptions.LanguagePreferences.SetAsDefault(EditingLanguage.Russian);
Document doc = TestUtil.Open(@"in.docx", loadOptions);
int localeId = doc.Styles.DefaultFont.LocaleId;
if (localeId == (int)EditingLanguage.Russian)
    Console.WriteLine("The document either has no any language set in defaults or it was set to Russian originally.");
else
    Console.WriteLine("The document default language was set to another than Russian language originally, so it is not overridden.");
{{< /highlight >}}

### Added IsMoveFromRevision and IsMoveToRevision Properties

` `WORDSNET-16664 has been resolved. The following public properties have been added into the Inline, Paragraph, ShapeBase and InlineStory classes:

{{< highlight csharp >}}
/// <summary>
/// Returns true if this object was moved (deleted) in Microsoft Word while change tracking was enabled.
/// </summary>
public bool IsMoveFromRevision
{
    get;
}
/// <summary>
/// Returns true if this object was moved (inserted) in Microsoft Word while change tracking was enabled.
/// </summary>
public bool IsMoveToRevision
{
    get;
}
{{< /highlight >}}

**Usage**

{{< highlight csharp >}}
Document doc = new Document(myDir + "Test.docx");
ParagraphCollection paragraphs = doc.FirstSection.Body.Paragraphs;
for (int i = 0; i < paragraphs.Count; i++)
{
    if (paragraphs[i].IsMoveFromRevision)
        Console.WriteLine("The paragraph {0} has been moved (deleted).", i);
    if (paragraphs[i].IsMoveToRevision)
        Console.WriteLine("The paragraph {0} has been moved (inserted).", i);
}
{{< /highlight >}}

### Added Properties for Asian Typography into ParagraphFormat Class

` `WORDSNET-16664 has been resolved. The following public properties have been added into the ParagraphFormat class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a flag indicating whether East Asian line-breaking rules are applied to the current paragraph.
/// </summary>
public bool FarEastLineBreakControl
{
    get; set;
}
/// <summary>
/// If this property is <b>false</b>, Latin text in the middle of a word can be wrapped for
/// the current paragraph. Otherwise Latin text is wrapped by whole words.
/// </summary>
public bool WordWrap
{
    get; set;
}
/// <summary>
/// Gets or sets a flag indicating whether hanging punctuation is enabled for the current paragraph.
/// </summary>
public bool HangingPunctuation
{
    get; set;
}
{{< /highlight >}}

The properties correspond to the options of the Line break group on the Asian Typography tab of the Paragraph properties dialog in MSW.

**Usage**

{{< highlight csharp >}}
Document doc = new Document(myDir + "Input.docx");
ParagraphFormat format = doc.FirstSection.Body.Paragraphs[0].ParagraphFormat;
format.FarEastLineBreakControl = false;
format.WordWrap = true;
format.HangingPunctuation = false;
doc.Save(myDir + "Output.docx");
{{< /highlight >}}

### Added Public TXT Save Option AddBidiMarks

` `WORDSNET-16814 has been resolved. Implemented TxtSaveOptions.AddBidiMarks property as following:

{{< highlight csharp >}}
/// <summary>
/// <para>Specifies whether to add bi-directional marks before each BiDi run when exporting in plain text format.</para>
/// <para>The default value is <b>true</b>.</para>
/// </summary>
public bool AddBidiMarks
{{< /highlight >}}

When this option is enabled, AW inserts Unicode Character 'RIGHT-TO-LEFT MARK' (U+200F) before each bi-directional Run in text. This option corresponds to *"Add bi-directional marks"* option in Word File Conversion dialog when you export to a Plain Text format. Note, it appears in dialog only if any of **Arabic** or **Hebrew** editing languages are added in Word.

In addition, unlike Word where this option is set to **false** by default, in AW this option is set by default to **true**.

#### UC: Export to TXT format, no adding RTL marks before each BiDi Run:

{{< highlight csharp >}}
Document doc = new Document("in.docx");
TxtSaveOptions saveOptions = new TxtSaveOptions();
saveOptions.AddBidiMarks = false;
doc.Save("out.txt", saveOptions);
{{< /highlight >}}

### Obsolete Enum RowAlignment was Removed

` `Obsolete enum RowAlignment was removed. Use TableAlignment instead.

### Obsolete Method InvalidateFieldTypes() was Removed from Document and Range Classes

Obsolete method InvalidateFieldTypes() was removed from Document and Range classes. Use NormalizeFieldTypes() instead.

### Obsolete Properties were Removed from RowFormat Class

Obsolete property RowFormat.PreferredWidth was removed. Please use the Table.PreferredWidth property instead.

Obsolete property RowFormat.RowAlignment was removed. Please use the Table.RowAlignment property instead.

Obsolete property RowFormat.AllowAutoFit was removed. Please use the Table.AllowAutoFit property instead.

Obsolete property RowFormat.Bidi was removed. Please use the Table.Bidi property instead.

Obsolete properties RowFormat.LeftPadding/RightPadding/TopPadding/BottomPadding was removed. Please use these properties from Table class instead.

Obsolete property RowFormat.CellSpacing was removed. Please use the Table.CellSpacing property instead.

Obsolete property RowFormat.LeftIndent was removed. Please use the Table.LeftIndent property instead.

Obsolete method RowFormat.ClearCellPadding() was removed. Please use padding properties on the Table instead.
