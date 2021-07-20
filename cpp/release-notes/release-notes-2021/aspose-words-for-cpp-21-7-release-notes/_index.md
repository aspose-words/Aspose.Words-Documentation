---
title: Aspose.Words for C++ 21.7 Release Notes
type: docs
weight: 35
url: /cpp/aspose-words-for-cpp-21-7-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 21.7](https://www.nuget.org/packages/Aspose.Words.Cpp/21.7.0).

{{% /alert %}} 

## Major Features

We have added the following features from Aspose.Words for .Net on this regular monthly release:

- Implemented rendering to PDF/A-2 format.
- Added an ability to work with Framesets.
- Introduced a new overload of DocumentBuilder.InsertHtml and a new enumeration HtmlInsertOptions.
- Provided new API for working with Fill patterns.

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
| WORDSCPP-1078 | Translate methods arguments as `const T&` instead of `T` | New Feature |
| WORDSNET-22279 | Implement Fill.Patterned method | New Feature |
| WORDSNET-17557 | Provide way to get URL from Target attribute inside webSettings.xml.rels   file | New Feature |
| WORDSNET-21750 | Highlighted Content is not visible after exporting to PDF | New Feature |
| WORDSNET-15400 | Implement maskPen rasterOp mode in InkML rendering | New Feature |
| WORDSNET-22370 | Support several exact date-time parse formats while loading JSON | New Feature |
| WORDSNET-15984 | Ink annotations are not aligned in PDF output | New Feature |
| WORDSNET-22159 | Implement rendering of brushes with maskPen rasterOp mode | New Feature |
| WORDSNET-22009 | Make links clickable when converting CHM to HTML when the file pointing   itself | New Feature |
| WORDSNET-5971 | Support of PdfCompliance PDF/A-2 | New Feature |
| WORDSNET-11488 | Add feature to support of PdfCompliance PDF/A-2a | New Feature |
| WORDSNET-15836 | Add feature to support array type identifiers in template syntax | New Feature |
| WORDSNET-20505 | Add support for PDF/A-2u, PDF/A-2a, PDF/A-3u, PDF/A-3a compliance | New Feature |
| WORDSNET-15129 | Support of DOCX to PDF_A_2U conversion | New Feature |
| WORDSNET-15126 | Support of DOCX to PDF_A_2B conversion | New Feature |
| WORDSNET-15125 | Support of DOCX to PDF_A_2A conversion | New Feature |
| WORDSNET-13778 | Add feature to support of PdfCompliance PDF/A-2b | New Feature |
| WORDSNET-17478 | API needed to set the Scope attribute in Table in rendered PDF | Enhancement |
| WORDSNET-21089 | Shapes are lost after RTF to PDF conversion | Enhancement |
| WORDSNET-22397 | How to use "Mark as decorative" IsDecorative property | Enhancement |
| WORDSNET-22255 | About Data Source Name in ReportingEngine.BuildReport Method | Enhancement |
| WORDSNET-17726 | Notify user when he tries to load MOBI document but the document is AZW3 | Enhancement |
| WORDSNET-21259 | Unwanted spaces are added after conversion from DOCX>HTML>DOCX | Bug |
| WORDSNET-22312 | NullReferenceException when save attached document as PDF | Bug |
| WORDSNET-22263 | ReportingEngine.BuildReport throws System.InvalidCastException | Bug |
| WORDSNET-22416 | DOCX to PDF: Output file text not formated properly | Bug |
| WORDSNET-21766 | Document.Compare generates incorrect revisions | Bug |
| WORDSNET-16528 | Incorrect convert DOCX to PDF when docx in compatible mode | Bug |
| WORDSNET-22404 | Incorrect page number for FieldPageRef | Bug |
| WORDSNET-19592 | Exception is thrown when converting DOCX to HTML | Bug |
| WORDSNET-21940 | HTML img's base64 data is not getting converted to doc in Aspose.words   java | Bug |
| WORDSNET-18852 | Empty paragraphs added when inserting unordered list using   DocumentBuilder.InsertHtml | Bug |
| WORDSNET-22277 | OutOfMemoryException throws wnen extract pages and save it to PNG | Bug |
| WORDSNET-21669 | Mobi file - Huffman compression is not yet supported for specific file | Bug |
| WORDSNET-21963 | Value of attribute "lang" is invalid | Bug |
| WORDSNET-22388 | NullPointerException when calling mailMerge.execute() | Bug |
| WORDSNET-21988 | Incorrect page size during conversion of HTML with landscape orientation   to DOCX | Bug |
| WORDSNET-22228 | Text is pushed down to next pages after DOCX to PDF conversion | Bug |
| WORDSNET-22357 | System.NullReferenceException occurs upon DOC to PDF conversion | Bug |
| WORDSNET-22311 | Duplicate list item created when inserting multiple paragraph breaks   using Range.Replace() | Bug |
| WORDSNET-22321 | Replacing text containing a paragraph break is poorly represented with   TrackRevisions in enabled | Bug |
| WORDSNET-21500 | Image displays as red cross in converted documents | Bug |
| WORDSNET-22387 | Content are lost after PDF to DOCX conversion | Bug |
| WORDSNET-17077 | Row height increases after DOCX-HTML-DOCX roundtrip | Bug |
| WORDSNET-19823 | Paragraph is pushed down to next page after DOCX>HTML>DOCX   conversion | Bug |
| WORDSNET-22303 | DOCX does not open in MS Word after after re-saving | Bug |
| WORDSNET-22389 | System.InvalidCastException occurs upon loading DOC | Bug |
| WORDSNET-20793 | DOCX to PDF conversion issue with PDF accessibility | Bug |
| WORDSNET-22330 | Series lines are rendered incorrectly after converting to PDF | Bug |
| WORDSNET-20708 | Wrong position of chart legend in output PNG file | Bug |
| WORDSNET-22356 | Object reference not set to an instance of an object | Bug |
| WORDSNET-22374 | File Corrupted Exception occurs upon loading a RTF Document | Bug |
| WORDSNET-20964 | DOCX to PDF conversion issue with chart rendering | Bug |
| WORDSNET-22358 | System.NullReferenceException occurs upon DOC to PDF conversion | Bug |
| WORDSNET-22386 | Document is corrupted exception thrown while loading DOC | Bug |
| WORDSNET-22293 | HTML to TXT conversion issue with table layout | Bug |
| WORDSNET-22364 | Document word find and replace issue | Bug |
| WORDSNET-21454 | FileCorruptedException is thrown during import HTML file | Bug |
| WORDSNET-21137 | Image is not loaded from HTML if the "src" attribute value has   leading or trailing whitespace characters | Bug |
| WORDSNET-22333 | Paragraph border is rendered at different position when   ExportDocumentStructure is used | Bug |
| WORDSNET-18137 | Document.UpdateFields does not update TEMPLATE field | Bug |
| WORDSNET-22360 | Field.Update does not update FieldHyperlink and show | Bug |
| WORDSNET-22332 | Bullet symbol is lost after DOCX to PDF conversion | Bug |
| WORDSNET-22355 | Incorrectly read SPRM:D62F. Expected 0, but read 11 bytes. | Bug |
| WORDSNET-20958 | Page number in the footer is wrong in output TIFF | Bug |
| WORDSNET-21944 | ODT to HTML \| Frame's bottom border is missing | Bug |
| WORDSNET-22285 | Exception is thrown when loading MOBI file | Bug |
| WORDSNET-22231 | Negative letter-spacing after conversion from PDF to HTML | Bug |
| WORDSNET-21789 | Aspose.Words.FileCorruptedException error when converting MHTML | Bug |
| WORDSNET-22233 | System.NullReferenceException is thrown when DOC is saved to PDF | Bug |
| WORDSNET-20402 | HTML export issues | Bug |
| WORDSNET-22152 | Tab stop in a list item gets considerably wider after conversion to HTML | Bug |
| WORDSNET-21796 | DOCX to PDF/A conversion and validation fails: Several cases with header   cells that are not tagged | Bug |
| WORDSNET-21947 | DOCX to PDF/A conversion: accessibility validation fails: Bullet list   items are broken into several tags | Bug |
| WORDSNET-14245 | Document.Compare generates incorrect format revisions | Bug |
| WORDSNET-22297 | Extra Text becomes Visible in PDF | Bug |
| WORDSNET-22191 | Problem with nested tables in RTF content | Bug |
| WORDSNET-21035 | Incorrect rendering of Clustered Column Type Chart in PDF | Bug |
| WORDSNET-18229 | The title of the horizontal axis overlaps the axis labels | Bug |
| WORDSNET-20135 | The Units are no longer aligned with the tick marks in Chart when   rendered to PDF | Bug |
| WORDSNET-17543 | Document.UpdateFields leaves INCLUDETEXT field with "Error\! Not a   valid filename." | Bug |
| WORDSNET-22262 | Track changes - Comments are shown in the outline | Bug |
| WORDSNET-22083 | Accessibility issues are appeared after DOCX to PDF conversion | Bug |
| WORDSNET-22242 | Accessibility tags not behaving properly in Aspose PDF compared to   Acrobat/Word PDF | Bug |
| WORDSNET-22190 | Table header tags are not exported after DOCX to PDF/a conversion | Bug |
| WORDSNET-21161 | Table tag structure is incorrect after DOCX to PDF conversion | Bug |
| WORDSNET-22223 | Transparent PNG image became non-transparent after DOCX to PDF   conversion | Bug |
| WORDSNET-21846 | DOCX to PDF (PdfA1a) conversion issue with transparent image   rendering | Bug |
| WORDSNET-17086 | PDF version support // Text effects are lost in PDFA_1B output | Bug |
| WORDSNET-16968 | Saving to PDF with PdfCompliance.PdfA1a results in a large file | Bug |
| WORDSNET-21123 | SmartArt drawing corruption during open save a DOCX | Bug |
| WORDSNET-21127 | Images and and text content are changed after re-saving DOCX at Windows   Server 2019 | Bug |
| WORDSNET-17657 | Document.UpdateFields does not process   FieldStyleRef.SuppressNonDelimiters | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Add const reference into C++ methods signatures

Related issue: WORDSCPP-1078

A lot of methods have changed their signature - we replaced `T` arguments with `const T&`. 
This will eliminate unnecessary copy ctor calls and as a result improve the performance of the Aspose.Words for C++.

For example, the Document class API changed from
{{< highlight cpp >}}
class Document
{
// ...
void set_AttachedTemplate(System::String value);
Document(System::SharedPtr<System::IO::Stream> stream);
void Protect(Aspose::Words::ProtectionType type, System::String password);
// ...
};
{{< /highlight >}}

to

{{< highlight cpp >}}
class Document
{
// ...
void set_AttachedTemplate(const System::String& value);
Document(const System::SharedPtr<System::IO::Stream>& stream);
void Protect(Aspose::Words::ProtectionType type, const System::String& password);
// ...
};
{{< /highlight >}}

### Added new public property IsDecorative

Related issue: WORDSNET-22397

A new public property IsDecorative has been added to ShapeBase class.
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the flag that specifies whether the shape is decorative.
/// </summary>
/// <remarks>
/// Note that shape having not empty <see cref="ShapeBase.AlternativeText"/> cannot be decorative.
/// </remarks>
public bool IsDecorative { get; set; }
{{< /highlight >}}

Use Case: Explains how to use IsDecorative property.
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"input.docx");

