---
title: 23.6 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 23.6 Release Notes
linktitle: Aspose.Words for Java 23.6 Release Notes
description: "Aspose.Words for Java 23.6 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /java/aspose-words-for-java-23-6-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 23.6](https://releases.aspose.com/words/java/23-6/).

{{% /alert %}}

## Major Features

There are 94 improvements and fixes in this regular monthly release. The most notable are:

- Implemented an ability to save documents as XLSX.
- Added support of Advanced Typography in WMF, EMF and EMF+ rendering.
- Added public property (PageInfo.Colored) indicating whether the page is in color or not.
- Added a new way of dynamic HTML insertion for LINQ Reporting Engine.
- Implemented ability to set fill, stroke and callout formatting for chart data labels.
- Added a new LowCode methods intended to merge a variety of different types of documents into a single output document.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by Java Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-2842|Regular check and update OSGI compatibility |New Feature
|WORDSJAVA-2863|Woodstox-core update|New Feature
|WORDSJAVA-2812|Bouncy Castle FIPS Java API upgrade |New Feature
|WORDSJAVA-2855|Remove empty description from Java ApiReferences|Bug
|WORDSJAVA-2708|ClassCastException is thrown upon opening the document.|Bug
|WORDSJAVA-2715|StringIndexOutOfBoundsException is thrown upon saving to PDF|Bug
|WORDSJAVA-2613|Return implementation of Node.toString|Bug

