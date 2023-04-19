---
title: 22.12 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 22.12 Release Notes
linktitle: Aspose.Words for .NET 22.12 Release Notes
description: "Aspose.Words for .NET 22.12 Release Notes – the latest updates and fixes."
type: docs
weight: 15
url: /net/aspose-words-for-net-22-12-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 22.12](https://www.nuget.org/packages/Aspose.Words/22.12.0).

{{% /alert %}}

## Major Features

There are 74 improvements and fixes in this regular monthly release. The most notable are:

- Implemented an ability to specify the particular Margin type for the given section.
- The new public properties ThemeColor and TintAndShade were introduced.
- Implemented rendering of the linear trendline formula for DrawingML charts rendering.
- Implemented optimization that significantly reduces the depth of graphics state nesting when rendering to PDF to maintain specification compliance.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by .NET Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-14305|RTF To PDF conversion issue with cell's text rendering|New Feature
|WORDSNET-23931|Parameterized Margins property in PageSetup|New Feature
|WORDSNET-10449|DOC to PDF conversion issue with content position|New Feature
|WORDSNET-19791|Imitate MS Word behavior when field update in header/footer affects container table height or width|New Feature
|WORDSNET-23681|Word to PDF conversion - equation is mssing from the chart|New Feature
|WORDSNET-24441|Consider implementation of Border.ThemeColor|New Feature
|WORDSNET-23747|Table left indent in AW model does not match MS Word UI for an xml document|Enhancement
|WORDSNET-24620|Some font names in Noto fallback settings are outdated|Enhancement
|WORDSNET-24402|Differences in comparison|Enhancement
|WORDSNET-24549|ArgumentOutOfRangeException is thrown upon using ExtractPages method|Bug
|WORDSNET-24305|Third level numbering is not preserved after appending document|Bug
|WORDSNET-24537|DOCX to PDF: Wrong character positioning|Bug
|WORDSNET-24293|DOCX to PDF: Character orientation does not retain upon conversion|Bug
|WORDSNET-24373|"No table of figures entries found" is shown after updating fields in the document|Bug
|WORDSNET-24280|Page numbers in TOC are incorrect after rendering|Bug
|WORDSNET-19585|Incorrect bottom-margin relative shape position in header|Bug
|WORDSNET-24112|The table borders are not preserved during DOCX-HTML-DOCX roundtrip|Bug
|WORDSNET-23200|EML to PDF conversion: validation fails: Maximum depth of graphics state nesting by q and Q operators exceeded|Bug
|WORDSNET-24630|InvalidOperationException: Target width and height|Bug
|WORDSNET-24545|ArgumentOutOfRangeException: Specified argument was out of the range of valid values|Bug
|WORDSNET-24533|NullReferenceException in GetForm()|Bug
|WORDSNET-24631|InvalidOperationException: Incorrect CropBox|Bug
|WORDSNET-24609|Unknown format on loading TXT file|Bug
|WORDSNET-24603|"Unsupported file format: Unknown" on loading TXT file|Bug
|WORDSNET-22858|Shape is converted from DML to VML while exporting document to DOCX|Bug
|WORDSNET-24338|Aspose.Words hangs upon updating fields|Bug
|WORDSNET-24336|NullReferenceException is thrown upon calling UpdateFields|Bug
|WORDSNET-24546|NullReferenceException when converting DOCX to PDF|Bug
|WORDSNET-24513|Bookmarks with duplicated names are lost in building bolocks|Bug
|WORDSNET-24464|Incorrect graphics in converted DOCX file|Bug
|WORDSNET-24466|Footnote text is partially missing|Bug
|WORDSNET-24443|Revisions are rendered improperly|Bug
|WORDSNET-24224|InvalidOperationException is thrown upon comparing document|Bug
|WORDSNET-24585|Wrong export of hidden text into Markdown|Bug
|WORDSNET-24583|SDT placeholder text is visible after rendering document|Bug
|WORDSNET-24529|Hidden SDT becomes visible after open/save document|Bug
|WORDSNET-24519|Text color in chart legend is changed after rendering|Bug
|WORDSNET-24596|Document.UpdateFields does not update RD field|Bug
|WORDSNET-24579|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-19866|TOC color changes to blue when converting Word to HTML|Bug
|WORDSNET-24538|ArgumentException is thrown upon updating fields|Bug
|WORDSNET-24510|Ideographic text inside list label is incorrectly rotated in vertical direction|Bug
|WORDSNET-24570|NullReferenceException is thrown upon rendering document|Bug
|WORDSNET-17524|Document.UpdateFields method does not update page numbers of XE entries in INDEX field|Bug
|WORDSNET-24591|Chinese character are invisible after rendering|Bug
|WORDSNET-24567|Document compare throws System.InvalidOperationException|Bug
|WORDSNET-24170|The name of group slice of PieOfPie chart is not rendered after converting to PDF|Bug
|WORDSNET-24130|Incorrect calculation of the chart space rectangle if manual layout is set|Bug
|WORDSNET-24506|Font of TOC entries changes after DOCX to PDF conversion|Bug
|WORDSNET-24468|Exception on loading text file|Bug
|WORDSNET-16405|Document.Compare does not mimic MS Word behavior|Bug
|WORDSNET-16874|The compared output contains improper table revisions|Bug
|WORDSNET-24312|DOCX to HTML: InvalidOperationException|Bug
|WORDSNET-24151|An error occurs when trying to save a document to EPUB with default options|Bug
|WORDSNET-24571|Part of table is moved to previous page upon rendering|Bug
|WORDSNET-22225|Performance issue during comparing Text files|Bug
|WORDSNET-24313|FileFormatDetector doesn't recognize PDF files with garbage at the beginning|Bug
|WORDSNET-24551|Aspose.Words.Shaping.HarfBuzz does not have a strong name|Bug
|WORDSNET-24511|Redundant whitespace is added to the field value after update|Bug
|WORDSNET-24536|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-24542|Symbols are rendered as tofu|Bug
|WORDSNET-24297|DOC to PDF: Overlapping images|Bug
|WORDSNET-24247|Section Header becomes text-wrapped around icons|Bug

</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by .NET Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24363|Phonetic Guide is not exported to TXT|Bug
|WORDSNET-24634|Aspose.Words selects wrong font upon renderinng|Bug
|WORDSNET-21893|List labels are lost after DOCX to PDF conversion|Bug
|WORDSNET-24428|NullReferenceException is thrown upon rendering document|Bug
|WORDSNET-24386|Chinese justified text looks improperly after open/save document|Bug
|WORDSNET-24476|Page number style is incorrect in PDF after comparing documents|Bug
|WORDSNET-24586|Comment range is changed after comparing documents|Bug
|WORDSNET-24475|NullReferenceException is thrown upon rendering document with chart|Bug
|WORDSNET-23907|Table Alignment Issue in converting RTF files to PDF|Bug
|WORDSNET-24565|Replaced shape is not catched by compare method|Bug
|WORDSNET-24431|Watermark is displayed over the text|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 22.12. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added new public properties ThemeColor and TintAndShade

Related issue: WORDSNET-24441

A new public property **ThemeColor** has been added to class **Border**:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the theme color in the applied color scheme that is associated with this Border object.
/// </summary>
public ThemeColor ThemeColor { get; set; }
{{< /highlight >}}

A new public property **TintAndShade** has been added to class **Border**:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a double value that lightens or darkens a color.
/// </summary>
public double TintAndShade { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with **ThemeColor** and **TintAndShade**.

The following code example shows how to use such properties:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
<br>
Border topBorder = builder.ParagraphFormat.Borders.Top;
topBorder.LineWidth = 0.5;
<br>
// Sets the value of ThemeColor.
topBorder.ThemeColor = ThemeColor.Accent1;
Border bottomBorder = builder.ParagraphFormat.Borders.Bottom;
bottomBorder.LineWidth = 0.5;
<br>
// Sets the value of ThemeColor.
bottomBorder.ThemeColor = ThemeColor.Accent2;
Border leftBorder = builder.ParagraphFormat.Borders.Left;
leftBorder.LineWidth = 1.5;
<br>
// Sets the value of ThemeColor.
leftBorder.ThemeColor = ThemeColor.Accent3;
<br>
// Sets the lightens value.
leftBorder.TintAndShade = 0.25;
Border rightBorder = builder.ParagraphFormat.Borders.Right;
rightBorder.LineWidth = 1.5;
<br>
// Sets the value of ThemeColor.
rightBorder.ThemeColor = ThemeColor.Accent4;
<br>
// Sets the darkens value.
rightBorder.TintAndShade = -0.125;
builder.Write("Lorem Ipsum");
doc.Save("output.docx");
{{< /highlight >}}

{{% alert color="secondary" %}}

The following code example shows how to use such properties:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
<br>
Border topBorder = builder.ParagraphFormat.Borders.Top;
topBorder.LineWidth = 0.5;
<br>
// Sets the value of ThemeColor.
topBorder.ThemeColor = ThemeColor.Accent1;
Border bottomBorder = builder.ParagraphFormat.Borders.Bottom;
bottomBorder.LineWidth = 0.5;
<br>
// Sets the value of ThemeColor.
bottomBorder.ThemeColor = ThemeColor.Accent2;
Border leftBorder = builder.ParagraphFormat.Borders.Left;
leftBorder.LineWidth = 1.5;
<br>
// Sets the value of ThemeColor.
leftBorder.ThemeColor = ThemeColor.Accent3;
<br>
// Sets the lightens value.
leftBorder.TintAndShade = 0.25;
Border rightBorder = builder.ParagraphFormat.Borders.Right;
rightBorder.LineWidth = 1.5;
<br>
// Sets the value of ThemeColor.
rightBorder.ThemeColor = ThemeColor.Accent4;
<br>
// Sets the darkens value.
rightBorder.TintAndShade = -0.125;
builder.Write("Lorem Ipsum");
doc.Save("output.docx");
{{< /highlight >}}

{{% /alert %}}

{{% alert color="secondary" %}}

<details><summary>Expand to see the code example.</summary>

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
<br>
Border topBorder = builder.ParagraphFormat.Borders.Top;
topBorder.LineWidth = 0.5;
<br>
// Sets the value of ThemeColor.
topBorder.ThemeColor = ThemeColor.Accent1;
Border bottomBorder = builder.ParagraphFormat.Borders.Bottom;
bottomBorder.LineWidth = 0.5;
<br>
// Sets the value of ThemeColor.
bottomBorder.ThemeColor = ThemeColor.Accent2;
Border leftBorder = builder.ParagraphFormat.Borders.Left;
leftBorder.LineWidth = 1.5;
<br>
// Sets the value of ThemeColor.
leftBorder.ThemeColor = ThemeColor.Accent3;
<br>
// Sets the lightens value.
leftBorder.TintAndShade = 0.25;
Border rightBorder = builder.ParagraphFormat.Borders.Right;
rightBorder.LineWidth = 1.5;
<br>
// Sets the value of ThemeColor.
rightBorder.ThemeColor = ThemeColor.Accent4;
<br>
// Sets the darkens value.
rightBorder.TintAndShade = -0.125;
builder.Write("Lorem Ipsum");
doc.Save("output.docx");
{{< /highlight >}}

</details>

{{% /alert %}}

{{% /alert %}}

### Added public property PageSetup.Margins

Related issue: WORDSNET-23931

A new public property **Margins** has been added to the **PageSetup** class:

{{< highlight csharp >}}
/// <summary>
/// Returns or sets preset <see cref="Aspose.Words.Margins"/> of the page.
/// </summary>
public Margins Margins { get; set; }
{{< /highlight >}}

A new public enum **Margins** has been introduced:

{{< highlight csharp >}}
/// <summary>
/// Specifies preset margins.
/// </summary>
public enum Margins
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get and set the specified Margin type for the given section.

{{% alert color="secondary" %}}

<details><summary>Expand to see the code example.</summary>

{{< highlight csharp >}}
Document doc = new Document("in.docx");
// Getting the current Margin type.
if (doc.Sections[1].PageSetup.Margins == Margins.Normal)
    // Setting the specified Margin type.
    doc.Sections[1].PageSetup.Margins = Margins.Mirrored;
{{< /highlight >}}

</details>

{{% /alert %}}

{{% /alert %}}