auto shape = doc->get_FirstSection()->get_Body()->get_Shapes()->idx_get(0);
shape->set_IsDecorative(true);

doc->Save(u"output.docx");
{{< /highlight >}}

### Implemented rendering to PDF/A-2 format

New values added to PdfCompliance enum.
{{< highlight csharp >}}
public enum PdfCompliance
{
        /// <summary>
        /// The output file will comply with the PDF/A-2a standard.
        /// This level includes all the requirements of PDF/A-2u and additionally requires
        /// that document structure be included (also known as being "tagged"),
        /// with the objective of ensuring that document content can be searched and repurposed.
        /// </summary>
        /// <remarks>
        /// Note that exporting the document structure significantly increases the memory consumption, especially
        /// for the large documents.
        /// </remarks>
        PdfA2a,
        /// <summary>
        /// The output file will comply with the PDF/A-2u standard.
        /// PDF/A-2u has the objective of preserving document static visual appearance over time, independent of the tools
        /// and systems used for creating, storing or rendering the files. Additionally any text contained in the document
        /// can be reliably extracted as a series of Unicode codepoints.
        /// </summary>
        PdfA2u
}
{{< /highlight >}}

PDF/A-2 is based on PDF-1.7 format and removes significant limitations of PDF/A-1 like prohibited transparency and prohibited object compression.

