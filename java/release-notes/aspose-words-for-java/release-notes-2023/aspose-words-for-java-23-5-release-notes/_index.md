---
title: 23.5 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 23.5 Release Notes
linktitle: Aspose.Words for Java 23.5 Release Notes
description: "Aspose.Words for Java 23.5 Release Notes – the latest updates and fixes."
type: docs
weight: 80
url: /java/aspose-words-for-java-23-5-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 23.5](https://releases.aspose.com/words/java/23-5/).

{{% /alert %}}

## Major Features

There are 185 improvements and fixes in this regular monthly release. The most notable are:

- Added public properties to setting temporary folder and skip loading native library.
- Provided the feature to get and modify chart series data.
- Implemented support for text wrapping in headers/footers.
- Fixed rendering of MathML formula with embedded images.
- Added an ability to remove digital signatures from ODT documents.
- Added public properties to obtain base and ruby text of phonetic guide Run.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by Java Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-2854|Public option to skip loading HarfBuzz native library.|New Feature
|WORDSJAVA-2668|Public option to skip loading WindowsNativeCall.dll native library.|New Feature
|WORDSJAVA-2846|Specifying temporary folder for Aspose.Words document operation|New Feature
|WORDSJAVA-2800|Add Remark section to Java ApiReferences|New Feature
|WORDSJAVA-2801|Add Example section to Java ApiReferences|New Feature
|WORDSJAVA-2679|StringIndexOutOfBoundsException is thrown when trying to convert specified HTML to PDF|Bug
|WORDSJAVA-2723|Compatibility Issues with Java SE 11 and Later|Bug
|WORDSJAVA-2843|Twice parsing/loading of PNG when save Word doc to PDF|Bug
|WORDSJAVA-2851|HarfBuzz dependency is missing in the POM|Bug
|WORDSJAVA-2845|Fix Examples Formatting in ApiReferences|Bug
|WORDSJAVA-2742|IllegalStateException is thrown upon building report LINQ.|Bug

</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by .NET Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-6989|Add support for GlossaryDocuments and BuildingBlocks in Node.ToString() function|New Feature
|WORDSNET-24517|The layout issue due to a paragraph with FrameFormat in the footer|New Feature
|WORDSNET-21657|The text is pushed up to previous page in output PDF|New Feature
|WORDSNET-14994|Paragraphs are rendered on previous page in output PDF|New Feature
|WORDSNET-24874|Header content is overlapped by the main document content|New Feature
|WORDSNET-16086|Text layout issue in rendered PDF|New Feature
|WORDSNET-17277|Add feature to get the categories of chart|New Feature
|WORDSNET-17485|Position of header content is changed after DOCX to PDF conversion|New Feature
|WORDSNET-18468|Add feature to modify/remove chart's series data|New Feature
|WORDSNET-17828|Incorrect text wrapping in the header|New Feature
|WORDSNET-19992|Table with text wrapping does not render correct in output PDF|New Feature
|WORDSNET-17307|Content are rendered on previous page in output PDF|New Feature
|WORDSNET-19761|When convert word to PDF/A, paragraph compressed to same page|New Feature
|WORDSNET-21880|DOCX to PDF: Content stays on first page instead being moved to next|New Feature
|WORDSNET-19793|Oval Shape TextBox Overlaps with Content in Header Area in PDF|New Feature
|WORDSNET-21417|Text and Shape position is changed in the footer of output PDF|New Feature
|WORDSNET-21418|Text and Page field is lost in the footer of output PDF|New Feature
|WORDSNET-20747|DOCX to PDF conversion issue with image/content position |New Feature
|WORDSNET-19374|Shapes' position is changed after conversion from DOCX to PDF|New Feature
|WORDSNET-20304|Content pushed upwards in all pages of PDF|New Feature
|WORDSNET-20890|Image position is changed in the header of output PDF|New Feature
|WORDSNET-21110|DOCX->PDF conversion: Text and image have their positions changed|New Feature
|WORDSNET-20933|Content overlaps with header in rendered document|New Feature
|WORDSNET-21118|Text and Shapes are overlapped and their position is incorrect in output PDF|New Feature
|WORDSNET-22631|DOCX to PDF: Space in header is lost|New Feature
|WORDSNET-22591|Images are overlapped after DOCX to PDF Conversion |New Feature
|WORDSNET-21350|Header text is overlapped over each other in output PDF|New Feature
|WORDSNET-21360|Table shifted to the top and overlapped the header in the PDF|New Feature
|WORDSNET-21784|Bug converting docx w/header image with top/bottom text wrapping to pdf|New Feature
|WORDSNET-22124|Text position in the Header of document is incorrect in output PDF|New Feature
|WORDSNET-14215|Chart Series' colors were changed after removing and adding new series|New Feature
|WORDSNET-22131|When transforming Word to pdf the headline is closer to the header than in Word source file|New Feature
|WORDSNET-22136|DOCX to PDF, issue with table text wrapping option|New Feature
|WORDSNET-22679|Image is overlapping text in the header|New Feature
|WORDSNET-22685|Content pushed towards top page edge in PDF|New Feature
|WORDSNET-25256|Content is shifted upon rendering document|New Feature
|WORDSNET-22546|Footer text position is changed after DOCX to PDF Conversion |New Feature
|WORDSNET-22893|Header alignment issue on conversion to PDF|New Feature
|WORDSNET-23422|DOCX to PDF conversion causes layout issues in output file|New Feature
|WORDSNET-22511|Text is pushed up to previous page after DOCX to PDF conversion|New Feature
|WORDSNET-21901|DOCX to PDF conversion issue with position of footer content and table|New Feature
|WORDSNET-23426|Header content is overlapped|New Feature
|WORDSNET-21158|Document.UpdateFields does not update the page number of TOC correctly|New Feature
|WORDSNET-20503|A Cell's content pushed to previous Page in HtmlFixed|New Feature
|WORDSNET-24623|Part of content is moved to the previous page upon rendering|New Feature
|WORDSNET-21805|Support Azure Rights Management RMS Encryption. Office365 Digital Rights Management|New Feature
|WORDSNET-23300|Image in header overlaps text|New Feature
|WORDSNET-19146|OLE object in OfficeMath are lost in output DOCX|New Feature
|WORDSNET-23454|Header is moved up when converting DOCX to PDF|New Feature
|WORDSNET-22520|Layout APIs return incorrect position of Bookmark|New Feature
|WORDSNET-14049|Add feature to format Data Series (line formatting for Scatter chart)|New Feature
|WORDSNET-24067|Content of first page is rendered a little upper then in the original document|New Feature
|WORDSNET-24077|Content in header is overlapped|New Feature
|WORDSNET-23508|Footer content is moved outside the page upon rendering|New Feature
|WORDSNET-23816|Header content is overlapped after rendering|New Feature
|WORDSNET-24080|Content is rendered upper than in the original document|New Feature
|WORDSNET-23518|Content is moved to previous page upon rendering|New Feature
|WORDSNET-22307|Text position is changed after DOCX to PDF conversion|New Feature
|WORDSNET-25277|The radical sign according to the argument height|New Feature
|WORDSNET-23541|DOCX to PDF: Image is overlapping the content|New Feature
|WORDSNET-25173|Programmatically get both base text and annotation of Run nodes that contain ruby text|New Feature
|WORDSNET-25281|DOCX to PDF: Images and shape overflows the header part|New Feature
|WORDSNET-25282|DOCX to PDF: Image misaligned and overflows the text|New Feature
|WORDSNET-25285|Footer is rendered improperly|New Feature
|WORDSNET-23879|Content in header is overlapped|New Feature
|WORDSNET-24654|Content is pushed to the next page upon rendering|New Feature
|WORDSNET-24327|Floating image overlaps content in the document's header|New Feature
|WORDSNET-25316|Rendering of the radical argument if the argument height is large|New Feature
|WORDSNET-19145|NodeRendererBase.SizeInPoints returns incorrect size|New Feature
|WORDSNET-24917|Import the simplest HTML document with MSO properties support|New Feature
|WORDSNET-9397|Aspose.Words should not render all the content of first footer in PDF|New Feature
|WORDSNET-20196|All tables shifted upwards causing overlapping with logo in header in PDF|New Feature
|WORDSNET-16013|Image position is changed after conversion from DOCX to DOC/PDF|New Feature
|WORDSNET-17519|DOCX to PDF - header table overlaps page content|New Feature
|WORDSNET-18280|Provide API for 'Fill & Line' options to 'Format Data Point' of Chart|New Feature
|WORDSNET-13935|Add feature to show/hide grid lines of chart|New Feature
|WORDSNET-14398|Add feature to update chart's data|New Feature
|WORDSNET-24360|Floating image overlaps content in the document's header|New Feature
|WORDSNET-24409|Part of content is moved to the previouse page after rendering|New Feature
|WORDSNET-24547|Update chart series|New Feature
|WORDSNET-22402|Space (empty paragraphs) in Header are losing after converting to PDF|New Feature
|WORDSNET-20433|Incorrect position of images and characters when converting DOCX to PDF/PNG|New Feature
|WORDSNET-18859|Text position is changed after conversion from DOCX to PDF|New Feature
|WORDSNET-16062|Footer is not appearing correctly when converting DOCX document to PDF|New Feature
|WORDSNET-24752|One extra line is added to first page when saving to PDF|New Feature
|WORDSNET-9957|Header contents overlap with the body content in output PDF|New Feature
|WORDSNET-24945|Ability to determine chart series type|New Feature
|WORDSNET-25002|DOCX to PDF: Footer pushed down|New Feature
|WORDSNET-25008|Part of content is moved to next page and is wrapped improperly|New Feature
|WORDSNET-25053|Image in the header is overlapped by content|New Feature
|WORDSNET-25045|Content overlaps header|New Feature
|WORDSNET-25163|Conversion Dotx to Pdf make body overlap header|New Feature
|WORDSNET-25214|Footer is rendered improperly|New Feature
|WORDSNET-12974|Header contents are truncated after saving DOCX to DOC/PDF|New Feature
|WORDSNET-13881|Text position is changed after conversion from DOCX to PDF|New Feature
|WORDSNET-15804|Rendering issue of Paragraph breaks in header|New Feature
|WORDSNET-24527|Footer is rendered improperly|Enhancement
|WORDSNET-23637|Document content overlaps header|Enhancement
|WORDSNET-10431|Header/footer height does not match MS Word 2013|Enhancement
|WORDSNET-23690|Content is moved on the previous page|Enhancement
|WORDSNET-14738|Add feature to modify Word Charts|Enhancement
|WORDSNET-16831|Header layout changes when converting to PDF|Enhancement
|WORDSNET-25199|Border and background of SVG image is lost after rendering|Bug
|WORDSNET-25154|Corrupted document is loaded when is converted to Stream|Bug
|WORDSNET-24892|Shape in header is missed upon rendering document|Bug
|WORDSNET-25232|Page numbers are wrong after convert to PDF |Bug
|WORDSNET-23216|Add feature to access multilevel series X values|Bug
|WORDSNET-24923|German Umlaut characters are improperly read from RTF document|Bug
|WORDSNET-25237|NullReferenceException is thrown upon rendering document to Tiff with ColorMode.Grayscale|Bug
|WORDSNET-25242|SDT value is changed after rendering document|Bug
|WORDSNET-25244|Document compare incorrect result|Bug
|WORDSNET-24014|The radical sign is not rendering correctly|Bug
|WORDSNET-25245|Incorrect rendering of math formula, if math elements contains embedded image|Bug
|WORDSNET-25250|ArgumentException is thrown upon rendering document|Bug
|WORDSNET-25249|Numbering is broken after importing section|Bug
|WORDSNET-25252|Document compare "Index was out of range." exception|Bug
|WORDSNET-25251|Issue with Document.ExtractPages(..)|Bug
|WORDSNET-24033|DocumentBuilder.InsertParagraph works incorrectly when cursor is inside inline-level SDT|Bug
|WORDSNET-25235|The method ApsCanvas.DeepCopy(bool) doesn't work properly|Bug
|WORDSNET-25236|ApsGlyphs.RenderTransform is not correctly applied in SVG rendering|Bug
|WORDSNET-25261|NullReferenceException in PdfOperatorGS|Bug
|WORDSNET-25262|InvalidCastException in PdfTilingPatternFactory.BuildShadingPattern()|Bug
|WORDSNET-25269|Document compare: "Cannot insert node of this type at this location" exception|Bug
|WORDSNET-19590|Footer floater not wrapped after header truncation|Bug
|WORDSNET-25278|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-25286|Text position after text frame is incorrect after rendering|Bug
|WORDSNET-25287|Put  comment content into a separate line when export to TXT|Bug
|WORDSNET-25289|SDT content in footer is changed after rendering document|Bug
|WORDSNET-25298|Periods in image name written into MD are escaped|Bug
|WORDSNET-25241|DML ArcTo rendering ~/~/ Error rendering shape when convert to HTML|Bug
|WORDSNET-25221|SVG image is rendered improperly|Bug
|WORDSNET-9529|Include Microsoft YaHei in the CJK linking list|Bug
|WORDSNET-25263|InvalidCastException in PdfPageTree.WalkTree()|Bug
|WORDSNET-25332|Accents are lost when VBA source code is written to document|Bug
|WORDSNET-25226|Document is truncated after accept revisions individually|Bug
|WORDSNET-9396|Paragraphs from second page are moved to the first page in PDF|Bug
|WORDSNET-25335|NullReferenceException while saving specific DOCX to Markdown|Bug
|WORDSNET-25248|Shapes in groupshape are overlapped and partially hidden|Bug
|WORDSNET-25254|DOCX to PDF: Superscript is converted from alphabetical to numerical value|Bug
|WORDSNET-25348|Incorrect font size|Bug
|WORDSNET-25349|ListState.UpdateListState() is not invoked for lists located at the end of the document|Bug
|WORDSNET-25280|DOCX to PDF: "Path" tag is added to PDF/UA document|Bug
|WORDSNET-25255|IF field is updated improperly after copying to another document|Bug
|WORDSNET-24972|Method RequestDictionary is receiving empty string|Bug
|WORDSNET-24761|Field value is not read when field is defined as fldSimple|Bug
|WORDSNET-24769|Comparison failed|Bug
|WORDSNET-24940|Wrong value of ChartDataPoint.InvertIfNegative property|Bug
|WORDSNET-24941|Setting color of a gradient stop of data point changes color of entire series|Bug
|WORDSNET-25044|Shape position in the header is incorrect after rendering|Bug
|WORDSNET-25043|Digitally signed .ODT document raises exception during digital signatures deletion|Bug
|WORDSNET-25085|Incorrect floating table position|Bug
|WORDSNET-24602|File size increase after mapping|Bug
|WORDSNET-25102|Text is covered by black rectangle after rendering SVG|Bug
|WORDSNET-25099|Embedded font is not exported when converting to HTML|Bug
|WORDSNET-25115|Add an option to ignore shapes in FindReplaceOptions|Bug
|WORDSNET-25127|CrossReference hyperlinks stripped but available on surrounding text|Bug
|WORDSNET-25132|InvalidCastException is thrown upon calling UpdatePageLayout|Bug
|WORDSNET-25136|Open/save breaks hyperlink with nested hyperlink field|Bug
|WORDSNET-25146|List item numbering is changed after using ExtractPages|Bug
|WORDSNET-25158|StackOverflowException is thrown upon updating fields in the document.|Bug
|WORDSNET-25161|Make is possible to use ProgressCallback while saving to DOC format|Bug
|WORDSNET-25157|Aspose.Words ignores STYLE elements in HTML documents if their "type" attribute values are empty|Bug
|WORDSNET-25166|ArgumentException is thrown when accessing properties of SystemDrawing.Image|Bug
|WORDSNET-25165|Allow accessing OLE Control Name and GroupName |Bug
|WORDSNET-25207|PDF document does not pass PdfUa validation|Bug
|WORDSNET-25209|System.IndexOutOfRangeException raised in UpdateFields method|Bug
|WORDSNET-25212|NullReferenceException is thrown upon rendering document|Bug
|WORDSNET-25147|Different style in corrections when converting a document to HTML|Bug
|WORDSNET-25331|ParagraphFormat objects builder.getParagraphFormat() are references to the same object|Bug
|WORDSNET-25227|Image size is differs by one pixel from the original in HTML|Bug
|WORDSNET-13290|Analyze what it takes to work Aspose.Words at Azure Paas App Service Web App|Bug
|WORDSNET-25333|Table don't autofit to document size saving to PDF|Bug
|WORDSNET-25205|Header on the second page is rendered improperly|Bug
|WORDSNET-10806|TxtSaveOptions.PreserveTableLayout  does not generate the correct output|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to specify temporary folder for Aspose.Words for Java

Related issue: WORDSJAVA-2846

Implemented ability to change default temporary folder location using **NativeLibSettings.setTmpDirectoryPath(customPath)** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to check and change default temporary folder. Please see the following code example to learn how to use such a method:

{{% /alert %}}

{{< highlight java >}}
String defaultPath = NativeLibSettings.getTmpDirectoryPath();
String customPath = defaultPath + "customPath";
NativeLibSettings.setTmpDirectoryPath(customPath);
{{< /highlight >}}

### Added ability to skip loading of native library for Aspose.Words for Java

Related issue: WORDSJAVA-2854 WORDSJAVA-2668

Implemented ability to skip and load native library using **NativeLibSettings.skipWinNativeLib** and **NativeLibSettings.skipHarfBuzzNativeLib** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to skip loading of native libraris. Please see the following code example to learn how to use such a method:

{{% /alert %}}

{{< highlight java >}}
// Skip loading and use WindowsNativeCall dll libraries.
NativeLibSettings.skipWinNativeLib();
// Skip loading and use harfbuzz-shaping-engine dll libraries.
NativeLibSettings.skipHarfBuzzNativeLib();
{{< /highlight >}}

### Added ability to remove digital signatures from ODT

Related issue: WORDSNET-25043

Implemented removing digital signatures from ODT using **Aspose.Words.DigitalSignatures.DigitalSignatureUtil.RemoveAllSignatures** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove digital signatures from ODT. Please see the following code example to learn how to use such a method:

{{% /alert %}}

{{< highlight csharp >}}
DigitalSignatureUtil.RemoveAllSignatures("in.odt", "out.odt");
{{< /highlight >}}

### Added new public property FindReplaceOptions.IgnoreShapes

Related issue: WORDSNET-25115

The following public property was added to **Aspose.Words.Replacing.FindReplaceOptions** class:

{{< highlight csharp >}}
/// <summary>
/// <para>Gets or sets a boolean value indicating either to ignore shapes within a text.</para>
/// <para>The default value is <c>false</c>.</para>
/// </summary>
public bool IgnoreShapes { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to ignore shapes within a text in FindReplace. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.Write("123");
builder.InsertShape(ShapeType.Balloon, 200, 200);
builder.Write("456");

builder.Document.Range.Replace("123456", "789", new FindReplaceOptions() { IgnoreShapes = true });
Console.Write(builder.Document.GetText());

// This code produces the following output:
// 789
// \u000c
{{< /highlight >}}

### Added new public property Forms2OleControl.GroupName

Related issue: WORDSNET-25165

The following public property was added to **Aspose.Words.Drawing.Ole.Forms2OleControl** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a string that specifies a group of mutually exclusive controls.
/// The default value is an empty string.
/// </summary>
public string GroupName {get; set;}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get and change group name of Forms2Ole control. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
// Assume there is a shape with Forms2OleControl in document.
Document doc = new Document("input.docx");

Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
Forms2OleControl control = (Forms2OleControl)shape.OleFormat.OleControl;

if (control != null)
{
    Console.WriteLine("Control group name is: {0}", control.GroupName);
    control.GroupName = "newGroup";
}
{{< /highlight >}}

### Added new public property PdfSaveOptions.ExportParagraphGraphicsToArtifact

Related issue: WORDSNET-25280

The following public property was added to **Aspose.Words.Saving.PdfSaveOptions** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether a paragraph graphic should be marked as an artifact.
/// </summary>
/// <remarks>
/// <para> Default value is <c>false</c> and paragraph graphics (underlines, text emphasis, etc.)
/// will be marked as "Span" in the logical structure of the document.</para>
/// <para> When the value is <c>true</c> the paragraph graphics will be marked as "Artifact".</para>
/// <para> This value is ignored when <see cref="ExportDocumentStructure"/> is <c>false</c>. </para>
/// </remarks>
public bool ExportParagraphGraphicsToArtifact { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

The following property allows to export paragraph graphics as artifact (underlines, text emphasis, etc.). Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document(fileName);
PdfSaveOptions saveOptions = new PdfSaveOptions();
saveOptions.ExportParagraphGraphicsToArtifact = true;
doc.Save(outputFileName, saveOptions);
{{< /highlight >}}

### Added public properties to obtain base and ruby text of phonetic guide Run

Related issue: WORDSNET-25173

The following public property was added to **Aspose.Words.Run** class:

{{< highlight csharp >}}
/// <summary>
/// Gets a <see cref="PhoneticGuide"/> object.
/// </summary>
public PhoneticGuide PhoneticGuide { get; }
{{< /highlight >}}

Added the following public class into **Aspose.Words** namespace:

{{< highlight csharp >}}
/// <summary>
/// Represents Phonetic Guide.
/// </summary>
public class PhoneticGuide
{
  /// <summary>
  /// Gets base text of the phonetic guide.
  /// </summary>
  public string BaseText { get; }

  /// <summary>
  /// Gets ruby text of the phonetic guide.
  /// </summary>
  public string RubyText { get; }
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to obtain base and ruby text from phonetic guide Run. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("DocWithRuby.docx");

Run run = doc.FirstSection.Body.FirstParagraph.Runs[0];
if (run != null)
{
    Console.WriteLine(run.PhoneticGuide.BaseText);
    Console.WriteLine(run.PhoneticGuide.RubyText);
}
{{< /highlight >}}

### Added public property ChartSeries.SeriesType of new ChartSeriesType enum type

Related issue: WORDSNET-24945

The SeriesType property has been added to the **ChartSeries** class:

{{< highlight csharp >}}
/// <summary>
/// Gets the type of this chart series.
/// </summary>
public ChartSeriesType SeriesType { get; }
{{< /highlight >}}

The definition of the added **ChartSeriesType** enum type:

{{< highlight csharp >}}
/// <summary>
/// Specifies a type of a chart series.
/// </summary>
public enum ChartSeriesType
{
    /// <summary>
    /// Represents an Area chart series.
    /// </summary>
    Area,

    /// <summary>
    /// Represents a Stacked Area chart series.
    /// </summary>
    AreaStacked,

    /// <summary>
    /// Represents a 100% Stacked Area chart series.
    /// </summary>
    AreaPercentStacked,

    /// <summary>
    /// Represents a 3D Area chart series.
    /// </summary>
    Area3D,

    /// <summary>
    /// Represents a 3D Stacked Area chart series.
    /// </summary>
    Area3DStacked,

    /// <summary>
    /// Represents a 3D 100% Stacked Area chart series.
    /// </summary>
    Area3DPercentStacked,

    /// <summary>
    /// Represents a Bar chart series.
    /// </summary>
    Bar,

    /// <summary>
    /// Represents a Stacked Bar chart series.
    /// </summary>
    BarStacked,

    /// <summary>
    /// Represents a 100% Stacked Bar chart series.
    /// </summary>
    BarPercentStacked,

    /// <summary>
    /// Represents a 3D Bar chart series.
    /// </summary>
    Bar3D,

    /// <summary>
    /// Represents a 3D Stacked Bar chart series.
    /// </summary>
    Bar3DStacked,

    /// <summary>
    /// Represents a 3D 100% Stacked Bar chart series.
    /// </summary>
    Bar3DPercentStacked,

    /// <summary>
    /// Represents a Bubble chart series.
    /// </summary>
    Bubble,

    /// <summary>
    /// Represents a 3D Bubble chart series.
    /// </summary>
    Bubble3D,

    /// <summary>
    /// Represents a Column chart series.
    /// </summary>
    Column,

    /// <summary>
    /// Represents a Stacked Column chart series.
    /// </summary>
    ColumnStacked,

    /// <summary>
    /// Represents a 100% Stacked Column chart series.
    /// </summary>
    ColumnPercentStacked,

    /// <summary>
    /// Represents a 3D Column chart series.
    /// </summary>
    Column3D,

    /// <summary>
    /// Represents a 3D Stacked Column chart series.
    /// </summary>
    Column3DStacked,

    /// <summary>
    /// Represents a 3D 100% Stacked Column chart series.
    /// </summary>
    Column3DPercentStacked,

    /// <summary>
    /// Represents a 3D Clustered Column chart series.
    /// </summary>
    Column3DClustered,

    /// <summary>
    /// Represents a Doughnut chart series.
    /// </summary>
    Doughnut,

    /// <summary>
    /// Represents a Line chart series.
    /// </summary>
    Line,

    /// <summary>
    /// Represents a Stacked Line chart series.
    /// </summary>
    LineStacked,

    /// <summary>
    /// Represents a 100% Stacked Line chart series.
    /// </summary>
    LinePercentStacked,

    /// <summary>
    /// Represents a 3D Line chart series.
    /// </summary>
    Line3D,

    /// <summary>
    /// Represents a Pie chart series.
    /// </summary>
    Pie,

    /// <summary>
    /// Represents a 3D Pie chart series.
    /// </summary>
    Pie3D,

    /// <summary>
    /// Represents a Pie of Bar chart series.
    /// </summary>
    PieOfBar,

    /// <summary>
    /// Represents a Pie of Pie chart series.
    /// </summary>
    PieOfPie,

    /// <summary>
    /// Represents a Radar chart series.
    /// </summary>
    Radar,

    /// <summary>
    /// Represents a Scatter chart series.
    /// </summary>
    Scatter,

    /// <summary>
    /// Represents a Stock chart series.
    /// </summary>
    Stock,

    /// <summary>
    /// Represents a Surface chart series.
    /// </summary>
    Surface,

    /// <summary>
    /// Represents a 3D Surface chart series.
    /// </summary>
    Surface3D,

    /// <summary>
    /// Represents a Treemap chart series.
    /// </summary>
    Treemap,

    /// <summary>
    /// Represents a Sunburst chart series.
    /// </summary>
    Sunburst,

    /// <summary>
    /// Represents a Histogram chart series.
    /// </summary>
    Histogram,

    /// <summary>
    /// Represents a Pareto chart series.
    /// </summary>
    Pareto,

    /// <summary>
    /// Represents a Pareto Line chart series.
    /// </summary>
    ParetoLine,

    /// <summary>
    /// Represents a Box and Whisker chart series.
    /// </summary>
    BoxAndWhisker,

    /// <summary>
    /// Represents a Waterfall chart series.
    /// </summary>
    Waterfall,

    /// <summary>
    /// Represents a Funnel chart series.
    /// </summary>
    Funnel,

    /// <summary>
    /// Represents a Region Map chart series.
    /// </summary>
    RegionMap
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove/add series of a specific type of a Combo chart. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("ComboChart.docx");
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
Chart chart = shape.Chart;

// Remove all series of the Column type.
for (int i = chart.Series.Count - 1; i >= 0; i--)
{
    if (chart.Series[i].SeriesType == ChartSeriesType.Column)
        chart.Series.RemoveAt(i);
}

// Add a new series.
chart.Series.Add(
    "New Series",
    new string[] { "Category 1", "Category 2", "Category 3", "Category 4" },
    new double[] { 5.6, 7.1, 2.9, 8.9 });

doc.Save("out.docx");
{{< /highlight >}}

### Implemented ability to get and modify chart series data

Related issue: WORDSNET-18468

The following changes have been implemented:

Added new classes: **ChartXValue**, **ChartYValue**, **ChartXValueCollection**, **ChartYValueCollection**, **BubbleSizeCollection**, **ChartMultilevelValue**, and new enum types: **ChartXValueType**, **ChartYValueType**.

Added new properties and methods to the **ChartSeries** class.

{{< highlight csharp >}}
namespace Aspose.Words.Drawing.Charts
{
    public class ChartSeries
    {
        /// <summary>
        /// Adds the specified X value to the chart series. If the series supports Y values and bubble sizes, they will
        /// be empty for the X value.
        /// </summary>
        public void Add(ChartXValue xValue);

        /// <summary>
        /// Adds the specified X and Y values to the chart series.
        /// </summary>
        public void Add(ChartXValue xValue, ChartYValue yValue);

        /// <summary>
        /// Adds the specified X value, Y value and bubble size to the chart series.
        /// </summary>
        public void Add(ChartXValue xValue, ChartYValue yValue, double bubbleSize);

        /// <summary>
        /// Inserts the specified X value into the chart series at the specified index. If the series supports Y values
        /// and bubble sizes, they will be empty for the X value.
        /// </summary>
        /// <remarks>
        /// The corresponding data point with default formatting will be inserted into the data point collection. And,
        /// if data labels are displayed, the corresponding data label with default formatting will be inserted too.
        /// </remarks>
        public void Insert(int index, ChartXValue xValue);

        /// <summary>
        /// Inserts the specified X and Y values into the chart series at the specified index.
        /// </summary>
        /// <remarks>
        /// The corresponding data point with default formatting will be inserted into the data point collection. And,
        /// if data labels are displayed, the corresponding data label with default formatting will be inserted too.
        /// </remarks>
        public void Insert(int index, ChartXValue xValue, ChartYValue yValue);

        /// <summary>
        /// Inserts the specified X value, Y value and bubble size into the chart series at the specified index.
        /// </summary>
        /// <remarks>
        /// The corresponding data point with default formatting will be inserted into the data point collection. And,
        /// if data labels are displayed, the corresponding data label with default formatting will be inserted too.
        /// </remarks>
        public void Insert(int index, ChartXValue xValue, ChartYValue yValue, double bubbleSize);

        /// <summary>
        /// Removes the X value, Y value, and bubble size, if supported, from the chart series at the specified index.
        /// The corresponding data point and data label are also removed.
        /// </summary>
        public void Remove(int index);

        /// <summary>
        /// Removes all data values from the chart series. Format of all individual data points and data labels is cleared.
        /// </summary>
        public void Clear();

        /// <summary>
        /// Removes all data values from the chart series with preserving the format of the data points and data labels.
        /// </summary>
        public void ClearValues();

        /// <summary>
        /// Gets a collection of X values for this chart series.
        /// </summary>
        public ChartXValueCollection XValues { get; }

        /// <summary>
        /// Gets a collection of Y values for this chart series.
        /// </summary>
        public ChartYValueCollection YValues { get; }

        /// <summary>
        /// Gets a collection of bubble sizes for this chart series.
        /// </summary>
        public BubbleSizeCollection BubbleSizes { get; }

        ...
    }

    /// <summary>
    /// Allows to specify type of an X value of a chart series.
    /// </summary>
    public enum ChartXValueType
    {
        /// <summary>
        /// Specifies that an X value is a string category.
        /// </summary>
        String,

        /// <summary>
        /// Specifies that an X value is a double-precision floating-point number.
        /// </summary>
        Double,

        /// <summary>
        /// Specifies that an X value is a date and time of day.
        /// </summary>
        DateTime,

        /// <summary>
        /// Specifies that an X value is a time of day.
        /// </summary>
        Time,

        /// <summary>
        /// Specifies that an X value is a multilevel value.
        /// </summary>
        /// <seealso cref="ChartMultilevelValue"/>
        Multilevel
    }

    /// <summary>
    /// Allows to specify type of an Y value of a chart series.
    /// </summary>
    public enum ChartYValueType
    {
        /// <summary>
        /// Specifies that an Y value is a double-precision floating-point number.
        /// </summary>
        Double,

        /// <summary>
        /// Specifies that an Y value is a date and time of day.
        /// </summary>
        DateTime,

        /// <summary>
        /// Specifies that an X value is a time of day.
        /// </summary>
        Time
    }

    /// <summary>
    /// Represents an X value for a chart series.
    /// </summary>
    /// <remarks>
    /// This class contains a number of static methods for creating an X value of a particular type. The
    /// <see cref="ValueType"/> property allows you to determine the type of an existing X value.
    /// All non-null X values of a chart series must be of the same <see cref="ChartXValueType"/> type.
    /// </remarks>
    public class ChartXValue
    {
        /// <summary>
        /// Creates a <see cref="ChartXValue"/> instance of the <see cref="ChartXValueType.String"/> type.
        /// </summary>
        public static ChartXValue FromString(string value);

        /// <summary>
        /// Creates a <see cref="ChartXValue"/> instance of the <see cref="ChartXValueType.Double"/> type.
        /// </summary>
        public static ChartXValue FromDouble(double value);

        /// <summary>
        /// Creates a <see cref="ChartXValue"/> instance of the <see cref="ChartXValueType.DateTime"/> type.
        /// </summary>
        public static ChartXValue FromDateTime(DateTime value);

        /// <summary>
        /// Creates a <see cref="ChartXValue"/> instance of the <see cref="ChartXValueType.Time"/> type.
        /// </summary>
        public static ChartXValue FromTimeSpan(TimeSpan value);

        /// <summary>
        /// Creates a <see cref="ChartXValue"/> instance of the <see cref="ChartXValueType.Multilevel"/> type.
        /// </summary>
        public static ChartXValue FromMultilevelValue(ChartMultilevelValue value);

        /// <summary>
        /// Gets the type of the X value stored in the object.
        /// </summary>
        public ChartXValueType ValueType { get; }

        /// <summary>
        /// Gets the stored string value.
        /// </summary>
        public string StringValue { get; }

        /// <summary>
        /// Gets the stored numeric value.
        /// </summary>
        public double DoubleValue { get; }

        /// <summary>
        /// Gets the stored datetime value.
        /// </summary>
        public DateTime DateTimeValue { get; }

        /// <summary>
        /// Gets the stored time value.
        /// </summary>
        public TimeSpan TimeValue { get; }

        /// <summary>
        /// Gets the stored multilevel value.
        /// </summary>
        public ChartMultilevelValue MultilevelValue { get; }
    }

    /// <summary>
    /// Represents an Y value for a chart series.
    /// </summary>
    /// <remarks>
    /// This class contains a number of static methods for creating an Y value of a particular type. The
    /// <see cref="ValueType"/> property allows you to determine the type of an existing Y value.
    /// All non-null Y values of a chart series must be of the same <see cref="ChartYValueType"/> type.
    /// </remarks>
    public class ChartYValue
    {
        /// <summary>
        /// Creates a <see cref="ChartYValue"/> instance of the <see cref="ChartYValueType.Double"/> type.
        /// </summary>
        public static ChartYValue FromDouble(double value);

        /// <summary>
        /// Creates a <see cref="ChartYValue"/> instance of the <see cref="ChartYValueType.DateTime"/> type.
        /// </summary>
        public static ChartYValue FromDateTime(DateTime value);

        /// <summary>
        /// Creates a <see cref="ChartYValue"/> instance of the <see cref="ChartYValueType.Time"/> type.
        /// </summary>
        public static ChartYValue FromTimeSpan(TimeSpan value);

        /// <summary>
        /// Gets the type of the Y value stored in the object.
        /// </summary>
        public ChartYValueType ValueType { get; }

        /// <summary>
        /// Gets the stored numeric value.
        /// </summary>
        public double DoubleValue { get; }

        /// <summary>
        /// Gets the stored datetime value.
        /// </summary>
        public DateTime DateTimeValue { get; }

        /// <summary>
        /// Gets the stored time value.
        /// </summary>
        public TimeSpan TimeValue { get; }
    }

    /// <summary>
    /// Represents a collection of X values for a chart series.
    /// </summary>
    /// <remarks>
    /// All items of the collection other than <b>null</b> must have the same <see cref="ChartXValue.ValueType"/>.
    /// The collection allows only changing X values. To add or insert new values to a chart series, or remove values,
    /// the appropriate methods of the <see cref="ChartSeries"/> class can be used.
    /// </remarks>
    public class ChartXValueCollection : IEnumerable<ChartXValue>
    {
        /// <summary>
        /// Gets the number of items in this collection.
        /// </summary>
        public int Count { get; }

        /// <summary>
        /// Gets or sets the X value at the specified index.
        /// </summary>
        /// <remarks>
        /// Empty values are represented as <b>null</b>.
        /// </remarks>
        public ChartXValue this[int index] { get; set; }
    }

    /// <summary>
    /// Represents a collection of Y values for a chart series.
    /// </summary>
    /// <remarks>
    /// All items of the collection other than <b>null</b> must have the same <see cref="ChartYValue.ValueType"/>.
    /// The collection allows only changing Y values. To add or insert new values to a chart series, or remove values,
    /// the appropriate methods of the <see cref="ChartSeries"/> class can be used.
    /// </remarks>
    public class ChartYValueCollection : IEnumerable<ChartYValue>
    {
        /// <summary>
        /// Gets the number of items in this collection.
        /// </summary>
        public int Count { get; }

        /// <summary>
        /// Gets or sets the Y value at the specified index.
        /// </summary>
        /// <remarks>
        /// Empty values are represented as <b>null</b>.
        /// </remarks>
        public ChartYValue this[int index] { get; set; }
    }

    /// <summary>
    /// Represents a collection of bubble sizes for a chart series.
    /// </summary>
    /// <remarks>
    /// The collection allows only changing bubble sizes. To add or insert new values to a chart series, or remove
    /// values, the appropriate methods of the <see cref="ChartSeries"/> class can be used.
    /// Empty bubble size values are represented as <see cref="double.NaN"/>.
    /// </remarks>
    public class BubbleSizeCollection : IEnumerable<double>
    {
        /// <summary>
        /// Gets the number of items in this collection.
        /// </summary>
        public int Count { get; }

        /// <summary>
        /// Gets or sets the bubble size value at the specified index.
        /// </summary>
        public double this[int index] { get; set; }
    }

    /// <summary>
    /// Represents a value for charts that display multilevel data.
    /// </summary>
    public class ChartMultilevelValue
    {
        /// <summary>
        /// Initializes a new instance of this class that represents a three-level value.
        /// </summary>
        public ChartMultilevelValue(string level1, string level2, string level3);

        /// <summary>
        /// Initializes a new instance of this class that represents a two-level value.
        /// </summary>
        public ChartMultilevelValue(string level1, string level2);

        /// <summary>
        /// Initializes a new instance of this class that represents a single-level value.
        /// </summary>
        public ChartMultilevelValue(string level1);

        /// <summary>
        /// Gets the name of the chart top level that this value refers to.
        /// </summary>
        public string Level1 { get; }

        /// <summary>
        /// Gets the name of the chart intermediate level that this value refers to.
        /// </summary>
        public string Level2 { get; }

        /// <summary>
        /// Gets the name of the chart bottom level that this value refers to.
        /// </summary>
        public string Level3 { get; }
    }
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to populate existing chart series with data. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("ScatterChart.docx");

Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
Chart chart = shape.Chart;
ChartSeries series1 = chart.Series[0];

// Clear X and Y values of the first series.
series1.ClearValues();

// Populate the series with data.
series1.Add(ChartXValue.FromDouble(3), ChartYValue.FromDouble(10));
series1.Add(ChartXValue.FromDouble(5), ChartYValue.FromDouble(5));
series1.Add(ChartXValue.FromDouble(7), ChartYValue.FromDouble(11));
series1.Add(ChartXValue.FromDouble(9), ChartYValue.FromDouble(17));

ChartSeries series2 = chart.Series[1];

// Clear X and Y values of the second series.
series2.ClearValues();

// Populate the series with data.
series2.Add(ChartXValue.FromDouble(2), ChartYValue.FromDouble(4));
series2.Add(ChartXValue.FromDouble(4), ChartYValue.FromDouble(7));
series2.Add(ChartXValue.FromDouble(6), ChartYValue.FromDouble(14));
series2.Add(ChartXValue.FromDouble(8), ChartYValue.FromDouble(7));

doc.Save("out.docx");
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get data of chart series. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("Chart.docx");

Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
Chart chart = shape.Chart;
ChartSeries series = chart.Series[0];

double minValue = Double.MaxValue;
int minValueIndex = 0;
double maxValue = Double.MinValue;
int maxValueIndex = 0;

for (int i = 0; i < series.YValues.Count; i++)
{
    // Clear individual format of all data points. Data points and data values are one-to-one in column charts.
    series.DataPoints[i].ClearFormat();

    // Get Y value.
    double yValue = series.YValues[i].DoubleValue;

    if (yValue < minValue)
    {
        minValue = yValue;
        minValueIndex = i;
    }

    if (yValue > maxValue)
    {
        maxValue = yValue;
        maxValueIndex = i;
    }
}

// Change colors of the max and min values.
series.DataPoints[minValueIndex].Format.Fill.ForeColor = Color.Red;
series.DataPoints[maxValueIndex].Format.Fill.ForeColor = Color.Green;

doc.Save("out.docx");
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to add and remove chart data values. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("SalesChart.docx");

Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
Chart chart = shape.Chart;
ChartSeries department1Series = chart.Series[0];
ChartSeries department2Series = chart.Series[1];

// Remove the first value in the both series.
department1Series.Remove(0);
department2Series.Remove(0);

// Add new values to the both series.
ChartXValue newXCategory = ChartXValue.FromString("Q1, 2023");
department1Series.Add(newXCategory, ChartYValue.FromDouble(10.3));
department2Series.Add(newXCategory, ChartYValue.FromDouble(5.7));

doc.Save("out.docx");
{{< /highlight >}}