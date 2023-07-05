---
title: 23.7 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 23.7 Release Notes
linktitle: Aspose.Words for .NET 23.7 Release Notes
description: "Aspose.Words for .NET 23.7 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /net/aspose-words-for-net-23-7-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 23.7](https://www.nuget.org/packages/Aspose.Words/23.7.0).

{{% /alert %}}

## Major Features

There are 115 improvements and fixes in this regular monthly release. The most notable are:

- The possibility to save the document page or shape into EPS format has been implemented.
- The ability to retrieve the digital signature value from a digitally signed document as a byte array has been added.
- The Row and Cell classes have been extended with new public members.
- Mustache tags are now supported in the MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion methods.
- The LINQ Reporting Engine template syntax now supports the ElementAt and ElementAtOrDefault extension methods.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24965|Making Cell.PreviousCell, Cell.NextCell, Row.PreviousRow, Row.NextRow properties public|New Feature
|WORDSNET-25420|Consider providing a way to extract digital signature as byte array|New Feature
|WORDSNET-24384|Text is wrapped improperly in table cell|New Feature
|WORDSNET-24778|Right edge of shape is cut after rendering|New Feature
|WORDSNET-24777|Table column's width is incorrect after rendering.|New Feature
|WORDSNET-24830|Images are rendered improperly|New Feature
|WORDSNET-25017|Table is rendered a little narrower that leads to incorrect hyperlink wrapping|New Feature
|WORDSNET-25130|Table width is changed after redenring|New Feature
|WORDSNET-25382|Table layout is incorrect after rendering|New Feature
|WORDSNET-25035|Issue a warning when loading a fixed-page HTML document|New Feature
|WORDSNET-13420|Paragraphs are overlapped the Shape in output PDF|New Feature
|WORDSNET-12865|A Table moves towards the right page edge in PDF|New Feature
|WORDSNET-12300|Image in table is getting cut off in generated PDF|New Feature
|WORDSNET-12617|Text in footer is misplaced when converting a Word document to PDF|New Feature
|WORDSNET-13888|DOCM to PDF conversion issue with table rendering|New Feature
|WORDSNET-14560|HTML to PDF conversion : Table rendering|New Feature
|WORDSNET-12870|DOC to XPS conversion issue with table rendering|New Feature
|WORDSNET-14269|DOCX to PDF conversion issue with table's rendering|New Feature
|WORDSNET-14626|Table's width shrinks when images are present in cell|New Feature
|WORDSNET-15163|Image alignment issue in DOCX to PDF conversion|New Feature
|WORDSNET-15615|UpdateTableLayout method use in Word to PDF conversion|New Feature
|WORDSNET-16205|Paragraph is rendered on previous page|New Feature
|WORDSNET-16237|DOCX to HtmlFixed conversion issue with table position|New Feature
|WORDSNET-16131|Cell's text is wrapped to next line in output PDF|New Feature
|WORDSNET-16466|Images are overlapped after conversion from DOC to PDF|New Feature
|WORDSNET-16992|Pictures slightly overlap each other in PDF|New Feature
|WORDSNET-17861|DOCX to PDF conversion issue with table content|New Feature
|WORDSNET-18482|Table row appears on the 4th page in Word but on 5th in AW|New Feature
|WORDSNET-18203|Date in the header of document does not render correctly in output PDF|New Feature
|WORDSNET-25259|Support ElementAt extension method for LINQ Reporting Engine template syntax|New Feature
|WORDSNET-24195|Support rendering to EPS|New Feature
|WORDSNET-18714|Incorrect table width in generated PDF|New Feature
|WORDSNET-19952|Shape (logo) position is changed after DOCX to PDF conversion|New Feature
|WORDSNET-20177|Picture shifts towards right page margin, causing partial rendering in PDF|New Feature
|WORDSNET-20811|Preserve Table Column widths in Landscape Section's Header during DOCM to PDF Conversion|New Feature
|WORDSNET-20818|UpdatePageLayout and UpdateTableLayout changed the printed document layout using .NET|New Feature
|WORDSNET-21256|Document.UpdateTableLayout changes the layout of document footer in output PDF|New Feature
|WORDSNET-21638|Image is cropped after DOCX to PDF conversion |New Feature
|WORDSNET-21746|Incorrect Table after conversion to PDF|New Feature
|WORDSNET-22344|Word to PDF transformation Table alignment issue in header|New Feature
|WORDSNET-22714|A design bug while converting a DOCX to PDF|New Feature
|WORDSNET-22755|The width of the cell is not correct when converting DOCX file to PDF|New Feature
|WORDSNET-22819|The logo shifts to the center in the PDF|New Feature
|WORDSNET-23978|Incorrect table column widths on DOCX to PDF conversion|New Feature
|WORDSNET-23977|Header on landscape page is rendered improperly|New Feature
|WORDSNET-24091|Header with table on landscape page is rendered improperly|New Feature
|WORDSNET-24103|Header layout changed when converting DOCX to PDF|New Feature
|WORDSNET-24254|Image is truncated upon rendering document|New Feature
|WORDSNET-24564|An empty page is rendered in PDF|New Feature
|WORDSNET-25467|Throw a better error message when reading corrupted MOBI file|Enhancement
|WORDSNET-24916|Table is rendered slightly narrower than in source document|Enhancement
|WORDSNET-25494|Text in table is wrapped incorrectly|Enhancement
|WORDSNET-17445|Image in Header getting chopped off in Save as PDF|Enhancement
|WORDSNET-19131|Image in table not centered when converting word to PDF|Enhancement
|WORDSNET-20838|Document.UpdateTableLayout changes the layout of table in output PDF|Enhancement
|WORDSNET-21659|Image inside table is cut off in PDF format|Enhancement
|WORDSNET-24279|Right table border is not visible after rendering|Enhancement
|WORDSNET-25512|Check whether customXxml part is required in AllStyles2003.docx resource|Enhancement
|WORDSNET-25418|FindReplaceOptions.ApplyFont.Color is not applied|Bug
|WORDSNET-25404|MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion do not work with mustache syntax|Bug
|WORDSNET-25330|Memory leak issue occurs in AW.NET while converting documents inside GroupDocs.Editor|Bug
|WORDSNET-25601|Text is rendered as tofu|Bug
|WORDSNET-25602|Text is rendered as tofu 2|Bug
|WORDSNET-25574|Cell background is lost after conversion from DOCX to XLSX|Bug
|WORDSNET-25162|Font style underline does not work|Bug
|WORDSNET-25560|Rendering performance depredated in new version of Aspose.Words|Bug
|WORDSNET-25257|OLE object extracted incorrectly from DOC created in WPS|Bug
|WORDSNET-25514|InvalidCastException when saving HTML to MOBI|Bug
|WORDSNET-25363|Images don't preserve hyperlinks when they are saved to SVG|Bug
|WORDSNET-25575|Colors of image are inverted after conversion of MHT to PCL|Bug
|WORDSNET-25408|DOCX merging issue|Bug
|WORDSNET-25543|Error inserting SVG+XML image|Bug
|WORDSNET-25492|REF field is not updated properly after first call of UpdateFields|Bug
|WORDSNET-25409|TOC is updated improperly by Aspose.Words|Bug
|WORDSNET-25526|MergeBarcode fields names are not listed in MailMerge.GetFieldNames()|Bug
|WORDSNET-25518|Infinite loop while reading document with DML|Bug
|WORDSNET-25432|HTML AltChunk loses text color after open/save document|Bug
|WORDSNET-25566|Small caps text is rendered improperly|Bug
|WORDSNET-23448|DOCX to PDF: some images inside tables are pushed back to the previous page|Bug
|WORDSNET-25448|DOCX to PDF: Page missing after conversion|Bug
|WORDSNET-25437|Widow/orphan rule not respected in a broken table cell on conversion to PDF|Bug
|WORDSNET-25306|Chinese text is missed after rendering document|Bug
|WORDSNET-25410|Incorrect bounds calculation if one of fraction parts has a different font size|Bug
|WORDSNET-25497|Quality of graphics degrades after merging PDF documents|Bug
|WORDSNET-24260|DOCX to PDF: Table overflows to the footer|Bug
|WORDSNET-25535|PdfSaveOptions.OptimizeOutput produces incorrect output when Shaping.HarfBuzz is used|Bug
|WORDSNET-25532|Image proportions are not preserved after rendering document|Bug
|WORDSNET-25393|NullReferenceException is thrown upon updating words count|Bug
|WORDSNET-25192|List is incorrectly formatted after export to HTML|Bug
|WORDSNET-25191|List is formatted incorrectly after export to HTML|Bug
|WORDSNET-25190|List is incorrect after export to HTML|Bug
|WORDSNET-24856|Improve HTML list export|Bug
|WORDSNET-25470|Aspose.Words.FileCorruptedException throwed opening HTML file|Bug
|WORDSNET-23914|Incorrect position of the fraction line in the formula|Bug
|WORDSNET-25525|Incorrect top and bottom offsets if the emedded image on top level of the math formula|Bug
|WORDSNET-25521|InvalidCastException is thrown when try to move DocumentBuilder to a bookmark inside OfficeMath|Bug
|WORDSNET-25444|DOCX to PDF: Text changes color|Bug
|WORDSNET-25365|Operator glyphs (+,-), if they are part of a "inline" fraction, are changed after converting to PDF|Bug
|WORDSNET-25454|File is mistakenly detected as PDF by Aspose.Words|Bug
|WORDSNET-25482|Placeholder text lost after saving |Bug
|WORDSNET-25496|Comparing the document with itself produces invisible revisions|Bug
|WORDSNET-25474|Compatibility mode changes on saving HTML to DOCX|Bug
|WORDSNET-23854|Make sure compatibility mode changes on saving HTML to DOCX|Bug
|WORDSNET-25458|Incorrect percent numbers in pie chart|Bug
|WORDSNET-12871|DOC to XPS conversion issue with table's text rendering|Bug
|WORDSNET-25572|Font fallback does not work for Wingdings font|Bug
|WORDSNET-23742|Cell margins change on saving from DOC to ODT|Bug
|WORDSNET-25504|Wrong format when appending a document twice|Bug
|WORDSNET-25446|DOCX to PDF: Symbols not converted correctly|Bug
|WORDSNET-24990|Bullet formatting for the component content changed|Bug
|WORDSNET-25486|NullReferenceException is thrown upon rendering document after removing table row|Bug
|WORDSNET-25487|HTML is converted to the blank resulting DOCX|Bug
|WORDSNET-25364|Default font family is written to <li> element|Bug
|WORDSNET-25537|Table row is moved to the previous page after rendering|Bug
|WORDSNET-20577|Aspose.Words takes more time and memory over .NET Core|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to get digital signature value from digitally signed document as byte array