</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by .NET Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24864|Support advanced typography in EMF|New Feature
|WORDSNET-20362|Add feature to update Chart X-Axis data|New Feature
|WORDSNET-25272|Consider providing a property indicating whether page is colored or not in PageInfo|New Feature
|WORDSNET-18034|Support table-column data bands and conditional blocks|New Feature
|WORDSNET-25283|Update metered license checking code to support plugins|Enhancement
|WORDSNET-24953|Improve venture license mechanism|Enhancement
|WORDSNET-25072|Issue a warning if the XML document being loaded is in fact a FB2 book|Enhancement
|WORDSNET-25368|Fix minor code issues|Enhancement
|WORDSNET-13300|Invalid CMYK color space in PDF/A-1b|Bug
|WORDSNET-12395|Persian text does not render correctly in output PDF|Bug
|WORDSNET-12726|DOCX to PDF conversion issue with Arabic text rendering|Bug
|WORDSNET-19040|Content position in table's cell is different in output DOCX and BMP|Bug
|WORDSNET-19822|Arabic Words in Embedded Excel Sheet Object Distorted in Rendered Document|Bug
|WORDSNET-23987|DOCX to DOCX merging issue|Bug
|WORDSNET-21450|Chinese text in Visio embedded drawing object rotated upon rendering|Bug
|WORDSNET-23986|DOC to DOCX merging issue|Bug
|WORDSNET-24024|DOCX to DOCX merging issue with tables|Bug
|WORDSNET-24055|FileCorruptedException is thrown upon loading MHTML document|Bug
|WORDSNET-23584|Support the "callout" data labels|Bug
|WORDSNET-25294|Y-axis major units are not the same as in MS Word after rendering|Bug
|WORDSNET-24911|DOCX to PDF: Code hangs at Save|Bug
|WORDSNET-24956|ODT to ODT merging issue|Bug
|WORDSNET-25307|Positions of shapes inside group shape are incorrect after rendering.|Bug
|WORDSNET-25310|.NET 6 app consumes all available memory to convert one page of DOCX file to PNG|Bug
|WORDSNET-23988|DOCX merging issue, layout is wrong|Bug
|WORDSNET-23990|DOC merging issue|Bug
|WORDSNET-25149|Images don't preserve hyperlinks when they are saved using the HtmlFixedSaveOptions|Bug
|WORDSNET-25151|Arabic text in metafile is rendered improperly|Bug
|WORDSNET-25167|Series line width is incorrect after rendering chart|Bug
|WORDSNET-25215|Trailing spaces become underlined after conversion to PDF|Bug
|WORDSNET-25213|Extra page occurs while merging documents|Bug
|WORDSNET-16615|EMF in document - wrong font and bracket orientation when saved to PDF or HTML|Bug
|WORDSNET-15970|Persian text rendering issue|Bug
|WORDSNET-25320|Formatting of hyperlinks inside IF field is changed after updating fields|Bug
|WORDSNET-23989|DOCX to PDF merging issue|Bug
|WORDSNET-24359|Add feature to merge PDF documents without parsing to flow document model|Bug
|WORDSNET-24705|DOCX merging issue, layout is incorrect|Bug
|WORDSNET-25342|Field type XValue should be replaced by x-value|Bug
|WORDSNET-25343|DOCX to PDF: Incorrect spacing around line objects|Bug
|WORDSNET-24728|Inserting EMF:  Wrong character spacing in Arabic text|Bug
|WORDSNET-25358|Comparing documents throws "System.InvalidOperationException"|Bug
|WORDSNET-25357|Detecting changes using Range.Revision lasts much longer than custom node|Bug
|WORDSNET-25360|Width of inline fraction became larger after converting to PDF|Bug
|WORDSNET-25361|API hang representing document layout|Bug
|WORDSNET-25362|Use ResourceLoadingCallback when external resource are loaded upon updating fields|Bug
|WORDSNET-24463|Unexpected occurrence of Paragraph.LeftIndent during Docx-Html-Docx roundtrip|Bug
|WORDSNET-25373|Last list item missing when converting to PDF|Bug
|WORDSNET-24780|Keep original font metrics on substitution (Word 2013 vs Word 2019) - Inaccurate line spacing after font fallback|Bug
|WORDSNET-25379|The argument out of range exception occurs while rendering the document with a chart|Bug
|WORDSNET-25384|DOCX to PDF loses alternate text|Bug
|WORDSNET-25383|Formatting of PDF document is damaged|Bug
|WORDSNET-25339|ArgumentOutOfRangeException on conversion DOCX to MD|Bug
|WORDSNET-25387|InvalidOperationException is thrown upon importing node with KeepSourceFormatting|Bug
|WORDSNET-25388|SDT data is incorrect after rendering document|Bug
|WORDSNET-25389|Incorrect table text direction on conversion to PDF|Bug
|WORDSNET-24979|Incorrect line-relative shape positions|Bug
|WORDSNET-24992|Pie chart converted incorrectly to HTML|Bug
|WORDSNET-25117|LINQ Reporting Engine - Unexpected hyperlink formatting while inserting HTML|Bug
|WORDSNET-25401|Chinese hieroglyph is changed after rendering document|Bug
|WORDSNET-25407|Compare method throws 'Cannot insert a node of this type at this location' exception|Bug
|WORDSNET-25411|Implement removing signature in ODF Text Document Template|Bug
|WORDSNET-24914|Aspose.Words compares documents with and without SDT differently than MS Word|Bug
|WORDSNET-23153|Document is still in compatibility mode after OptimizeFor (Word2019)|Bug
|WORDSNET-19033|Content position in table's cell is different in output DOCX and PDF|Bug
|WORDSNET-25424|Discrepancy between MS Word and Aspose.Words compare|Bug
|WORDSNET-25056|Items are missed in INDEX after updating fields|Bug
|WORDSNET-25441|Cannot insert a node of this type at this location error on attemp to append DOCX to DOCX|Bug
|WORDSNET-25433|FileCorruptedException: 'The document appears to be corrupted and cannot be loaded.'|Bug
|WORDSNET-25438|Call doc.UpdateFormat(LoadFormat.Pdf) after loading is finished|Bug
|WORDSNET-25445|Cache  product name in MeteredBillingService|Bug
|WORDSNET-18951|Arabic text distorts during EMF to PDF conversion|Bug
|WORDSNET-12925|Korean text of chart is overlapped in output PDF|Bug
|WORDSNET-25451|System.ArgumentOutOfRangeException : empty image|Bug
|WORDSNET-25452|Implement internal version of Merge feature|Bug
|WORDSNET-25459|IndexOutOfBoundsException raised on header footer specific combination of  getHeadersFooters().linkToPrevious|Bug
|WORDSNET-25142|DOC to PDF File conversion - Bullet (solid circle) converted to (square)|Bug
|WORDSNET-25124|Odd behavior of CompatibilityOptions.OptimizeFor method with empty document|Bug
|WORDSNET-25479|Provide a way to make Document.MergeDocuments public|Bug
|WORDSNET-25395|Fix parameters fill when switch operation after request|Bug
|WORDSNET-25416|Venture license not working when loading Azw3|Bug
|WORDSNET-25311|Document is not rendered correctly in Aspose API|Bug
|WORDSNET-25385|Part of content is moved to the next page|Bug
|WORDSNET-24206|Bookmark.Text set to empty string does not remove all content from bookmarks spanned several rows|Bug
|WORDSNET-25450|Numbering issue for Text file|Bug
|WORDSNET-25412|Office blocks Ole Objects inserted by Aspose|Bug
|WORDSNET-25103|Line overlaps the text after rendering SVG|Bug
|WORDSNET-22984|FieldPageRef has the wrong page number when saving with Optimize for Word 2019 option|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to remove digital signatures from OTT

