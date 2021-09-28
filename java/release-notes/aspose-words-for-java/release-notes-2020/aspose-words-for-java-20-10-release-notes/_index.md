---
title: Aspose.Words for Java 20.10 Release Notes
type: docs
weight: 7
url: /java/aspose-words-for-java-20-10-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 20.10](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/20.10).

{{% /alert %}} 

## Major Features

There are 101 improvements and fixes in this regular monthly release. The most notable are:

- Tamil text can be rendered using the HarfBuzz plugin.
- Added support for loading CHM documents.
- Document.ExtractPages() feature was introduced.
- Implemented a new API for exporting specific pages to fixed page formats.
- Released the first version of SmartArt Cold Rendering.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-3110	|Allow export of non-sequential pages to rendered formats|New Feature|
|WORDSNET-17788	|Consider supporting the CHM format|New Feature|
|WORDSNET-11143	|DOCX to HTML issue with smartArt rendering|New Feature|
|WORDSNET-19983	|Improve text effects rendering in .NET Standard|New Feature|
|WORDSNET-20820	|Support exporting specific pages to PDF|New Feature|
|WORDSNET-20702	|Add feature to insert OLE as 'Package' and insert correct document type icon|New Feature|
|WORDSNET-21062	|Bind or Get Mapped XML Data (CustomXmlPart) with/from StructuredDocumentTagRangeStart|New Feature|
|WORDSNET-21029	|Provide option to mark images as Equal in case of difference in "id" attribute|New Feature|
|WORDSNET-16228	|Integrate Page Splitting feature in Aspose.Words|New Feature|
|WORDSNET-3522	|Consider adding an option to leave the pagerefs untouched upon rendering|New Feature|
|WORDSNET-20623	|PDF to DOCX - paragraph split|Enhancement|
|WORDSNET-20174	|How to use Noto fonts in AWS Lambda|Enhancement|
|WORDSJAVA-1537	|Mail merge throws OutOfMemoryError|Bug|
|WORDSJAVA-1546	|DOCX to PDF conversion issue with Tamil text|Bug|
|WORDSJAVA-1933	|JDK11 Barcode uses forbidden sun* classes|Bug|
|WORDSJAVA-1934	|JDK11. Italic text style simulation doesn't work|Bug|
|WORDSJAVA-2015	|JDK11 Horizontal and Vertical scaling may lead to the line disappearance|Bug|
|WORDSJAVA-2347	|On MHTML to PDF conversion the FileCorruptedException has been thrown|Bug|
|WORDSJAVA-2358	|Minor issues with lights while rendering 3D circles with OpenGL|Bug|
|WORDSJAVA-2421	|getText() returns truncated string from ODT document's field with special characters.|Bug|
|WORDSJAVA-2449	|Metafile image (with  broken metadata) disappear after converting the DOCX file to PNG.|Bug|
|WORDSJAVA-2457	|Save Attribute order in Xml|Bug|
|WORDSJAVA-2458	|Image-related exceptions while converting MHTML to PDF.|Bug|
|WORDSJAVA-2467	|System.OutOfMemoryException is thrown while converting crazy-big RTF to PDF|Bug|
|WORDSNET-20879	|System.InvalidOperationException when save document to markdown format|Bug|
|WORDSNET-20983	|RTF to DOCX and RTF conversion issue with the font 'Segoe UI Symbol'|Bug|
|WORDSNET-20041	|Document to HTML adds extra styling|Bug|
|WORDSNET-21142	|Broken alignment and numbering when converting HTML to DOCX|Bug|
|WORDSNET-6513	|DrawingML becomes invisible when rendering to PDF|Bug|
|WORDSNET-20788	|Extra spaces appear in Model (.ODT format)|Bug|
|WORDSNET-20671	|NullReferenceException when call UpdatePageLayout for specific document|Bug|
|WORDSNET-21002	|Issue with Serial Number in the Tracked Changes enabled document|Bug|
|WORDSNET-14458	|Junk characters in bullet points when converted DOCX to PDF|Bug|
|WORDSNET-21012	|FileCorruptedException when loading ODT document|Bug|
|WORDSNET-21011	|NullReferenceException when saving the attached document as PDF|Bug|
|WORDSNET-20221	|Consider disabling CompatibilityOptions.UsePrinterMetrics by default during rendering to mimic MS Word 2019|Bug|
|WORDSNET-21024	|Aspose.Words 20.6.0: Cannot insert SVG image|Bug|
|WORDSNET-21025	|FileCorruptedException when load specific document|Bug|
|WORDSNET-21027	|OverflowException when saving the specific document as png|Bug|
|WORDSNET-21030	|UpdatePageLayout causes System.DivideByZeroException|Bug|
|WORDSNET-20700	|PDF to DOCX - page numbers not recognized|Bug|
|WORDSNET-21040	|Cell text is rendered at the right side in output PDF|Bug|
|WORDSNET-20517	|SmartArt is lost after DOC to HtmlFixed conversion|Bug|
|WORDSNET-21047	|Long hand format lost if value over a million|Bug|
|WORDSNET-20977	|Word to PDF conversion misses justified formatting|Bug|
|WORDSNET-18657	|Incorrect PageCount in some documents|Bug|
|WORDSNET-21051	|Incorrect reference in LinePart.LastVisualSpan leads to a cycle in a linked list of visual spans|Bug|
|WORDSNET-20661	|Fanwood font issue while converting PDF to DOCX on Linux|Bug|
|WORDSNET-20382	|Make sure all external resources are importing via IResourceLoadingCallback|Bug|
|WORDSNET-21058	|CommentsIds.xml and CommentsExtensible.xml parts is not retained after saving the document|Bug|
|WORDSNET-20825	|System.NullReferenceException occurs upon saving DOCX to PDF|Bug|
|WORDSNET-20746	|SmartArt text wrapping|Bug|
|WORDSNET-21065	|Aspose.Words 20.9: DivideByZeroException when updating statistics of a DOTM document|Bug|
|WORDSNET-21071	|Cannot access to indexer for VbaReferenceCollection|Bug|
|WORDSNET-21073	|Implement conversion of images from EMF to PNG during import for RTF format|Bug|
|WORDSNET-20541	|Conversion to PDF - Table breaks and shifts to the previous page|Bug|
|WORDSNET-19599	|Floating table vertical container bounds in 2013 mode|Bug|
|WORDSNET-21080	|Image is lost after DOCX to PDF conversion|Bug|
|WORDSNET-19652	|SmartArt Shape not preserved during rendering|Bug|
|WORDSNET-19655	|Remove invalid nested table indent values during validation|Bug|
|WORDSNET-20537	|Text pushed to the next page - Conversion to PDF|Bug|
|WORDSNET-21083	|DOCX to PDF Conversion with Chart : System Argument Out Of Range Exception|Bug|
|WORDSNET-21032	|OutOfMemoryException when SaveAs document with SVG image as PNG|Bug|
|WORDSNET-20300	|LINQ Reporting Engine - "backColor" adds unwanted carriage return|Bug|
|WORDSNET-21088	|Body.ChildNodes returns incorrect nodes|Bug|
|WORDSNET-21090	|Incorrect page background|Bug|
|WORDSNET-21091	|Tab spaces lost after open/save with Aspose.Words|Bug|
|WORDSNET-20828	|Performance issue while converting DOCX to PDF|Bug|
|WORDSNET-21087	|GetShapeRenderer throws NullReferenceException upon first call - No problem when calling it the second time |Bug|
|WORDSNET-21097	|Fill.Opacity is not set when Shape is inserted by InsertShape|Bug|
|WORDSNET-20333	|JoinRunsWithSameFormatting does not join the Run nodes|Bug|
|WORDSNET-19140	|Document.JoinRunsWithSameFormatting does not join Runs with same formatting|Bug|
|WORDSNET-21101	|Append Word Documents with KeepDifferentStyles uses ?normal?-style of destination document|Bug|
|WORDSNET-20871	|Exception while saving PDF|Bug|
|WORDSNET-21103	|DOCX to PDF conversion: Comments causing System.NullReferenceException|Bug|
|WORDSNET-20877	|System.NullReferenceException while converting DOCX to PDF|Bug|
|WORDSNET-20886	|System.NullReferenceException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-20891	|Do not show HTML markup code during Word DOCX to PDF conversion|Bug|
|WORDSNET-20888	|DOCX to PDF conversion issue with David font rendering|Bug|
|WORDSNET-20697	|Numbering (lists) issue after PDF to DOCX|Bug|
|WORDSNET-21086	|Wrong themeColor value when converting RTF to DOCX|Bug|
|WORDSNET-21113	|DOCX to PDF conversion fails after calling UpdateFields - footnote|Bug|
|WORDSNET-20912	|KeepDifferentStyles behavior changed for Normal style?|Bug|
|WORDSNET-20047	|Single table in Word is converted into two tables in output HTML|Bug|
|WORDSNET-20736	|InsertOleObject does not work with SkiaSharp.SKBitmap when EMF file is inserted into document|Bug|
|WORDSNET-20934	|System.NullReferenceException on UpdatePageLayout|Bug|
|WORDSNET-20935	|System.NullReferenceException while saving|Bug|
|WORDSNET-21121	|Saving to PDF after calling UpdateFields method throws System.NullReferenceException|Bug|
|WORDSNET-20942	|LayoutCollector return fewer pages for the Document.|Bug|
|WORDSNET-21133	|Conversion of doc, DOCX with emf images to PDF. Consume a large amount of memory|Bug|
|WORDSNET-20022	|Provide API to set Format of Index listing to Modern Fancy etc|Bug|
|WORDSNET-21144	|System.NullReferenceException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-20970	|JsonDataSource throws System.Data.DuplicateNameException|Bug|
|WORDSNET-20969	|Bullet is lost after re-saving DOCX|Bug|
|WORDSNET-20980	|Images are overlapped after DOCX to PDF conversion|Bug|
|WORDSNET-19139	|Document.JoinRunsWithSameFormatting does not join Runs with same formatting|Bug|
|WORDSNET-6212	|DOCX to PDF conversion issue with absolute text field|Bug|
|WORDSNET-21157	|Aspose.Words 20.9: Loading particular DOCX document and save it to PDF raises exception|Bug|
|WORDSNET-6026	|While converting DOCX to PDF,  footnotes merged into contents|Bug|
|WORDSNET-7885	|Text/Image positions are incorrect while conversion from MHT to DOC/DOCX|Bug|
|WORDSNET-21193	|Broken numbering when converting HTML to DOCX|Bug|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 20.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies existing behavior is especially important and is documented here.

