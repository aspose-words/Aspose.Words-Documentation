---
title: 19.6 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 19.6 Release Notes
linktitle: Aspose.Words for Java 19.6 Release Notes
description: "Aspose.Words for Java 19.6 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /java/aspose-words-for-java-19-6-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 19.6](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/19.6).

{{% /alert %}}

## Major Features

- Improved loading license in multi-thread environment.
- Provided API to Extract VBA Macros from Word Document.
- Added a new DocSaveOptions.AlwaysCompressMetafiles option.
- Implemented table style public API.
- Improved rendering of CurvedArrow shapes with basic and custom adjustment points.
- Improved rendering of DrawingML charts with scaling of the vertical axis if the chart legend has a manual layout.
- FontInfo substitution was tuned to prefer symbolic fonts as a substitution for symbolic fonts and regular fonts as a substitution for regular fonts. This fixes the customer issue with selecting symbolic "XVMSymbol" font as a substitution for a regular font.
- Fixed a bug with scale changing when rendering DrawingML charts.
- Fixed a bug with text inner shadow rendering when converting to HTML.
- Fixed a bug with Stacked Area Chart rendering, if the series has a different number of values.
- Fixed a bug with a second empty chart with hidden axes.
- Fixed a bug with missing vowel glyph when rendering Thai fonts.
- Fixed issue with incorrect calculation of start and closing points for small ellipses when rendering DrawingML objects.
- Fixed table grid calculation issue when the auto table has pct width mixed with %.
- Fixed exception when table which spans multiple pages and has many nested floaters is broken across pages.
- Improved text positioning when there is a paragraph-relative shape with an anchor wrapped around multiple floaters.
- Improved calculation of space before a paragraph when it's first in the document and there is a floater before it.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-5312|Support creating table styles|New Feature|
|WORDSNET-17604|Provide a way to access Cell Padding properties of a specific TableStyle|New Feature|
|WORDSNET-18570|Horizontally Merged Cells are not Identified|New Feature|
|WORDSNET-17757|Provide API to Extract VBA Macros from Word Document|New Feature|
|WORDSNET-18400|Add feature to modify the table styles|New Feature|
|WORDSNET-3714|Consider adding an ability to read macros from documents|New Feature|
|WORDSNET-18473|Implement switching between Software and Hardware modes rendering|New Feature|
|WORDSNET-9641|Accessing information of Table Styles|New Feature|
|WORDSJAVA-2006|Colour shading Issue in PDF|Bug|
|WORDSJAVA-2062|Does not load &lt;img&gt; src containing Chinese characters.|Bug|
|WORDSJAVA-2084|Chart axis label format code.|Bug|
|WORDSJAVA-2085|Some ApsPath FillMode is not supported.|Bug|
|WORDSJAVA-2086|Exception throws during loading a malformed image.|Bug|
|WORDSJAVA-2088|PageSetup returns A4 PaperSize instead of Letter for En-US locale.|Bug|
|WORDSJAVA-2089|License.setLicense throws NullPointerException when running in a multi-threaded environment.|Bug|
|WORDSJAVA-2090|Aspose words 18.10 or above produce PDF with red evaluation ASPOSE watermark in a multi-threaded environment.|Bug|
|WORDSJAVA-2091|NullPointerException in VerificationSupervisor in a highly concurrent multithreaded environment|Bug|
|WORDSJAVA-2101|OLE icon's text is blurred after conversion to HTML.|Bug|
|WORDSNET-18372|System.NullReferenceException occurs upon calling Document.UpdateFields method|Bug|
|WORDSNET-18556|System.IndexOutOfRangeException occurs during rendering|Bug|
|WORDSNET-18407|Table.AutoFit does not work for AutoFitBehavior.AutoFitToWindow|Bug|
|WORDSNET-18566|After conversion .rtf to PDF - part of the text is missing|Bug|
|WORDSNET-16363|SVG gradient issues|Bug|
|WORDSNET-18414|UpdateFields stopped adding page numbers after upgrading to v19.3 for .Net|Bug|
|WORDSNET-18572|Document.UpdateFields does not update the TOC field|Bug|
|WORDSNET-18574|Document.CopyStylesFromTemplate throws System.NullReferenceException|Bug|
|WORDSNET-18443|DOCX to PDF/HTMLFixed conversion issue with Shapes (Arrows) position|Bug|
|WORDSNET-18508|Cell border and width is changed after conversion from RTF to DOCX|Bug|
|WORDSNET-18206|DOCX to PDF - text is moved down|Bug|
|WORDSNET-17470|The scale of charts changes during rendering|Bug|
|WORDSNET-17468|The scale of charts changes during rendering|Bug|
|WORDSNET-17856|Remove obsolete methods Replace() from the Range class|Bug|
|WORDSNET-18388|Document.UpdateFields throws System.ArgumentException|Bug|
|WORDSNET-17566|System.OutOfMemoryException is thrown while saving DOCX to HTML|Bug|
|WORDSNET-18079|Converting .docx to pdf shifts the text box down on the page|Bug|
|WORDSNET-16544|Extra lines are rendered in output PDF|Bug|
|WORDSNET-18555|System.NullReferenceException occurs during rendering|Bug|
|WORDSNET-18061|Image scaling problem during export to SVG|Bug|
|WORDSNET-18557|Shading.BackgroundPatternColor returns incorrect cell's background color|Bug|
|WORDSNET-18586|Failed tests with error: "Parameter is not valid."|Bug|
|WORDSNET-18587|Incorrect rendering of CurvedArrows with custom adjustment values|Bug|
|WORDSNET-18276|DOCX to HtmlFixed conversion issue with TOC items|Bug|
|WORDSNET-18575|Incorrect font substitution for Helvetica Neue font|Bug|
|WORDSNET-18602|FileCorruptedException occurs upon loading DOC|Bug|
|WORDSNET-18579|Lists.Count returns incorrect value after calling Document.Cleanup|Bug|
|WORDSNET-18554|SVG text alignment is rendered incorrect|Bug|
|WORDSNET-18517|System.NullReferenceException occurs when saving to PDF|Bug|
|WORDSNET-18604|Glossary document style changed after saving|Bug|
|WORDSNET-13116|Content controls are missed after saving Docx to Doc/Pdf|Bug|
|WORDSNET-18233|Issues with table width in pdf|Bug|
|WORDSNET-13769|A table row not visible in AW pdf output|Bug|
|WORDSNET-18232|The empty paragraph is lost during HTML round-trip|Bug|
|WORDSNET-18520|Accept tracking changes takes too long to complete|Bug|
|WORDSNET-18421|DOCX to PDF conversion issue with QR code|Bug|
|WORDSNET-15459|Docx to Pdf conversion issue with text position|Bug|
|WORDSNET-16290|Text inserted with DocumentBuilder.InsertHtml has the wrong font family|Bug|
|WORDSNET-18059|DocumentBuilder.InsertImage inserts the SVG incorrectly in document|Bug|
|WORDSNET-14480|MathML has spaces between numbers in output Html/Docx|Bug|
|WORDSNET-18476|Document.UpdateFields throws System.ArgumentException|Bug|
|WORDSNET-18551|Incorrect rendering of CurvedArrows when converting to HTML|Bug|
|WORDSNET-18112|Fields Containing Content Controls Not Updated|Bug|
|WORDSNET-17867|Axis labels changed during Docx to  PDF conversion|Bug|
|WORDSNET-18481|System.ArgumentOutOfRangeException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-18168|The formula in Doc file corrupted when opening with LibreOffice|Bug|
|WORDSNET-18497|Watermark does not show vowel glyph when saving to pdf|Bug|
|WORDSNET-18638|Improve DML comparison|Bug|
|WORDSNET-18640|Incorrect WordArt rendering with shadow effect|Bug|
|WORDSNET-18645|Images are imported incorrectly in Aspose.Words DOM|Bug|
|WORDSNET-18616|Missing text in word to pdf rendering|Bug|
|WORDSNET-13064|Content controls are missed after saving Docx to Doc/Pdf|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 19.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Added a new DocSaveOptions.AlwaysCompressMetafiles option