There are only PDF/A-2a and PDF/A-2u conformance levels and there are not PDF/A-2b because Aspose.Words regular output already conforms to PDF/A-2u level which is more strict than PDF/A-2b.

Please note that PDF/A-2 standard adds two new requirements to the content of the document in addition to the requirements of PDF/A-1:
1. Both PDF/A-2a and PDF/A-2u standards prohibits the usage of .notdef glyph
2. PDF/A-2a prohibits the usage of Unicode PUA codepoints. They are commonly used in symbolic fonts like "Symbol", "Wingdings", etc.

PdfCompliance.PdfA1a and PdfCompliance.PdfA1b are marked as obsolete.
Aspose.Words PDF/A-2 output do not have limitations of PDF/A-1 output described above and is more consistent. So there is no reason to keep saving to PDF/A-1. 
However if you have requirements to save particularly to PDF/A-1 please report it and we may reconsider this decision.

Several PdfSaveOptions made prohibited when saving to PDF/A-1 and PDF/A-2
{{< highlight csharp >}}
public class PdfSaveOptions
{
        /// <summary>
        /// Specifies whether to preserve Microsoft Word form fields as form fields in PDF or convert them to text.
        /// Default is <c>false</c>.
        /// </summary>
        /// <remarks>
        ...
        /// <para>This value is ignored when saving to PDF/A compliance because editable forms are prohibited.</para>
        /// </remarks>
        public bool PreserveFormFields;

