---
title: Aspose.Words for C++ 20.4 Release Notes
type: docs
weight: 30
url: /cpp/aspose-words-for-cpp-20-4-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 20.4](https://www.nuget.org/packages/Aspose.Words.CPP/20.4)

{{% /alert %}} 

## Major Features

We have added the following features from Aspose.Words for .NET on this regular monthly release:

- Added support for verifying and signing documents.
- Added support for downloading remote resources from the Internet.
- Provided ability to change Asian paragraph spacing and indents.
- Added image interpolation option for PDF rendering (new public property PdfSaveOptions.InterpolateImages).
- Extended API of chart data labels and series.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support the Metered license.
- The current release does not support a multipage TIFF format.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support advanced typography based on the HarfBuzz shaper.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have a common API for DB like .Net System.Data.
- The current release only supports Microsoft Visual C++ version 2015 or higher and only for the x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSCPP-759|Add support for verifying and signing documents|New Feature|
|WORDSNET-15697|Providing the ability to change password-secured VBA code (change string)|New Feature|
|WORDSNET-20043|Expose public ComparisonLevel (Granularity) option|New Feature|
|WORDSNET-20001|Provide API to get set Word for Chinese specific Paragraph formattings|New Feature|
|WORDSNET-19913|Range.Replace with substitution|New Feature|
|WORDSNET-19996|Add image interpolation option for PDF rendering|New Feature|
|WORDSNET-19873|Add feature to set/get the positioning of floating table (HorizontalAnchor and VerticalAnchor)|New Feature|
|WORDSNET-20080|Support subsetting OTF(CFF) fonts with composite accented glyphs|New Feature|
|WORDSNET-20146|Implement rendering of ISO 29500 specific BorderArt styles|New Feature|
|WORDSNET-19747|Add feature to set/get paragraph property "Snap to the grid when the document grid is defined"|New Feature|
|WORDSNET-10548|Incorrect floater position when the anchor is close to a tight-wrapped floater|Enhancement|
|WORDSNET-20042|Check whether RTF format supports placing annotations at block/cell/row level|Enhancement|
|WORDSCPP-939|Dynamically Loading Words DLL Crashes the App with Access violation Exception|Bug|
|WORDSNET-8841|Aspose.Words.Document does not load RTF contents correctly|Bug|
|WORDSNET-11627|Aspose.Words.FileCorruptedException is thrown while loading DOCX file|Bug|
|WORDSNET-8712|Add an example which shows how to add PDF encryption without any user password|Bug|
|WORDSNET-19675|The angle unit is missing in the parameter of rotate() CSS functions|Bug|
|WORDSNET-20150|Document.Compare throws System.ArgumentOutOfRangeException|Bug|
|WORDSNET-20147|Conversion to PDF fails with InvalidCastException: OfficeMath to type Paragraph|Bug|
|WORDSNET-19124|The properties ChartDataLabel.ShowDataLabelsRange and ChartDataLabelCollection.ShowDataLabelsRange do not work correctly|Bug|
|WORDSNET-20193|Evaluation watermark appears in licensed mode|Bug|
|WORDSNET-11712|A Paragraph is pushed up to the previous page in PDF|Bug|
|WORDSNET-12721|Document.Revisions returns incorrect value|Bug|
|WORDSNET-12840|Saving a document as PDF moves footers into the header|Bug|
|WORDSNET-17608|Bookmark.Text returns the incorrect text for a row|Bug|
|WORDSNET-18213|DOCX to PDF conversion issue with text wrapping around the table|Bug|
|WORDSNET-12318|Bookmark.Text return incorrect value|Bug|
|WORDSNET-11570|BookmarkEnd is moved to next Row|Bug|
|WORDSNET-19028|Canvas converts to the group after re-saving|Bug|
|WORDSNET-19709|ODT to DOCX conversion issue with Chart DataLabel and Axis|Bug|
|WORDSNET-20032|StructuredDocumentTag comparison issue|Bug|
|WORDSNET-15550|DOCX to PDF conversion issue with blank pages|Bug|
|WORDSNET-19812|DOCX to Markdown conversion issue with numbered lists|Bug|
|WORDSNET-17857|Tables are shifted up and overlapped after conversion from DOCX to PDF|Bug|
|WORDSNET-20054|A one-row table moves to the previous page in PDF|Bug|
|WORDSNET-18549|Doc to PDF rendition fonts related issue - Gujarati foreign Language|Bug|
|WORDSNET-16041|Bookmark.Text = "" merges the table's cell|Bug|
|WORDSNET-19817|Chart position is changed after DOCX to PDF conversion|Bug|
|WORDSNET-20055|Fixing SonarQube issues in Reporting engine|Bug|
|WORDSNET-9159|Thai language characters are not generated correctly in PDF|Bug|
|WORDSNET-2941|Formatting of text is lost after setting bookmarks text|Bug|
|WORDSNET-20026|DOCX to HtmlFixed/PDF conversion issue with text rendering|Bug|
|WORDSNET-20040|DOCX to PDF: Layout problem|Bug|
|WORDSNET-18631|Tamil Nirmala language not rendering correctly in PDF|Bug|
|WORDSNET-18610|Aspose.Words Word to PDF conversion. Missing part of the document|Bug|
|WORDSNET-19156|The math equation is messed up after conversion to EMF|Bug|
|WORDSNET-20058|Some data has been lost after conversion from DOCX to PDF|Bug|
|WORDSNET-19841|After conversion to PDF watermark moves|Bug|
|WORDSNET-19840|Image is lost after DOCX to PDF conversion|Bug|
|WORDSNET-19699|Paragraph's Keep with Next Property under Line and Page Breaks|Bug|
|WORDSNET-19752|SpaceBefore and SpaceAfter return an incorrect value for MS Word 2007 document|Bug|
|WORDSNET-18976|Infinite loop during the call of Document.UpdatePageLayout|Bug|
|WORDSNET-19496|Memory Leak in multithreading|Bug|
|WORDSNET-19907|Aspose.Words don't find user-installed fonts using the .NetStandard 2.0 project|Bug|
|WORDSNET-19994|BuiltInDocumentProperties.Words, Characters incorrect for hidden text|Bug|
|WORDSNET-19631|Name of the style is truncated when read .md document|Bug|
|WORDSNET-20102|ActualBounds calculation for rotated shapes|Bug|
|WORDSNET-20103|The width of integral is incorrect after converting to PDF|Bug|
|WORDSNET-20005|Heading indent is incorrect after conversion from DOCX to PDF|Bug|
|WORDSNET-19518|Problem with replacing text in Bookmarks|Bug|
|WORDSNET-19757|Calibri (Body) changes to Calibri or vice versa during appending documents|Bug|
|WORDSNET-19528|DOCX to fixed file format conversion issue with GroupShape|Bug|
|WORDSNET-20011|Check Aspose.Words vulnerabilities|Bug|
|WORDSNET-20066|Word to PDF conversion issue with table's text wrapping|Bug|
|WORDSNET-19777|Issue after conversion DOCX to PDF|Bug|
|WORDSNET-19616|UpdateFields feature creates the wrong index of names|Bug|
|WORDSNET-19537|DOCX to PDF conversion issue with shapes position|Bug|
|WORDSNET-20113|Additional space between the N-ary operator and the argument depending on the size argument|Bug|
|WORDSNET-20114|Aspose.Words.UnsupportedFileFormatException is thrown while loading DOC|Bug|
|WORDSNET-20068|Document.PageColor sets the page color to black when it is set to Color.Empty|Bug|
|WORDSNET-19621|Text is pushed down to the next page after conversion from DOCX to PDF|Bug|
|WORDSNET-20057|Image text is stretched after conversion from DOC to PDF|Bug|
|WORDSNET-19317|System.ArgumentException occurs upon Comparing documents|Bug|
|WORDSNET-19636|The assertion in .NET debug code related to an exception in Java code|Bug|
|WORDSNET-19796|ImportNode (Section) and AppendDocument behavior is not the same when ImportFormatMode is KeepSourceFormatting|Bug|
|WORDSNET-19805|System.InvalidOperationException - Expected pad cells only - RTF to HTML|Bug|
|WORDSNET-20093|Cannot obtain user-installed font on Windows 10 with .NET Standard 2.0 assembly|Bug|
|WORDSNET-20030|NodeImporter.ImportNode throws System.ArgumentOutOfRangeException when trying to import node to a document that has a specific style|Bug|
|WORDSNET-20076|Incorrect paragraph indent on conversion to fixed-page formats|Bug|
|WORDSNET-20130|UpdateFields does not process TOC field|Bug|
|WORDSNET-16332|Bookmark.Text corrupts Table layout|Bug|
|WORDSNET-20143|Convert to PDF fails with NullReferenceException|Bug|
|WORDSNET-20144|Convert to PDF fails with Not expected other bool values here|Bug|
|WORDSNET-20145|Convert to PDF fails with InvalidCastException|Bug|
|WORDSNET-19645|SUM fields not updated in the document|Bug|
|WORDSNET-20155|Introduce a new load option for using temporary files (instead of MemoryStream) on reading|Bug|
|WORDSNET-19974|LINQ Reporting Engine - InvalidOperationException is thrown on accessing an empty JSON array|Bug|
|WORDSNET-20083|Conversion DOCX to PDF stuck|Bug|
|WORDSNET-20024|Import/export compatibility settings from RTF document|Bug|
|WORDSNET-20051|Urdu italic characters are rendered as a square in output PDF|Bug|
|WORDSNET-20184|Replacing issue with IgnoreDeleted and IgnoreFields|Bug|
|WORDSNET-19981|Part of the footer content missing when saving into HTML|Bug|
|WORDSNET-19948|Integral symbols are rendered incorrectly in not an inline mode|Bug|
|WORDSNET-13880|Document.PageCount returns incorrect value on Ubuntu|Bug|
|WORDSNET-20157|The paragraph is rendered on the previous page in output PDF|Bug|
|WORDSNET-13655|Chinese text renders on the next line after conversion from Doc to fixed file format|Bug|
|WORDSNET-19448|MailMerge.Execute does not update the IF field|Bug|
|WORDSNET-20156|Page number renders incorrectly in output PDF|Bug|
|WORDSNET-19811|Vertical space between lines does not match MS Word on conversion to PDF|Bug|
|WORDSNET-20027|Image is rotated after conversion from DOCX to HtmlFixed|Bug|
|WORDSNET-19995|Missing content due to invalid 'transform: rotate' property value|Bug|
|WORDSNET-20067|The text inside a Form is not well-rendered when saving as HTML(HtmlFixed)|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to change Asian paragraph spacing and indents

Related issue: **WORDSNET-20001**

The following ParagraphFormat properties were added:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the left indent value (in characters) for the specified paragraphs.
/// </summary>
public int ParagraphFormat.CharacterUnitLeftIndent {get; set; }
/// <summary>
/// Gets or sets the right indent value (in characters) for the specified paragraphs.
/// </summary>
public int ParagraphFormat.CharacterUnitRightIndent {get; set; }
/// <summary>
/// Gets or sets the value (in characters) for the first-line or hanging indent.
/// <p>Use positive values to set the first-line indent, and negative values to set the hanging indent.</p>
/// </summary>
public int ParagraphFormat.CharacterUnitFirstLineIndent {get; set; }
/// <summary>
/// Gets or sets the amount of spacing (in gridlines) before the paragraphs.
/// </summary>
public int ParagraphFormat.LineUnitBefore {get; set; }
/// <summary>
/// Gets or sets the amount of spacing (in gridlines) after the paragraphs.
/// </summary>
public int ParagraphFormat.LineUnitAfter {get; set; }
{{< /highlight >}}

**Use Case:**

Note, that setting unit indents and spacing will update appropriate common indent or spacing property. For example, setting ParagraphFormat.CharacterUnitLeftIndent will update ParagraphFormat.LeftIndent.

**.NET**

{{< highlight csharp >}}
Document doc = new Document()
ParagraphFormat format = doc.FirstSection.Body.FirstParagraph.ParagraphFormat;
format.CharacterUnitLeftIndent = 10;
       // ParagraphFormat.LeftIndent will be updated
format.CharacterUnitRightIndent = 10;
      // ParagraphFormat.RightIndent will be updated
format.CharacterUnitFirstLineIndent = 20;
  // ParagraphFormat.FirstLineIndent will be updated
format.LineUnitBefore = 5;
                 // ParagraphFormat.SpaceBefore will be updated
format.LineUnitAfter= 10;
                  // ParagraphFormat.SpaceAfter will be updated
{{< /highlight >}}


### Added a new public property SnapToGrid for Font and ParagraphFormat

Related issue: **WORDSNET-19747**

Added a new public property ParagraphFormat.SnapToGrid:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies whether the current paragraph should use the document grid lines per page settings
/// when laying out the contents in the paragraph.
/// </summary>
public bool SnapToGrid
{{< /highlight >}}

and Font.SnapToGrid:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies whether the current run should use the document grid characters per line settings
/// when laying out the contents in this run.
/// </summary>
public bool SnapToGrid
{{< /highlight >}}

**Use Case:**

**.NET**

{{< highlight csharp >}}
Document doc = new Document(docPath);
Paragraph par = doc.FirstSection.Body.FirstParagraph;
par.ParagraphFormat.SnapToGrid = true;
par.Runs[0].Font.SnapToGrid = true;
{{< /highlight >}}

### Added an option that allows customers to specify comparison granularity

Related issue: **WORDSNET-20043**

Added the following properties:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies the granularity of changes to track when comparing two documents.
/// </summary>
public enum Granularity
{
    CharLevel,
    WordLevel
}
/// <summary>
/// Specifies whether changes are tracked by character or by word.
/// Default value is <see cref="Granularity.WordLevel"/>.
/// </summary>
Granularity CompareOptions.Granularity { get; set; }
{{< /highlight >}}



**Use Case:**

**.NET**

{{< highlight csharp >}}
DocumentBuilder builderA = new DocumentBuilder(new Document());
DocumentBuilder builderB = new DocumentBuilder(new Document());
builderA.Writeln("This is A simple word");
builderB.Writeln("This is B simple words");
CompareOptions co = new CompareOptions();
co.Granularity = Granularity.CharLevel;
builderA.Document.Compare(builderB.Document, "author", DateTime.Now, co);
{{< /highlight >}}



### Added feature to set positioning of floating table (HorizontalAnchor and VerticalAnchor)

Related issue: **WORDSNET-19873**

Setters for the following properties have been added to the Table class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the base object from which the horizontal positioning of floating table should be calculated.
/// Default value is <see cref="RelativeHorizontalPosition.Column"/>.
/// </summary>
public RelativeHorizontalPosition Table.HorizontalAnchor
/// <summary>
/// Gets or sets the base object from which the vertical positioning of floating table should be calculated.
/// Default value is <see cref="RelativeVerticalPosition.Margin"/>.
/// </summary>
public RelativeVerticalPosition Table.VerticalAnchor
{{< /highlight >}}

Note, ONLY the following values are allowed in HorizontalAnchor setter. The ArgumentException will be thrown for any other values.

**.NET**

{{< highlight csharp >}}
RelativeHorizontalPosition.Margin
RelativeHorizontalPosition.Page
RelativeHorizontalPosition.Column
{{< /highlight >}}

Note, ONLY the following values are allowed in VerticalAnchor setter. The ArgumentException will be thrown for any other values.

**.NET**

{{< highlight csharp >}}
RelativeVerticalPosition.Margin
RelativeVerticalPosition.Page
RelativeVerticalPosition.Paragraph
{{< /highlight >}}

**Use Case:**

**.NET**

{{< highlight csharp >}}
Document doc = new Documnet(file_with_table);
Table table = doc.FirstSection.Body.Tables[0];
table.HorizontalAnchor = RelativeHorizontalPosition.Column;
table.VerticalAnchor = RelativeVerticalPosition.Page;
{{< /highlight >}}


### Added image interpolation option for PDF rendering (new public property PdfSaveOptions.InterpolateImages)

Related issue: **WORDSNET-19996**

Added image interpolation option for PDF rendering which can be specified by PdfSaveOptions.InterpolateImages property.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// A flag indicating whether image interpolation shall be performed by a conforming reader.
/// When <c>false</c> is specified, the flag is not written to the output document and
/// the default behaviour of reader is used instead.
/// </summary>
/// <remarks>
/// <para>
/// When the resolution of a source image is significantly lower than that of the output device,
/// each source sample covers many device pixels. As a result, images can appear jaggy or blocky.
/// These visual artifacts can be reduced by applying an image interpolation algorithm during rendering.
/// Instead of painting all pixels covered by a source sample with the same color, image interpolation
/// attempts to produce a smooth transition between adjacent sample values.
/// </para>
/// <para>
/// A conforming Reader may choose to not implement this feature of PDF,
/// or may use any specific implementation of interpolation that it wishes.
/// </para>
/// <para>The default value is <c>false</c>.</para>
/// </remarks>
public bool InterpolateImages
{{< /highlight >}}

**Use Case:**

**.NET**

{{< highlight csharp >}}
Document doc = new Document(docPath);
PdfSaveOptions saveOptions = new PdfSaveOptions();
saveOptions.InterpolateImages = true;
doc.Save(pdfPath, saveOptions);
{{< /highlight >}}


### Added public property LoadOptions.TempFolder

This property allows using temporary files when reading a document.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Allows to use temporary files when reading document.
/// By default this property is <c>null</c> and no temporary files are used.
/// </summary>
/// <remarks>
/// <para>The folder must exist and be writable, otherwise an exception will be thrown.</para>
/// <para>Aspose.Words automatically deletes all temporary files when reading is complete.</para>
/// </remarks>
public string TempFolder
{{< /highlight >}}

Such an approach degrades speed but reduces memory usage.

**Use Case:**

**.NET**

{{< highlight csharp >}}
LoadOptions lo = new LoadOptions();
lo.TempFolder = @"C:\TempFolder\";
Document doc = new Document(myDir + "document.docx", lo);
{{< /highlight >}}


### ` `Changes in API of chart data labels and series

The following changes in chart data labels API have been implemented (WORDSNET-19124):

- The property HasDataLabels has been added to the ChartSeries class.
- The method ClearFormat has been added to the ChartDataLabelCollection class.
- The property Count of the ChartDataLabelCollection class returns a number of all data labels of series, not just those that have non-default formatting, as it was in the previous versions of the software.
- The methods Add, RemoveAt and Clear are marked as obsolete. After setting Series.HasDataLabels = true, the collection contains all data labels of the series now and there is no need to add labels to it. The methods RemoveAt and Clear actually reset format of data label(s) to defaults defined in properties of a ChartDataLabelCollection object. Now the methods ChartDataLabel.ClearFormat and ChartDataLabelCollection.ClearFormat should be used instead.
- The method ClearFormat has been added to the ChartDataLabel class.
- The property IsHidden has been added to the ChartDataLabel class.




**.NET**

{{< highlight csharp >}}
public class ChartSeries
{
    /// <summary>
    /// Gets or sets a flag indicating whether data labels are displayed for the series.
    /// </summary>
    public bool HasDataLabels { get; set; }
}
public class ChartDataLabelCollection
{
    /// <summary>
    /// Adds new <see cref="ChartDataLabel"/> at the specified index.
    /// </summary>
    [Obsolete("When ChartSeries.HasDataLabels is 'true', all data labels are available in this collection.")]
    public ChartDataLabel Add(int index);
    /// <summary>
    /// Clears format of a <see cref="ChartDataLabel"/> at the specified index.
    /// </summary>
    [Obsolete("Use the ChartDataLabel.ClearFormat method instead.")]
    public void RemoveAt(int index);
    /// <summary>
    /// Clears format of all <see cref="ChartDataLabel"/> in this collection.
    /// </summary>
    [Obsolete("Use the ClearFormat method instead.")]
    public void Clear();
    /// <summary>
    /// Clears format of all <see cref="ChartDataLabel"/> in this collection.
    /// </summary>
    public void ClearFormat();
}
public class ChartDataLabel
{
    /// <summary>
    /// Clears format of this data label. The properties are set to the default values defined in the parent data label collection.
    /// </summary>
    public void ClearFormat();
    /// <summary>
    /// Gets/sets a flag indicating whether this label is hidden.
    /// The default value is <b>false</b>.
    /// </summary>
    public bool IsHidden { get; set; }
}
{{< /highlight >}}



**Use Case:**

**.NET**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Shape shape = builder.InsertChart(ChartType.Line, 432, 252);
Chart chart = shape.Chart;

// Delete default generated series.
chart.Series.Clear();
ChartSeries series1 = chart.Series.Add("Series 1", 
    new string[] { "Category 1", "Category 2", "Category 3" }, 
    new double[] { 1, 5, 4 });
series1.HasDataLabels = true;
series1.DataLabels.ShowValue = true;
series1.DataLabels[1].ShowCategoryName = true;
series1.DataLabels[1].ShowValue = true;
series1.DataLabels[2].IsHidden = true;
doc.Save(dir + "DataLabels.docx");
{{< /highlight >}}


### ` `FindReplaceOptions class is extended with new property

Related issue: **WORDSNET-19913**.

The following public property was added to FindReplaceOptions class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating whether to recognize and use substitutions within replacement patterns.
/// The default value is <c>false</c>. 
/// </summary>
/// <remarks>
/// For the details on substitution elements please refer to:
/// https://docs.microsoft.com/en-us/dotnet/standard/base-types/substitutions-in-regular-expressions.
/// </remarks>
public bool UseSubstitutions
{{< /highlight >}}

#### Use Case. Explains how to recognize and use substitutions within replacement patterns:

**.NET**

{{< highlight csharp >}}

// Create new document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Write some text.
builder.Write("Jason give money to Paul.");
Regex regex = new Regex(@"([A-z]+) give money to ([A-z]+)");

// Replace text using substitutions.
FindReplaceOptions options = new FindReplaceOptions();
options.UseSubstitutions = true;
doc.Range.Replace(regex, @"$2 take money from $1", options);
Console.WriteLine(doc.GetText());
 // The output is: Paul take money from Jason.\f
{{< /highlight >}}

### Implemented mutual conversion of several PageBorderArt names between ECMA376 and ISO29500 standard documents

Experiments show that there's a mutual correspondence between "*Tribal*"* border art styles and ISO29500 specific border art styles, in the range from *"Triangle1*" to "*Shapes2*".

In this release the direct conversion of the mentioned BorderArt style names was implemented according to the following table:

|ECMA376|ISO29500|
| :- | :- |
|tribal1|triangle1|
|tribal2|triangle2|
|tribal3|triangleCircle1|
|tribal4|triangleCircle2|
|tribal5|shapes1|
|tribal6|shapes2|

### Removed obsolete properties AnnotationsAtBlockLevel and AnnotationsAtBlockLevelAsDefault of LoadOptions class

The obsolete properties LoadOptions.AnnotationsAtBlockLevel and LoadOptions.AnnotationsAtBlockLevelAsDefault have been removed (WORDSNET-19211).
The mode of moving annotation nodes to inline-level is no longer supported.
