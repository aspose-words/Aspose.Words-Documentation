---
title: Aspose.Words for .NET 17.1.0 Release Notes
type: docs
weight: 120
url: /net/aspose-words-for-net-17-1-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 17.1.0](https://www.nuget.org/packages/Aspose.Words/17.1.0)

{{% /alert %}} 

## **Major Features**

There are 80 improvements and fixes in this regular monthly release. The most notable are:

- Added public API to insert online video via DocumentBuilder.InsertOnlineVideo
- TxtSaveOptions.ForcePageBreaks public property
- SaveOptions.MemoryOptimization public property
- New public API class FrameFormat available in Paragraph.FrameFormat
- Support for DOCX roundtrip of multiple MS Word 2013 native document options added
- Supported DOCX roundtrip of Effect Container element 
- DOCX Roundtrip of Extension lists suppororted for Charts and other graphics
- Shape texture brush with EMF image rendering implemented
- Shape positioning inside tables precision improved
- Implemented support for 'FitText' attribute
- Improved space shrink logic for Asian text
- Improved Unicode normalization performance during layout
- Improved handling of invalid hyphenation dictionaries
- Improved handling of collapsed table rows
- Improved extracting document outline when TOC headings contain hidden entries
- Fixed positioning issue with Arabic list labels
- Fixed height issue with LTR list labels in RTL paragraphs

## **Full List of Issues Covering all Changes in this Release**

|**Key**|**Summary**|**Category**|
| :- | :- | :- |
|WORDSNET-11066|TOC is built incorrectly|Bug|
|WORDSNET-11779|/hidden cell break/ Docx to Pdf conversion issue with table border|Bug|
|WORDSNET-11962|/LTR font metrics for RTL paragraph list/ A paragraph incorrectly renders at the end of previous page in PDF|Bug|
|WORDSNET-12214|/LTR font metrics for RTL paragraph list/ Extra page after DOCX to image|Bug|
|WORDSNET-12234|Document.AcceptAllRevisions incorrectly removes some text from document|Bug|
|WORDSNET-12247|/fitText + spacing/ Text in table cells is wrapped incorrectly after DOCX to PDF|Bug|
|WORDSNET-13860|Html to Docx/Pdf conversion issue with table's border|Bug|
|WORDSNET-13928|Shape in table is rendered improperly.|Bug|
|WORDSNET-13966|Cell's width is lost after conversion from Docx to Html|Bug|
|WORDSNET-14058|Docx to Pdf conversion issue with hidden shape|Bug|
|WORDSNET-14157|/LTR font metrics for RTL paragraph list/ Hebrew text is rendered on previous pages in output Pdf|Bug|
|WORDSNET-14222|/hidden field result/ Images are duplicated after conversion from html to Jpeg|Bug|
|WORDSNET-14302|Incorrect font name in XE field|Bug|
|WORDSNET-14332|Uppercase characters are converted to lowercase in output Pdf|Bug|
|WORDSNET-14338|Shape is rotated after conversion from Doc to Pdf|Bug|
|WORDSNET-14341|Image borders added in the PDF rendition|Bug|
|WORDSNET-14358|/LTR font metrics for RTL paragraph list/ Same program with same aspose jar produces different outputs in different machines|Bug|
|WORDSNET-14375|LineStartArrow and LineEndArrow attributes are confused after DML->VML conversion.|Bug|
|WORDSNET-14381|List labels are changed after conversion from Doc to Odt|Bug|
|WORDSNET-14387|Chart losts its content during open/save a docx|Bug|
|WORDSNET-14394|Footnote numbers are wrapped incorrectly after conversion from Docx to Pdf|Bug|
|WORDSNET-14401|Radio buttons are not showing as 'selected' or 'checked' when converting to fixed html|Bug|
|WORDSNET-14429|Document based on a template loses normal style after saving with Aspose.Words|Bug|
|WORDSNET-14461|/LTR font metrics for RTL paragraph list/ Text is rendered on previous page in output Pdf|Bug|
|WORDSNET-14467|Custom font formatting applied via Template gets lost in PDF|Bug|
|WORDSNET-14473|Word to HTML: Issue with table border color output|Bug|
|WORDSNET-14478|Document.UpdateFields does not update REF fields|Bug|
|WORDSNET-14494|Docx to Pdf conversion issue with Arabic list labels|Bug|
|WORDSNET-14501|Paragraph alignment in cells in a TFG data table is incorrect|Bug|
|WORDSNET-14502|Docx to Pdf conversion issue with image rendering|Bug|
|WORDSNET-14509|TOC not updating correctly|Bug|
|WORDSNET-14514|List Labels are incorrect after conversion from Docx to Pdf|Bug|
|WORDSNET-14530|Shape is rendered on previous page in output Htmlfixed|Bug|
|WORDSNET-14544|Dml shape in TestJira14534 is rendered improperly.|Bug|
|WORDSNET-14551|Diagram embedded in a word document gets modified when transformed to PDF|Bug|
|WORDSNET-14556|MailMerge.UseWholeParagraphAsRegion does not generate the correct result when its value is false|Bug|
|WORDSNET-14566|Text is disappeared in output Pdf|Bug|
|WORDSNET-14567|Doc to Pdf conversion issue with GroupShape rendering|Bug|
|WORDSNET-14568|Incorrect text alignment in Cells in PDF|Bug|
|WORDSNET-14569|Rendering of Lines at the end and last page are missing in PDF|Bug|
|WORDSNET-14572|When DOCX is converted to PDF, some shapes go to wrong positions.|Bug|
|WORDSNET-14591|OutOfMemoryException is thrown while saving Doc|Bug|
|WORDSNET-14592|After Insert HTML to document, NullReferenceException occurs when saving.|Bug|
|WORDSNET-14598|Text color is changed after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-14612|Document with nested remarks is corrupted when saved|Bug|
|WORDSNET-14617|/special hidden/ Listnum value is missing|Bug|
|WORDSNET-14629|Doc to Pdf conversion issue with shape rendering in Pdf|Bug|
|WORDSNET-14630|Doc to Pdf conversion issue with image rendering in Pdf|Bug|
|WORDSNET-14640|System.ArgumentOutOfRangeException is thrown while saving document to Png|Bug|
|WORDSNET-14680|OLE is changed to image after conversion from Doc to Docx|Bug|
|WORDSNET-14694|MS Word opens the output Doc in "PROTECTED VIEW" after conversion from Rtf|Bug|
|WORDSNET-6240|Extra border lines appear while converting Word document to HTML and EPUB.|Bug|
|WORDSNET-14092|Document.Compare does not work correctly with tables|Enhancement|
|WORDSNET-14143|Images are lost after re-saving mhtml|Enhancement|
|WORDSNET-14291|The font of Chinese text is incorrect when Txt is imported into DOM|Enhancement|
|WORDSNET-14336|MhtmlReader does not support text parts without type.|Enhancement|
|WORDSNET-14395|High-level access to the fields in existing document|Enhancement|
|WORDSNET-14405|Aspose.Words 16.10 creates only one page in text(txt) document|Enhancement|
|WORDSNET-14468|Issue with SVG using Linq Reporting engine|Enhancement|
|WORDSNET-14622|Aspose.Words hangs during loading the RTF|Enhancement|
|WORDSNET-6443|Document.RemoveAllChildren doesn't reduce the file size|Enhancement|
|WORDSNET-13763|Hyphenation.RegisterDictionary throws System.ArgumentException|Exception|
|WORDSNET-13847|Aspose.Words.FileCorruptedException occurs upon loading a DOC|Exception|
|WORDSNET-14483|Document.AcceptAllRevisions throws System.NullReferenceException|Exception|
|WORDSNET-14497|Aspose.Words.FileCorruptedException is thrown while loading Odt|Exception|
|WORDSNET-14513|Document.Save throws System.InvalidOperationException|Exception|
|WORDSNET-14541|Aspose.Words.FileCorruptedException occurs upon loading a DOCX|Exception|
|WORDSNET-14571|Unable to save a Word document as a PDF - document has special number formatting|Exception|
|WORDSNET-14643|System.NullReferenceException is thrown while saving Docx to Pdf|Exception|
|WORDSNET-13482|Add feature to insert online video|Feature|
|WORDSNET-13521|Provide API to get position of Frame|Feature|
|WORDSNET-14113|Add feature to support Frames in Aspose.Words|Feature|
|WORDSNET-14362|Support USERADDRESS, USERINITIALS and USERNAME fields|Feature|
|WORDSNET-14558|Loosing page number information while converting RTF to DOCX|Feature|
|WORDSNET-14565|Generate report from syntax like <<[Person.Related.Car.Model]>>|Feature|
|WORDSNET-9992|Add feature to remove embedded fonts from Word documents|Feature|
|WORDSNET-14351|Loading and saving docx files in multi-threaded environment works extremely slow|Performance|
|WORDSNET-14450|Hangs on exporting an MHTML document to PDF format|Performance|
|WORDSNET-7959|/slow/ Aspose.Words hangs during rendering DOCX to PDF|Performance|
|WORDSNET-7962|Aspose.Words hangs on exporting huge encoded text documents to PDF|Performance|

## **Public API and Backward Incompatible Changes**

This section lists public API changes that were introduced in Aspose.Words 17.1.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### **SaveOptions.MemoryOptimization Property Added**

When dealing with very large and complex documents Aspose.Words sometimes had problems during saving resulting in out of memory exceptions, disk swapping and generally failures.

We've introduced an option to optimize memory consumption during these scenarios. When set to true it will improve document memory footprint but will add extra time to processing. This optimization is only applied during save operation.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets value determining if memory optimization should be performed before saving the document.
/// Default value for this property is <b>false</b>.
/// </summary>
public bool MemoryOptimization {get;set;}
{{< /highlight >}}

##### **Usage Example:**

{{< highlight csharp >}}
Document doc = new Document(@"myDoc.docx");
SaveOptions so = SaveOptions.CreateSaveOptions(SaveFormat.Pdf);
so.MemoryOptimization = true;
doc.Save("myFile.pdf", so);
{{< /highlight >}}

### **FrameFormat Class for getting Frame related Properties of a Paragraph Added**

Available to API users as Paragraph.FrameFormat. This class exposes all frame properties of paragraph in "readonly" mode

{{< highlight csharp >}}
/// <summary>
/// Represents frame related formatting for a paragraph.
/// </summary>
/// <p>This object is always created. If a paragraph is a frame, then all properties will contain respective values, otherwise
/// all properties are set to their defaults.</p>
/// <p>Use <see cref="IsFrame" /> to check whether paragraph is a frame.</p>
public class FrameFormat
{{< /highlight >}}

### **WORDSNET-13482 - Feature to Insert Online Video Added**

Starting from 17.1.0 Version, Aspose.Words supports inserting online video into the document.

Two overloads of InsertOnlineVideo method were introduced in DocumentBuilder class.

The first one works with the most popular video resources and takes the URL to the video as parameter.

Please see the following example:

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder(doc);

// Pass direct url from youtu.be.
string url = "https://youtu.be/t_1LYZ102RA";
double width = 360;
double height = 270;
Shape shape = builder.InsertOnlineVideo(url, width, height);
{{< /highlight >}}

Simple insertion of online video from the following resources is supported:

\- <https://www.youtube.com/>

\- <https://vimeo.com/>

The second overload works with all other video resources and takes embed Html code as parameter:

Please see the following example:

{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder(doc);

// Shape width/height.
double width = 360;
double height = 270;

// Poster frame image.
byte[] imageBytes = TestUtil.ReadAllBytes("TestImage.jpg");

// Visible url
string vimeoVideoUrl = @"https://vimeo.com/52477838";

// Embed Html code.
string vimeoEmbedCode = "<iframe src=\"https://player.vimeo.com/video/52477838\" width=\"640\" height=\"360\" frameborder=\"0\" title=\"Aspose\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>";
builder.InsertOnlineVideo(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height);
{{< /highlight >}}

The Html code for embedding video can vary between providers, consult your corresponding provider of choice for details.

Please note: The document will be automatically optimized for MS Word 2013 to show video.

### **WORDSNET-14405 - TxtSaveOptions.ForcePageBreaks Property Added**

New public property ForcePageBreaks is added into the TxtSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// <para>Allows to specify whether the page breaks should be preserved during export.</para>
/// <para>The default value is <b>false</b>.</para>
/// </summary>
public bool ForcePageBreaks { get; set; }
{{< /highlight >}}

The property affects only page breaks that are inserted explicitly into a document. It is not related to page breaks that MS Word automatically inserts at the end of each page.

**UC**

{{< highlight csharp >}}
TxtSaveOptions saveOptions = new TxtSaveOptions();
saveOptions.ForcePageBreaks = true;
document.Save(fileName, saveOptions);
{{< /highlight >}}