        /// <summary>
        /// Gets or sets a value determining the way <see cref="Document.CustomDocumentProperties"/> are exported to PDF file.
        /// </summary>
        /// <remarks>
        ...
        /// <para><see cref="PdfCustomPropertiesExport.Metadata"/> value is not supported when saving to PDF/A.</para>
        /// </remarks>
        public PdfCustomPropertiesExport CustomPropertiesExport;
     
        /// <summary>
        /// Gets or sets a value determining whether hyperlinks in the output Pdf document
        /// are forced to be opened in a new window (or tab) of a browser.
        /// </summary>
        /// <remarks>
        ...
        /// <para>Settings this value to <c>true</c> is not allowed when saving to PDF/A because JavaScript actions are prohibited.</para>
        /// </remarks>
     
        public bool OpenHyperlinksInNewWindow;
        /// <summary>
        /// Specifies how the color space will be selected for the images in PDF document.
        /// </summary>
        /// <remarks>
        ...
        /// <para><see cref="PdfImageColorSpaceExportMode.SimpleCmyk"/> value is not supported when saving to PDF/A.</para>
        /// </remarks>
        public PdfImageColorSpaceExportMode ImageColorSpaceExportMode;
     
        /// <summary>
        /// A flag indicating whether image interpolation shall be performed by a conforming reader.
        /// When <c>false</c> is specified, the flag is not written to the output document and
        /// the default behaviour of reader is used instead.
        /// </summary>
        /// <remarks>
        ...
        /// <para>Settings this value to <c>true</c> is not allowed when saving to PDF/A according to compliance requirements.</para>
        /// </remarks>
        public bool InterpolateImages;
}
{{< /highlight >}}

### A typo in a new enum name introduced in 21.6 corrected

"Aspose.Words.Layout.ContinuosSectionRestart" enum introduced in 21.6 was renamed to ContinuousSectionRestart in order to correct a typo.

### Implemented Frameset API

Related issue: WORDSNET-17557

Implemented a new Frameset API for accessing and updating a frame URL. It is available through the new Frameset property of a document.
{{< highlight csharp >}}
namespace Aspose.Words
{
    public class Document
    {
        ...

        /// <summary>
        /// Returns a <see cref="Frameset"/> instance if this document represents a frames page.
        /// </summary>
        /// <remarks>
        /// If the document is not framed, the property has the <b>null</b> value.
        /// </remarks>
        public Frameset Frameset { get; }
    }
}