Related issue: WORDSNET-25411

Implemented removing digital signatures from OTT using **Aspose.Words.DigitalSignatures.DigitalSignatureUtil.RemoveAllSignatures** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove digital signatures from OTT. Please see the following code example to learn how to use such a method:

{{% /alert %}}

{{< highlight csharp >}}
DigitalSignatureUtil.RemoveAllSignatures("in.ott", "out.ott");
{{< /highlight >}}

### Added a new warning during reading FB2 format

Related issue:WORDSNET-25072

The corresponding warning will be added during reading a FB2 book.

{{< highlight csharp >}}
The original file load format is FB2, which is not supported by Aspose.Words. The file is loaded as an XML document.
{{< /highlight >}}

### Added a new way of dynamic HTML insertion for LINQ Reporting Engine

Related issue: WORDSNET-25117

Starting from Aspose.Words 23.6, you can use the HTML tag to insert HTML dynamically to your documents using LINQ Reporting Engine. This new way of HTML insertion provides more options to control formatting of an HTML block being inserted.

By default, HTML content is formatted by deriving styles of a template document. Template syntax for this is as follows.
{{< highlight csharp >}}
<<html [html_text_expression]>>
{{< /highlight >}}
However, you can keep source HTML formatting for content being inserted (to make it look like in a browser) by using the sourceStyles switch as follows.
{{< highlight csharp >}}
<<html [html_text_expression] -sourceStyles>>
{{< /highlight >}}

### Added a property indicating whether the page is in color or not

Related issue: WORDSNET-25272

Implemented a new **PageInfo.Colored** property indicating whether the page is in color or not.

{{< highlight csharp >}}
/// <summary>
/// Returns <c>true</c> if the page contains colored content.
/// </summary>
public bool Colored
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to check that the particular page of the document is not colored. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("in.docx");

// Check that the first page of the document is not colored.
Assert.IsFalse(doc.GetPageInfo(0).Colored);
{{< /highlight >}}

Evaluating this property causes internal rendering of the document, which can affect performance. Although, if further rendering of the document is supposed, then the necessary values are most likely already in the cache.

### Added new public property LayoutOptions.KeepOriginalFontMetrics

Related issue: WORDSNET-24945

We have changed the default behavior of Aspose.Words during font substitution to copy the behavior introduced in Microsoft Word 2019. Previously, the metrics of the original font were used in some cases. Now the metrics of the substitution font is used in all cases by default.

