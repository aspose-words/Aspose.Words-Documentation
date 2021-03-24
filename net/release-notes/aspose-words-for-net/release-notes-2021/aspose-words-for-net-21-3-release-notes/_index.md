---
title: Aspose.Words for .NET 21.3 Release Notes
type: docs
weight: 55
url: /net/aspose-words-for-net-21-3-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 21.3](https://www.nuget.org/packages/Aspose.Words/21.3.0).

{{% /alert %}} 

## Major Features

There are 90 improvements and fixes in this regular monthly release. The most notable are:

- ClearQuickStyleGallery method of StyleCollection class was introduced.
- Extended font API to set Fill properties of text.
- Added an ability to work with child nodes of StructuredDocumentTag range.
- Fixed issue with nested PDF bookmarks due to merged hidden paragraphs.
- Supported Select and SelectMany extension methods for LINQ Reporting Engine.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-7788 | Support Font.Fill property and provide   public members in API | New Feature |
| WORDSNET-17851 | LINQ Reporting Engine - Support Select extension method | New Feature |
| WORDSNET-18173 | Implement full functionality of MERGESEQ field | New Feature |
| WORDSNET-12810 | Provide bool FontSettings.SetFontsFolder overload | New Feature |
| WORDSNET-20554 | Support dynamic cell merging in both directions simultaneously for LINQ   Reporting Engine | New Feature |
| WORDSNET-21425 | LINQ Reporting Engine - Support SelectMany extension method | New Feature |
| WORDSNET-21189 | Add feature to get the content of StructuredDocumentTagRangeStart | New Feature |
| WORDSNET-21785 | Remove styles from Style Gallery | New Feature |
| WORDSNET-9676 | Incorrect result of Node.NextSibling | Enhancement |
| WORDSNET-16692 | Improve path gradient rendering in .NET Standard | Bug |
| WORDSNET-12371 | Date field value is changed after re-saving ODT | Bug |
| WORDSNET-21788 | Memory consumption issue | Bug |
| WORDSNET-21539 | Very long backward conversion time HTML-to-DOCX | Bug |
| WORDSNET-21790 | Text from INCLUDETEXT field no longer appearing in mailmerge using Aspose   Words | Bug |
| WORDSNET-16714 | TestSaveToImageHorizaontalVerticalResolution is rendered improperly | Bug |
| WORDSNET-18067 | UpdateFields does not update REF field with FieldRef.IncludeNoteOrComment   attribute properly | Bug |
| WORDSNET-18083 | TOC field with designated bookmark picks up SEQ entries from outside of   it, until it is manually updated | Bug |
| WORDSNET-21196 | Even/Odd numbered pages use wrong header/footer definitions upon RTF to   PDF conversion | Bug |
| WORDSNET-10033 | Field.Type return incorrect value for SaveDate field when it is hidden | Bug |
| WORDSNET-21511 | Two borders displayed instead of One in converted documents | Bug |
| WORDSNET-21806 | DOCX to PDF: System.NullReferenceException thrown | Bug |
| WORDSNET-21681 | Part of text is lost during DOCX-to-Markdown conversion | Bug |
| WORDSNET-21777 | Shapes collection grows on each creation of LayoutCollector | Bug |
| WORDSNET-16695 | TestPathGradientFill metafile is rendered improperly | Bug |
| WORDSNET-21666 | Analyse Aspose.Words.Net NuGet Used By packages | Bug |
| WORDSNET-18100 | Chart's series do not render correctly in output PDF | Bug |
| WORDSNET-21667 | Turkish characters in the headings are corrupted | Bug |
| WORDSNET-21668 | Analyze LoadOptions inheritance tree | Bug |
| WORDSNET-19580 | Incorrect scaling of the horizontal date axis after conversion to PDF | Bug |
| WORDSNET-21820 | Incorrect Page Number Appears in Extracted Document | Bug |
| WORDSNET-21817 | Benchmark fails on .NetStandard projects | Bug |
| WORDSNET-21502 | Document.PageCount throws System.DivideByZeroException | Bug |
| WORDSNET-21861 | Text with "Berlin Sans FB Demi" is rendered incorrectly when   converting to PNG | Bug |
| WORDSNET-21674 | Investigate and fix XXE vulnerabilities in Aspose.Words.Net | Bug |
| WORDSNET-20097 | Conversion to PDF displays hidden content | Bug |
| WORDSNET-21678 | Text and Image are overlapped in output PDF | Bug |
| WORDSNET-19844 | A Table Repeats on all Pages of Rendered Document | Bug |
| WORDSNET-21682 | Base URL collision | Bug |
| WORDSNET-19845 | 4 Pages DOC turned into a 86 Pages PDF | Bug |
| WORDSNET-18900 | Rounded corners are converted differently in HTML | Bug |
| WORDSNET-21870 | Aspose.Words.FileCorruptedException occurs upon loading a DOC | Bug |
| WORDSNET-21687 | Bookmarks wrongly nested when hidden headings | Bug |
| WORDSNET-21874 | Unexpected results produced when comparing Documents with Images | Bug |
| WORDSNET-21690 | System.NullReferenceException is thrown when call UpdatePageLayout | Bug |
| WORDSNET-18817 | Low performance for Document.UpdatePageLayout() method | Bug |
| WORDSNET-19614 | Value of attribute "id" of navPoint element is invalid for an   XML name | Bug |
| WORDSNET-21414 | Some Lines move to Next Pages in PDF | Bug |
| WORDSNET-21559 | Table moves and touches the left page edge in rendered document | Bug |
| WORDSNET-21869 | System.IO.FileLoadException upon PDF to ODT conversion | Bug |
| WORDSNET-21403 | Wrong header & footer definitions used for odd and even numbered   pages in PDF?s | Bug |
| WORDSNET-19911 | Even numbered pages use header/footer definition for odd numbered page | Bug |
| WORDSNET-19138 | Header contents are lost in output PDF when FieldToc.UpdatePageNumbers is   called | Bug |
| WORDSNET-21710 | ArgumentException when save document to png | Bug |
| WORDSNET-21708 | InvalidCastException&nbsp; is thrown   when call UpdatePageLayout | Bug |
| WORDSNET-21408 | Missing textboxes during conversion from HTML to DOCX | Bug |
| WORDSNET-21646 | LINQ Reporting engine does not Sum the table column data correctly | Bug |
| WORDSNET-21712 | DOCX is corrupted after calling Document.UpdateFields | Bug |
| WORDSNET-21591 | Random content copied to the output after converting the DOCX file with   Content Controls | Bug |
| WORDSNET-21889 | FileCorruptedException occurs for a DOC \| EndOfStreamException: Unable to   read beyond the end of the stream | Bug |
| WORDSNET-21498 | Remove and modify rels - Shape.HRef does not work | Bug |
| WORDSNET-21723 | Reconfigure recipients list on Jenkins | Bug |
| WORDSNET-21729 | RTF content is not converted to PDF correctly | Bug |
| WORDSNET-21734 | PDF output does not pass accessibility check for alt text for header   image | Bug |
| WORDSNET-20944 | Frozen application on Document.UpdatePageLayout() | Bug |
| WORDSNET-21747 | The text labels for the bubble chart should not be drawn for zero value | Bug |
| WORDSNET-21909 | Aspose.Words.FileCorruptedException occurs upon loading a DOC | Bug |
| WORDSNET-21749 | The document isn't opened by API | Bug |
| WORDSNET-21298 | ArgumentOutOfRangeException while extract pages | Bug |
| WORDSNET-21483 | Image scaling is incorrect when custom resolution is specified. | Bug |
| WORDSNET-21618 | Aspose.Words.FileCorruptedException error when converting HTML to DOC | Bug |
| WORDSNET-21619 | Japanese font is incorrectly rendered in output PDF | Bug |
| WORDSNET-21611 | Document.Compare throws System.NullReferenceException | Bug |
| WORDSNET-21627 | Aspose.Words generates PDF document with incorrect compliance level | Bug |
| WORDSNET-21765 | Test fails for .Net Framework 2.0 | Bug |
| WORDSNET-21641 | System.ArgumentOutOfRangeException occurs upon Word to PDF conversion | Bug |
| WORDSNET-21194 | Consider ignoring certain hyperlinks with special URI schemas when   loading CHM documents | Bug |
| WORDSNET-18968 | Inserting HTML lists causes empty list entry | Bug |
| WORDSNET-21769 | File Corrupted Exception occurs upon loading a Word Document | Bug |
| WORDSNET-21768 | Document.Compare throws ArgumentOutOfRangeException | Bug |
| WORDSNET-21770 | StoreItemChecksum removed after re-saving document | Bug |
| WORDSNET-21771 | Document.ExtractPages adds extra Table Borders | Bug |
| WORDSNET-21775 | Diagonal border appears in table after RTF to PDF conversion | Bug |
| WORDSNET-16681 | UnifiedTestSteveQuarles TIFF is has incorrect height. | Bug |
| WORDSNET-21367 | Internal Aspose nuget server hangs sometimes | Bug |
| WORDSNET-21660 | Double border around image appears during HTML to Word conversion | Bug |
| WORDSNET-21326 | AW hangs with tha test document on Linux when Tahoma font is absent | Bug |
| WORDSNET-21743 | DOCX to PDF conversion issue with Arabic text rendering | Bug |
| WORDSNET-21507 | Specific Mhtml file can't ne opened - Aspose.Words.FileCorruptedException | Bug |
| WORDSNET-21714 | Arabic Text shifted up & few Arabic Words get cut post transformation | Bug |
| WORDSNET-21827 | Adding HtmlFragment does not fit to A4 page | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.3. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Aspose.Words.DigitalSignatures namespace was introduced

Due to refactoring work on Aspose.Words namespaces, DigitalSignature, DigitalSignatureCollection, DigitalSignatureUtil, DigitalSignatureType, CertificateHolder, SignOptions classes were moved to new separate namespace Aspose.Words.DigitalSignatures
In case of compilation error - please add using Aspose.Words.DigitalSignatures.

### Aspose.Words.Vba namespace was introduced

Due to refactoring work on Aspose.Words namespaces, VbaModule, VbaModuleCollection, VbaProject, VbaReference, VbaReferenceCollection, VbaModuleType, VbaReferenceType classes were moved to new separate namespace Aspose.Words.Vba.
In case of compilation error - please add using Aspose.Words.Vba.

### ListFormat class was moved to Aspose.Words.Lists namespace

Due to refactoring work on Aspose.Words namespaces, ListFormat class was moved to the Aspose.Words.Lists namespace.
In case of compilation error - please add using Aspose.Words.Lists.

### Added a new public method ClearQuickStyleGallery()

Related issue: WORDSNET-21785

Added a new public method ClearQuickStyleGallery() to StyleCollection class:

{{< highlight csharp >}}
/// <summary>
/// Removes all styles from the Quick Style Gallery panel.
/// </summary>
public void ClearQuickStyleGallery()
{{< /highlight >}}

Use Case:

{{< highlight csharp >}}
Document doc = new Document(docPath);
doc.Styles.ClearQuickStyleGallery();
doc.Save(dsrPath, saveOptions);
{{< /highlight >}}

### Added warning callback property for font sources

Related issue: WORDSNET-12810

The following public property have been added to the FontSourceBase class:

{{< highlight csharp >}}
/// <summary>
/// Called during processing of font source when an issue is detected that might result in formatting fidelity loss.
/// </summary>
public IWarningCallback WarningCallback
{
  get; set;
}
{{< /highlight >}}

Use Case: 

{{< highlight csharp >}}
FontSettings settings = new FontSettings();
settings.SetFontsFolder("bad folder?", false);

FontSourceBase source = settings.GetFontsSources()[0];
IWarningCallback wc = new CustomWarningCallback();
source.WarningCallback = wc;

IList<PhysicalFontInfo> fontInfos = source.GetAvailableFonts();

Console.WriteLine((wc as IList<WarningInfo>)[0].Description);
{{< /highlight >}}

The output will be:

{{< highlight csharp >}}
Error loading font from the folder "bad folder?": Illegal characters in path.
{{< /highlight >}}

### Extended font API to set Fill properties of text

Related issue: WORDSNET-7788

The Fill property can be accessed not only from ShapeBase, but also from Font object now:

{{< highlight csharp >}}
/// <summary>
/// Represents fill formatting for an object.
/// </summary>
/// <remarks>
/// <p>Use the <see cref="ShapeBase.Fill"/> or <see cref="Font.Fill"/> property
/// to access fill properties of an object.
/// You do not create instances of the <see cref="Fill"/> class directly.</p>
///
/// <p>Although the <see cref="Fill"/> class provides properties to specify solid color fill only,
/// all of the more complex fill types, including as gradient, pattern and texture are fully preserved
/// during document open-save cycles.</p>
/// </remarks>
public class Fill
{{< /highlight >}}

Also, the following new public properties were added into the Fill class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a Color object that represents the foreground color for the fill.
/// </summary>
public Color ForeColor

/// <summary>
/// Gets or sets a Color object that represents the background color for the fill.
/// </summary>
public Color BackColor

/// <summary>
/// Gets or sets value that is <c>true</c> if the formatting applied to this instance, is visible.
/// </summary>
public bool Visible

/// <summary>
/// Gets or sets the degree of transparency of the specified fill as a value between 0.0 (opaque) and 1.0 (clear).
/// </summary>
/// <remarks>This property is the opposite of property <see cref="Opacity"/>.</remarks>
public double Transparency

/// <summary>
/// Gets or sets whether the fill rotates with the specified object.
/// </summary>
public bool RotateWithObject

/// <summary>
/// Gets a fill type.
/// </summary>
public FillType FillType
{{< /highlight >}}

In addition, the following new public enumeration is added into Aspose.Words.Drawing namespace:

{{< highlight csharp >}}
/// <summary>
/// Specifies fill type for a fillable object.
/// </summary>
public enum FillType
{
    /// <summary>
    /// Solid fill.
    /// </summary>
    Solid = 1,

    /// <summary>
    /// Patterned fill.
    /// </summary>
    Patterned = 2,
     
    /// <summary>
    /// Gradient fill.
    /// </summary>
    Gradient = 3,
     
    /// <summary>
    /// Textured fill.
    /// </summary>
    Textured = 4,
     
    /// <summary>
    /// Fill is the same as the background.
    /// </summary>
    Background = 5,
     
    /// <summary>
    /// Picture fill.
    /// </summary>
    Picture = 6
}
{{< /highlight >}}

Use Case: Explains how to use Fill object for the Font.

{{< highlight csharp >}}
// Open some document with text effects.
const string myDir = @"example\";
Document doc = new Document(myDir + "TextTwoColorGradient.docx");

// Get Fill object for Font of the first Run.
Fill fill = doc.FirstSection.Body.FirstParagraph.Runs[0].Font.Fill;

// Check Fill properties of the Font.
Console.WriteLine("The type of the fill is: {0}", fill.FillType);
Console.WriteLine("It is{0} visible.", fill.Visible ? "" : " not");
Console.WriteLine("The foreground color of the fill is: {0}", fill.ForeColor);
Console.WriteLine("The background color of the fill is: {0}", fill.BackColor);
Console.WriteLine("The fill is transparent at {0}%", fill.Transparency * 100);
Console.WriteLine("Note the opacity is opposite to transparency and has value: {0}%", fill.Opacity * 100);

// You can change, for example, the foreground color.
fill.ForeColor = Color.Yellow;
// Or even make it invisible.
fill.Visible = false;
// But let's make it visible again with foreground color Red.
fill.ForeColor = Color.Green;
// Note, it now has Solid type with 100% opacity.
Console.WriteLine("\nThe fill is changed:");
Console.WriteLine("The type of the fill is: {0}", fill.FillType);
Console.WriteLine("The foreground color of the fill is: {0}", fill.ForeColor);
Console.WriteLine("The fill opacity is {0}%", fill.Opacity * 100);

// Let's also change the transparency.
fill.Transparency = 0.25;
Console.WriteLine("\nThe fill is changed once again:");
Console.WriteLine("The fill transparency is {0}%", fill.Transparency * 100);

doc.Save(myDir + "TextTwoColorGradient Out.docx");
/*
This code example produces the following results:

The type of the fill is: Gradient
It is visible.
The foreground color of the fill is: Color [A=255, R=128, G=0, B=0]
The background color of the fill is: Color [A=255, R=0, G=0, B=0]
The fill is transparent at 16%
Note the opacity is opposite to transparency and has value: 84%

The fill is changed:
The type of the fill is: Solid
The foreground color of the fill is: Color [A=255, R=0, G=128, B=0]
The fill opacity is 100%

The fill is changed once again:
The fill transparency is 25%
*/
{{< /highlight >}}

### Added an ability to work with child nodes of StructuredDocumentTagRangeStart

Related issue: WORDSNET-21189

The following public property have been added to the StructuredDocumentTagRangeStart class:

{{< highlight csharp >}}
/// <summary>
/// Gets all nodes between this range start node and the range end node.
/// </summary>
public NodeCollection ChildNodes
{{< /highlight >}}

The following public method have been added to the StructuredDocumentTagRangeStart class:

{{< highlight csharp >}}
/// <summary>
/// Returns a live collection of child nodes that match the specified types.
/// </summary>
public NodeCollection GetChildNodes(NodeType nodeType, bool isDeep)
{{< /highlight >}}

These changes allows to enumerate child nodes of ranged structured document tag. 
For customer convenience feature follows CompositeNode pattern and returns live collection.

Use Case: Explains how to work with child nodes of StructuredDocumentTagRangeStart

{{< highlight csharp >}}
Document doc = new Document("document-containing-ranged-structured-document-tag");
StructuredDocumentTagRangeStart tag = (StructuredDocumentTagRangeStart)doc.FirstSection.Body.FirstChild;

Console.WriteLine(tag.ChildNodes.Count);

foreach(Node node in tag.ChildNodes)
    Console.WriteLine(node.NodeType);

foreach(Node node in tag.GetChildNodes(NodeType.Run, true))
    Console.WriteLine(node.GetText());
{{< /highlight >}}

### Changed loading of integer values from JSON, XML, and CSV for LINQ Reporting Engine

Related issue: WORDSNET-21646

In versions of Aspose.Words prior 21.3, LINQ Reporting Engine treated integer values as 32-bit or 64-bit depending on actual values while loading data from JSON, XML, or CSV. 
Starting from Aspose.Words 21.3, integer values are always treated as 64-bit in the mentioned scenario. This can be a breaking change in some rare cases.

The following sections of the engine's documentation were updated accordingly (see ["LINQ Reporting Engine API"](/words/net/linq-reporting-engine-api/)):

"Accessing XML Data"
"Accessing JSON Data"
"Accessing CSV Data"

### Supported dynamic cell merging in both directions simultaneously for LINQ Reporting Engine

Related issue: WORDSNET-20554

The ["Merging Table Cells Dynamically"](/words/net/merging-table-cells-dynamically/) section of the engine's documentation was updated to describe the change.

### Supported Select and SelectMany extension methods for LINQ Reporting Engine

Related issue: WORDSNET-21425 and WORDSNET-17851

The ["Appendix A. Enumeration Extension Methods"](/words/net/appendix-a-enumeration-extension-methods/) section of the engine's documentation was updated to describe the change.
