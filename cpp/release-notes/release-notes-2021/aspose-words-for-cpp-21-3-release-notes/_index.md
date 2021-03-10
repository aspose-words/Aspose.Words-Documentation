---
title: Aspose.Words for C++ 21.3 Release Notes
type: docs
weight: 55
url: /cpp/aspose-words-for-cpp-21-3-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 21.3](https://www.nuget.org/packages/Aspose.Words.Cpp/21.3.0)

{{% /alert %}} 

## Major Features

We have added the following features from Aspose.Words for .Net on this regular monthly release:

- ClearQuickStyleGallery method of StyleCollection class was introduced.
- Extended font API to set Fill properties of text.
- Added an ability to work with child nodes of StructuredDocumentTag range.
- Fixed issue with nested PDF bookmarks due to merged hidden paragraphs.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support advanced typography based on HarfBuzz shaper.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .Net System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSCPP-1007 | Page Splitter produces one extra page | Bug |
| WORDSCPP-1035 | Memory leak (Linux package) - Memory Release Interface not available |
| WORDSNET-7788 | Support Font.Fill property and provide public members in API | New Feature |
| WORDSNET-18173 | Implement full functionality of MERGESEQ field | New Feature |
| WORDSNET-12810 | Provide bool FontSettings.SetFontsFolder overload | New Feature |
| WORDSNET-20554 | Support dynamic cell merging in both directions simultaneously for LINQ   Reporting Engine | New Feature |
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

### Aspose::Words::DigitalSignatures namespace was introduced

Due to refactoring work on Aspose::Words namespaces, DigitalSignature, DigitalSignatureCollection, DigitalSignatureUtil, DigitalSignatureType, CertificateHolder, SignOptions classes were moved to new separate namespace Aspose::Words::DigitalSignatures
In case of compilation error - please add `using namespace Aspose::Words::DigitalSignatures` and fix corresponding include directives

### Aspose::Words::Vba namespace was introduced

Due to refactoring work on Aspose::Words namespaces, VbaModule, VbaModuleCollection, VbaProject, VbaReference, VbaReferenceCollection, VbaModuleType, VbaReferenceType classes were moved to new separate namespace Aspose::Words::Vba.
In case of compilation error - please add `using namespace Aspose::Words::Vba` and fix corresponding include directives.

### ListFormat class was moved to Aspose::Words::Lists namespace

Due to refactoring work on Aspose::Words namespaces, ListFormat class was moved to the Aspose::Words::Lists namespace.
In case of compilation error - please add `using namespace Aspose::Words::Lists` and fix corresponding include directives.

### Added a new public method ClearQuickStyleGallery()

Related issue: WORDSNET-21785

Added a new public method `ClearQuickStyleGallery()` to `StyleCollection` class:

{{< highlight cpp >}}
/// <summary>
/// Removes all styles from the Quick Style Gallery panel.
/// </summary>
void ClearQuickStyleGallery();
{{< /highlight >}}

Use Case:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(docPath);
doc->get_Styles()->ClearQuickStyleGallery();
doc->Save(dsrPath, saveOptions);
{{< /highlight >}}

### Added warning callback property for font sources

Related issue: WORDSNET-12810

The following public property have been added to the `FontSourceBase` class:

{{< highlight cpp >}}
/// <summary>
/// Called during processing of font source when an issue is detected that might result in formatting fidelity loss.
/// </summary>
System::SharedPtr<IWarningCallback> get_WarningCallback();
void set_WarningCallback(System::SharedPtr<IWarningCallback>);
{{< /highlight >}}

Use Case: 

{{< highlight csharp >}}
auto settings = MakeObject<FontSettings>();
settings->SetFontsFolder(u"bad folder?", false);
 
auto source = settings->GetFontsSources()->idx_get(0);
auto wc = MakeObject<CustomWarningCallback>();
source->set_WarningCallback(wc);
 
auto fontInfos = source->GetAvailableFonts();
 
std::cout << wc->idx_gex(0)->get_Description() << '\n';
{{< /highlight >}}

The output will be:

{{< highlight csharp >}}
Error loading font from the folder "bad folder?": Illegal characters in path.
{{< /highlight >}}

### Extended font API to set Fill properties of text

Related issue: WORDSNET-7788

The `Fill` property can be accessed not only from `ShapeBase`, but also from `Font` object now:

{{< highlight cpp >}}
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
class Fill
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
String myDir = u"example\\";
auto doc = MakeObject<Document>(myDir + u"TextTwoColorGradient.docx");
 
// Get Fill object for Font of the first Run.
auto fill = doc->get_FirstSection()->get_Body()->get_FirstParagraph()->get_Runs()->idx_get(0)->get_Font()->get_Fill();
 
// Check Fill properties of the Font.
std::cout << "The type of the fill is:" << System::ObjectExt::ToString(fill->get_FillType()).ToUtf8String() << '\n';
std::cout << "It is" << (fill->get_Visible() ? "" : " not") << " visible.\n";
std::cout << "The foreground color of the fill is: " << System::ObjectExt::ToString(fill->get_ForeColor()).ToUtf8String() << '\n';
std::cout << "The background color of the fill is: " << System::ObjectExt::ToString(fill->get_BackColor()).ToUtf8String() << '\n';
std::cout << "The fill is transparent at " << fill->get_Transparency()*100 << "%\n";
std::cout << "Note the opacity is opposite to transparency and has value: " << fill->get_Opacity() * 100 << "%\n";

// You can change, for example, the foreground color.
fill->set_ForeColor(Color::get_Yellow());
// Or even make it invisible.
fill->set_Visible(false);
// But let's make it visible again with foreground color Red.
fill->set_ForeColor(Color::get_Green());
// Note, it now has Solid type with 100% opacity.
std::cout << "\nThe fill is changed:\n";
std::cout << "The type of the fill is:" << System::ObjectExt::ToString(fill->get_FillType()).ToUtf8String() << '\n';
std::cout << "The foreground color of the fill is: " << System::ObjectExt::ToString(fill->get_ForeColor()).ToUtf8String() << '\n';
std::cout << "The fill opacity is " << fill->get_Opacity() * 100 << "%\n";
 
// Let's also change the transparency.
fill->set_Transparency(0.25);
std::cout << "\nThe fill is changed once again:\n";
std::cout << "The fill transparency is " << fill->get_Transparency() * 100 "%\n";
 
doc.Save(myDir + u"TextTwoColorGradient Out.docx");
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
System::SharedPtr<NodeCollection> get_ChildNodes();
{{< /highlight >}}

The following public method have been added to the StructuredDocumentTagRangeStart class:

{{< highlight csharp >}}
/// <summary>
/// Returns a live collection of child nodes that match the specified types.
/// </summary>
System::SharedPtr<NodeCollection> GetChildNodes(NodeType nodeType, bool isDeep)
{{< /highlight >}}

These changes allows to enumerate child nodes of ranged structured document tag. 
For customer convenience feature follows CompositeNode pattern and returns live collection.

Use Case: Explains how to work with child nodes of StructuredDocumentTagRangeStart

{{< highlight cpp >}}
auto doc = MakeObject<Document>(u"document-containing-ranged-structured-document-tag");
auto tag = System::DinamicCast<StructuredDocumentTagRangeStart>(doc->get_FirstSection()->get_Body()->get_FirstChild());
 
std::cout << tag->get_ChildNodes()->get_Count();
 
for (auto node : System::IterateOver(tag->get_ChildNodes()))
{
    std::cout << System::ObjectExt::ToString(node->get_NodeType()).ToUtf8String() << '\n';
}
 
fore(auto node : System::IterateOver(tag->GetChildNodes(NodeType::Run, true)))
{
    std::cout << node->GetText().ToUtf8String() << '\n';
}
{{< /highlight >}}