### Added a new public option LayoutOptions.IgnorePrinterMetrics

Related issue: WORDSNET-20221

Word 2019 ignores the "Use printer metrics to lay out document" compatibility option, though this option is still present in the "Compatibility options for" dialog under Word Options -> Advanced and is still accessible via the Document.Compatibility property in Word VBA. Comparing with previous Word versions, Word 2019 produces a different layout for documents with this compatibility option enabled.

The new default behaviour for Aspose.Words is to ignore the "Use printer metrics to lay out document" compatibility option, while it is still possible to layout documents as previous Word versions.

A new public property IgnorePrinterMetrics has been added to the LayoutOptions class.
{{< highlight csharp >}}
/// <summary>
/// Gets or sets indication of whether the "Use printer metrics to layout document" compatibility option is ignored.
/// Default is True.
/// </summary>
public bool IgnorePrinterMetrics
{{< /highlight >}}

{{< highlight csharp>}}
Document doc = new Document(fileName);
doc.LayoutOptions.IgnorePrinterMetrics = false;
doc.Save(outFileName);
{{< /highlight >}}

### Added a new public overloaded methods InsertOleObjectAsIcon

Related issue: WORDSNET-20702

New public overloaded methods 'InsertOleObjectAsIcon' have been added to the 'DocumentBuilder' class:
{{< highlight csharp >}}
/// <summary>
/// Inserts an embedded or linked OLE object as icon into the document.
/// Allows to specify icon file and caption. Detects OLE object type using given progID parameter.
/// </summary>
/// <param name="fileName">Full path to the file.</param>
/// <param name="progId">ProgId of OLE object.</param>
/// <param name="isLinked">
/// If true then linked OLE object is inserted otherwise embedded OLE object is inserted.
/// </param>
/// <param name="iconFile">
/// Full path to the ICO file. If the value is null, Aspose.Words will use a predefined image.
/// </param>
/// <param name="iconCaption">Icon caption.</param>
/// <returns>Shape node containing Ole object and inserted at the current Builder position.</returns>
public Shape InsertOleObjectAsIcon(string fileName, string progId, bool isLinked, string iconFile, string iconCaption);
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Inserts an embedded OLE object as icon from a stream into the document.
/// Allows to specify icon file and caption. Detects OLE object type using given progID parameter.
/// </summary>
/// <param name="stream">Stream containing application data.</param>
/// <param name="progId">ProgId of OLE object.</param>
/// param name="iconFile">
/// Full path to the ICO file. If the value is null, Aspose.Words will use a predefined image.
/// </param>
/// <param name="iconCaption">Icon caption.</param>
/// <returns>Shape node containing Ole object and inserted at the current Builder position.</returns>
public Shape InsertOleObjectAsIcon(Stream stream, string progId, string iconFile, string iconCaption);
{{< /highlight >}}

