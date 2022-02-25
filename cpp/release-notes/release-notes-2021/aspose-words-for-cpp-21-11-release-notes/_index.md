---
title: Aspose.Words for C++ 21.11 Release Notes
articleTitle: Aspose.Words for C++ 21.11 Release Notes
linktitle: Aspose.Words for C++ 21.11 Release Notes
description: "Aspose.Words for C++ 21.11 Release Notes – the latest updates and fixes."
type: docs
weight: 15
url: /cpp/aspose-words-for-cpp-21-11-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 21.11](https://www.nuget.org/packages/Aspose.Words.Cpp/21.11.0).

{{% /alert %}}

## Major Features

We have added the following features from Aspose.Words for .NET on this regular monthly release:

- Implemented a ProgressCallback to be able to show the document loading progress.
- New UseAttachments option has been implemented to display the attachments panel in the output PDF documents.
- Added a new ChmLoadOptions to get more control over CHM loading.
- Added new option to ignore field codes during find-replace operation.
- Added ability to save images as Base64 string to Markdown format.

We have added the following features for Aspose.Words for C++:

- vcpkg registry with vcpkg package for Aspose.Words for C++

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.
- The current release supports macOS Big Sur or later (11.5+) for 64-bit Intel Mac platform.

## Full List of Issues Covering all Changes in this Release (Reported by C++ Users)
|Key|Summary|Category|
| :- | :- | :- |
| WORDSCPP-1133 | vcpkg package for Aspose.Words for C++ | New Feature |
| WORDSCPP-1140 | lld linker reports ld.lld: warning: found local symbol | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-22787 | Introduce ExportImagesAsBase64 option for MD format | New Feature |
| WORDSNET-22897 | Check Aspose.Words for .NET Standard works with .NET 6.0 | New Feature |
| WORDSNET-14472 | Consider adding a Callback event that notifies the progress of loading   document | New Feature |
| WORDSNET-8696 | Add new property of PdfSaveOptions to export SDT controls as editable PDF   form fields | New Feature |
| WORDSNET-22513 | Support "ms-its" and other local URLs during import CHM from a   stream | New Feature |
| WORDSNET-22794 | Implement MS Word scaling algorithm for non-native Ink objects when   rendering | New Feature |
| WORDSNET-22803 | Provide full support of ReportingEngine.UseReflectionOptimization for .NET Standard | New Feature |
| WORDSNET-11453 | Add feature to view/hide navigation panes of PDF | New Feature |
| WORDSNET-9945 | Support native gradients with   transparency in PDF | New Feature |
| WORDSNET-14850 | Export drop-down list content controls as 'select' HTML elements | New Feature |
| WORDSNET-17181 | Block level SDT not converting to Editable AcroFrom field | New Feature |
| WORDSNET-14510 | SDT controls are not editable in the produced PDF | New Feature |
| WORDSNET-18648 | Text gradient support | New Feature |
| WORDSNET-1697 | Add possibility to use complex Fill Effects for shapes (gradient, texture   etc) | New Feature |
| WORDSNET-21698 | Convert Word Content Controls to Editable Controls in PDF | Enhancement |
| WORDSNET-14318 | Provide option to export SDT checkboxes as <input> in HTML | Enhancement |
| WORDSNET-8920 | SDT controls placed outside paragraph level are not preserved when   converting to PDF | Enhancement |
| WORDSNET-11542 | Provide ExportDropDownFormFieldAsText property for StructuredDocumentTag | Enhancement |
| WORDSNET-16057 | PDF with gradient fill print Issue with Chrome | Enhancement |
| WORDSNET-22457 | Arabic words not rendering as expected | Bug |
| WORDSNET-22133 | Incorrect version of harfbuzz.dll is selected when running app with .NET CLI | Bug |
| WORDSNET-19158 | OfficeMath renders incorrectly in output EMF | Bug |
| WORDSNET-22750 | System.ArgumentException Illegal characters in path MHTML to HTML conversion | Bug |
| WORDSNET-22777 | Import of mhtml differs from what is in browser | Bug |
| WORDSNET-22821 | Space around the barcode is increased after conversion DOC to PDF | Bug |
| WORDSNET-22742 | System.OverflowException occurs upon loading a XML | Bug |
| WORDSNET-22683 | 'Culture not supported' exception is thrown while saving document to PDF | Bug |
| WORDSNET-22540 | Data labels in the chart messed up when converting to PDF | Bug |
| WORDSNET-19157 | Arrows in OfficeMath equation are rendered incorrectly in output EMF | Bug |
| WORDSNET-22757 | Shapes do not render correctly after DOCX to PDF conversion | Bug |
| WORDSNET-22844 | Incorrect font substitution for East Asian characters in MathTextElement | Bug |
| WORDSNET-22348 | Extra text is exported after DOCX to HTML conversion | Bug |
| WORDSNET-22367 | Latent Style Information Lost during re-Saving | Bug |
| WORDSNET-22828 | Extracting Html of a paragraph throws errors | Bug |
| WORDSNET-22765 | Doc to Pdf Conversion with HarfBuzz causes ArithmeticOverflowException | Bug |
| WORDSNET-22759 | Content misplacement issue upon converting DOCX to PDF | Bug |
| WORDSNET-19731 | Incorrect calculation of the X-axis maximum when converting chart to PDF | Bug |
| WORDSNET-18805 | Incorrect scaling of the secondary vertical axis after converting to PDF | Bug |
| WORDSNET-22834 | Page break at bookmark position does not work | Bug |
| WORDSNET-22686 | In Range.Replace how to ignore cross references | Bug |
| WORDSNET-22772 | Extra vertical spacing added in PDF | Bug |
| WORDSNET-20917 | Page numbering incorrect when Cover page present in document | Bug |
| WORDSNET-22847 | Fix SonarQube issues | Bug |
| WORDSNET-21782 | Bottom and Right border is lost after converting Shape to Image | Bug |
| WORDSNET-22633 | HTML is loaded as plain text | Bug |
| WORDSNET-22814 | Range.Replace does not replace the numbers when Number ends with line,   section and page break | Bug |
| WORDSNET-22517 | NullReferenceException when exporting to HTML | Bug |
| WORDSNET-22817 | Convert the SvgReader output APS geometry into EMUs for further rendering   in DML code | Bug |
| WORDSNET-17043 | PDF generated by Aspose.Words is blank when it is printed by Acrobat   Reader DC | Bug |
| WORDSNET-17045 | PDF with gradient fill print Issue with Chrome | Bug |
| WORDSNET-9273 | Conversion of DOCX to DOC and PDF file format change the NUMPAGES value | Bug |
| WORDSNET-22840 | Missing the image which size is huge in PDF after convert word to PDF | Bug |
| WORDSNET-22837 | Loading encrypted word File Corrupted Exception | Bug |


## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-16733 | Add feature to get the gradient fill properties of a shape | New Feature |
| WORDSNET-22707 | Add an ability to use type members of DataRow etc. classes at LINQ Reporting Engine templates | New Feature |
| WORDSNET-20073 | Block level SDT not converting to Editable AcroForm field in PDF | New Feature |
| WORDSNET-19183 | Chart's starting ending points are not correct in PDF | Bug |
| WORDSNET-22829 | getPageCount() returns incorrect page numbers | Bug |
| WORDSNET-22783 | Content converge and cause overlapping in PDF | Bug |
| WORDSNET-22573 | Shape's contents are lost after DOCX to PDF Conversion | Bug |
| WORDSNET-22848 | Text bold formatting is lost after DOCX to PDF | Bug |
| WORDSNET-19181 | X-Axis numbering in Chart missing in PDF | Bug |
| WORDSNET-22050 | Allow row to break across pages is checked after DOC-HTML-DOC | Bug |
| WORDSNET-22044 | HTML to Word DOCX visibility of Hidden Numbered and Bullet Lists | Bug |


## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.11. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added "UseAttachments" Mode for PDF Rendering

Related issue: WORDSNET-11453

An option has been implemented that allows to display the attachments panel in rendered PDF documents when opened in supporting readers.

The option is specified by setting PdfSaveOptions.PageMode to newly created PdfPageMode.UseAttachments value.
{{< highlight csharp >}}
public enum PdfPageMode
{
    /// <summary>
    /// Attachments panel is visible.
    /// </summary>
    /// <remarks>
    /// Not supported in the following PDF versions: <see cref="PdfCompliance.Pdf15"/>,
    /// <see cref="PdfCompliance.PdfA1a"/>, <see cref="PdfCompliance.PdfA1b"/>.
    /// </remarks>
    UseAttachments
}
{{< /highlight >}}

Use Case:
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"input.docx");
 