Related issue: WORDSNET-18202.

Large metafiles are always compressed when exporting a document. But small metafiles are not compressed for performance reason. Word compresses all metafiles regardless of its size. Also, some other document editors, such as LibreOffice, cannot read uncompressed metafiles. To allow users to choose an appropriate behavior, the following option was introduced in DocSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// When <c>false</c>, small metafiles are not compressed for performance reason.
/// Default value is <b>true</b>, all metafiles are compressed regardless of its size.
/// </summary>
public bool AlwaysCompressMetafiles
{{< /highlight >}}



**UseCase:**

{{< highlight csharp >}}
Document doc = new Document(@"sourse.doc");
DocSaveOptions saveOptions = new DocSaveOptions();
saveOptions.AlwaysCompressMetafiles = false;
doc.Save("SmallMetafilesUncompressed.doc", saveOptions);
{{< /highlight >}}


### License.IsLicensed marked as obsolete

This property will be removed later by security reason.

{{< highlight csharp >}}
/// <summary>
/// Returns true if a valid license has been applied; false if the component is running in evaluation mode.
/// </summary>
[Obsolete("This property is obsolete. SetLicense() method raises an exception if license is invalid.")]
public bool IsLicensed
{{< /highlight >}}


### WORDSNET-3714 Ability to read macros from the document