Use Case. Explains how to insert an OLE object as a "Package" and insert an icon of the correct document type:
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.InsertOleObjectAsIcon("C:\\embedded.xlsx", "Package", false, "C:\\icon.ico", "My embedded file");
doc.Save("C:\\output.docx");
{{< /highlight >}}
{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
using (MemoryStream stream = new MemoryStream(File.ReadAllBytes("C:\\embedded.xlsx")))
    builder.InsertOleObjectAsIcon(stream, "Package", "C:\\icon.ico", "My embedded file");
doc.Save("C:\\output.docx");
{{< /highlight >}}

### Added a new public property CompareOptions.IgnoreDmlUniqueId

Related issue: WORDSNET-19042

Added a new public property CompareOptions.IgnoreDmlUniqueId:

{{< highlight csharp >}}
/// <summary>
/// Specifies whether to ignore difference in DrawingML unique Id.
/// Default value is <b>false</b>.
/// </summary>
public bool IgnoreDmlUniqueId
{{< /highlight >}}
It is false by default to preserve Word's behaviour.

Use Case:
{{< highlight csharp >}}
Document docA = TestUtil.Open(DocumentAPath);
Document docB = TestUtil.Open(DocumentBPath);

CompareOptions compareOptions = new CompareOptions();
compareOptions.IgnoreDmlUniqueId = true;

docA.Compare(docB, "vs", DateTime.Now, compareOptions);
{{< /highlight >}}

### Added a new public property LoadOptions.ConvertMetafilesToPng

Related issue: WORDSNET-20809

This new LoadOption allows reducing memory usage.
{{< highlight csharp >}}
/// <summary>
/// Gets or sets whether to convert metafile (<see cref="FileFormat.Wmf"/> or <see cref="FileFormat.Emf"/>) images to <see cref="FileFormat.Png" /> image format.
/// </summary>
/// <remarks>
/// Metafiles (<see cref="FileFormat.Wmf"/> or <see cref="FileFormat.Emf"/>) is an uncompressed image format and sometimes requires to much RAM to hold and process document.
/// This option allows to convert all metafile images to <see cref="FileFormat.Png" /> on document loading.
/// Please note - conversion vector graphics to raster decreases quality of the images.
/// </remarks>
public bool ConvertMetafilesToPng
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
LoadOptions lo = new LoadOptions();
lo.ConvertMetafilesToPng = true;

Document doc = new Document(fielName, lo);
{{< /highlight >}}

### Added a new public property StructuredDocumentTagRangeStart.XmlMapping

Related issue: WORDSNET-21062

A new public property XmlMapping has been added to the StructuredDocumentTagRangeStart class:
{{< highlight csharp >}}
/// <summary>
/// Gets an object that represents the mapping of this structured document tag range to XML data in a custom XML part of the current document.
/// </summary>
/// <remarks>
/// You can use the SetMapping(CustomXmlPart, string, string) method of this object to map a structured document tag range to XML data.
/// </remarks>
public XmlMapping XmlMapping
{
    get;
}
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
Document doc = new Document(fileName);

StructuredDocumentTagRangeStart sdtRangeStart = (StructuredDocumentTagRangeStart)doc.GetChild(NodeType.StructuredDocumentTagRangeStart, 0, true);

sdtRangeStart.XmlMapping.SetMapping(doc.CustomXmlParts[0], "/Root/Element", null);

doc.Save(outFileName);
{{< /highlight >}}

### Added FieldOptions.FieldIndexFormat property and FieldIndexFormat enum

Related issue: WORDSNET-20022

To satisfy the customer's requirements, we have added the FieldOptions.FieldIndexFormat property and FieldIndexFormat enum:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a <see cref="FieldIndexFormat"/> that represents
/// the formatting for the <see cref="FieldIndex"/> fields in the document.
/// </summary>
public FieldIndexFormat FieldIndexFormat
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Specifies the formatting for <see cref="FieldIndex"/> fields in a document.
/// </summary>
public enum FieldIndexFormat
{
    /// <summary>From template.</summary>
    Template = 0,
    /// <summary>Classic.</summary>
    Classic = 1,
    /// <summary>Fancy.</summary>
    Fancy = 2,
    /// <summary>Modern.</summary>
    Modern = 3,
    /// <summary>Bulleted.</summary>
    Bulleted = 4,
    /// <summary>Formal.</summary>
    Formal = 5,
    /// <summary>Simple.</summary>
    Simple = 6
}
{{< /highlight >}}

Use case is as simple as:
{{< highlight csharp >}}
document.FieldOptions.FieldIndexFormat = FieldIndexFormat.Fancy;
{{< /highlight >}}

### Added support for loading CHM documents

Related issue: WORDSNET-17788

Aspose.Words now can load CHM documents.

A CHM document is a collection of HTML documents called "topics". Currently, Aspose.Words always loads all topics from a CHM document in the order in which they appear in the table of contents. CHM documents that don't have a table of contents, are also supported. When loading such documents, Aspose.Words loads the default topic and then locates additional topics by recursively following hyperlinks in already loaded topics.

The following publicly visible enum values were added:

{{< highlight csharp >}}
FileFormat.Chm
LoadFormat.Chm
WarningSource.Chm
{{< /highlight >}}

The FileFormatUtil class can now be used to determine if a file is a CHM document. For example, the following call

{{< highlight csharp >}}
FileFormatInfo info = FileFormatUtil.DetectFileFormat("help.chm");
{{< /highlight >}}

will return an info instance with the FileFormatInfo.LoadFormat property set to LoadFormat.Chm.

Of all load options only LoadOptions.Encoding currently affects when working with CHM documents. It is useful for loading CHM documents that do not specify the encoding in their HTML topics.
LoadOptions.ResourceLoadingCallback is not invoked when loading a CHM document. Aspose.Words expects all referenced resource files to be stored in the CHM document along with topic files. External resource files are not supported.

The use cases for loading CHM documents are as follows:
{{< highlight csharp >}}
Document doc = new Document("help.chm");
{{< /highlight >}}
or
{{< highlight csharp >}}
LoadOptions options = new LoadOptions
{
    Encoding = Encoding.GetEncoding("windows-1251")
};
Document doc = new Document("help.chm", options);
{{< /highlight >}}

### A new public property MarkdownSaveOptions.ImagesFolder has been added

Related issue: WORDSNET-20879

New public property 'ImagesFolder' has been added to the 'MarkdownSaveOptions' class:

{{< highlight csharp >}}
/// <summary>
/// Specifies the physical folder where images are saved when exporting a document to
/// the <see cref="Words.SaveFormat.Markdown"/> format. Default is an empty string.
/// </summary>
/// <remarks>
/// <para>
/// When you save a <see cref="Document"/> in <see cref="Words.SaveFormat.Markdown"/> format,
/// Aspose.Words needs to save all images embedded in the document as standalone files.
/// <see cref="ImagesFolder"/> allows you to specify where the images will be saved.
/// </para>
/// <para>
/// If you save a document into a file and provide a file name, Aspose.Words, by default, saves the images in
/// the same folder where the document file is saved. Use <see cref="ImagesFolder"/> to override this behavior.
/// </para>
/// <para>
/// If you save a document into a stream, Aspose.Words does not have a folder
/// where to save the images, but still needs to save the images somewhere. In this case,
/// you need to specify an accessible folder in the <see cref="ImagesFolder"/> property.
/// </para>
/// <para>
/// If the folder specified by <see cref="ImagesFolder"/> doesn't exist, it will be created automatically.
/// </para>
/// </remarks>
public string ImagesFolder
{{< /highlight >}}

Use Case: Explains how to use 'MarkdownSaveOptions.ImagesFolder' when saving a document to markdown format:
{{< highlight csharp >}}
Document doc = new Document("http://google.com");
MarkdownSaveOptions so = new MarkdownSaveOptions();
so.ImagesFolder = "C:\\Images";
using (MemoryStream stream = new MemoryStream())
    doc.Save(stream, so);
{{< /highlight >}}

### Document.DefaultTabStop property can now be zero

Related issue: WORDSNET-20746

Document.DefaultTabStop property can now be zero (previously only a positive whole number).

Use Case:
{{< highlight csharp >}}
Document doc = TestUtil.Open("input.docx");
doc.DefaultTabStop = 0;
{{< /highlight >}}

### Document.ExtractPages() method was introduced

Related issue: WORDSNET-16228

A new method ExtractPages() has been added to the Document class. Returns the new document, consisting of nodes located in the current document, within the specified page range.

{{< highlight csharp >}}
/// <summary>
/// Returns the <see cref="Document"/> object representing specified range of pages.
/// </summary>
/// <remarks>
/// The resulting document should look like the one in MS Word, as if we had performed 'Print specific pages' – the numbering,
/// headers/footers and cross tables layout will be preserved.
/// But due to a large number of nuances, appearing while reducing the number of pages, full match of the layout is a quiet complicated task requiring a lot of effort.
/// Depending on the document complexity there might be slight differences in the resulting document contents layout comparing to the source document.
/// Any feedback would be greatly appreciated.
/// </remarks>
/// <param name="index">The zero-based index of the first page to extract.</param>
/// <param name="count">Number of pages to be extracted.</param>
public Document ExtractPages(int index, int count)
{{< /highlight >}}

### Implemented new API for exporting specific pages to fixed page formats

Related issue: WORDSNET-20820

A new public API for exporting specific pages to fixed page formats has been implemented.

Previously, you could specify only one continuous range for rendering, but now you can specify a complex set of pages based on different page ranges or individual pages in any order. This provides a flexible way to combine pages into final documents in fixed page formats.

A new property in FixedPageSaveOptions class was introduced for this purpose:
{{< highlight csharp >}}
public abstract class FixedPageSaveOptions : SaveOptions
{
    <summary>
    Gets or sets the pages to render.
    Default is all the pages in the document.
    </summary>
    <remarks>
    Overrides <see cref="FixedPageSaveOptions.PageIndex"/> and <see cref="FixedPageSaveOptions.PageCount"/> when set.
    </remarks>
    public PageSet PageSet { get; set; }
}
{{< /highlight >}}

FixedPageSaveOptions.PageIndex and FixedPageSaveOptions.PageCount are marked obsolete now.
Pages are specified via new PageSet class:

{{< highlight csharp >}}
/// <summary>
/// Describes a random set of pages.
/// </summary>
public sealed class PageSet
{
    /// <summary>
    /// Gets a set with all the pages of the document in their original order.
    /// </summary>
    public static PageSet All { get;}

    /// <summary>
    /// Gets a set with all the even pages of the document in their original order.
    /// </summary>
    /// <remarks>
    /// Even pages have odd indices since page indices are zero-based.
    /// </remarks>
    public static PageSet Even { get;}
     
    /// <summary>
    /// Gets a set with all the odd pages of the document in their original order.
    /// </summary>
    /// <remarks>
    /// Odd pages have even indices since page indices are zero-based.
    /// </remarks>
    public static PageSet Odd { get; }
     
    /// <summary>
    /// Creates a page set based on exact page indices.
    /// </summary>
    /// <param name="pages">Zero-based indices of pages.</param>
    /// <remarks>
    /// If a page is encountered that is not in the document, an exception will be thrown during rendering.
    /// <see cref="int.MaxValue"/> means the last page in the document.
    /// </remarks>
    public PageSet(params int[] pages);
     
    /// <summary>
    /// Creates a page set based on ranges.
    /// </summary>
    /// <param name="ranges">Array of page ranges.</param>
    /// <remarks>
    /// If a range is encountered that starts after the last page in the document,
    /// an exception will be thrown during rendering.
    /// All ranges that end after the last page are truncated to fit in the document.
    /// </remarks>
    public PageSet(params PageRange[] ranges);
}
{{< /highlight >}}

A page set can consist of page ranges specified with PageRange class:
{{< highlight csharp >}}
/// <summary>
/// Represents a continuous range of pages.
/// </summary>
public sealed class PageRange
{
    /// <summary>
    /// Creates a new page range object.
    /// </summary>
    /// <param name="from">
    /// The starting page zero-based index.
    /// </param>
    /// <param name="to">
    /// The ending page zero-based index.
    /// If it exceeds the index of the last page in the document,
    /// it is truncated to fit in the document on rendering.
    /// </param>
    /// <remarks>
    /// <see cref="int.MaxValue"/> means the last page in the document.
    /// </remarks>
    public PageRange(int from, int to);
}
{{< /highlight >}}

Sample use case:
{{< highlight csharp >}}
// Export even pages to PDF.
PdfSaveOptions pdfOptions = new PdfSaveOptions();
pdfOptions.PageSet = PageSet.Even;
doc.Save("out.pdf", pdfOptions);

// Export various page ranges to multipage TIFF image.
ImageSaveOptions imageOptions = new ImageSaveOptions(SaveFormat.Tiff);
PageSet pageSet = new PageSet(
    new PageRange(1, 1),
    new PageRange(5, 6),
    new PageRange(1, 3),
    new PageRange(2, 5),
    new PageRange(1, 1));

imageOptions.PageSet = pageSet;
doc.Save("out.tiff", imageOptions);

// Export exact pages to XPS.
XpsSaveOptions xpsOptions = new XpsSaveOptions();
xpsOptions.PageSet = new PageSet(0, 1, 2, 5, 1, 3, 2, 3);
doc.Save("out.xps", xpsOptions);
{{< /highlight >}}

### Released the first version of SmartArt Cold Rendering

Microsoft Word generates and saves the pre-rendered drawing along with the SmartArt object. In most cases the pre-rendered drawing is rendered well by Aspose.Words and no additional actions required. However if the document is saved by other applications, the pre-rendered SmartArt drawing may be missing or incorrect. In this case the SmartArt object itself should be laid-out and rendered. We call this process the SmartArt Cold Rendering.

If pre-rendered drawing is available then Aspose.Words uses it to render the SmartArt object.
If pre-rendered drawing is missing then Aspose.Words implicitly performs Cold Rendering to render the SmartArt object.
If pre-rendered drawing is present but incorrect then it is required to perform SmartArt cold rendering explicitly by calling Shape.UpdateSmartArtDrawing() method.

In the first release only a limited number of standard Mircosoft Word SmartArt layouts are supported. Also part of these layouts are supported partially, i.e. the significant nodes and shapes of the diagram are rendered but there may be differences between Microsoft Word and Aspose.Words diagram layout.

List of fully supported layouts:

- Basic Block List
- Alternating Hexagons
- Vertical Bullet List
- Vertical Box List
- Varying Width List
- Horizontal Bullet List
- Grouped List
- Vertical Block List
- Vertical Chevron List
- Vertical Arrow List
- Trapezoid List
- Table List
- Pyramid List
- Target List
- Basic Process
- Accent Process
- Continuous Block Process
- Increasing Arrow Process
- Converging Text
- Basic Timeline
- Basic Chevron Process
- Chevron Accent Process
- Closed Chevron Process
- Chevron List
- Vertical Process
- Staggered Process
- Process List
- Basic Bending Process
- Repeating Bending Process
- Detailed Process
- Upward Arrow
- Descending Process
- Circular Bending Process
- Balance
- Funnel
- Gear
- Plus And Minus
- Arrow Ribbon
- Counterbalance Arrows
- Opposing Arrows
- Nested Target
- Basic Target
- Basic Pie
- Basic Venn
- Stacked Venn
- Interconnected Ring
- Basic Matrix
- Titled Matrix
- Grid Matrix
- Cycle Matrix

List of partially supported layouts:

- Lined List
- Vertical Bracket List
- Tab List
- Stacked List
- Vertical Accent List
- Vertical Circle List
- Step Up Process
- Step Down Process
- Alternating Flow
- Increasing Circle Process
- Pie Process
- Interconnected Block Process
- Process Arrows
- Circle Accent Timeline
- Circle Process
- Sub Step Process
- Phased Process
- Random to Result Process
- Circle Arrow Process
- Segmented Cycle
- Hexagon Radial
- Table Hierarchy
- Architecture Layout
- Circle Relationship
- Opposing Ideas
- Equation
- Vertical Equation
- Linear Venn
- Segmented Pyramid

Here are example pictures of Aspose.Words Cold Rendering of some standard layouts comparing to Microsoft Word output.

||Aspose.Words|Microsoft Word|
| :- | :- | :- |
|Basic Process	|<img src="BasicProcess Aspose.png" alt="BasicProcess Aspose"/>|<img src="BasicProcess Word.png" alt="BasicProcess Word"/>|
|Circular Bending Process	|<img src="CircularBendingProcess Aspose.png" alt="CircularBendingProcess Aspose"/>|<img src="CircularBendingProcess Word.png" alt="CircularBendingProcess Word"/>|
|Repeating Bending Process	|<img src="RepeatingBendingProcess Aspose.png" alt="RepeatingBendingProcess Aspose"/>|<img src="RepeatingBendingProcess Word.png" alt="RepeatingBendingProcess Word"/>|
|Trapezoid List	|<img src="TrapezoidList Aspose.png" alt="TrapezoidList Aspose"/>|<img src="TrapezoidList Word.png" alt="TrapezoidList Word"/>|


### Signatures of DocumentBuilder.InsertOleObject methods changed to accept Syste.IO.Stream instead of System.Drawing.Image

Related issue: WORDSNET-20736

To make it possible to insert OLE objects with metafile presentation in .NET Standard signatures of DocumentBuilder.InsertOleObject methods were changed to accept Syste.IO.Stream instead of System.Drawing.Image

{{< highlight csharp >}}
/// <summary>
/// Inserts an embedded OLE object from a stream into the document.
/// </summary>
/// <param name="stream">Stream containing application data.</param>
/// <param name="progId">Programmatic Identifier of OLE object.</param>
/// <param name="asIcon">Specifies either Iconic or Normal mode of OLE object being inserted.</param>
/// <param name="presentation">Image presentation of OLE object. If value is null Aspose.Words will use one of the predefined images.</param>
/// <returns>Shape node containing Ole object and inserted at the current Builder position.</returns>
/// <javaName>com.aspose.words.Shape insertOleObject(java.io.InputStream stream, java.lang.String progId, boolean asIcon, java.awt.image.BufferedImage presentation)</javaName>
public Shape InsertOleObject(Stream stream, string progId, bool asIcon, Stream presentation)
{
    OleRegistryInfo oleInfo = OleRegistryInfo.GetByProgId(progId);
    Shape shape = InsertOleImage(presentation, asIcon, oleInfo);
    OleObject oleObject = OleUtil.CreateOleObject(stream, progId, asIcon);
    return InsertOleObjectCore(null, false, shape, oleInfo.ProgId, oleObject);
}
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Inserts an embedded or linked OLE object from a file into the document. Detects OLE object type using file extension.
/// </summary>
/// <param name="fileName">Full path to the file.</param>
/// <param name="isLinked">If true then linked OLE object is inserted otherwise embedded OLE object is inserted.</param>
/// <param name="asIcon">Specifies either Iconic or Normal mode of OLE object being inserted.</param>
/// <param name="presentation">Image presentation of OLE object. If value is null Aspose.Words will use one of the predefined images.</param>
/// <returns>Shape node containing Ole object and inserted at the current Builder position.</returns>
public Shape InsertOleObject(string fileName, bool isLinked, bool asIcon, Stream presentation)
{
    OleRegistryInfo oleInfo = OleRegistryInfo.GetByFileExt(Path.GetExtension(fileName));
    return InsertOleObject(fileName, isLinked, asIcon, presentation, oleInfo);
}
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Inserts an embedded or linked OLE object from a file into the document. Detects OLE object type using given progID parameter.
/// </summary>
/// <param name="fileName">Full path to the file.</param>
/// <param name="progId">ProgId of OLE object.</param>
/// <param name="isLinked">If true then linked OLE object is inserted otherwise embedded OLE object is inserted.</param>
/// <param name="asIcon">Specifies either Iconic or Normal mode of OLE object being inserted.</param>
/// <param name="presentation">Image presentation of OLE object. If value is null Aspose.Words will use one of the predefined images.</param>
/// <returns>Shape node containing Ole object and inserted at the current Builder position.</returns>
public Shape InsertOleObject(string fileName, string progId, bool isLinked, bool asIcon, Stream presentation)
{
    OleRegistryInfo oleInfo = OleRegistryInfo.GetByProgId(progId);
    return InsertOleObject(fileName, isLinked, asIcon, presentation, oleInfo);
}
{{< /highlight >}}

### The indexer of VbaReferenceCollection is exposed publicly

Related issue: WORDSNET-21071

The indexer of VbaReferenceCollection is exposed publicly for reading:

{{< highlight csharp >}}
/// <summary>
/// Gets <see cref="VbaReference"/> object at the specified index.
/// </summary>
/// <param name="index">The zero-based index of the reference to get.</param>
public VbaReference this[int index]
{{< /highlight >}}

Please find usage examples here [https://docs.aspose.com/words/java/aspose-words-for-java-20-9-release-notes/#vbareferencecollection-and-related-types-are-exposed-publicly](https://docs.aspose.com/words/java/aspose-words-for-java-20-9-release-notes/#vbareferencecollection-and-related-types-are-exposed-publicly)