The **KeepOriginalFontMetrics** property has been added to the **LayoutOptions** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets an indication of whether the original font metrics should be used after font substitution.
/// Default is <c>true</c>.
/// </summary>
public bool KeepOriginalFontMetrics { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to return the previous behavior. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("in.docx");
doc.LayoutOptions.KeepOriginalFontMetrics = true;
doc.Save("out.pdf");
{{< /highlight >}}

### Implemented ability to save documents as XLSX

Related issue: WORDSNET-25353

The following changes have been made to the API:

A new class **XlsxSaveOptions** has been implemented.
A new item **Xlsx** has been added to the **SaveFormat** enum type.
A new item **Xlsx** has been added to the **WarningSource** enum type.
{{< highlight csharp >}}
namespace Aspose.Words.Saving
{
    /// <summary>
    /// Can be used to specify additional options when saving a document into the <see cref="Words.SaveFormat.Xlsx"/>
    /// format.
    /// To learn more, visit the <a href="https://docs.aspose.com/words/net/specify-save-options/">Specify
    /// Save Options</a> documentation article.
    /// </summary>
    public class XlsxSaveOptions : SaveOptions
    {
        /// <summary>
        /// Specifies the format in which the document will be saved if this save options object is used.
        /// Can only be <see cref="Words.SaveFormat.Xlsx"/>.
        /// </summary>
        public override SaveFormat SaveFormat { get; set; }

        /// <summary>
        /// Specifies the compression level used to save document.
        /// The default value is <see cref="Saving.CompressionLevel.Normal"/>.
        /// </summary>
        public CompressionLevel CompressionLevel { get; set; }
    }
}

namespace Aspose.Words
{
    public enum SaveFormat
    {
        ...
        /// <summary>
        /// Saves the document as an Office Open XML SpreadsheetML Document (macro-free).
        /// </summary>
        Xlsx = 80,
        ...
    }

    public enum WarningSource
    {
        ...
        /// <summary>
        /// Module that writes XLSX files.
        /// </summary>
        Xlsx
    }
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save document as XLSX. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("input.docx");
doc.Save("output.xlsx");
{{< /highlight >}}

### Implemented ability to set fill, stroke and callout formatting for chart data labels

Related issue: WORDSNET-23584

The **Format** properties of the **ChartFormat** type have been added to the **ChartDataLabel** and **ChartDataLabelCollection** classes.

{{< highlight csharp >}}
public class ChartDataLabel
{
    ...
    /// <summary>
    /// Provides access to fill and line formatting of the data label.
    /// </summary>
    public ChartFormat Format { get; }
}

public class ChartDataLabelCollection : IEnumerable<ChartDataLabel>
{
    ...
    /// <summary>
    /// Provides access to fill and line formatting of the data labels.
    /// </summary>
    public ChartFormat Format { get; }
}
{{< /highlight >}}

The new enum type **ChartShapeType** has been implemented and the **ShapeType** property of this type has been added to the **ChartFormat** class.

{{< highlight csharp >}}
/// <summary>
/// Specifies the shape type of chart elements.
/// </summary>
public enum ChartShapeType
{
    /// <summary>
    /// Indicates that a shape is not defined for the chart element.
    /// </summary>
    Default,

    /// <summary>
    /// Rectangle.
    /// </summary>
    Rectangle,
    ...
}

public class ChartFormat
{
    ...
    /// <summary>
    /// Gets or sets the shape type of the parent chart element.
    /// </summary>
    /// <remarks>
    /// Currently, the property can only be used for data labels.
    /// </remarks>
    public ChartShapeType ShapeType { get; set; }
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to format data labels as callouts. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Column, 432, 252);
Chart chart = shape.Chart;

// Delete default generated series.
chart.Series.Clear();

// Add new series.
ChartSeries series = chart.Series.Add("AW Series 1",
    new string[] { "AW Category 1", "AW Category 2", "AW Category 3", "AW Category 4" },
    new double[] { 100, 200, 300, 400 });

// Show data labels.
series.HasDataLabels = true;
series.DataLabels.ShowValue = true;

// Format data labels as callouts.
ChartFormat format = series.DataLabels.Format;
format.Stroke.Color = Color.Gray;
format.ShapeType = ChartShapeType.WedgeRectCallout;

doc.Save(dir + "Callouts.docx");
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to set fill and stroke formatting to data labels. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

Shape shape = builder.InsertChart(ChartType.Column, 432, 252);
Chart chart = shape.Chart;

// Delete default generated series.
chart.Series.Clear();

// Add new series.
ChartSeries series = chart.Series.Add("AW Series 1",
    new string[] { "AW Category 1", "AW Category 2", "AW Category 3", "AW Category 4" },
    new double[] { 100, 200, 300, 400 });

// Show data labels.
series.HasDataLabels = true;
series.DataLabels.ShowValue = true;

// Set fill and stroke for all data labels.
ChartFormat format = series.DataLabels.Format;
format.Stroke.Color = Color.DarkGreen;
format.Fill.Solid(Color.Green);
series.DataLabels.Font.Color = Color.Yellow;

// Change fill and stroke of an individual data label.
ChartFormat labelFormat = series.DataLabels[0].Format;
labelFormat.Stroke.Color = Color.DarkBlue;
labelFormat.Fill.Solid(Color.Blue);

doc.Save("FillAndStroke.docx");
{{< /highlight >}}

### Supported table-column data bands and conditional blocks for LINQ Reporting Engine

Related issue: WORDSNET-18034

The following sections of the engine's documentation were added or updated to describe the change (see attachments):

Starting from this version, LINQ Reporting Engine supports table-column data bands and conditional blocks making it possible to affect table columns in addition to table rows while filling a table template with data. This enables you to build tables growing horizontally or even in the both directions - vertically and horizontally - depending on bound data. Also, showing or hiding a table column depending on a condition becomes available in this release as well.

### Removed obsolete property Fill.On

Related issue: WORDSNET-21898

The following obsolete public property is removed from **Aspose.Words.Drawing.Fill** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets value that is <c>true</c> if the formatting applied to this instance, is visible.
/// </summary>
[Obsolete("This property is obsolete. Please, use Visible property instead.")]
public bool On {get; set;}
{{< /highlight >}}

We also decided to leave obsolete property **Fill.Color** along with a new **Fill.ForeColor**, as these two methods have slightly different behavior in regarding transparency:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a Color object that represents the foreground color for the fill.
/// </summary>
/// <remarks> This property preserves the alpha component of the <see cref="System.Drawing.Color"/>,
/// unlike the <see cref="ForeColor"/> property, which resets it to fully opaque color.</remarks>
public Color Color {get; set;}
/// <summary>
/// Gets or sets a Color object that represents the foreground color for the fill.
/// </summary>
/// <remarks> This property resets the alpha component of the <see cref="System.Drawing.Color"/> to fully
/// opaque color unlike the <see cref="Color"/> property, which preserves it.</remarks>
public Color ForeColor {get; set;}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with Fill color and visibility. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();

Shape shape = builder.InsertShape(ShapeType.Balloon, 300, 300);
// Set Color with transparency.
shape.Fill.Color = Color.FromArgb(128, Color.Red);

// Fill.Color preserves alpha component of the Color.
Console.WriteLine("Fill.Color: {0}", shape.Fill.Color);

// Fill.ForeColor ignores alpha component of the Color.
Console.WriteLine("Fill.ForeColor: {0}", shape.Fill.ForeColor);

// Use Fill.Visible instead of obfuscated Fill.On property to determine fill visibility.
Console.WriteLine("Fill.Visible: {0}", shape.Fill.Visible);

// Make fill invisible.
shape.Fill.Visible = false;
Console.WriteLine("Fill.Visible: {0}", shape.Fill.Visible);

/* This code produces the following output:
Fill.Color: Color [A=128, R=255, G=0, B=0]
Fill.ForeColor: Color [A=255, R=255, G=0, B=0]
Fill.Visible: True
Fill.Visible: False
 */
{{< /highlight >}}
 
### Added a new LowCode methods intended to merge a variety of different types of documents into a single output document
 
Added a new **LowCode.Merger** class, which represents a group of methods intended to merge a variety of different types of documents into a single output document.

The following overloads were provided:

{{< highlight csharp >}}
/// <summary>
/// Merges the given input documents into a single output document using specified input and output file names.
/// </summary>
/// <param name="outputFile">The output file name.</param>
/// <param name="inputFiles">The input file names.</param>
/// <remarks>
/// <p>By default <see cref="MergeFormatMode.KeepSourceFormatting"/> is used.</p>
/// </remarks>
public static void Merge(string outputFile, string[] inputFiles)

/// <summary>
/// Merges the given input documents into a single output document using specified input output file names and the final document format.
/// </summary>
/// <param name="outputFile">The output file name.</param>
/// <param name="inputFiles">The input file names.</param>
/// <param name="saveFormat">The save format.</param>
/// <param name="mergeFormatMode">Specifies how to merge formatting that clashes.</param>
public static void Merge(string outputFile, string[] inputFiles, SaveFormat saveFormat, MergeFormatMode mergeFormatMode)

/// <summary>
/// Merges the given input documents into a single output document using specified input output file names and save options.
/// </summary>
/// <param name="outputFile">The output file name.</param>
/// <param name="inputFiles">The input file names.</param>
/// <param name="saveOptions">The save options.</param>
/// <param name="mergeFormatMode">Specifies how to merge formatting that clashes.</param>
public static void Merge(string outputFile, string[] inputFiles, SaveOptions saveOptions, MergeFormatMode mergeFormatMode)

/// <summary>
/// Merges the given input documents into a single document and returns <see cref="Document"/> instance of the final document.
/// </summary>
/// <param name="inputFiles">The input file names.</param>
/// <param name="mergeFormatMode">Specifies how to merge formatting that clashes.</param>
public static Document Merge(string[] inputFiles, MergeFormatMode mergeFormatMode)

/// <summary>
/// Merges the given input documents into a single output document using specified input output streams and the final document format.
/// </summary>
/// <param name="outputStream">The output stream.</param>
/// <param name="inputStreams">The input streams.</param>
/// <param name="saveFormat">The save format.</param>
public static void Merge(Stream outputStream, Stream[] inputStreams, SaveFormat saveFormat)

/// <summary>
/// Merges the given input documents into a single output document using specified input output streams and save options.
/// </summary>
/// <param name="outputStream">The output stream.</param>
/// <param name="inputStreams">The input streams.</param>
/// <param name="saveOptions">The save options.</param>
/// <param name="mergeFormatMode">Specifies how to merge formatting that clashes.</param>
public static void Merge(Stream outputStream, Stream[] inputStreams, SaveOptions saveOptions, MergeFormatMode mergeFormatMode)

/// <summary>
/// Merges the given input documents into a single document and returns <see cref="Document"/> instance of the final document.
/// </summary>
/// <param name="inputStreams">The input streams.</param>
/// <param name="mergeFormatMode">Specifies how to merge formatting that clashes.</param>
public static Document Merge(Stream[] inputStreams, MergeFormatMode mergeFormatMode)
{{< /highlight >}}
 
Added a new **MergeFormatMode** enum, which specifies how formatting is merged when combining multiple documents.
 
{{< highlight csharp >}}
 /// <summary>
/// Specifies how formatting is merged when combining multiple documents.
/// </summary>
public enum MergeFormatMode
{
    /// <summary>
    /// Combine the formatting of the merged documents.
    /// </summary>
    /// <remarks>
    /// <p>By using this option, Aspose.Words adapts the formatting of the first document to match the structure and
    /// appearance of the second document, but keeps some of the original formatting intact.
    /// This option is useful when you want to maintain the overall look and feel of the destination document
    /// but still retain certain formatting aspects from the original document.</p>
    ///
    /// <p>This option does not have any affect when the input and the output formats are PDF.</p>
    /// </remarks>
    MergeFormatting,

    /// <summary>
    /// Means that the source document will retain its original formatting,
    /// such as font styles, sizes, colors, indents, and any other formatting elements applied to its content.
    /// </summary>
    /// <remarks>
    /// <p>By using this option, you ensure that the copied content appears as it did in the original source,
    /// regardless of the formatting settings of the first document in merge queue.</p>
    ///
    /// <p>This option does not have any affect when the input and the output formats are PDF.</p>
    /// </remarks>
    KeepSourceFormatting,

    /// <summary>
    /// Preserve the layout of the original documents in the final document.
    /// </summary>
    /// <remarks>
    /// <p>In general, it looks like you print out the original documents and manually adhere them together using glue.</p>
    /// </remarks>
    KeepSourceLayout
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to merge multiple documents (DOCX, PDF, DOC, RTF) into a single PDF document. Please see the following code example to learn how to use such a simple low-code method:

{{% /alert %}}

{{< highlight csharp >}}
// Merges multiple documents (DOCX, PDF, DOC, RTF) into a single PDF document.
Merger.Merge("out.pdf", new string[] { "in.docx", "in.pdf", "in.doc", "in.rtf" });
{{< /highlight >}}
 