// Specify the new page mode for PDF.
auto options = System::MakeObject<PdfSaveOptions>();
options->set_PageMode(PdfPageMode::UseAttachments);
 
doc->Save(u"output.pdf", options);
{{< /highlight >}}

### Added a new ChmLoadOptions class

Related issue: WORDSNET-22513

Currently, this public class contains a single public property OriginalFileName.
This property allows to specify the name of the CHM file. It is useful if a document is loaded from a stream and it contains links that reference the same document by the file name.
{{< highlight csharp >}}
/// <summary>
/// Allows to specify additional options when loading CHM document into a <see cref="Document"/> object.
/// </summary>
public class ChmLoadOptions
{
    /// <summary>
    /// The name of the CHM file.
    /// Default value is <c>null</c>.
    /// </summary>
    /// <remarks>
    /// <para>
    /// CHM documents may contain links that reference the same document by file name. Aspose.Words supports such links
    /// and normally uses <see cref="Document.OriginalFileName"/> to check whether the file referenced by a link
    /// is the file that is being loaded. If a document is loaded from a stream, its original file name should be specified
    /// explicitly via this property, since it cannot be determined automatically.
    /// </para>
    /// <para>
    /// If a CHM document is loaded from a file and a non-null value for this property is specified, the value will take
    /// priority over the actual name of the file stored in <see cref="Document.OriginalFileName"/>.
    /// </para>
    /// </remarks>
    public string OriginalFileName { get; set; }
}
{{< /highlight >}}

