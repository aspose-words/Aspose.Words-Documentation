---
title: Aspose.Words for .NET 20.7 Release Notes
description: "Aspose.Words for .NET 20.7 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 10
url: /net/aspose-words-for-net-20-7-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 20.7](https://downloads.aspose.com/words/net/new-releases/aspose.words-for-.net-20.7/).

{{% /alert %}} 

## Major Features

There are 91 improvements and fixes in this regular monthly release. The most notable are:

- Added new nodes to handle multi-section structured document tags.
- Added a new public property MailMerge.RetainFirstSectionStart.
- RevisionOptions class is extended with new properties.
- Improved performance of SmartArt cold rendering.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-9500|International characters (Tamil) are not converted correctly from MHTML to PDF|New Feature|
|WORDSNET-7150|SDT controls are getting lost during open/save|New Feature|
|WORDSNET-9501|International characters (Telugu) are not converted correctly from MHTML to PDF|New Feature|
|WORDSNET-5713|StructuredDocumentTag containing Section Breaks is lost upon loading|New Feature|
|WORDSNET-20589|PDF to DOCX - footnotes|New Feature|
|WORDSNET-20480|Provide property to enable "strict MS Word behavioral compliance" during mail merge|New Feature|
|WORDSNET-9908|Preserve RichText Content Control with Section Break|New Feature|
|WORDSNET-6773|Row contents larger than page size truncate while setting AllowBreakAcrossPages=False|Enhancement|
|WORDSNET-20415|Maintaining rev bars when converting a DOCX to PDF with track changes|Enhancement|
|WORDSNET-18609|A line moves to the previous Page in PDF|Enhancement|
|WORDSNET-6721|DOC to PDF conversion issue with a Persian font|Bug|
|WORDSNET-13519|Aspose.Words does not import StructuredDocumentTag containing section break|Bug|
|WORDSNET-14750|An extra page is added after conversion from DOCX to PDF|Bug|
|WORDSNET-15659|Some structured document tags have removed after processing with Aspose.Words|Bug|
|WORDSNET-17811|Urdu text is lost after conversion from DOC to PDF|Bug|
|WORDSNET-19624|After conversion to PDF, a part of a table content is wrapping|Bug|
|WORDSNET-20478|TextBoxes contents appear to align Justified in PDF|Bug|
|WORDSNET-19097|Content is pushed down to the next page in output PDF|Bug|
|WORDSNET-20655|System.Collections.Generic.KeyNotFoundException while loading the PDF|Bug|
|WORDSNET-20624|StructuredDocumentTag.Checked does not work|Bug|
|WORDSNET-20659|Compare method throws an exception - Unable to cast object of type 'Aspose.Words.Run' to type 'Aspose.Words.Paragraph|Bug|
|WORDSNET-11924|Thai diacritics (accent) are overlayed in PDF|Bug|
|WORDSNET-19685|Table's width issue when AutoFit is FIXED_COLUMN_WIDTHS|Bug|
|WORDSNET-20676|DOCX to PDF conversion issue with Chart rendering|Bug|
|WORDSNET-20215|Re-work DmlChartPlanePie.CalculateOffsets()|Bug|
|WORDSNET-13908|IranNastaliq font issue in PDF|Bug|
|WORDSNET-20484|Refactor ZipStream in order to make it more auto portable to java|Bug|
|WORDSNET-20483|Conversion to PDF chart issues|Bug|
|WORDSNET-15351|Thai Font Not Displayed Correctly When Saved To PDF|Bug|
|WORDSNET-20360|Table height increased in the rendered document|Bug|
|WORDSNET-20359|Diagram of Heart pushed to the next page in the rendered document|Bug|
|WORDSNET-16327|Content Control is lost after re-saving DOCX|Bug|
|WORDSNET-19017|Content Control lost during open/save a DOCX|Bug|
|WORDSNET-17291|Content Control disappear when saving a DOCX|Bug|
|WORDSNET-20672|IndexOutOfRangeException when convert ODT to TXT|Bug|
|WORDSNET-20487|DOCX to PDF conversion issue with revision rendering|Bug|
|WORDSNET-20504|Incorrect line wrapping for a line with a tabulation|Bug|
|WORDSNET-20136|Aspose Word 20.3 cannot run on a real device (Xamarin IOS, Android)|Bug|
|WORDSNET-13601|Aspose.Words does not import content controls containing Table|Bug|
|WORDSNET-20508|Character unrecognized|Bug|
|WORDSNET-20689|LINQ Reporting Engine - Chart legend entries removed in a template appear in a result document|Bug|
|WORDSNET-19127|Table height differs|Bug|
|WORDSNET-19972|Document.Compare generates incorrect revisions for bullet lists|Bug|
|WORDSNET-20235|Images hide or cut some parts of Table Borders in PDF|Bug|
|WORDSNET-20645|InvalidOperationException while loading the PDF|Bug|
|WORDSNET-19723|On Save, Aspose is removing a Content Control from the DOCX file|Bug|
|WORDSNET-19724|Provide API to modify Changed Lines to None, Left, Right or Outside Border|Bug|
|WORDSNET-20518|System.InvalidOperationException is thrown while saving RTF to HTML|Bug|
|WORDSNET-20520|System.InvalidOperationException is thrown while saving RTF to HTML|Bug|
|WORDSNET-20521|The mismatched numbering of labels in PDF|Bug|
|WORDSNET-19173|Content Control gets lost during open/save a DOCX|Bug|
|WORDSNET-19177|Border of PieChart pieces is changed in output PNG|Bug|
|WORDSNET-19164|SmartArt to PNG conversion issue with fill color|Bug|
|WORDSNET-18954|Watermarks are black and doubled when converting EMF to PDF|Bug|
|WORDSNET-20106|Problem in ODT format with field Fill-In containing &lt;text:line-break&gt; tag or carriage return character.|Bug|
|WORDSNET-20528|Conversion from RTF to PDF - Paragraph borders not imported correctly|Bug|
|WORDSNET-20117|Table of Contents does use the wrong style|Bug|
|WORDSNET-20108|Language of SDTs is changed from Hebrew to Arabic after DOCX>HTML>DOCX|Bug|
|WORDSNET-20334|Incorrect export of bold italic text into markdown|Bug|
|WORDSNET-13025|IranNastaliq font is not rendering correctly in PDF|Bug|
|WORDSNET-20424|SmartArt object loses 3D effect during open and saving a DOCX|Bug|
|WORDSNET-20441|Deep nesting depth of an HTML document may cause StackOverflow exception.|Bug|
|WORDSNET-20447|Aspose.Words 20.5: Call to UpdatePageLayout on specific document raises NullReferenceException|Bug|
|WORDSNET-20452|Japanese text does not have a vertical direction in PDF|Bug|
|WORDSNET-20457|Incorrect height of the script math element|Bug|
|WORDSNET-20124|Content is missing after conversion to PDF|Bug|
|WORDSNET-17648|DOCX to PDF/JPEG conversion issue with Hindi font rendering|Bug|
|WORDSNET-20461|The file is corrupted after the resave|Bug|
|WORDSNET-4677|Lists using the same linked style should not continue on together when appending documents|Bug|
|WORDSNET-20562|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Bug|
|WORDSNET-20336|Styles of a different Language appear in Saved DOC|Bug|
|WORDSNET-20570|System.NullReferenceException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-20574|Aspose.Words.FileCorruptedException is thrown while importing DOC|Bug|
|WORDSNET-20561|Aspose.Words.FileCorruptedException occurs upon loading PDF files using Streams|Bug|
|WORDSNET-20498|How to merge and obfuscate Aspose.Words with another external code|Bug|
|WORDSNET-19171|Gradient fill color is lost after conversion from Chart to PNG|Bug|
|WORDSNET-20609|The hyperlink is truncated after XML to DOCX conversion|Bug|
|WORDSNET-20618|Shape fill is lost during 3D rotation|Bug|
|WORDSNET-20620|Incorrect position of the Glow effect of SVG shape after applying 3D rotation|Bug|
|WORDSNET-20619|Incorrect position of the SVG shape after applying 3D rotation|Bug|
|WORDSNET-20632|Signed DLL's on the Nuget server|Bug|
|WORDSNET-20374|INDEX entries have incorrect Font Style|Bug|
|WORDSNET-20640|Incorrect tables layout when converting to DOC|Bug|
|WORDSNET-20646|System.ObjectDisposedException is thrown when PDF is loaded from a stream|Bug|
|WORDSNET-19888|Aspose.Words.FileCorruptedException is thrown while loading HTML|Bug|
|WORDSNET-16933|Content of text boxes missing in PDF|Bug|
|WORDSNET-20529|Image is rotated after DOCX to HtmlFixed conversion|Bug|
|WORDSNET-16771|DOCX to PDF conversion issue with image position|Bug|
|WORDSNET-19403|After conversion to PDF, an image is moved a few inches down|Bug|
|WORDSNET-20533|Multi-Threaded Errors with mail merge|Bug|
|WORDSNET-16907|Incorrect line breaks push some content to the next page in PDF|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new public property MailMerge.RetainFirstSectionStart

Related issue: WORDSNET-20480

Added a new public property MailMerge.RetainFirstSectionStart:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value indicating whether the <see cref="PageSetup.SectionStart"/> of the first document section and its copies for subsequent data source rows
/// are retained during mail merge or updated according to MS Word behaviour.
/// </summary>
/// <remarks>
/// The default value is <b>true</b>.
/// </remarks>
public bool RetainFirstSectionStart { get; set; }
{{< /highlight >}}

Use Case:

**.NET**

{{< highlight csharp >}}
Document document = new Document(path);
document.MailMerge.RetainFirstSectionStart = false;
document.MailMerge.Execute(dataSource);
{{< /highlight >}}


### Added a new value to public enumeration WarningSource

Related issue: WORDSNET-20334

A new value is added to the public enumeration **WarningSource**:

**.NET**

{{< highlight csharp >}}
...
/// <summary>
/// Module that reads/writes Markdown files.
/// </summary>
Markdown
{{< /highlight >}}


Use Case. Explains how to use WarningSource.Markdown enumeration value:

**.NET**

{{< highlight csharp >}}
Document doc = TestUtil.Open("input.docx");
WarningInfoCollection warnings = new WarningInfoCollection();
doc.WarningCallback = warnings;
doc.Save("output.md");
foreach (WarningInfo warningInfo in warnings)
{
    if (warningInfo.Source == WarningSource.Markdown)
        Console.WriteLine(warningInfo.Description);
}
{{< /highlight >}}


### Added public property MeasurementUnit in RevisionOptions

Related issue: WORDSNET-20487

Added a new public property RevisionOptions.MeasurementUnit:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Allows to specify the measurement unit for revision comments.
/// Default value for this property is <see cref="MeasurementUnits.Centimeters"/>
/// </summary>
public MeasurementUnits MeasurementUnit
{{< /highlight >}}


Also, a new public enumeration has been added:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies a the unit of measurement.
/// </summary>
public enum MeasurementUnits
{
    /// <summary>
        /// Inches.
        /// </summary>
        Inches = 0,
        /// <summary>
        /// Centimeters.
        /// </summary>
        Centimeters = 1,
        /// <summary>
        /// Millimeters.
        /// </summary>
        Millimeters = 2,
        /// <summary>
        /// Points.
        /// </summary>
        Points = 3,
        /// <summary>
        /// Picas (commonly used in traditional typewriter font spacing).
        /// </summary>
    Picas = 4
}
{{< /highlight >}}

Use Case:

**.NET**

{{< highlight csharp >}}
Document doc = new Document(myDir +"Input.docx");
doc.LayoutOptions.RevisionOptions.MeasurementUnit = MeasurementUnits.Inches;
doc.LayoutOptions.RevisionOptions.ShowInBalloons = ShowInBalloons.FormatAndDelete;
doc.LayoutOptions.ShowComments = true;
doc.Save(myDir +"Output.pdf");
{{< /highlight >}}

### Added public property RevisionBarsPosition in RevisionOptions

Related issue: WORDSNET-20415, WORDSNET-19724

Added a new public property RevisionOptions.RevisionBarsPosition:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets rendering position of revision bars.
/// Default value is <see cref="HorizontalAlignment.Outside"/>.
/// </summary>
/// <remarks>Values of <see cref="HorizontalAlignment.Center"/> and <see cref="HorizontalAlignment.Inside"/>
/// are not allowed and will cause <see cref="ArgumentOutOfRangeException"/>.</remarks>
{{< /highlight >}}

Use Case:

**.NET**

{{< highlight csharp >}}
Document doc = new Document(myDir +"Input.docx");
//Renders revision bars on the right side of a page.
doc.LayoutOptions.RevisionOptions.RevisionBarsPosition = HorizontalAlignment.Right;
doc.Save(myDir +"Output.pdf");
{{< /highlight >}}

### Added two new nodes to handle multi-section Structured Document Tags

Related issue: WORDSNET-15659

Added new nodes to handle multi-section structured document tags.

The following classes have been added:

**.NET**

{{< highlight csharp >}}
public class StructuredDocumentTagRangeStart : Node
{
    /// <summary>
    /// Gets the type of this node.
    /// </summary>
    public NodeType NodeType { get; }
    /// <summary>
    /// Gets the level at which this <b>SDT range start</b> occurs in the document tree.
    /// </summary>
    public MarkupLevel Level { get; }
    /// <summary>
    /// Gets type of this <b>Structured document tag</b>.
    /// </summary>
    public SdtType SdtType { get; }
    /// <summary>
    /// <para>Specifies a unique read-only persistent numerical Id for this <b>SDT</b>.</para>
    /// </summary>
    public int Id { get; }
    /// <summary>
    /// When set to true, this property will prohibit a user from deleting this <b>SDT</b>.
    /// </summary>
    public bool LockContentControl { get; }
    /// <summary>
    /// When set to true, this property will prohibit a user from editing the contents of this <b>SDT</b>.
    /// </summary>
    public bool LockContents { get; }
    /// <summary>
    /// Specifies whether the content of this <b>SDT</b> shall be interpreted to contain placeholder text
    /// (as opposed to regular text contents within the SDT).
    /// </summary>
    public bool IsShowingPlaceholderText { get; }
    /// <summary>
    /// Specifies a tag associated with the current SDT node.
    /// </summary>
    public string Tag { get; }
    /// <summary>
    /// Specifies the friendly name associated with this <b>SDT</b>.
    /// </summary>
    public string Title { get; }
    /// <summary>
    /// Specifies end of range if the StructuredDocumentTag is a ranged structured document tag.
    /// </summary>
    public StructuredDocumentTagRangeEnd RangeEnd { get; }
}
public class StructuredDocumentTagRangeEnd : Node
{
    /// <summary>
    /// Gets the type of this node.
    /// </summary>
    public NodeType NodeType { get; }
    /// <summary>
    /// Specifies a unique read-only persistent numerical Id for this structured document tag node.
    /// Corresponding range start node has the same Id.
    /// </summary>
    public int Id { get; }
}
{{< /highlight >}}

**NOTE:** These nodes can be a child of NodeType.Body node only.

**NOTE:** So far all properties of these nodes are read-only and nodes itself cannot be created by customers.

Use Case:

**.NET**

{{< highlight csharp >}}
Document doc = new Document("document containing multi-section SDT");
List<StructuredDocumentTagRangeStart> tags =
                doc.GetChildNodes(NodeType.StructuredDocumentTagRangeStart, true).ToList<StructuredDocumentTagRangeStart>();
foreach(StructuredDocumentTagRangeStart tag in tags)
    Console.WriteLine(tag.Title);
{{< /highlight >}}