namespace Aspose.Words.Framesets
{
    /// <summary>
    /// Represents a frames page or a single frame on a frames page.
    /// </summary>
    /// <remarks>
    /// If the <see cref="ChildFramesets"/> property contains items, this instance is a frames page, otherwise it is
    /// a single frame.
    /// </remarks>
    public class Frameset
    {
        /// <summary>
        /// Gets or sets the web page URL or document file name to display in this frame.
        /// </summary>
        public string FrameDefaultUrl { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether the web page or document file name specified in the
        /// <see cref="FrameDefaultUrl"/> property is an external resource the frame is linked with.
        /// </summary>
        public bool IsFrameLinkToFile { get; set; }
     
        /// <summary>
        /// Gets the collection of child frames and frames pages.
        /// </summary>
        public FramesetCollection ChildFramesets { get; }
    }
     
    /// <summary>
    /// Represents a collection of instances of the <see cref="Frameset"/> class.
    /// </summary>
    public class FramesetCollection : IEnumerable<Frameset>
    {
        /// <summary>
        /// Gets the number of frames/frames pages contained in the collection.
        /// </summary>
        public int Count { get; }
     
        /// <summary>
        /// Gets a frame or frames page at the specified index.
        /// </summary>
        public Frameset this[int index] { get; }
    }
}
{{< /highlight >}}

Use Case:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"input.docx");

doc->get_Frameset()->get_ChildFramesets->idx_get(0)->set_FrameDefaultUrl(u"http://aspose.com");
doc->get_Frameset()->get_ChildFramesets->idx_get(0)->set_IsFrameLinkToFile(true);

doc->Save(u"output.docx");
{{< /highlight >}}

### Introduced a new overload of DocumentBuilder.InsertHtml and a new enumeration HtmlInsertOptions

Related issue: WORDSNET-18852

The following new overload of DocumentBuilder.InsertHtml has been implemented:
{{< highlight csharp >}}
/// <summary>
/// Inserts an HTML string into the document. Allows to specify additional options.
/// </summary>
/// <param name="html">An HTML string to insert into the document.</param>
/// <param name="options">Options that are used when HTML string is inserted.</param>
/// <remarks>
/// You can use this method to insert an HTML fragment or whole HTML document.
/// </remarks>
public void InsertHtml(string html, HtmlInsertOptions options)
{{< /highlight >}}

And the following public enumeration has been introduced:
{{< highlight csharp >}}
/// <summary>
/// Specifies options for the <see cref="DocumentBuilder.InsertHtml(string, HtmlInsertOptions)"/> method.
/// </summary>
[Flags]
public enum HtmlInsertOptions
{
    /// <summary>
    /// Use the default options when inserting HTML.
    /// </summary>
    None = 0,

    /// <summary>
    /// Use font and paragraph formatting specified in <see cref="DocumentBuilder"/> as base formatting for text
    /// inserted from HTML.
    /// </summary>
    /// <remarks>
    /// <para>
    /// If this option is not specified, formatting of <see cref="DocumentBuilder"/> is ignored and text is inserted
    /// with default HTML formatting. As a result, the text looks as it is rendered in browsers.
    /// </para>
    /// <para>
    /// If this option is specified, formatting of inserted text is based on formatting specified in
    /// <see cref="DocumentBuilder"/>, and the text looks as if it were inserted using <see cref="DocumentBuilder.Write"/>.
    /// </para>
    /// </remarks>
    UseBuilderFormatting = 1,
     
    /// <summary>
    /// Remove the empty paragraph that is normally inserted after HTML that ends with a block-level element.
    /// </summary>
    /// <remarks>
    /// By default, <see cref="DocumentBuilder"/> makes sure that the last block-level element imported from HTML
    /// is closed after import and inserts a paragraph break after the element. This paragraph break separates
    /// content imported from HTML from content of the template document. However, if a HTML fragment is inserted into
    /// an empty paragraph, that paragraph break will create an extra empty paragraph. If this behavior is undesired,
    /// specify this option.
    /// </remarks>
    RemoveLastEmptyParagraph = 2
}
{{< /highlight >}}

The old DocumentBuilder.InsertHtml overloads are now aliases for the new overload of DocumentBuilder.InsertHtml as follows:
{{< highlight cpp >}}
builder->InsertHtml(html);
// Is equivalent to:
builder->InsertHtml(html, HtmlInsertOptions::None);

builder->InsertHtml(html, false);
// Is equivalent to:
builder->InsertHtml(html, HtmlInsertOptions::None);