Implemented feature to get access to VBA project source code. Following classes have been added: VbaProject, VbaModuleCollection, VbaModule.

{{< highlight csharp >}}
/// <summary>
/// Provides access to VBA project information.
/// A VBA project inside the document is defined as a collection of VBA modules.
/// </summary>
public class VbaProject
{
    /// <summary>
    /// Returns VBA project name.
    /// </summary>
    public string Name
    {
        get;
    }
    /// <summary>
    /// Returns collection of VBA project modules.
    /// </summary>
    public VbaModuleCollection Modules
    {
        get;
    }
}
/// <summary>
/// Provides access to VBA project module.
/// </summary>
public class VbaModule
{
    /// <summary>
    /// Returns VBA project module name.
    /// </summary>
    public string Name
    {
        get;
    }
    /// <summary>
    /// Returns VBA project module source code.
    /// </summary>
    public string SourceCode
    {
        get;
    }
}
{{< /highlight >}}





**UseCase:**

{{< highlight csharp >}}
Document doc = new Document(filename);
if(doc.VbaModule != null)
    foreach(VbaModule module in doc.VbaProject.Modules)
        Console.WriteLine(module.SourceCode);
{{< /highlight >}}


### WORDSNET-17856 Obsolete method Replace() was removed from the Range class

Obsolete method Replace was removed from Range class. And fixed a few minor bugs in new FindReplacer.
Pay attention that new FindReplacer behavior may differ for some cases(e.g. SmartTag replacement).
Currently available next Replace methods:

{{< highlight csharp >}}
/// <summary>
/// Replaces all occurrences of a character pattern specified by a regular expression with another string.
/// </summary>
/// <remarks>
/// <p>Replaces the whole match captured by the regular expression.</p>
/// <p>Method is able to process breaks in both pattern and replacement strings.</p>
/// You should use special meta-characters if you need to work with breaks:
/// <list type="bullet">
/// <item><b>&p</b> - paragraph break</item>
/// <item><b>&b</b> - section break</item>
/// <item><b>&m</b> - page break</item>
/// <item><b>&l</b> - manual line break</item>
/// </list>
/// To leave any meta-character intact a parameter <see cref="FindReplaceOptions.PreserveMetaCharacters"/> should be set to true.
/// </remarks>
/// <param name="pattern">A regular expression pattern used to find matches.</param>
/// <param name="replacement">A string to replace all occurrences of pattern.</param>
/// <param name="options"><see cref="FindReplaceOptions"/> object to specify additional options.</param>
/// <returns>The number of replacements made.</returns>
public int Replace(string pattern, string replacement)
public int Replace(string pattern, string replacement, FindReplaceOptions options)
public int Replace(Regex pattern, string replacement)
public int Replace(Regex pattern, string replacement, FindReplaceOptions options)
{{< /highlight >}}


### WORDSNET-18400 - Implemented table style public API

New public properties have been added into the TableStyle class, and the new public types ConditionalStyleCollection, ConditionalStyle, ConditionalStyleType have been implemented.

{{< highlight csharp >}}
public class TableStyle : Style
{
    // Gets or sets a flag indicating whether text in a table row is allowed to split across a page break.
    // The default value is true.
    public bool AllowBreakAcrossPages
    {
        get; set;
    }

    // Gets the collection of default cell borders for the style.
    public BorderCollection Borders
    {
        get;
    }

