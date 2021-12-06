---
title: Aspose.Words for C++ 21.5 Release Notes
description: "Aspose.Words for C++ 21.5 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 45
url: /cpp/aspose-words-for-cpp-21-5-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 21.5](https://www.nuget.org/packages/Aspose.Words.Cpp/21.5.0)

{{% /alert %}} 

## Major Features

We have added the following features from Aspose.Words for .Net on this regular monthly release:

- EQ field export to all HTML based formats was implemented.
- Added new methods to set checked and unchecked symbol for StructuredDocumentTag.
- Implemented an ability to use PDF annotations to display user comments.
- Added MailMerge.RestartListsAtEachSection property to control list numbering restart.

We have added the following features for Aspose.Words for C++:

- Added advanced typography support with HarfBuzz

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .Net System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
| WORDSCPP-793 | Add support advanced typography with HarfBuzz for C++ | New Feature |
| WORDSCPP-1076 | Move public headers according to namespace names | New Feature |
| WORDSNET-15678 | Export vector images to SVG when saving a   document to HTML | New Feature |
| WORDSNET-21645 | Add comments of Word document as annotation in PDF | New Feature |
| WORDSNET-21949 | Support StylisticSet attribute in the document model | New Feature |
| WORDSNET-21818 | Add feature to set content control (checkbox) checked/unchecked symbol | New Feature |
| WORDSNET-22032 | Heading List Number restarts after Section Break when mail merge is   performed | New Feature |
| WORDSNET-17792 | EQ field is not exported in output HTML | New Feature |
| WORDSNET-9121 | Write generator name (Aspose.Words x.x.x.x) in HtmlFixed format | Enhancement |
| WORDSNET-6284 | Extend Structured Document Tag API | Enhancement |
| WORDSNET-10021 | Give a valid GUID to custom xml parts | Enhancement |
| WORDSNET-11931 | Add feature to detect either shape node is ActiveX or not | Enhancement |
| WORDSNET-21596 | Support of decorative shapes for document accessibility | Enhancement |
| WORDSNET-21908 | Implement ClearQuickStyleGallery() method for DOC/RTF format | Enhancement |
| WORDSNET-9400 | Add feature to get styles in a document which are not currently used | Enhancement |
| WORDSNET-21787 | DOCX to PDF conversion issue with text wrapping in table cell | Enhancement |
| WORDSNET-7198 | Image in ODT is getting truncated at the bottom of Page in PDF | Bug |
| WORDSNET-10203 | Style is changed after conversion from WordML to Doc | Bug |
| WORDSNET-13076 | Mongolian text is rendered as boxes in output PDF | Bug |
| WORDSNET-22027 | System.InvalidOperationException occurs upon updating fields | Bug |
| WORDSNET-22028 | Performance tests fail on some Intel i7 and i9 CPU | Bug |
| WORDSNET-22029 | TestBenchmark.PeakMemoryMeter fails for x86 builds | Bug |
| WORDSNET-20197 | The ShapeType from the DmlShape class does not identify all shapes | Bug |
| WORDSNET-22031 | Content Control (dropdown) value is changed after re-saving DOCX | Bug |
| WORDSNET-21515 | Arabic Text - Applying TextShaperFactory produces garbage square boxes in   PDF | Bug |
| WORDSNET-21391 | Japanese text is rotated after DOCX to PDF conversion | Bug |
| WORDSNET-21517 | A Textbox goes behind the background image during processing an ODT | Bug |
| WORDSNET-12609 | DOCX to PDF conversion issue with Arabic Text | Bug |
| WORDSNET-12920 | Saving to DOCX encodes with UTF-8+BOM instead of charset UTF-8 | Bug |
| WORDSNET-20774 | Performance degrades as we increase number of threads | Bug |
| WORDSNET-18929 | TxtSaveOptions converts single quote incorrectly | Bug |
| WORDSNET-20217 | Chart axis tickmarks rendered incorrectly in output PDF | Bug |
| WORDSNET-16109 | Khmer font rendering issue in PDF | Bug |
| WORDSNET-16333 | The EQ field is not exported in output HTML | Bug |
| WORDSNET-17012 | Equations (EQ fields) not preserved in generated HTML/PDF | Bug |
| WORDSNET-22179 | Range.Replace hangs | Bug |
| WORDSNET-22165 | GetShapeRenderer throws exception when converting SmartArt objects in   parallel | Bug |
| WORDSNET-22135 | Line break is removed from Variable value | Bug |
| WORDSNET-17451 | Table borders got missed when comparing documents | Bug |
| WORDSNET-17469 | Repeated values in Y-Axis chart appear when rendered | Bug |
| WORDSNET-11335 | DOC to PDF conversion issue with Gujarati text rendering | Bug |
| WORDSNET-21803 | Aspose.Words.FileCorruptedException is thrown while importing HTML | Bug |
| WORDSNET-21673 | DOC to HTML conversion issue with Formula field | Bug |
| WORDSNET-21675 | DOCX to HTML conversion issue with Formula field | Bug |
| WORDSNET-2492 | Restricted styles are accessible after open/save the document | Bug |
| WORDSNET-18819 | Issue when converting doc with image and shapes to HTML | Bug |
| WORDSNET-19191 | X-Axis chart values missing in PDF | Bug |
| WORDSNET-22047 | Words with noProof in some spans are not hyphenated correctly | Bug |
| WORDSNET-19442 | X-Axis value and a Line in Chart missing when rendering to JPG | Bug |
| WORDSNET-22063 | Performance issue upon save | Bug |
| WORDSNET-21762 | GetStartPageIndex and GetEndPageIndex returns incorrect page number | Bug |
| WORDSNET-22035 | Document.Compare does not mimic MS Word behavior | Bug |
| WORDSNET-22066 | HiddenAttributeCache takes too much memory | Bug |
| WORDSNET-4756 | Cannot use Save_4 overload in vbscript | Bug |
| WORDSNET-21857 | INCLUDEPICTURE does not render the image in output DOC and PDF | Bug |
| WORDSNET-22075 | Embedded PPT is converted to image after update | Bug |
| WORDSNET-21721 | RevisionOptions.ShowRevisionMarks causes InvalidCastException | Bug |
| WORDSNET-22068 | DOCX to PDF numbers in table pushed to the side | Bug |
| WORDSNET-22081 | Horizontal Solid Lines become Dotted in PDF | Bug |
| WORDSNET-21586 | Arabic Text - Applying TextShaperFactory produces garbage square boxes in   PDF | Bug |
| WORDSNET-21727 | Bullet lists are not processed properly when saving document in the   Markdown format | Bug |
| WORDSNET-22084 | Investigate failed customer test | Bug |
| WORDSNET-21461 | Spacing between Laotian Words and Lines increased in PDF - Font:   DokChampa & MingLiU | Bug |
| WORDSNET-21724 | Footnote number is inserted at the end of Paragraph using   Range.Repalce | Bug |
| WORDSNET-21709 | ArgumentNullException when call document.ExtractPages | Bug |
| WORDSNET-22046 | Lines with words traversing field boundaries are not hyphenated correctly | Bug |
| WORDSNET-21612 | Hyperlinks are not Clickable when passed as Hidden into generated Word   Document | Bug |
| WORDSNET-22073 | Long conversion time to HTML for certain DOC file | Bug |
| WORDSNET-22087 | Range.Fields throws System.InvalidOperationException | Bug |
| WORDSNET-21629 | DOCX to HTML conversion issue with spaces between text (tabs) | Bug |
| WORDSNET-21757 | Importing content from XML files to the DOCX: New style introduced in the   output&nbsp; | Bug |
| WORDSNET-21633 | DOCX-HTML-DOCX conversion issue with image position | Bug |
| WORDSNET-21923 | Three rendering tests fail in parallel mode | Bug |
| WORDSNET-22091 | Resaving DOCX file corrupts table in output file | Bug |
| WORDSNET-22092 | FileCorruptedException is thrown while importing DOC file | Bug |
| WORDSNET-22039 | Legend of chart is displayed in output PDF when Legend.Position is set to   None | Bug |
| WORDSNET-21934 | Color issue while converting docx to pdf in aspose.words java | Bug |
| WORDSNET-22097 | Table.ConvertToHorizontallyMergedCells throws IndexOutOfRangeException   for table created with DocumentBuilder | Bug |
| WORDSNET-22098 | Nested EQ fields are not properly rendered | Bug |
| WORDSNET-21942 | Document.UpdateFields throws System.ArgumentOutOfRangeException | Bug |
| WORDSNET-14585 | Problems with MS-Word Compatibility | Bug |
| WORDSNET-21728 | Vector Arrows in Latex Math Equations got Corrupted (Question Marks)   during Open/Save a DOCX | Bug |
| WORDSNET-21945 | DOCX to PDF Basque language word converted to English | Bug |
| WORDSNET-21794 | System.Xml.XmlException is thrown by InsertHtml | Bug |
| WORDSNET-22105 | Output file is corrupted after appending content | Bug |
| WORDSNET-22038 | Data Label of chart does not display in output PDF | Bug |
| WORDSNET-21984 | Saving invalid word document file cause hanging program | Bug |
| WORDSNET-22115 | Aspose.Words.FileCorruptedException is thrown while loading DOCX | Bug |
| WORDSNET-22114 | Field value is changed in output PDF | Bug |
| WORDSNET-22112 | GetStartPageIndex throws System.ArgumentNullException | Bug |
| WORDSNET-21992 | X axis of Chart is lost after DOCX to PDF conversion | Bug |
| WORDSNET-18461 | DOCX to PDF conversion issue with hindi text | Bug |
| WORDSNET-21996 | Analyze thread locks used in code | Bug |
| WORDSNET-22119 | Certain RTF to HTML hangs process | Bug |
| WORDSNET-22110 | RemoveContainingFields breaks SEQ functionality | Bug |
| WORDSNET-22000 | DOCX to HTML: Adobe fonts displayed differently than with MS Word | Bug |
| WORDSNET-22130 | Document.AcceptAllRevisions method does not work as expected | Bug |
| WORDSNET-21671 | Backward HTML converter does not process external styles like inline | Bug |
| WORDSNET-21745 | DOCX to PDF conversion issue with ExportDocumentStructure (incorrect   table tags) | Bug |
| WORDSNET-22017 | Page number using LayoutCollector.GetStartPageIndex raising exception | Bug |
| WORDSNET-21521 | PDF/A-1a fails accessibility check with textbox | Bug |
| WORDSNET-4585 | SYMBOL field is not properly rendered. | Bug |
| WORDSNET-14734 | Incorrect Bold Run attribute after GetExpandedRunPr() | Bug |
| WORDSNET-14372 | An extra list item appears in a document imported from HTML | Bug |
| WORDSNET-20911 | Word2013 and Word2019 shows document differently | Bug |
| WORDSNET-3389 | Range comment around a shape not preserved during open/save | Bug |
| WORDSNET-19407 | List item's indent is incorrect after roundtrip DOCX-HTML-DOCX | Bug |
| WORDSNET-6412 | NodeCopier does not handle section break correctly | Bug |
| WORDSNET-8987 | Incorrect position of a shape with pushed anchor | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Moved public C++ header files according to namespace names

Related issue: WORDSCPP-1076

Starting with this release, the public C++ header files are located according to the namespace names. i.e. `Aspose::Words::Document` is now located in `Aspose.Words.Cpp/Document.h` instead of `Aspose.Words.Cpp/Model/Document/Document.h`. Headers on the old paths are still available and redirect to the new paths.

### Added advanced typography support with HarfBuzz

Related issue: WORDSCPP-793

We have enabled advanced typography support. We have prepared Aspose.Words.Shaping.HarfBuzz package. This package uses HarfBuzz text shaping engine to perform text shaping.

Usage example:

{{< highlight cpp >}}
    // Open a document
    auto doc = MakeObject<Document>(u"OpenType.Document.docx");

    // When text shaper factory is set, layout starts to use OpenType features.
    // An Instance property returns static BasicTextShaperCache object wrapping HarfBuzzTextShaperFactory
    doc->get_LayoutOptions()->set_TextShaperFactory(HarfBuzzTextShaperFactory::get_Instance());

    // Render the document to PDF format
    doc->Save(u"OpenType.Document.pdf");
{{< /highlight >}}

### Added a new value to public enumeration StyleIdentifier

Related issue: WORDSNET-21757

A new value is added to the public enumeration StyleIdentifier:
{{< highlight csharp >}}
/// <summary>
/// The Smart Link style.
/// </summary>
SmartLink = 371
{{< /highlight >}}

Use Case: Explains how to use StyleIdentifier.SmartLink enumeration value.

{{< highlight cpp >}}
auto builder = MakeObject<DocumentBuilder>();
auto normalStyle = builder->get_Document()->get_Styles()->idx_get(StyleIdentifier::Normal);
auto smartLinkStyle = builder->get_Document()->get_Styles()->idx_get(StyleIdentifier::SmartLink);
smartLinkStyle->get_Font()->set_Size(normalStyle->get_Font()->get_Size());
{{< /highlight >}}

### Added MailMerge.RestartListsAtEachSection property to control list numbering restart

Related issue: WORDSNET-22032

We have implemented the MailMerge.RestartListsAtEachSection property to control whether or not list numbering is restarted at each section when mail merge is performed. 
It is true by default to mimic Word behaviour, but can be set to false if the customer wants continuous numbering.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value indicating whether lists are restarted at each section after executing of a mail merge.
/// </summary>
/// <remarks>
/// The default value is <b>true</b>.
/// </remarks>
public bool RestartListsAtEachSection { get; set; }
{{< /highlight >}}

Use Case:

{{< highlight cpp >}}
auto document = MakeObject<Document>();
document->get_Lists()->Add(ListTemplate::NumberDefault);
document->get_Lists()->Add(ListTemplate::OutlineNumbers);
document->get_Lists()->Add(ListTemplate::BulletDefault);
 
document->get_MailMerge()->set_RestartListsAtEachSection(false);
{{< /highlight >}}

### Added new members to ShapeType enum

Related issue: WORDSNET-20197

The following new members have been added to the ShapeType enum. The members are applicable only for DML shapes.

{{< highlight csharp >}}
public enum ShapeType
{
    ...
    /// <summary>
    /// Heptagon.
    /// </summary>
    Heptagon = 210,
    /// <summary>
    /// Cloud.
    /// </summary>
    Cloud = 211,
    /// <summary>
    /// Six-pointed star.
    /// </summary>
    Seal6 = 212,
    /// <summary>
    /// Seven-pointed star.
    /// </summary>
    Seal7 = 213,
    /// <summary>
    /// Ten-pointed star.
    /// </summary>
    Seal10 = 214,
    /// <summary>
    /// Twelve-pointed star.
    /// </summary>
    Seal12 = 215,
    /// <summary>
    /// Swoosh arrow.
    /// </summary>
    SwooshArrow = 216,
    /// <summary>
    /// Teardrop.
    /// </summary>
    Teardrop = 217,
    /// <summary>
    /// Square tabs.
    /// </summary>
    SquareTabs = 218,
    /// <summary>
    /// Plaque tabs.
    /// </summary>
    PlaqueTabs = 219,
    /// <summary>
    /// Pie.
    /// </summary>
    Pie = 220,
    /// <summary>
    /// Wedge pie.
    /// </summary>
    WedgePie = 221,
    /// <summary>
    /// Inverse line.
    /// </summary>
    InverseLine = 222,
    /// <summary>
    /// Math plus.
    /// </summary>
    MathPlus = 223,
    /// <summary>
    /// Math minus.
    /// </summary>
    MathMinus = 224,
    /// <summary>
    /// Math multiply.
    /// </summary>
    MathMultiply = 225,
    /// <summary>
    /// Math divide.
    /// </summary>
    MathDivide = 226,
    /// <summary>
    /// Math equal.
    /// </summary>
    MathEqual = 227,
    /// <summary>
    /// Math not equal.
    /// </summary>
    MathNotEqual = 228,
    /// <summary>
    /// Non-isosceles trapezoid.
    /// </summary>
    NonIsoscelesTrapezoid = 229,
    /// <summary>
    /// Left-right circular arrow.
    /// </summary>
    LeftRightCircularArrow = 230,
    /// <summary>
    /// Left-right ribbon.
    /// </summary>
    LeftRightRibbon = 231,
    /// <summary>
    /// Left circular arrow.
    /// </summary>
    LeftCircularArrow = 232,
    /// <summary>
    /// Frame.
    /// </summary>
    Frame = 233,
    /// <summary>
    /// Half frame.
    /// </summary>
    HalfFrame = 234,
    /// <summary>
    /// Funnel.
    /// </summary>
    Funnel = 235,
    /// <summary>
    /// Six-tooth gear.
    /// </summary>
    Gear6 = 236,
    /// <summary>
    /// Nine-tooth gear.
    /// </summary>
    Gear9 = 237,
    /// <summary>
    /// Decagon.
    /// </summary>
    Decagon = 238,
    /// <summary>
    /// Dodecagon.
    /// </summary>
    Dodecagon = 239,
    /// <summary>
    /// Diagonal stripe.
    /// </summary>
    DiagonalStripe = 240,
    /// <summary>
    /// Corner.
    /// </summary>
    Corner = 241,
    /// <summary>
    /// Corner tabs.
    /// </summary>
    CornerTabs = 242,
    /// <summary>
    /// Chord.
    /// </summary>
    Chord = 243,
    /// <summary>
    /// Chart plus.
    /// </summary>
    ChartPlus = 244,
    /// <summary>
    /// Chart star.
    /// </summary>
    ChartStar = 245,
    /// <summary>
    /// Chart X.
    /// </summary>
    ChartX = 246
}
{{< /highlight >}}

### Added new public methods StructuredDocumentTag.SetCheckedSymbol() and StructuredDocumentTag.SetUncheckedSymbol()

Related issue: WORDSNET-21818

New public methods SetCheckedSymbol() and SetUncheckedSymbol() have been added to the StructuredDocumentTag class:

{{< highlight csharp >}}
/// <summary>
/// Sets the symbol used to represent the checked state of a check box content control.
/// </summary>
/// <param name="characterCode">The character code for the specified symbol.</param>
/// <param name="fontName">The name of the font that contains the symbol.</param>
/// <remarks>
/// <para>Accessing this method will only work for <see cref="Markup.SdtType.Checkbox"/> SDT types.</para>
/// <para>For all other SDT types exception will occur.</para>
/// </remarks>
public void SetCheckedSymbol(int characterCode, string fontName);
/// <summary>
/// Sets the symbol used to represent the unchecked state of a check box content control.
/// </summary>
/// <param name="characterCode">The character code for the specified symbol.</param>
/// <param name="fontName">The name of the font that contains the symbol.</param>
/// <remarks>
/// <para>Accessing this method will only work for <see cref="Markup.SdtType.Checkbox"/> SDT types.</para>
/// <para>For all other SDT types exception will occur.</para>
/// </remarks>
public void SetUncheckedSymbol(int characterCode, string fontName);
{{< /highlight >}}

Use Case: Explains how to set the checked and unchecked symbols for the SDT of the 'SdtType.Checkbox' type.

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto tag = MakeObject<StructuredDocumentTag>(doc, SdtType::Checkbox, MarkupLevel::Block);
doc->get_Sections()->idx_get(0)->get_Body()->AppendChild(tag);
tag->SetCheckedSymbol(0x00A9, u"Times New Roman");
tag->SetUncheckedSymbol(0x00AE, u"Times New Roman");
doc->Save(u"output.docx");
{{< /highlight >}}

### Added new public property Document.LayoutOptions.CommentDisplayMode

Related issue: WORDSNET-21645

Added the ability to use PDF annotations to display user comments. 
The comment display mode is now set via the Document.LayoutOptions.CommentDisplayMode property:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets the way comments are rendered.
/// Default value is <see cref="CommentDisplayMode.ShowInBalloons"/>.
/// </summary>
/// <remarks>
/// Note that revisions are not rendered in balloons for <see cref="CommentDisplayMode .ShowInAnnotations"/>.
/// </remarks>
public CommentDisplayMode CommentDisplayMode
{{< /highlight >}}

Document.LayoutOptions.ShowComments property was marked as obsolete:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets indication of whether comments are rendered.
/// Default is True.
/// This property is obsolete. Use <see cref="LayoutOptions.CommentDisplayMode"/> property instead.
/// </summary>
[Obsolete("This property is obsolete. Use CommentDisplayMode property instead.")]
public bool ShowComments
 
// False == CommentDisplayMode.Hide
// True == CommentDisplayMode.ShowInBalloons
{{< /highlight >}}

The following comment display modes are now available:

{{< highlight csharp >}}
/// <summary>
/// Specifies the rendering mode for document comments.
/// </summary>
public enum CommentDisplayMode
{
    /// <summary>
    /// No document comments are rendered.
    /// </summary>
    Hide,
    /// <summary>
    /// Renders document comments in balloons in the margin. This is the default value.
    /// </summary>
    ShowInBalloons,
    /// <summary>
    /// Renders document comments in annotations. This is only available for Pdf format.
    /// </summary>
    ShowInAnnotations
}
{{< /highlight >}}

CommentDisplayMode.ShowInAnnotations is only available in Pdf1.7 and Pdf1.5 for user comments (revisions are not supported). 
In other formats ShowInAnnotations will work similar to Hide.

Note: It is required to rebuild the document page layout (via Document.UpdatePageLayout() method) after changing the Document.LayoutOptions values.

Use Case: Explains how to set CommentDisplayMode.

{{< highlight cpp >}}
auto doc = MakeObject<Document>(u"input.docx");
doc->get_LayoutOptions()->set_CommentDisplayMode(CommentDisplayMode::ShowInAnnotations);
doc->Save(u"output.pdf");
{{< /highlight >}}

Use Case:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(u"input.docx");
doc->get_LayoutOptions()->set_CommentDisplayMode(CommentDisplayMode::ShowInAnnotations);
doc->Save(u"output-pdf.pdf"); // This is a new way to display comments available for Pdf(not supported for Pdf/A).
doc->Save(u"output-xps.xps"); // When saving to any other format, it works in the same way as CommentDisplayMode.Hide.
 
doc->get_LayoutOptions()->set_CommentDisplayMode(CommentDisplayMode::Hide);
doc->UpdatePageLayout();
doc->Save(u"output-hide.pdf"); //This is similar to the obsolete option ShowComments=false
 
doc->get_LayoutOptions()->set_CommentDisplayMode(CommentDisplayMode::ShowInBalloons);
doc->UpdatePageLayout();
doc->Save(u"output-balloon.pdf"); //This is similar to the obsolete option ShowComments=true
{{< /highlight >}}
