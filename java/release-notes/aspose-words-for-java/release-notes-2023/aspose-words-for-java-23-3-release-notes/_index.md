---
title: 23.3 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 23.3 Release Notes
linktitle: Aspose.Words for Java 23.3 Release Notes
description: "Aspose.Words for Java 23.3 Release Notes – the latest updates and fixes."
type: docs
weight: 100
url: /java/aspose-words-for-java-23-3-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 23.3](https://releases.aspose.com/words/java/23-3/).

{{% /alert %}}

## Major Features

There are 84 improvements and fixes in this regular monthly release. The most notable are:

- Extended set of public properties for working with fill colors.
- Implemented rendering of radial gradients with SkiaSharp native shader for .NET Standard.
- Added support of InvertIfNegative property for bar chart rendering.
- Implemented saving progress notifications for MOBI and AZW3 formats.
- Added an ability to specify whether to adjust sentence and word spacing automatically upon document import.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by Java Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-2823|Update Documentation for Python and Aspose.Words for Java|New Feature
|WORDSJAVA-2816|Tiff image is rendered as black box in PDF|Bug
|WORDSJAVA-2802|Add / to the end of URLs in API pages|Bug
|WORDSJAVA-2827|DOCX to PDF: Tiff images not rendered correctly|Bug
|WORDSJAVA-2803|Add missing titles and descriptions in API pages|Bug
|WORDSJAVA-2830|CultureNotFoundException is thrown when try to set Indonesian culture|Bug

</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by .NET Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24975|Add ability to determine if font color is overridden for Inline node and for paragraph break character|New Feature
|WORDSNET-24867|LINQ Reporting Engine - Column chart does not support different color for negative value|New Feature
|WORDSNET-24960|Allow ImportFormatOptions.AdjustSentenceAndWordSpacing option in API|New Feature
|WORDSNET-24673|Provide public API to manipulate chart gridlines|New Feature
|WORDSNET-24442|Add Fill.ThemeColor option|New Feature
|WORDSNET-24453|Implement plugin license support|New Feature
|WORDSNET-24922|Implement rendering of radial gradients with SkiaSharp native shader for .NET Standard|New Feature
|WORDSNET-24900|Enable SaveOptions.ProgressCallback when saving to MOBI|New Feature
|WORDSNET-24899|Enable SaveOptions.ProgressCallback when saving to AZW3|New Feature
|WORDSNET-24853|Implement rendering of a radial gradient into XPS using XPS radial gradient brush|New Feature
|WORDSNET-18312|Add navigation to generated AZW3 documents|New Feature
|WORDSNET-4769|Consider preserving TOC formatting upon exporting to HTML formats|New Feature
|WORDSNET-19867|Preserve TOC Page numbers during Word to HTML to Word round-trip|New Feature
|WORDSNET-24865|Unsupported BMP - Images are not displayed after loading HTML|Enhancement
|WORDSNET-24934|Text on metafile is rendered improperly|Bug
|WORDSNET-24927|XHTML to PDF conversion issue|Bug
|WORDSNET-24858|Symbols overlap after rendering|Bug
|WORDSNET-24871|Additional datapoint is rendered in the line chart|Bug
|WORDSNET-24881|Czech localized heading style names are not handled when updating STYLEREF fields|Bug
|WORDSNET-24550|Font size is incorrect after rendering text with revision|Bug
|WORDSNET-24884|Text orientation is turned to vertical after converting to HTML|Bug
|WORDSNET-24891|Metafile is rendered improperly in .NET Standard|Bug
|WORDSNET-24836|PDF file can't be opened|Bug
|WORDSNET-24845|Image is rendered improperly in .NET Standard version of Aspose.Words|Bug
|WORDSNET-24857|Spacing between symbols is incorrect after rendering|Bug
|WORDSNET-24674|InsertField method throws NullReferenceException when using IF field|Bug
|WORDSNET-24680|FileCorruptedException is thrown upon loading encrypted DOCX document|Bug
|WORDSNET-24394|A redundant empty page is produced when render Hebrew document|Bug
|WORDSNET-24947|Delete paragraph fails when paragraph is inside SDT|Bug
|WORDSNET-24561|Significant performance decrease upon conversion OfficeMath to string|Bug
|WORDSNET-24969|HTML to MD: Backslash is appended in name of image in resultant file|Bug
|WORDSNET-24767|Table with merged cells is recognized improperly|Bug
|WORDSNET-16879|GroupShape does not render correctly in fixed file format|Bug
|WORDSNET-24815|FileCorruptedException is thrown upon loading RTF document|Bug
|WORDSNET-24832|Effects for "thin" elements are not rendered|Bug
|WORDSNET-24988|Comparison displays wrong document revision|Bug
|WORDSNET-24957|Footer shows a delete revision after comparing documents|Bug
|WORDSNET-25009|FileCorruptedException is thrown upon loading DOC document|Bug
|WORDSNET-24754|Document comparison removes highlighted text|Bug
|WORDSNET-25036|NullReferenceException is thrown upon comparing documents|Bug
|WORDSNET-25047|ArgumentNullException is thrown upon calling UpdatePageLayout|Bug
|WORDSNET-25065|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-23195|Watermark image is missed from document after save to Iso29500_2008_Strict DOCX|Bug
|WORDSNET-24910|Aspose.Words does not include an empty heading paragraph with numbering into the TOC|Bug
|WORDSNET-24264|Effects applied to grid lines are not rendered|Bug
|WORDSNET-24921|Content is pushed down and overlaps footnotes|Bug
|WORDSNET-24928|Colors are inverted after importing PDF document|Bug
|WORDSNET-24936|Doted background is rendered in metafile|Bug
|WORDSNET-24615|FileCorruptedException on loading MHTML|Bug
|WORDSNET-24939|NullReferenceException on converting DOCX |Bug
|WORDSNET-23801|Trendline label is not rendered|Bug
|WORDSNET-24061|Text behind images in PDF conversion|Bug
|WORDSNET-24075|List item tabs are rendered bigger than required|Bug
|WORDSNET-23832|List tab stop is incorrect after rendering|Bug
|WORDSNET-24633|Part of TC field becomes visible after conversion to RTF|Bug
|WORDSNET-24883|Allow creating DML Shape from public API|Bug
|WORDSNET-24952|Shape position and size is changed after open/save document|Bug
|WORDSNET-24954|HTML to MD: Table of content does not lead to content|Bug
|WORDSNET-24658|PdfCompositeEncodingConvertor throws ArgumentOutOfRangeException|Bug
|WORDSNET-24659|Arabic text in SVG is rendered inaccurately in case of font fallback|Bug
|WORDSNET-25011|Problem loading document|Bug
|WORDSNET-25013|HTM loading issue|Bug
|WORDSNET-25027|ReportingEngine, when reading Async Method throws exception in the document|Bug
|WORDSNET-24971|Bookmark from headings are not created saving to PDF|Bug
|WORDSNET-24970|XML to PDF incorrect formatting|Bug
|WORDSNET-24489|Empty output document after converting from CHM to DOCX|Bug
|WORDSNET-24758|Exception is thrown while saving DOCX to image format under Linux|Bug
|WORDSNET-25034|OutOfMemoryException throws when document is saved|Bug
|WORDSNET-21353|Table Front style issue while converting Word to HTML to word document|Bug
|WORDSNET-20994|HTML to PDF conversion generates incorrect output|Bug
|WORDSNET-24753|InvalidOperationException on UpdatePageLayout after inserting HTML via DocumentBuilder|Bug
|WORDSNET-19868|Tables width increase beyond the Page width during Word to HTML to Word round-trip|Bug
|WORDSNET-20907|The use of ExportListLabels.AsInlineText value for HtmlOptions.ExportListLabels option can raise System.InvalidOperationException|Bug
|WORDSNET-11930|Problems to covert html containing element located in absolute position into PDF|Bug
|WORDSNET-24485|The delta character in a math formula is replaced with the V character|Bug
|WORDSNET-25050|NullReferenceException is thrown upon rendering document|Bug
|WORDSNET-11936|Image elements in absolute positions in HTML are not displayed in Word|Bug
|WORDSNET-24563|Aspose.Word .NET Core Performance Problem|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.3. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added new public properties for working with fill colors

Related issue: WORDSNET-24442

A new public properties **ForeThemeColor** and **BackThemeColor** has been added to the **Fill** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a ThemeColor object that represents the foreground color for the fill.
/// </summary>
public ThemeColor ForeThemeColor { get; set; }

/// <summary>
/// Gets or sets a ThemeColor object that represents the background color for the fill.
/// </summary>
public ThemeColor BackThemeColor { get; set; }
{{< /highlight >}}

A new public properties **ForeTintAndShade** and **BackTintAndShade** has been added to the **Fill** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a double value that lightens or darkens the foreground color.
/// </summary>
/// <remarks>
/// <para> The allowed values are within the range from -1 (the darkest) to 1 (the lightest) for this property.
/// Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
/// results in <see cref="ArgumentOutOfRangeException"/>.</para>
/// </remarks>
public double ForeTintAndShade { get; set; }

/// <summary>
/// Gets or sets a double value that lightens or darkens the background color.
/// </summary>
/// <remarks>
/// <para> The allowed values are within the range from -1 (the darkest) to 1 (the lightest) for this property.
/// Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
/// results in <see cref="ArgumentOutOfRangeException"/>.</para>
/// </remarks>
public double BackTintAndShade { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with **theme colors** and **tint and shade**. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("in.docx");

Fill shapeFill = (doc.GetChild(NodeType.Shape, 0, true) as Shape).Fill;
// Gets and sets the value of theme colors.
if (shapeFill.ForeThemeColor == ThemeColor.Accent1)
    shapeFill.ForeThemeColor = ThemeColor.Dark1;

if (shapeFill.BackThemeColor == ThemeColor.Accent2)
    shapeFill.BackThemeColor = ThemeColor.Dark2;

Fill textFill1 = doc.FirstSection.Body.FirstParagraph.Runs[0].Font.Fill;
// Gets and sets the tint value.
if (textFill1.ForeTintAndShade == 0)
    textFill1.ForeTintAndShade = 0.5;

Fill textFill2 = doc.FirstSection.Body.FirstParagraph.Runs[1].Font.Fill;
// Gets and sets the shade value.
if (textFill2.ForeTintAndShade == 0)
    textFill2.ForeTintAndShade = -0.2;

doc.Save("out.docx");
{{< /highlight >}}

### Added public properties HasMajorGridlines and HasMinorGridlines to ChartAxis class

Related issue: WORDSNET-24673

The following public properties have been added to the **Aspose.Words.Drawing.Charts.ChartAxis** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a flag indicating whether the axis has major gridlines.
/// </summary>
public bool HasMajorGridlines { get; set; }

/// <summary>
/// Gets or sets a flag indicating whether the axis has minor gridlines.
/// </summary>
public bool HasMinorGridlines { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to show chart gridlines. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

// Insert a chart.
Shape shape = builder.InsertChart(ChartType.Column, 432, 252);

ChartAxis xAxis = shape.Chart.AxisX;
ChartAxis yAxis = shape.Chart.AxisY;

// Show gridlines.
xAxis.HasMajorGridlines = true;
xAxis.HasMinorGridlines = true;
yAxis.HasMajorGridlines = true;
yAxis.HasMinorGridlines = true;

doc.Save("Gridlines.docx");
{{< /highlight >}}

### Added public property ImportFormatOptions.AdjustSentenceAndWordSpacing

Related issue: WORDSNET-24960

The following public property was added to the **Aspose.Words.ImportFormatOptions** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value that specifies whether to adjust sentence and word spacing automatically.
/// The default value is <c>false</c>.
/// </summary>
public bool AdjustSentenceAndWordSpacing { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use the **AdjustSentenceAndWordSpacing** option. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
Document srcDoc = new Document();
Document dstDoc = new Document();

DocumentBuilder builder = new DocumentBuilder(srcDoc);
builder.Write("Dolor sit amet.");

builder = new DocumentBuilder(dstDoc);
builder.Write("Lorem ipsum.");

ImportFormatOptions options = new ImportFormatOptions() { AdjustSentenceAndWordSpacing = true };
builder.InsertDocument(srcDoc, ImportFormatMode.UseDestinationStyles, options);

Console.WriteLine(dstDoc.FirstSection.Body.FirstParagraph.GetText());

/* This code produces the following output (please note the additional ' ' space character just before pasted content):
Lorem ipsum. Dolor sit amet.
*/
{{< /highlight >}}

### Added public property TextBox.NoTextRotation

Related issue: WORDSNET-24883

The following public property was added to the **Aspose.Words.Drawing.TextBox** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating either text of the TextBox should not rotate when the shape is rotated.
/// </summary>
/// <remarks>
/// <p>The default value is <c>false</c></p>
/// </remarks>
public bool NoTextRotation
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use the **NoTextRotation** option. Please see the following code example:

{{% /alert %}}

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
Shape shape = builder.InsertShape(ShapeType.Ellipse, 20, 20);
shape.TextBox.NoTextRotation = true;
{{< /highlight >}}

### Enabled saving progress notifications for MOBI and AZW3 formats

Related issue: WORDSNET-24900

The **SaveOptions.ProgressCallback** is now also invoked when saving to Mobi or AZW3.