    // Gets or sets the amount of space (in points) to add to the left of the contents of table cells.
    public double LeftPadding
    {
        get; set;
    }

    // Gets or sets the amount of space (in points) to add to the right of the contents of table cells.
    public double RightPadding
    {
        get; set;
    }

    // Gets or sets the amount of space (in points) to add above the contents of table cells.
    public double TopPadding
    {
        get; set;
    }

    // Gets or sets the amount of space (in points) to add below the contents of table cells.
    public double BottomPadding
    {
        get; set;
    }

    // Specifies the alignment for the table style.
    // The default value is TableAlignment.Left.
    public TableAlignment Alignment
    {
        get; set;
    }

    // Gets or sets the amount of space (in points) between the cells.
    public double CellSpacing
    {
        get; set;
    }

    // Gets or sets whether this is a style for a right-to-left table.
    // When true, the cells in rows are laid out right to left.
    // The default value is false.
    public bool Bidi
    {
        get; set;
    }

    // Gets or sets the value that represents the left indent of a table.
    public double LeftIndent
    {
        get: set;
    }

    // Gets a Shading object that refers to the shading formatting for table cells.
    public Shading Shading
    {
        get;
    }

    // Gets or sets a number of rows to include in the banding when the style specifies odd/even row banding.
    public int RowStripe
    {
        get; set;
    }

    // Gets or sets a number of columns to include in the banding when the style specifies odd/even columns banding.
    public int ColumnStripe
    {
        get; set;
    }

    // Collection of conditional styles that may be defined for this table style.
    public ConditionalStyleCollection ConditionalStyles
    {
        get;
    }
}

// Represents a collection of ConditionalStyle objects.

// It is not possible to add or remove items from this collection. It contains permanent set of items: one item for

// each value of the ConditionalStyleType enumeration type.
public class ConditionalStyleCollection : IEnumerable<ConditionalStyle>
{
    // Clears all conditional styles of the table style.
    public void ClearFormatting();

    // Retrieves a ConditionalStyle object by conditional style type.
    public ConditionalStyle this[ConditionalStyleType conditionalStyleType]
    {
        get;
    }

    // Retrieves a ConditionalStyle object by index.
    // index: Zero-based index of the conditional style to retrieve.
    public ConditionalStyle this[int index]
    {
        get;
    }

    // Gets the number of conditional styles in the collection.
    public int Count
    {
        get;
    }

    // Gets the first row style.
    public ConditionalStyle FirstRow
    {
        get;
    }

    // Gets the first column style.
    public ConditionalStyle FirstColumn
    {
        get;
    }

    // Gets the last row style.
    public ConditionalStyle LastRow
    {
        get;
    }

    // Gets the last column style.
    public ConditionalStyle LastColumn
    {
        get;
    }

    // Gets the odd row banding style.
    public ConditionalStyle OddRowBanding
    {
        get;
    }

    // Gets the odd column banding style.
    public ConditionalStyle OddColumnBanding
    {
        get;
    }

    // Gets the even row banding style.
    public ConditionalStyle EvenRowBanding
    {
        get;
    }

    // Gets the even column banding style.
    public ConditionalStyle EvenColumnBanding
    {
        get;
    }

    // Gets the top left cell style.
    public ConditionalStyle TopLeftCell
    {
        get;
    }

    // Gets the top right cell style.
    public ConditionalStyle TopRightCell
    {
        get;
    }

    // Gets the bottom left cell style.
    public ConditionalStyle BottomLeftCell
    {
        get;
    }

    // Gets the bottom right cell style.
    public ConditionalStyle BottomRightCell
    {
        get;
    }
 }

// Represents special formatting applied to some area of a table with assigned table style.
public class ConditionalStyle
{
    // Clears formatting of this conditional style.
    public void ClearFormatting();

    // Gets the paragraph formatting of the conditional style.
    public ParagraphFormat ParagraphFormat
    {
        get:
    }

    // Gets the character formatting of the conditional style.
    public Font Font
    {
        get;
    }

    // Gets a Shading object that refers to the shading formatting for this conditional style.
    public Shading Shading
    {
        get;
    }

    // Gets the collection of default cell borders for the conditional style.
    public BorderCollection Borders
    {
        get;
    }