Use Case:
{{< highlight cpp >}}
// The input document name.
String fileName = u"myfile.chm";
 
// Create an input stream of the input document.
auto inputStream = System::MakeObject<MemoryStream>(System::IO::File::ReadAllBytes(fileName));
 
// Specify the file name in CHM load options.
// This allows Aspose.Words to correctly resolve URLs like "ms-its:myfile.chm::/index.htm"
auto loadOptions = System::MakeObject<ChmLoadOptions>();
loadOptions->set_OriginalFileName(fileName);
 
// Load the document.
auto doc = System::MakeObject<Document>(inputStream , loadOptions);
{{< /highlight >}}

### Added a new FindReplaceOptions.IgnoreFieldCodes property

Related issue: WORDSNET-22686.

The following public property is added to FindReplaceOptions class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a boolean value indicating either to ignore text inside field codes.
/// The default value is <c>false</c>.
/// </summary>
/// <remarks>
/// <para>This option affects only field codes (it does not ignore nodes between
/// <see cref="NodeType.FieldSeparator"/> and <see cref="NodeType.FieldEnd"/>).</para>
/// <para>To ignore whole field, please use corresponding option <see cref="IgnoreFields"/>.</para>
/// </remarks>
public bool IgnoreFieldCodes
{{< /highlight >}}

Use Case: Explains how to ignore text inside field codes.
{{< highlight cpp >}}
// Create document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
 
// Insert field.
builder->InsertField(u"INCLUDETEXT", u"Text in field");
 
auto regex = System::MakeObject<Regex>(u"T");
auto options = System::MakeObject<FindReplaceOptions>();
 
// Replace 'T' in document ignoring text inside field code.
options->set_IgnoreFieldCodes(true);
doc->get_Range()->Replace(regex, u"*", options);
std::cout << doc->GetText().ToUtf8String() << '\n';
 
// Replace 'T' in document NOT ignoring text inside field code.
options->set_IgnoreFieldCodes(false);
doc->get_Range()->Replace(regex, u"*", options);
std::cout << doc->GetText().ToUtf8String() << '\n';
 
// The code produces the following output:
// \u0013INCLUDETEXT\u0014*ext in field\u0015\u000c
// \u0013INCLUDE * EX * \u0014 * ext in field\u0015\u000c
{{< /highlight >}}

### Added LoadOptions.ProgressCallback property

Related issue: WORDSNET-14472.

The following public property is added to the LoadOptions class:
{{< highlight csharp >}}
/// <summary>
/// Called during loading a document and accepts data about loading progress.
/// </summary>
/// <remarks>
/// <para><see cref="LoadFormat.Docx"/>, <see cref="LoadFormat.FlatOpc"/>, <see cref="LoadFormat.Docm"/>, <see cref="LoadFormat.Dotm"/>, <see cref="LoadFormat.Dotx"/> formats supported.</para>
/// </remarks>
public IDocumentLoadingCallback ProgressCallback { get; set;}
{{< /highlight >}}

Supported formats are: Docx, FlatOpc, Docm, Dotm, Dotx.