builder->InsertHtml(html, true);
// Is equivalent to:
builder->InsertHtml(html, HtmlInsertOptions::UseBuilderFormatting);
{{< /highlight >}}

Use Case:
When DocumentBuilder.InsertHtml inserts a HTML fragment that ends with a block-level HTML element (for example, a paragraph or a list), it normally closes that block-level element and inserts a paragraph break. 
As a result, a new empty paragraph appears after inserted document. This behavior may be undesired when HTML fragments are inserted into a template document. 
For example, consider the following mail merge scenario.
{{< highlight cpp >}}
// Default behavior.
builder->MoveToMergeField(u"NAME");
builder->InsertHtml(u"<p>John Smith</p>", true);
builder->MoveToMergeField(u"EMAIL");
builder->InsertHtml(u"<p>jsmith@example.com</p>", true);
{{< /highlight >}}

In the resulting document, there will be an extra empty paragraph after each inserted HTML paragraph.
However, if we specify HtmlInsertOptions.RemoveLastEmptyParagraph, those extra empty paragraphs will be removed.
{{< highlight cpp >}}
// RemoveLastEmptyParagraph is specified.
builder->MoveToMergeField(u"NAME");
builder->InsertHtml(u"<p>John Smith</p>", HtmlInsertOptions::UseBuilderFormatting | HtmlInsertOptions::RemoveLastEmptyParagraph);
builder->MoveToMergeField(u"EMAIL");
builder->InsertHtml(u"<p>jsmith@example.com</p>", HtmlInsertOptions::UseBuilderFormatting | HtmlInsertOptions::RemoveLastEmptyParagraph);
{{< /highlight >}}

Inside the resulting document the empty paragraphs will be removed.

### Introduced FieldOptions.TemplateName property

Related issue: WORDSNET-18137

As a part of implementing WORDSNET-18137, we have introduced the FieldOptions.TemplateName property which is used to specify template file name for the TEMPLATE field:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the file name of the template used by the document.
/// </summary>
/// <remarks>
/// <p>This property is used by the <see cref="FieldTemplate"/> field if the <see cref="Document.AttachedTemplate"/> property is empty.</p>
/// <p>If this property is empty the default template file name <c>Normal.dotm</c> is used.</p>
/// </remarks>
public string TemplateName { get; set; }
{{< /highlight >}}

Use Case:
{{< highlight cpp >}}
document->get_FieldOptions()->set_TemplateName(uR"(C:\Users\AW\AppData\Roaming\Microsoft\Templates\Normal.dotm)");
{{< /highlight >}}

### Public API for working with patterns has been introduced

Related issue: WORDSNET-22279

The following new public methods were added into the Fill class:
{{< highlight csharp >}}
/// <summary>
/// Sets the specified fill to a pattern.
/// <param name="patternType"><see cref="Drawing.PatternType"/></param>
/// </summary>
public void Patterned(PatternType patternType)

/// <summary>
/// Sets the specified fill to a pattern.
/// <param name="patternType"><see cref="Drawing.PatternType"/></param>
/// <param name="foreColor">The color of the foreground fill.</param>
/// <param name="backColor">The color of the background fill.</param>
/// </summary>
public void Patterned(PatternType patternType, Color foreColor, Color backColor)
A new public property Fill.Pattern has been added:

/// <summary>
/// Gets a <see cref="Drawing.PatternType"/> for the fill.
/// </summary>
public PatternType Pattern { get; }
A new public enum has been introduced:

/// <summary>
/// Specifies the fill pattern to be used to fill a shape.
/// </summary>
public enum PatternType
{{< /highlight >}}

Use Case: Explains how to get and apply a pattern to a fill.
{{< highlight cpp >}}
// Open some document with a shape.
auto doc = System::MakeObject<Document>(u"DocWithShape.docx");

// Get Fill object for the first shape.
auto fill = doc->get_FirstSection()->get_Body()->get_Shapes()->idx_get(0)->get_Fill();

// Check Fill Pattern value.
std::cout << u"Pattern value is: " << System::ObjectExt::ToString(fill->get_Pattern()).ToUtf8String() << '\n';

// Apply DiagonalBrick pattern to the shape fill.
fill->Patterned(PatternType::DiagonalBrick);

doc->Save(u"DiagonalBrick.docx");
{{< /highlight >}}