    // Gets or sets the amount of space (in points) to add to the left of the contents of table cells.
    public double LeftPadding
    {
        get; set;
    }

    // Gets or sets the amount of space (in points) to add to the right of the contents of table cells.
    public double RightPadding
    {
        get; set;
    }

    // Gets or sets the amount of space (in points) to add above the contents of table cells.
    public double TopPadding
    {
        get; set;
    }

    // Gets or sets the amount of space (in points) to add below the contents of table cells.
    public double BottomPadding
    {
        get; set;
    }

    // Gets table area to which this conditional style relates.
    public ConditionalStyleType Type
    {
        get;
    }
 }

// Represents possible table areas to which conditional formatting may be defined in a table style.
public enum ConditionalStyleType
{
    // Specifies formatting of the first row of a table.
    FirstRow,

    // Specifies formatting of the first column of a table.
    FirstColumn,

    // Specifies formatting of the last row of a table.
    LastRow,

    // Specifies formatting of the last column of a table.
    LastColumn,

    // Specifies formatting of odd-numbered row stripe.
    OddRowBanding,

    // Specifies formatting of odd-numbered column stripe.
    OddColumnBanding,

    // Specifies formatting of even-numbered row stripe.
    EvenRowBanding,

    // Specifies formatting of even-numbered column stripe.
    EvenColumnBanding,

    // Specifies formatting of the top left cell of a table.
    TopLeftCell,

    // Specifies formatting of the top right cell of a table.
    TopRightCell,

    // Specifies formatting of the bottom left cell of a table.
    BottomLeftCell,

    // Specifies formatting of the bottom right cell of a table.
    BottomRightCell
}
{{< /highlight >}}



The StyleCollection.Add method allows the creation of table styles now.

**UseCase to create a table style:**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Table table = builder.StartTable();
builder.InsertCell();
builder.Write("Name");
builder.InsertCell();
builder.Write("Value");
builder.EndRow();
builder.InsertCell();
builder.InsertCell();
builder.EndTable();
TableStyle tableStyle = (TableStyle)doc.Styles.Add(StyleType.Table, "MyTableStyle1");
tableStyle.Borders.LineStyle = LineStyle.Double;
tableStyle.Borders.LineWidth = 1;
tableStyle.LeftPadding = 18;
tableStyle.RightPadding = 18;
tableStyle.TopPadding = 12;
tableStyle.BottomPadding = 12;
table.Style = tableStyle;
doc.Save(dir + "TableStyleCreation.docx");
{{< /highlight >}}



**UseCase to define conditional formatting (special formatting of header row)**

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Table table = builder.StartTable();
builder.InsertCell();
builder.Write("Name");
builder.InsertCell();
builder.Write("Value");
builder.EndRow();
builder.InsertCell();
builder.InsertCell();
builder.EndTable();
TableStyle tableStyle = (TableStyle)doc.Styles.Add(StyleType.Table, "MyTableStyle1");

// Define background color to the first row of table.
tableStyle.ConditionalStyles.FirstRow.Shading.BackgroundPatternColor = Color.GreenYellow;
tableStyle.ConditionalStyles.FirstRow.Shading.Texture = TextureIndex.TextureNone;
table.Style = tableStyle;
doc.Save(dir + "TableConditionalStyle.docx");
{{< /highlight >}}




### WORDSNET-18570 Added public method ConvertToHorizontallyMergedCells

There are two well-known techniques used by MS Word to implement horizontally merged cells inside the table. The first one is the merge flags, like Cell.CellFormat.HorizontalMerge, but according to the latest MS Word behavior looks like this way is not used anymore and MS Word just does not write merge flags. Instead, MS Word uses another technique, where cells are merged horizontally by its width.

So, when cells are horizontally merged by its width – there are no merge flags and of course, there is no way to use merge flags to detect which cells are merged. Some customers found this inconvenient.

To resolve this inconvenience, we have added a new public method to convert cells which are horizontally merged by its width to the cell horizontally merged by flags.

**Note.** Method transforms table and adds new cells when needed.

**UseCase:**

{{< highlight csharp >}}
Document doc = new Document(filename);
Table table = doc.FirstSection.Body.Tables[0];
table.ConvertToHorizontallyMergedCells();
   // Now merged cells have appropriate merge flags.
{{< /highlight >}}
