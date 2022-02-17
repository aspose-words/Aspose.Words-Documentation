---
title: Aspose.Words for .NET 17.7 Release Notes
articleTitle: Aspose.Words for .NET 17.7 Release Notes
linktitle: Aspose.Words for .NET 17.7 Release Notes
description: "Aspose.Words for .NET 17.7 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 60
url: /net/aspose-words-for-net-17-7-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 17.7](https://www.nuget.org/packages/Aspose.Words/17.7.0)

{{% /alert %}}

## Major Features

There are 88 improvements and fixes in this regular monthly release. The most notable are:

- Rendering into PCL format (Printer Command Language) was implemented. New saving format introduced – “SaveFormat.Pcl”. Please note that custom fonts is not yet supported.
- The proper algorithm for rendering of shapes with automatic size textboxes (i.e. closest to MS Word output) implemented.
- The rendered PDF documents can now show the document title in the title bar of the viewer. This is controlled by “PdfSaveOptions.DisplayDocTitle” property.
- Improved font rendering in PDF documents for Adobe Illustrator limitations.
- Improved rendering of fonts with simulated bold style.
- Vertical text rendering in DrawingML textboxes improved.
- Problem with rendering of numbers on horizontal axis in DrawingML Charts fixed.
- Implemented support for "Wrap trailing spaces to next line" option.
- Implemented support for footnote continuation notices.
- Improved text wrapping logic for "2013 and later" documents.
- Improved non-breaking space width calculation.
- Improved Asian text justification logic.

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10407|A Table is moved from middle of page to the top in PDF|Bug|
|WORDSNET-10598|/table grid/ Table's layout get corrupted after conversion from Docx to Pdf|Bug|
|WORDSNET-10963|Table's position is changed after conversion from Docx to Pdf|Bug|
|WORDSNET-10964|Docx to Pdf conversion issue with shape position|Bug|
|WORDSNET-11256|Textboxes partially render beyond right edge of page in PDF|Bug|
|WORDSNET-11611|/wrap trailing spaces to next line compat option/ Spaces from the start of second line of Paragraph are lost in PDF|Bug|
|WORDSNET-12651|/footnotes + continuation notice/Text flows to the previous page (Doc to Pdf conversion)|Bug|
|WORDSNET-13989|GroupShape does not render correctly in Pdf|Bug|
|WORDSNET-14239|Document.Compare generates extra revisions|Bug|
|WORDSNET-14631|Doc to Pdf conversion issue with GroupShape|Bug|
|WORDSNET-14797|Compare works incorrectly since 16.10 version|Bug|
|WORDSNET-14844|/footnotes+continuation notice/Docx to fixed page format conversion issue with text position|Bug|
|WORDSNET-14876|Issue with HTML to Word Conversion - Textarea Border|Bug|
|WORDSNET-14930|Number index in Word gets changed after converting from html (DOCX-HTML-DOCX roundtrip)|Bug|
|WORDSNET-15045|/footnotes+continuation notice/Page is broken incorrectly if last paragraph on page is divided on two pages|Bug|
|WORDSNET-15100|Aspose.Words incorrectly works with font family lists in HTML import.|Bug|
|WORDSNET-15241|Document.Compare generates unnecessary delete and insert revisions for table|Bug|
|WORDSNET-15251|GetChildNodes returns extra nodes|Bug|
|WORDSNET-15281|Superscript and subscript are lost in output HTML and PDF|Bug|
|WORDSNET-15305|Table cell RTL text alignment issue|Bug|
|WORDSNET-15308|Docx to Pdf conversion issue with image's rendering|Bug|
|WORDSNET-15313|Table text is splitting into two lines|Bug|
|WORDSNET-15330|Document.Compare generates extra revisions|Bug|
|WORDSNET-15349|Shape is flipped after conversion from Docx to Pdf|Bug|
|WORDSNET-15362|/text wrap/ Formatting issue with floating paragraph|Bug|
|WORDSNET-15369|/wrap trailing spaces/ Some lines are pushed from page bottom to next page in resultant PDF|Bug|
|WORDSNET-15404|Document.UpdateFields does not update the formula field|Bug|
|WORDSNET-15405|System.InvalidCastException is thrown while saving DOCX to PDF|Bug|
|WORDSNET-15413|Scale of charts is changed in resultant PDF|Bug|
|WORDSNET-15421|Sub-divisions appear on the x-axis in resultant PNG|Bug|
|WORDSNET-15423|DocumentBuilder.Write writes the text with incorrect font after moving the cursor to bookmark|Bug|
|WORDSNET-15426|DOCX to ODT conversion issue with shape's gradient fill color|Bug|
|WORDSNET-15436|Symbols are changed after conversion from DOCX to PDF|Bug|
|WORDSNET-15443|Rendering issue of Vertical text of SmartArt|Bug|
|WORDSNET-15444|DOCX to HTML conversion generates blank images|Bug|
|WORDSNET-15455|Number index in Word gets changed after converting from html (DOCX-HTML-DOCX roundtrip)|Bug|
|WORDSNET-15460|Chart's X-Axis is not rendered correctly in output PDF|Bug|
|WORDSNET-15461|Chart's plot area is not rendered correctly in output PDF|Bug|
|WORDSNET-15464|Docx to PDF conversion issue with text alignment|Bug|
|WORDSNET-15470|Mirror Margin issue in DOCX to PDF rendering|Bug|
|WORDSNET-15477|Names of MatchCase and FindWholeWordsOnly properties in FindReplaceOptions looks incorrect|Bug|
|WORDSNET-15480|Spaces between words lost in rendered Image|Bug|
|WORDSNET-15487|Shape's position and size is changed in output PDF|Bug|
|WORDSNET-15488|Docx to PDF conversion issue with shape's rendering|Bug|
|WORDSNET-15489|Docx to PDF conversion issue with shape's rendering|Bug|
|WORDSNET-15492|Shape's text is not rendered in output PDF|Bug|
|WORDSNET-15493|DOCX to PDF conversion issue with Shape's rendering|Bug|
|WORDSNET-15494|Text of shape is truncated in output PDF|Bug|
|WORDSNET-15495|Text of shape is truncated in output PDF|Bug|
|WORDSNET-15502|Corrupt output DOCX when using Aspose to save MS Word document containing SmartArt|Bug|
|WORDSNET-15504|Default value of Shape.AspectRatioLocked is incorrect|Bug|
|WORDSNET-15534|Chart's X and Y axis are changed in output PDF|Bug|
|WORDSNET-15537|Compare documents returns an 'System.InvalidOperationException' when document contains contains private use Unicode characters|Bug|
|WORDSNET-15543|Incorrect shape size when margins are wider than width in shape properties|Bug|
|WORDSNET-15546|DOC to PDF produces output with disturbed formatting.|Bug|
|WORDSNET-5279|/footnotes+continuation notice/Some endnotes are moved to previous page|Bug|
|WORDSNET-5581|TextBox content layout is shifted.|Bug|
|WORDSNET-8940|/table grid/ Text renders outside the right page edge in PDF|Bug|
|WORDSNET-14801|A Picture moves towards the top page edge in PDF|Enhancement|
|WORDSNET-15262|DOCX to PDF conversion issue with shape's text when it is opened in Adobe Illustrator CC 2017|Enhancement|
|WORDSNET-15416|Improve comparison of language attributes|Enhancement|
|WORDSNET-15428|Improve cell formatting comparison. #2|Enhancement|
|WORDSNET-15447|Improve row comparsion. #3|Enhancement|
|WORDSNET-15544|Incorrect oval shape width/height for shape with word wrap off, auto-fit on|Enhancement|
|WORDSNET-14410|Aspose.Words.FileCorruptedException is thrown while loading RTF|Exception|
|WORDSNET-14683|Aspose.Words.FileCorruptedException occurs upon loading a MHT|Exception|
|WORDSNET-15103|InvalidOperationException occured while re-saving RTF to DOC|Exception|
|WORDSNET-15263|DOC to PDF conversion throws InvalidOperationException|Exception|
|WORDSNET-15466|Document.GetPageInfo throws exception "This operation requires the node to be inside the main document"|Exception|
|WORDSNET-15468|Document.GetPageInfo throws exception "This operation requires the node to be inside the main document"|Exception|
|WORDSNET-15498|GetStartPageIndex method of LayoutCollector throws NullReferenceException|Exception|
|WORDSNET-15499|DOCX conversion is throwing IOException|Exception|
|WORDSNET-15513|Aspose.Words.FileCorruptedException occurs upone loading a DOCX|Exception|
|WORDSNET-15522|Conversion RTF to PDF failing during the source file loading.|Exception|
|WORDSNET-13968|Export "border" attribute in output Html|Feature|
|WORDSNET-14186|Write revisions for MathML objects in HTML Export for HtmlOfficeMathOutputMode.MathML mode|Feature|
|WORDSNET-14190|Make the title of the generated documents show up in title bar , when opened in Acrobat reader|Feature|
|WORDSNET-14290|Support Structured Document Tag edit revisions (customXmlDelRangeStart/customXmlDelRangeEnd)|Feature|
|WORDSNET-14539|Provide separate method to remove unused styles only|Feature|
|WORDSNET-15144|Obtain correct horizontal alignment of image|Feature|
|WORDSNET-15296|Support AUTOTEXT and GLOSSARY fields|Feature|
|WORDSNET-1814|Preserve cross-references during converting to HTML|Feature|
|WORDSNET-6118|Support rendering document to PCL|Feature|
|WORDSNET-14223|Hangs on loading the MHTML document|Performance|
|WORDSNET-15435|Shape rendering issue in resultant PDF|Regression|
|WORDSNET-15514|Exception on SetLicence with the 17.6 version on Mono over Linux|Regression|
|WORDSNET-15528|Numeric format is broken after performing mail merge|Regression|
|WORDSNET-15529|Exception using Reflection in 17.6|Regression|
Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.7. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### WORDSNET-6118 - Rendering Word Document to PCL format Supported

New saving format is introduced - PCL (Printer Command Language). Aspose.Words can save documents to PCL 6 (PCL 6 Enhanced or PCL XL) format.

New value was added to enum SaveFormat:

{{< highlight csharp >}}
SaveFormat.Pcl
{{< /highlight >}}

Example of how to save document to PCL:

{{< highlight csharp >}}
Document doc = new Document("Example.docx");
PclSaveOptions saveOptions = new PclSaveOptions();
doc.Save("Example.pcl", saveOptions);
{{< /highlight >}}

PclSaveOptions has following public options and methods:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether or not complex transformed elements
/// should be rasterized before saving to PCL document.
/// Default is <c>true</c>.
/// </summary>
/// <remarks>
/// PCL doesn't support some kind of transformations that are used by Aspose Words.
/// E.g. rotated, skewed images and texture brushes. To properly render such elements
/// rasterization process is used, i.e. saving to image and clipping.
/// This process can take additional time and memory.
/// If flag is set to <c>false</c>, some content in output may be different
/// as compared with the source document.
/// </remarks>
public bool RasterizeTransformedElements
{  get; set; }
/// <summary>
/// Adds information about font that is uploaded to the printer by manufacturer.
/// </summary>
/// <param name="fontFullName">Full name of the font (e.g. "Times New Roman Bold Italic").</param>
/// <param name="fontPclName">Name of the font that is used in Pcl document.</param>
/// <remarks>
/// There are 52 fonts that are to be built in any printer according to Pcl specification.
/// However manufactures can add some other fonts to their devices.
/// </remarks>
public void AddPrinterFont(string fontFullName, string fontPclName);
/// <summary>
/// Name of the font that will be used
/// if no expected font is found in printer and built-in fonts collections.
/// </summary>
/// <remarks>
/// If no fallback is found, warning is generated and "Arial" font is used.
/// </remarks>
public string FalllbackFontName
{  get; set; }
{{< /highlight >}}

There is one major feature of PCL that is unsupported in current version of Aspose.Words i.e. custom fonts. It is rather big and complex problem, but we will implement this feature in future.

### WORDSNET-14190 - Make the Title of the Generated Documents show up in Title Bar

New property **DisplayDocTitle** was added to PdfSaveOptions to control behavior of how document's title is presented in output PDF document:

{{< highlight csharp >}}
/// <summary>
/// A flag specifying whether the window’s title bar should display the document title taken from
/// the Title entry of the document information dictionary.
/// </summary>
/// <remarks>
/// If <c>false</c>, the title bar should instead display the name
/// of the PDF file containing the document.
///
/// <para>The default value is <c>false</c>.</para>
/// </remarks>
public bool DisplayDocTitle
{
    get { return mDisplayDocTitle; }
    set { mDisplayDocTitle = value; }
}
{{< /highlight >}}

### WORDSNET-15504 -  Shape.AspectRatioLocked Default Value was Changed for Shapes Inserted through the DocumentBuilder.InsertImage Method.

Shape.AspectRatioLocked default value was changed for shapes inserted through the DocumentBuilder.InsertImage method. Now, to mimic MS Word behavior this value is "true" for ShapeType.Image upon inserting image through the DocumentBuilder or through the Model.

{{< highlight csharp >}}
/// <summary>
/// Specifies whether the shape's aspect ratio is locked.
/// </summary>
/// <remarks>
/// <p>The default value depends on the <see cref="ShapeType"/>, for the ShapeType.Image it is <b>true</b>
/// but for the other shape types it is <b>false</b>.</p>
/// <p>Has effect for top level shapes only.</p>
/// </remarks>
public bool AspectRatioLocked
{
  get { return GraphicData.AspectRatioLocked; }
  set { GraphicData.AspectRatioLocked = value; }
}
{{< /highlight >}}

### WORDSNET-14504 and WORDSNET-14803 - Changed Importing Behavior of Lists

Previously, list definitions were copied with a new identifier while importing. Now Aspose.Words reuses identical list definitions in the destination. Equality of list definitions in the source and destination is determined by their identifiers. Also Aspose.Words preserves list definition identifiers from the source when equal list definition cannot be found in the destination. This is how MS Word behaves.
