---
title: Aspose.Words for C++ 20.5 Release Notes
articleTitle: Aspose.Words for C++ 20.5 Release Notes
linktitle: Aspose.Words for C++ 20.5 Release Notes
description: "Aspose.Words for C++ 20.5 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 20
url: /cpp/aspose-words-for-cpp-20-5-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for C++ 20.5](https://downloads.aspose.com/words/cpp/new-releases/aspose.words-for-c---20.5/)

{{% /alert %}} 

## Major Features

We have added the following features from Aspose.Words for .NET on this regular monthly release:

- Provided ability to show/hide Grammatical and Spelling errors.
- New helper class to work with watermark inside document was introduced.
- Added feature to set the compression level for OOXML documents.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support the Metered license.
- The current release does not support a multipage TIFF format.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support advanced typography based on the HarfBuzz shaper.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ does not have a common API for DB like .NET System.Data.
- The current release only supports Microsoft Visual C++ version 2017 or higher and only for the x64 platform.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10403|Add feature to 'Hide spelling errors in this document only'|New Feature|
|WORDSNET-4879|Add a helper method to insert a watermark into the header|New Feature|
|WORDSNET-10404|Add feature to 'Hide grammar errors in this document only'|New Feature|
|WORDSNET-20094|Add an option to remove duplicate styles to Document.Cleanup feature|New Feature|
|WORDSNET-20169|Aspose.Words writes incorrect bytes for DOCX|New Feature|
|WORDSNET-13640|Font "Simplified Arabic" is changed to "Arial" in output PDF|Bug|
|WORDSNET-20352|Spaces with the font DotumChe are not shrunk|Bug|
|WORDSNET-19093|Follow up for WORDSNET-18543, implement the notification|Bug|
|WORDSNET-19105|Arabic words take up more horizontal space|Bug|
|WORDSNET-20187|UpdateFields does not process TOC fields ( formatting changed & an entry missing)|Bug|
|WORDSNET-19240|Improve markdown emphases parsing|Bug|
|WORDSNET-20257|Import of complex StructuredDocumentTag|Bug|
|WORDSNET-15509|Arabic text is not rendered correctly in output PDF|Bug|
|WORDSNET-18294|Some characters look different in the PDF rendition|Bug|
|WORDSNET-12125|Locales should be expanded from document defaults when exported to DOC format|Bug|
|WORDSNET-19254|Incorrect inline shape height causes layout differences|Bug|
|WORDSNET-13162|RTF to PDF conversion issue with Thai text rendering|Bug|
|WORDSNET-20208|Rendering of the fraction. Height calculation of the fraction|Bug|
|WORDSNET-18923|Paragraph shading is stretched up to TextBox bottom|Bug|
|WORDSNET-20211|DOCX is corrupted after re-saving it|Bug|
|WORDSNET-20212|Range.Replace does not replace the numbers|Bug|
|WORDSNET-20353|ArgumentOutOfRangeException is thrown while exporting document with multiple numbered paragraphs inside a cell into Markdown|Bug|
|WORDSNET-19920|Document.UpdateFields does not update Index entries under the Swedish language|Bug|
|WORDSNET-13133|TXT to PDF conversion issue with Thai Characters|Bug|
|WORDSNET-20219|Extra data points appear in the chart in the output PDF|Bug|
|WORDSNET-20222|Convert to PDF output font issue|Bug|
|WORDSNET-19038|Content-control missing after resave|Bug|
|WORDSNET-15446|Font formatting of Arabic text is changed in output PDF|Bug|
|WORDSNET-15858|Traditional Arabic font is not rendered correctly in output PDF|Bug|
|WORDSNET-17001|Equations have an incorrect layout in PDF|Bug|
|WORDSNET-20168|On conversion from MHTML to PDF the exception "Parameter is not valid" has been thrown|Bug|
|WORDSNET-20046|Document.UpdateFields does not update the IF field correctly|Bug|
|WORDSNET-20052|Line shape is lost after DOC to PDF conversion|Bug|
|WORDSNET-20229|GetStartPageIndex returns incorrect page number for table|Bug|
|WORDSNET-20234|Reading PDF documents does not work with Aspose.Words for .NET 20.4 (.NET 4.6.1.)|Bug|
|WORDSNET-20236|Diagram text is cropped if the paragraph line spacing less then one|Bug|
|WORDSNET-20237|LayoutCollector incorrectly returns page index|Bug|
|WORDSNET-20238|LayoutCollector incorrectly returns page index|Bug|
|WORDSNET-20224|Inline images being shifted in HTML Fixed format|Bug|
|WORDSNET-19826|CPU hangs during processing Mail Merge involving INCLUDETEXT fields|Bug|
|WORDSNET-19405|DOCX to PDF file conversion gets one page more|Bug|
|WORDSNET-20244|Image's height width change during open save an RTF|Bug|
|WORDSNET-19202|Extra step numbers are being generated in Word to PDF transformation|Bug|
|WORDSNET-20116|Hyperlinks in the Table of Contents do not work|Bug|
|WORDSNET-20249|Unsupported EOT fonts from DOC format during roundtrip conversion|Bug|
|WORDSNET-20251|After conversion to PDF, some text with radio buttons is mixed up|Bug|
|WORDSNET-20247|Document.Compare throws System.InvalidOperationException|Bug|
|WORDSNET-20186|Document.Range.Replace regex string anchors not working|Bug|
|WORDSNET-20104|WordArt Shape turns into boxes in the rendered document|Bug|
|WORDSNET-20232|Image renders incorrectly after DOC to HtmlFixed conversion|Bug|
|WORDSNET-20028|Conversion to HTML results in wrong spacing|Bug|
|WORDSNET-20172|On conversion from MHTML to PDF, the exception "NotSupportedException" has been thrown|Bug|
|WORDSNET-20268|Offset shapes in SmartArt when using the Advanced mode|Bug|
|WORDSNET-20118|Second attempt to save in RTF file format seems to hang|Bug|
|WORDSNET-19863|SVG is rendered incorrectly in output DOCX/PDF|Bug|
|WORDSNET-19352|DOCX to PDF conversion issue with heading numbers|Bug|
|WORDSNET-19647|SVG images not displayed correctly|Bug|
|WORDSNET-20069|A table header is repeated after conversion from DOTX to DOCX|Bug|
|WORDSNET-19885|HTML file load wrong encoding|Bug|
|WORDSNET-20288|Chinese text is overlapping in icon caption of OleObject|Bug|
|WORDSNET-20290|The width of the fraction is incorrect after converting to PDF|Bug|
|WORDSNET-20292|Number of type string unexpectedly changes the value in LINQ Reporting Engine|Bug|
|WORDSNET-20223|System.ArgumentOutOfRangeException when saving the document on Xamarin|Bug|
|WORDSNET-20134|A Pageref appearing in PDF Table of Contents|Bug|
|WORDSNET-20139|Infinite loop while converting DOCX to PDF|Bug|
|WORDSNET-19929|An Arial bold formatting has been invalidated in PDF|Bug|
|WORDSNET-20152|Ignore fonts from %WINDIR%\Fonts\Deleted folder|Bug|
|WORDSNET-20271|Invalid "d" attribute value of SVG Path leads to an exception|Bug|
|WORDSNET-20153|DOCX to HTML conversion issue with image position|Bug|
|WORDSNET-20163|Word file containing images doesn't get properly converted to PDF file|Bug|
|WORDSNET-19664|IncludePicture Image does not scale properly|Bug|
|WORDSNET-20164|NullReferenceException is thrown upon converting HTML to MD|Bug|
|WORDSNET-20181|System.InvalidOperationException is thrown while inserting a document into another|Bug|
|WORDSNET-20320|Aspose.Words.Document constructor hangs for ODT under netcoreapp3.1|Bug|
|WORDSNET-20171|On conversion from MHTML to PDF, the exception "NullReferenceException" has been thrown|Bug|
|WORDSNET-18360|Text is overlapped after conversion from DOCX to PDF|Bug|
|WORDSNET-11448|Thai Text rendering issue in output TIFF/PDF|Bug|
|WORDSNET-19688|Paragraph spacing has been automatically changed to 10|Bug|
|WORDSNET-15503|Paragraph' line is rendered on the previous page in output PDF|Bug|
|WORDSNET-19603|Just open and save DOCX document, the style is modified|Bug|
|WORDSNET-15463|DOC to PDF - Output is incorrect on long content|Bug|
|WORDSNET-15928|The blank page is inserted after conversion from DOCX to PDF|Bug|
|WORDSNET-14528|Shapes do not render correctly in output HtmlFixed|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new public property OoxmlSaveOptions.CompressionLevel

Related issue: WORDSNET-20169

A new public option has been added to the 'OoxmlSaveOptions' class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies the compression level used to save document.
/// </summary>
public CompressionLevel CompressionLevel
{{< /highlight >}}

The corresponding public 'CompressionLevel' enum has been added to the 'Aspose.Words.Saving' namespace:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// The compression level for OOXML files. 
/// <para>
/// (DOCX and DOTX files are internally a ZIP-archive, this property controls the compression level of the archive.
/// </para>
/// <para>
/// Note, that FlatOpc file is not a ZIP-archive, therefore, this property does not affect the FlatOpc files.)
/// </para>
/// </summary>
public enum CompressionLevel
{
    /// <summary>
    /// Normal compression level. Default compression level used by Aspose.Words.
    /// </summary>
    Normal = 0,
    /// <summary>
    /// Maximum compression level.
    /// </summary>
    Maximum = 1,
    /// <summary>
    /// Fast compression level.
    /// </summary>
    Fast = 2,
    /// <summary>
    /// Super Fast compression level. Microsoft Word uses this compression level.
    /// </summary>
    SuperFast = 3
}
{{< /highlight >}}

Use Case: Explains how to specify the compression level 'SuperFast' (used by Microsoft Word) to save the document.

**.NET**

{{< highlight csharp >}}
Document doc = new Document("in.docx");
OoxmlSaveOptions so = new OoxmlSaveOptions(SaveFormat.Docx);
so.CompressionLevel = CompressionLevel.SuperFast;
doc.Save("out.docx", so);
{{< /highlight >}}


### Added page layout callback

Related issue WORDSNET-19093

Document.LayoutOptions.Callback property

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets or sets <see cref="IPageLayoutCallback"/> implementation used by page layout model.
/// </summary>
public IPageLayoutCallback Callback
{{< /highlight >}}

An interface implemented by application:

**.NET**

{{< highlight csharp >}}
public interface IPageLayoutCallback
{
    /// <summary>
    /// This is called to notify of layout build and rendering progress.
    /// </summary>
    /// <remarks>
    /// Exception when thrown by implementation aborts layout build process.<para />
    /// </remarks>
    void Notify(PageLayoutCallbackArgs args);
}
{{< /highlight >}}

Event arguments

**.NET**

{{< highlight csharp >}}
public class PageLayoutCallbackArgs
{
    /// <summary>
    /// Gets event.
    /// </summary>
    public PageLayoutEvent Event { get; }
    /// <summary>
    /// Gets document.
    /// </summary>
    public Document Document
    {
        get { return _Document; }
    }
    /// <summary>
    /// Gets 0-based index of the page in the document this event relates to.
    /// Returns negative value if there is no associated page, or if page was removed during reflow.
    /// </summary>
    public int PageIndex
    {
        get { return Part != null ? Part.GetPage().GetIndex() : -1; }
    }
}
{{< /highlight >}}

Event codes

**.NET**

{{< highlight csharp >}}
public enum PageLayoutEvent
{
    /// <summary>
    /// Default value
    /// </summary>
    None,
    /// <summary>
    /// Corresponds to a checkpoint in code which is often visited and which is suitable to abort process.<para/>
    /// While inside <see cref="IPageLayoutCallback.Notify(PageLayoutCallbackArgs)"/> throw custom exception to abort process.<para/>
    /// You can throw when handling any callback event to abort process.<para/>
    /// Note that if process is aborted the page layout model remains in undefined state. If process is aborted upon reflow of a complete page,
    /// however, it should be possible to use layout model up to the end of that page.<para/>
    /// </summary>
    WatchDog,
    /// <summary>
    /// Build of the page layout has started. Fired once.
    /// This is the first event which occurs when <see cref="Document.UpdatePageLayout"/> is called.
    /// </summary>
    BuildStarted,
    /// <summary>
    /// Build of the page layout has finished. Fired once.
    /// This is the last event which occurs when <see cref="Document.UpdatePageLayout"/> is called.
    /// </summary>
    BuildFinished,
    /// <summary>
    /// Conversion of document model to page layout has started. Fired once.
    /// This occurs when layout model starts pulling document content.
    /// </summary>
    ConversionStarted,
    /// <summary>
    /// Conversion of document model to page layout has finished. Fired once.
    /// This occurs when layout model stops pulling document content.
    /// </summary>
    ConversionFinished,
    /// <summary>
    /// Reflow of the page layout has started. Fired once.
    /// This occurs when layout model starts reflowing document content.
    /// </summary>
    ReflowStarted,
    /// <summary>
    /// Reflow of the page layout has finished. Fired once.
    /// This occurs when layout model stops reflowing document content.
    /// </summary>
    ReflowFinished,
    /// <summary>
    /// Reflow of the page has started.
    /// Note that page may reflow multiple times and that reflow may restart before it is finished.
    /// <seealso cref="PageLayoutCallbackArgs.PageIndex"/>
    /// </summary>
    PartReflowStarted,
    /// <summary>
    /// Reflow of the page has finished.
    /// Note that page may reflow multiple times and that reflow may restart before it is finished.
    /// <seealso cref="PageLayoutCallbackArgs.PageIndex"/>
    /// </summary>
    PartReflowFinished,
    /// <summary>
    /// Rendering of page has started. This is fired once per page.
    /// </summary>
    PartRenderingStarted,
    /// <summary>
    /// Rendering of page has finished. This is fired once per page.
    /// </summary>
    PartRenderingFinished,
}
{{< /highlight >}}


### Added public property CleanupOptions.DuplicateStyle

A new public property DuplicateStyle has been added into the CleanupOptions class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets/sets a flag indicating whether duplicate styles should be removed from document.
/// Default value is <b>false</b>.
/// </summary>
public bool DuplicateStyle { get; set; }
{{< /highlight >}}



**Use Case:**

**.NET**

{{< highlight csharp >}}
Document doc = new Document(fileName);
CleanupOptions options = new CleanupOptions();
options.DuplicateStyle = true;
doc.Cleanup(options);
doc.Save(outFileName);
{{< /highlight >}}

### Added а new public method FontInfo.GetEmbeddedFontAsOpenType()

Related issue: WORDSNET-20249

A new method GetEmbeddedFontAsOpenType() has been added to FontInfo class. It allows to convert embedded fonts in Embedded OpenType format (which comes from .doc documents) to OpenType.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Gets an embedded font file in OpenType format. Fonts in Embedded OpenType format are converted to OpenType.
/// </summary>
/// <param name="style">Specifies the font style to retrieve.</param>
/// <returns>Returns <c>null</c> if the specified font is not embedded.</returns>
public byte[] GetEmbeddedFontAsOpenType(EmbeddedFontStyle style)
{{< /highlight >}}

### New helper class to work with Watermark inside document was introduced

Related issue: WORDSNET-4879.

The new property Watermark has been added to the Document class.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Provides access to the document watermark.
/// </summary>
public Watermark Watermark { get; }
{{< /highlight >}}

The new Watermark class allows adding/removing the watermark from the document. A watermark can be created from a text or from an image.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Represents class to work with document watermark.
/// </summary>
public sealed class Watermark
{
    /// <summary>
    /// Adds Text watermark into the document.
    /// </summary>
    /// <param name="text">Text that displays as a watermark.</param>
    /// <remarks>
    /// The text length should be in the range from 1 to 200 inclusive.
    /// The text cannot be null or consist only of whitespaces.
    /// </remarks>
    /// <exception cref="ArgumentOutOfRangeException">
    /// Throws when the text length is out of range or the text consists only of whitespaces.
    /// </exception>
    /// <exception cref="ArgumentNullException">
    /// Throws when the text is null.
    /// </exception>
    public void SetText(string text)
    /// <summary>
    /// Adds Text watermark into the document.
    /// </summary>
    /// <param name="text">Text that displays as a watermark.</param>
    /// <param name="options">Defines additional options for the text watermark.</param>
    /// <remarks>
    /// The text length should be in the range from 1 to 200 inclusive.
    /// The text cannot be null or consist only of whitespaces.
    /// </remarks>
    /// <exception cref="ArgumentOutOfRangeException">
    /// Throws when the text length is out of range or the text consists only of whitespaces.
    /// </exception>
    /// <exception cref="ArgumentNullException">
    /// Throws when the text is null.
    /// </exception>
    /// <remarks>If options is null, the watermark will be set with default properties.</remarks>
    public void SetText(string text, TextWatermarkOptions options)
    /// <summary>
    /// Adds Image watermark into the document.
    /// </summary>
    /// <param name="image">Image that displays as a watermark.</param>
    /// <exception cref="ArgumentNullException">
    /// Throws when the image is null.
    /// </exception>
    public void SetImage(Image image)
    /// <summary>
    /// Adds Image watermark into the document.
    /// </summary>
    /// <param name="image">Image that displays as a watermark.</param>
    /// <param name="options">Defines additional options for the image watermark.</param>
    /// <exception cref="ArgumentNullException">
    /// Throws when the image is null.
    /// </exception>
    /// <remarks>If options is null, the watermark will be set with default properties.</remarks>
    public void SetImage(Image image, ImageWatermarkOptions options)
    /// <summary>
    /// Removes watermark.
    /// </summary>
    public void Remove()
    /// <summary>
    /// Returns watermark type.
    /// </summary>
    public WatermarkType Type { get; }
}
{{< /highlight >}}

The new enum is provided to determine the type of watermark inside the document.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies the watermark type.
/// </summary>
public enum WatermarkType
{
    /// <summary>
    /// Indicates that the text will be used as a watermark.
    /// <p>Such a watermark corresponds to a WordArt object.</p>
    /// </summary>
    Text,
    /// <summary>
    /// Indicates that the image will be used as a watermark.
    /// <p>Such a watermark corresponds to a shape with image.</p>
    /// </summary>
    Image,
    /// <summary>
    /// Indicates watermark is no set.
    /// </summary>
    None
}
{{< /highlight >}}

The following option classes are provided to customize the watermark.

For Text watermark.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Contains options that can be specified when adding a watermark with text.
/// </summary>
public class TextWatermarkOptions
{
    /// <summary>
    /// Gets or sets font family name. The default value is "Calibri".
    /// </summary>
    public string FontFamily { get; set; }
    /// <summary>
    /// Gets or sets font color. The default value is Color.Silver.
    /// </summary>
    public Color Color { get; set; }
    /// <summary>
    /// Gets or sets a font size. The default value is 0 - auto.
    /// </summary>
    /// <remarks>
    /// <p>Valid values range from 0 to 65.5 inclusive.</p>
    /// <p> Auto font size means that the watermark will be scaled to its max width and max height relative to
    /// the page margins.</p>
    /// </remarks>
    /// <exception cref="ArgumentOutOfRangeException">
    /// Throws when argument was out of the range of valid values.
    /// </exception>
    public float FontSize { get; set; }
    /// <summary>
    /// Gets or sets a boolean value which is responsible for opacity of the watermark.
    /// The default value is <code>true</code>.
    /// </summary>
    public bool IsSemitrasparent { get; set; }
    /// <summary>
    /// Gets or sets layout of the watermark. The default value is <see cref="WatermarkLayout.Diagonal"/>.
    /// </summary>
    public WatermarkLayout Layout { get; set; }
}
{{< /highlight >}}

The new enum is provided to set the text watermark in a diagonal or horizontal layout.

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Defines layout of the watermark relative to the watermark center.
/// </summary>
public enum WatermarkLayout
{
    /// <summary>
    /// Horizontal watermark layout. Corresponds to 0 degrees of rotation.
    /// </summary>
    Horizontal = 0,
    /// <summary>
    /// Diagonal watermark layout. Corresponds to 315 degrees of rotation.
    /// </summary>
    Diagonal = 315
}
{{< /highlight >}}

For Image watermark:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Contains options that can be specified when adding a watermark with image.
/// </summary>
public class ImageWatermarkOptions
{
    /// <summary>
    /// Gets or sets the scale factor expressed as a fraction of the image. The default value is 0 - auto.
    /// </summary>
    /// <remarks>
    /// <p>Valid values range from 0 to 65.5 inclusive.</p>
    /// <p>Auto scale means that the watermark will be scaled to its max width and max height relative to
    /// the page margins.</p>
    /// </remarks>
    /// <exception cref="ArgumentOutOfRangeException">
    /// Throws when argument was out of the range of valid values.
    /// </exception>
    public double Scale { get; set; }
    /// <summary>
    /// Gets or sets a boolean value which is responsible for washout effect of the watermark.
    /// The default value is <code>true</code>.
    /// </summary>
    public bool IsWashout { get; set; }
}
{{< /highlight >}}

#### Use Case: Add Text watermark with specific options.

**.NET**

{{< highlight csharp >}}
Document doc = new Document(pathFile);
TextWatermarkOptions options = new TextWatermarkOptions()
{
    FontFamily = "Arial",
    FontSize = 36,
    Color = Color.Black,
    Layout = WatermarkLayout.Horizontal,
    IsSemitrasparent = false
};
doc.Watermark.SetText("Test", options);
{{< /highlight >}}

**Use Case: Add Image watermark with specific options.**

**.NET**

{{< highlight csharp >}}
Document doc = new Document(pathFile);
ImageWatermarkOptions options = new ImageWatermarkOptions()
{
    Scale = 5,
    IsWashout = false
};
doc.Watermark.SetImage(Image.FromFile(filePath), options);
{{< /highlight >}}

**Use Case: Remove the watermark from the document.**

**.NET**

{{< highlight csharp >}}
Document doc = new Document(pathFile);
if (doc.Watermark.Type == WatermarkType.Text)
    doc.Watermark.Remove();
{{< /highlight >}}


### New public property Document.ShowGrammaticalErrors has been added

Related issue: WORDSNET-10404

A new public option has been added to the 'Document' class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies whether to display grammar errors in this document.
/// </summary>
public bool ShowGrammaticalErrors
{{< /highlight >}}

**Use Case: Explains how to show grammar errors.**

**.NET**

{{< highlight csharp >}}
Document doc = new Document("in.doc");
doc.ShowGrammaticalErrors = true;
doc.Save("out.doc");
{{< /highlight >}}


### New public property Document.ShowSpellingErrors has been added

Related issue: WORDSNET-10403

A new public option has been added to the 'Document' class:

**.NET**

{{< highlight csharp >}}
/// <summary>
/// Specifies whether to display spelling errors in this document.
/// </summary>
public bool ShowSpellingErrors
{{< /highlight >}}



**Use Case: Explains how to show spelling errors.**

**.NET**

{{< highlight csharp >}}
Document doc = new Document("in.doc");
doc.ShowSpellingErrors = true;
doc.Save("out.doc");
{{< /highlight >}}