Consumer should implement the following interface and set instance of it to the ProgressCallback to get loading progress notifications.
{{< highlight csharp >}}
/// <summary>
/// Implement this interface if you want to have your own custom method called during loading a document.
/// </summary>
public interface IDocumentLoadingCallback
{
    /// <summary>
    /// This is called to notify of document loading progress.
    /// </summary>
    /// <param name="args">An argument of the event.</param>
    /// <remarks>
    /// The primary uses for this interface is to allow application code to obtain progress status and abort loading process.<para/>
    /// An exception should be threw from the progress callback for abortion and it should be caught in the consumer code.<para/>
    /// </remarks>
    /// <seealso cref="LoadOptions.ProgressCallback"/>
    void Notify(DocumentLoadingArgs args);
}
{{< /highlight >}}

Structure of the accepted arguments is:
{{< highlight csharp >}}
/// <summary>
/// An argument passed into <see cref="IDocumentLoadingCallback.Notify(DocumentLoadingArgs)"/>.
/// </summary>
public sealed class DocumentLoadingArgs
{
    /// <summary>
    /// Overall estimated percentage progress.
    /// </summary>
    public double EstimatedProgress { get; }
}
{{< /highlight >}}

Use case:
{{< highlight cpp >}}
/// <summary>
/// Loading progress callback. Cancel a document loading after the "MaxDuration" seconds.
/// </summary>
class LoadingProgressCallback : public IDocumentLoadingCallback
{
    using ThisType = LoadingProgressCallback;
    using BaseType = IDocumentLoadingCallback;
    using ThisTypeBaseTypesInfo = ::System::BaseTypesInfo<BaseType>;
    RTTI_INFO();
public:
    /// <summary>
    /// Ctr.
    /// </summary>
    public LoadingProgressCallback()
    {
        mLoadingStartedAt = System::DateTime::get_Now();
    }
 
    /// <summary>
    /// Callback method which called during document loading.
    /// </summary>
    /// <param name="args">Loading arguments.</param>
    void Notify(System::SharedPtr<DocumentLoadingArgs> args) override
    {
        auto canceledAt = System::DateTime::get_Now();
        double ellapsedSeconds = (canceledAt - mLoadingStartedAt)->get_TotalSeconds();
 
        if (ellapsedSeconds > MaxDuration)
            throw OperationCanceledException();
    }
 
private:
    /// <summary>
    /// Date and time when document loading is started.
    /// </summary>
    DateTime mLoadingStartedAt;
 
    /// <summary>
    /// Maximum allowed duration in sec.
    /// </summary>
    static constexpr double MaxDuration = 100.0;
}
{{< /highlight >}}

Loading document code:
{{< highlight cpp >}}
auto cb = System::MakeObject<LoadingProgressCallback>();
 
auto lo = System::MakeObject<LoadOptions>();
lo->set_ProgressCallback(cb);
 
try
{
    auto doc = System::MakeObject<Document>(u"bigDoc.docx", lo);
    // Do work.
}
catch (const OperationCanceledException& ex)
{
    // Handle loading duration issue.
}
{{< /highlight >}}

### Added new ExportImagesAsBase64 public option

Related issue: WORDSNET-22787

A new ExportImagesAsBase64 public option has been added in MarkdownSaveOptions class:
{{< highlight csharp >}}
/// <summary>
/// Specifies whether images are saved in Base64 format to the output file.
/// Default is <c>false</c>.
/// </summary>
/// <remarks>
/// <para>When this property is set to <c>true</c> images data are exported
/// directly into the <b>img</b> elements and separate files are not created.</para>
/// </remarks>
public bool ExportImagesAsBase64
{{< /highlight >}}

Use case: Explains how to save Base64 encoded images directly inside a Markdown document.
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"DocumentWithShape.docx");
 
auto mso = System::MakeObject<MarkdownSaveOptions>();
mso->set_ExportImagesAsBase64(true);
 
doc->Save(u"DocumentWithShape.md", mso);
{{< /highlight >}}

### New style identifiers for Mention, Smart Hyperlink, Hashtag and Unresolved Mention have been added

Related issue: WORDSNET-22367

New style identifiers for Mention, Smart Hyperlink, Hashtag and Unresolved Mention have been added.
{{< highlight csharp >}}
/// <summary>
/// The Mention style.
/// </summary>
Mention = 372,
 
/// <summary>
/// The SmartHyperlink style.
/// </summary>
SmartHyperlink = 373,
 
/// <summary>
/// The Hashtag style.
/// </summary>
Hashtag = 374,
 
/// <summary>
/// The UnresolvedMention style.
/// </summary>
UnresolvedMention = 375
{{< /highlight >}}
The styles are undocumented, they do not have their own constants in Micosoft VBA and they are not displayed in MS Word Style Sheet. The styles are added to preserve the document structure invariability, in particular to preserve latent styles when converting Docx to Docx using Aspose.Words.