Related issue: WORDSNET-25420

Added ability to get a digital signature value from a digitally signed document into **Aspose.Words.DigitalSignatures.DigitalSignature** class:

{{< highlight csharp >}}
/// <summary>
/// Gets an array of bytes representing a signature value.
/// </summary>
public byte[] SignatureValue { get; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to obtain digital signature value as byte array from a document:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document("docWithSign.docx");

foreach (DigitalSignature digitalSignature in doc.DigitalSignatures)
{
    string signatureValue = Convert.ToBase64String(digitalSignature.SignatureValue);
    Console.WriteLine("Base64 signature value is: {0}", signatureValue);
}

// The code produces the following output:
// Base64 signature value is: AJjRFbflcj+H7VUZ9Q/9rpbavjT7TC10M5orYCRYnEIwyPCtTman8+na4ynclQtBFFgT7uJoHyuHStleXwnbbj6AVNp/B1oCtlEcg9t7WjsgLlm7LQsr6PCCCkgWYNEOwe3s6Wpfop9qkyEEBxATgfpfbbdodB/wO0elS/Ei+dfUmu
{{< /highlight >}}

### Added new EPS image format

Related to WORDSNET-24195

The document page or shape could be saved into **EPS** format now. A new EPS value is added into **SaveFormat** enum.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save document as EPS image:

{{% /alert %}}

{{< highlight csharp >}}
// Open some document.
Document doc = new Document("document.docx");

// Save the second page as EPS image.
ImageSaveOptions saveOptions = new ImageSaveOptions(SaveFormat.Eps);
saveOptions.PageSet = new PageSet(1);
doc.Save("image.eps", saveOptions);
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save any particular shape as EPS image:

{{% /alert %}}

{{< highlight csharp >}}
// Open some document.
Document doc = new Document("document.docx");

// Save the shape as EPS image.
ImageSaveOptions saveOptions = new ImageSaveOptions(SaveFormat.Eps);
Shape shape = (Shape)doc.GetChild(NodeType.Shape, 0, true);
ShapeRenderer renderer = shape.GetShapeRenderer();
renderer.Save("image.eps", saveOptions);
{{< /highlight >}}

### Added new public properties Row.NextRow, Row.PreviousRow, Cell.NextCell and Cell.PreviousCell

Related issue: WORDSNET-24965

The following public properties have been added to the **Row** class:
{{< highlight csharp >}}
/// <summary>
/// Gets the next Row node.
/// </summary>
/// <remarks>
/// The method can be used when you need to have typed access to table rows.
/// If a StructuredDocumentTag node is found in a table instead of a row,
/// it is automatically traversed to get a row contained within.
/// </remarks>
public Row NextRow { get; }

/// <summary>
/// Gets the previous Row node.
/// </summary>
/// <remarks>
/// The method can be used when you need to have typed access to table rows.
/// If a StructuredDocumentTag node is found in a table instead of a row,
/// it is automatically traversed to get a row contained within.
/// </remarks>
public Row PreviousRow { get; }
{{< /highlight >}}

The following public properties have been added to the **Cell** class:
{{< highlight csharp >}}
/// <summary>
/// Gets the next Cell node.
/// </summary>
/// <remarks>
/// The method can be used when you need to have typed access to cells of a row.
/// If a StructuredDocumentTag node is found in a row instead of a cell, it is automatically
/// traversed to get a cell contained within.
/// </remarks>
public Cell NextCell { get; }

/// <summary>
/// Gets the previous Cell node.
/// </summary>
/// <remarks>
/// The method can be used when you need to have typed access to cells of a row.
/// If a StructuredDocumentTag node is found in a row instead of a cell, it is automatically
/// traversed to get a cell contained within.
/// </remarks>
public Cell PreviousCell { get; }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to enumerate through all table cells:

{{% /alert %}}

{{< highlight csharp >}}
Document doc = new Document(fileName);
Table table = doc.FirstSection.Body.Tables[0];

// Enumerate through all cells of the table.
for (Row row = table.FirstRow; row != null; row = row.NextRow)
{
    for (Cell cell = row.FirstCell; cell != null; cell = cell.NextCell)
    {
        Console.WriteLine(cell.GetText());
    }
}
{{< /highlight >}}

### A warning is issued if loaded HTML document has fixed-page structure

Related issue: WORDSNET-25035

Aspose.Words doesn't support loading of fixed-page HTML document (for example, documents that are produced when saving in **SaveFormat.HtmlFixed**).
If Aspose.Words detects that the loaded HTML document has fixed-page structure, it will issue the following warning:

{{< highlight csharp >}}
WarningSource.Html
WarningType.MajorFormattingLoss
"The document is fixed-page HTML. Its structure may not be loaded correctly."
{{< /highlight >}}

### Supported mustache tags in the MailMerge.GetRegionsHierarchy and MailMerge.GetFieldNamesForRegion methods

Related issue: WORDSNET-25404

Now the **MailMerge.GetRegionsHierarchy** method returns mustache regions and mustache fields when the **MailMerge.UseNonMergeFields** option is true.

Now the **MailMerge.GetFieldNamesForRegion** method accepts mustache region names and returns mustache field names when the **MailMerge.UseNonMergeFields** option is true.

The **MustacheTag** class has been introduced:
{{< highlight csharp >}}
/// <summary>
/// Represents "mustache" tag.
/// </summary>
public class MustacheTag
{
    /// <summary>
    /// Gets the run that contains the beginning of the tag.
    /// </summary>
    public Run ReferenceRun { get; }

    /// <summary>
    /// Gets the zero-based starting position of the tag from the start of the <see cref="ReferenceRun"/>.
    /// </summary>
    public int ReferenceOffset { get; }

    /// <summary>
    /// Gets the text of the tag.
    /// </summary>
    public string Text { get; }
}
{{< /highlight >}}

The StartMustacheTag, EndMustacheTag and MustacheTags properties have been added to the MailMergeRegionInfo class:
{{< highlight csharp >}}
public class MailMergeRegionInfo
{
    /// <summary>
    /// Returns a start "mustache" tag for the region.
    /// </summary>
    public MustacheTag StartMustacheTag { get; }

    /// <summary>
    /// Returns an end "mustache" tag for the region.
    /// </summary>
    public MustacheTag EndMustacheTag { get; }

    /// <summary>
    /// Returns a list of child "mustache" tags.
    /// </summary>
    public IList<MustacheTag> MustacheTags { get; }
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use MustacheTag:

{{% /alert %}}

{{< highlight csharp >}}
Document document = new Document("Template.docx");
document.MailMerge.UseNonMergeFields = true;

MailMergeRegionInfo hierarchy = document.MailMerge.GetRegionsHierarchy();

foreach (MustacheTag mustacheTag in hierarchy.MustacheTags)
    Console.WriteLine(mustacheTag.Text);

foreach (MailMergeRegionInfo region in hierarchy.Regions)
{
    Console.WriteLine(region.StartMustacheTag.Text);
    Console.WriteLine(region.EndMustacheTag.Text);
}
{{< /highlight >}}

### Supported ElementAt and ElementAtOrDefault extension methods for LINQ Reporting Engine template syntax

Related issue: WORDSNET-25259

From now on, you can use **ElementAt** and **ElementAtOrDefault** extension methods within LINQ Reporting Engine template syntax as follows:

{{< highlight csharp >}}
<<[persons.ElementAt(3).Name]>>
<<[persons.ElementAtOrDefault(5)?.Name]>>
{{< /highlight >}}