---
title: Aspose.Words for Java 18.8 Release Notes
description: "Aspose.Words for Java 18.8 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 50
url: /java/aspose-words-for-java-18-8-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for Java 18.8](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/18.8).

{{% /alert %}} 

## Major Features

There are 86 improvements and fixes in this regular monthly release. The most notable are:

- Java 10 tested and supported now
- New and updated Samples and Examples
- Change SHA-1 to SHA-256 and public asymmetric key from 1024 to 2048 for the license mechanism
- Implemented support for “underline trailing spaces” compatibility option
- Implemented support for paragraph alignment in Omath when inserted using EQ fields
- Enhanced computation of interscript spacing values based on TTF properties
- Improved wrapping of text around floating objects
- Improved calculation of position of floating tables and shapes
- Improved floater overlapping logic
- Improved computing of pages numbers in continuous sections which have restart attribute and conflicting oddity
- Fixed line justification issue when RTL span is at the end of the line
- Fixed issue with null dml properties
- Fixed issue with rendering of floating shapes in truncated headers/footers
- Fixed issue with rendering of lines inside of a field result when updated in truncated part of a cell
- Improved rendering of math operators in MathML objects
- Improved rendering of MathML objects with n-ary math element when n-ary character and limit location are not specified
- Fixed a bug with rendering of a math n-ary element if it is part of a fraction
- Fixed a bug when polyline with an arrow and a very small line segment at the end 
- was corrupted upon rendering
- Fixed a bug when an arrow pointer is incorrectly directed while rendering Bezier curves with arrows
- Fixed a bug where the end of the line was outside the "stealth arrow" when rendering
- LINQ Reporting Engine supports nested reports

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-1845|SetLicense throws IllegalStateException.|Enhancement|
|WORDSJAVA-1858|Update Metered license code.|Enhancement|
|WORDSJAVA-1785|Saving to PDF over JDK 10.0.1 causes an illegal reflective access problem|Exception|
|WORDSJAVA-1846|Document.getPageCount throws java.lang.NullPointerException|Exception|
|WORDSJAVA-1820|Save HTML to PDF-A_1B does not generate indexed images anymore|Regression|
|WORDSNET-4414|Borders look incorrect after converting document to PDF using MS Word or Bullzip PDF Printer|Bug|
|WORDSNET-5319|Table with different preferred widths extends outside the page when rendered|Bug|
|WORDSNET-5327|Table preferred width no longer automatically resizes when cell preferred width is set|Bug|
|WORDSNET-8966|Table column widths are calculated incorrectly during rendering|Bug|
|WORDSNET-12013|Cell's contents move to next line after conversion from Doc to Pdf|Bug|
|WORDSNET-13674|Elbow Arrow Connectors are not rendering correctly in PDF|Bug|
|WORDSNET-15239|Visio objects are overlapped in output PDF|Bug|
|WORDSNET-15478|Floating table is positioned improperly|Bug|
|WORDSNET-15508|Hijri Date is displayed in English Numbers in output DOCX/PDF|Bug|
|WORDSNET-15826|Text is missing after conversion form DOCX to PNG|Bug|
|WORDSNET-16145|DOCX to PDF conversion results are inconsistent in Multithreading|Bug|
|WORDSNET-16224|DOCX to HTML Issue with HtmlOfficeMathOutputMode as MathML|Bug|
|WORDSNET-16314|OfficeMath nodes are exported incorrectly as MathML in output HTML|Bug|
|WORDSNET-16454|Image generated from Dokkered web app is completely black.|Bug|
|WORDSNET-16501|Thai characters are converted to numbers in PDF|Bug|
|WORDSNET-16618|text-anchor' property is not imported correctly|Bug|
|WORDSNET-16675|Insert SVG into Aspose.Word.Document results in black image|Bug|
|WORDSNET-16757|The rendered PDF output is corrupted|Bug|
|WORDSNET-16780|Document.UpdateFields displaces text of frame when using 'IncludeText'|Bug|
|WORDSNET-16789|Arrow shape is rendered incorrectly|Bug|
|WORDSNET-16900|Numbers List Change while Converting Doc to PDF|Bug|
|WORDSNET-16903|Paragraph's text is missing in output PDF|Bug|
|WORDSNET-16915|Incorrect rendering of the OMath if FirstLineIndent is specified, after converting to PDF|Bug|
|WORDSNET-16919|Problem of incorrect Revisions Count after Comparing documents|Bug|
|WORDSNET-16930|CSS border style is not applied to image in output PDF/DOCX|Bug|
|WORDSNET-16946|Content is rendered on multiple pages in HtmlFixed/PNG|Bug|
|WORDSNET-16979|Distance between symbols not preserved in PDF|Bug|
|WORDSNET-16982|Borders of some SmartArt elements not preserved in PDF|Bug|
|WORDSNET-16995|LayoutCollector.GetStartPageIndex returns wrong page number|Bug|
|WORDSNET-17002|Equations render partially in generated PDF|Bug|
|WORDSNET-17025|Document.UpdateFields generates wrong alphabetical sort order for INDEX field|Bug|
|WORDSNET-17032|PDF output doesn't match the original DOCX document|Bug|
|WORDSNET-17046|Word breaking in Thai language is wrong|Bug|
|WORDSNET-17052|Signature images are not visible in generated PDF/Image|Bug|
|WORDSNET-17055|Unknown yellow color rectangle is rendered after conversion from DOCX TO PDF|Bug|
|WORDSNET-17058|DOCX to PDF conversion issue with textbox shape glow|Bug|
|WORDSNET-17082|StartTrackRevisions hangs and process does not complete|Bug|
|WORDSNET-17103|Incorrect rendering of the text outline with zero width after converting to PDF|Bug|
|WORDSNET-17118|Extra pages are created when DOCX is converted to PDF|Bug|
|WORDSNET-17122|Improve conditions for hanging punctuation|Bug|
|WORDSNET-17133|Vertical spacing between Paragraphs increased when rendering to PDF|Bug|
|WORDSNET-17136|Remove whitespaces from MathML content while importing html to model.|Bug|
|WORDSNET-17191|Line Caps Rendering - Stealth arrow is rendered incorrectly.|Bug|
|WORDSNET-17192|Line Caps Rendering - Curved arrow has incorrect direction.|Bug|
|WORDSNET-17194|CertificateHolder.Create() raises an exception on a remote system in GroupDocs.Signature for Cloud project|Bug|
|WORDSNET-17214|Rendering of a line goes beyond the page bounds|Bug|
|WORDSNET-17217|Document.UpdateFields changes the color and size of Heading number|Bug|
|WORDSNET-17231|Footer is missing in the output PDF document|Bug|
|WORDSNET-17239|Some images has incorrect colors when render in .NET Core under Linux|Bug|
|WORDSNET-10034|SaveDate field's result become visible after re-saving the document|Enhancement|
|WORDSNET-16985|Reference resources in MHTML documents using the "Content-Id" URL scheme|Enhancement|
|WORDSNET-17049|Spaces and special characters trimmed when rendering|Enhancement|
|WORDSNET-17066|Remove UTF-8 BOM from CSS parts in MTHML documents|Enhancement|
|WORDSNET-17078|Rework span shallow size tests|Enhancement|
|WORDSNET-17089|Combine styles when saving Words to HTML with HtmlFixedSaveOptions|Enhancement|
|WORDSNET-17112|Incorrect font fallback for Asian characters|Enhancement|
|WORDSNET-17113|Implement the second way of rendering the shape outline|Enhancement|
|WORDSNET-17119|Line Caps Rendering - PolyLine caps direction is not correct|Enhancement|
|WORDSNET-17120|Update minimum possible font size|Enhancement|
|WORDSNET-17207|Remove Aspose logo from Venture license in trial mode|Enhancement|
|WORDSNET-17211|Remove obsolete public properties EndnoteOptions.Location/FootnoteOptions.Location|Enhancement|
|WORDSNET-17222|Set RunPr.ComplexScript to True for Thai letter list labels|Enhancement|
|WORDSNET-15830|Document.UpdateField() throws ArgumentException Exception|Exception|
|WORDSNET-16561|System.ArgumentException is thrown while saving DOCX to HTML|Exception|
|WORDSNET-16601|Debug build exception when convert to PDF line without spaces under floater table.|Exception|
|WORDSNET-17048|Document.UpdatePageLayout throws System.InvalidCastException when removing Normal styles|Exception|
|WORDSNET-17104|java.lang.NullPointerException occurs when rendering to PDF|Exception|
|WORDSNET-17105|Document.PageCount throws System.NullReferenceException|Exception|
|WORDSNET-17106|Document.Compare throws System.NullReferenceException|Exception|
|WORDSNET-17179|The NRE exception occurs while inserting a document|Exception|
|WORDSNET-17212|NullReferenceException occurs when saving to PDF after invoking PageCount|Exception|
|WORDSNET-4898|Allow setting "Layout in Table Cell" option of shapes|Feature|
|WORDSNET-13967|Add feature to create Snip Corner Rectangle|Feature|
|WORDSNET-15692|Track changes rendering issue in resultant PDF|Feature|
|WORDSNET-16272|Add a feature to escape ampersand symbol during replacement|Feature|
|WORDSNET-16536|Change SHA-1 to SHA-256 and public asymmetric key from 1024 to 2048 for the license mechanism|Feature|
|WORDSNET-16817|Add feature to populate template document loaded by "doc" tag|Feature|
|WORDSNET-16986|Include Formatting Comments in Save To Tiff|Feature|
|WORDSNET-17184|Add feature to detect encoding characters and change them to UFT-8 in output RTF|Feature|
|WORDSNET-16807|Document.UpdateFields throws System.NullReferenceException|Regression|
|WORDSNET-16904|UpdateFields after MailMerge causes "Error! Bookmark not defined" error in generated PDF|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose. Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Nested Reports are Supported by LINQ Reporting Engine

WORDSNET-16817 has now been resolved.

The "[Inserting Documents Dynamically](/words/java/inserting-documents-dynamically/)" section of the engine's documentation was updated to describe the change.

### Added Feature to Create Snip Corner Rectangle

WORDSNET-13967 has been resolved:

The following shapes types were added to the "ShapeType" enum:

{{< highlight csharp >}}
/// Snip single corner rectangle object.
/// </summary>
/// <remarks>
/// Applicable only for DML shapes.
/// </remarks>
SingleCornerSnipped = 203,
/// <summary>
/// Snip same side corner rectangle.
/// </summary>
/// <remarks>
/// Applicable only for DML shapes.
/// </remarks>
TopCornersSnipped = 204,
/// <summary>
/// Snip diagonal corner rectangle.
/// </summary>
/// <remarks>
/// Applicable only for DML shapes.
/// </remarks>
DiagonalCornersSnipped = 205,
/// <summary>
/// Snip and round single corner rectangle.
/// </summary>
/// <remarks>
/// Applicable only for DML shapes.
/// </remarks>
TopCornersOneRoundedOneSnipped = 206,
/// <summary>
/// Round single corner rectangle.
/// </summary>
/// <remarks>
/// Applicable only for DML shapes.
/// </remarks>
SingleCornerRounded = 207,
/// <summary>
/// Round same side corner rectangle.
/// </summary>
/// <remarks>
/// Applicable only for DML shapes.
/// </remarks>
TopCornersRounded = 208,
/// <summary>
/// Round diagonal corner rectangle.
/// </summary>
/// <remarks>
/// Applicable only for DML shapes.
/// </remarks>
DiagonalCornersRounded = 209
{{< /highlight >}}

These shape types can not be used to create VML shapes. Attempt to create shape  by using public constructor of the "Shape" class raises the "NotSupportedException" exception. DML shape with one of specified above type can be created with "InsertShape" method of the document builder:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
Shape shape = builder.insertShape(ShapeType.TOP_CORNERS_SNIPPED, 50, 50);
OoxmlSaveOptions so = new OoxmlSaveOptions(SaveFormat.DOCX);
so.setCompliance(OoxmlCompliance.ISO_29500_2008_TRANSITIONAL);
doc.save("TopCornersSnipped.docx", so);
{{< /highlight >}}

### Reference Resources in MHTML Documents using the "Content-Id" URL Scheme.

WORDSNET-16985 has been resolved.

By default, resources in MHTML documents are referenced by file name (for example, "image.png"), which are matched against "Content-Location" headers of MIME parts.
Now was added a new option to HtmlSaveOptions. This option enables an alternative method, where references to resource files are written as CID (Content-ID) URLs (for example, "[cid:image.png](http://cidimage.png)") and are matched against "Content-ID" headers.

{{< highlight csharp >}}
public boolean ExportCidUrlsForMhtmlResources { get; set; }
{{< /highlight >}}

### Added Public Property ShowComments in LayoutOptions

WORDSNET-16986 has been resolved.

The following property has been added to the LayoutOptions class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets indication of whether comments are rendered.
/// Default is True.
/// </summary>
public boolean ShowComments
{
   get; set;
}
{{< /highlight >}}

This property is used to show\hide comments in the output document. By default, the comments are always shown.

**Usage**

{{< highlight csharp >}}
Document doc = new Document(myDir + "Input.docx");
doc.getLayoutOptions().setShowComments(false);
doc.save(myDir + "Output.pdf");
{{< /highlight >}}

### Added Public Property ShowInBalloons in RevisionOptions

WORDSNET-16986 has been resolved.

The following property has been added to the RevisionOptions class:

{{< highlight csharp >}}
/// <summary>
/// Allows to specify whether the revisions are rendered in the balloons.
/// Default value for this property is <see cref="Layout.ShowInBalloons.None"/>
/// </summary>
public ShowInBalloons ShowInBalloons
{
      get; set;
}
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Specifies which revisions are rendered in balloons.
/// </summary>
/// <remarks>
/// Note that these values do not affect rendering of comments, which are controlled by <see cref="LayoutOptions.ShowComments"/>.
/// </remarks>
public enum ShowInBalloons
{
     /// <summary>
     /// Renders insert, delete and format revisions inline.
     /// </summary>
     None,
     /// <summary>
     /// Renders insert and delete revisions inline, format revisions in balloons.
     /// </summary>
     Format,
     /// <summary>
     /// Renders insert revisions inline, delete and format revisions in balloons.
     /// </summary>
     FormatAndDelete,
}
{{< /highlight >}}

This property is used to show revisions in the balloons. By default, the revisions in balloons are not shown.

**Usage:**

{{< highlight csharp >}}
Document doc = new Document(myDir + "Input.docx");

// Renders insert and delete revisions inline, format revisions in balloons.
doc.getLayoutOptions().getRevisionOptions().setShowInBalloons(ShowInBalloons.FORMAT);
doc.save(myDir + "Output.pdf");
{{< /highlight >}}

Or

{{< highlight csharp >}}
Document doc = new Document(myDir + "Input.docx");

// Renders insert revisions inline, delete and format revisions in balloons.
doc.getLayoutOptions().getRevisionOptions().setShowInBalloons(ShowInBalloons.FORMAT_AND_DELETE);
doc.save(myDir + "Output.pdf");
{{< /highlight >}}

### Write all CSS Declarations of HtmlFixed Documents into Single File

WORDSNET-17089 has been resolved.

Previously, Aspose.Words saved "@font-face" rules of HtmlFixed documents into a separate file "fontFaces.css" while other CSS declarations were written to "styles.css". We have changed this behavior and now Aspose.Words saves all CSS rules and declarations into the same file "styles.css". In case the old behavior is required for compatibility with legacy code, it can be restored by using the new public property that we have added to the HtmlFixedSaveOptions class:

{{< highlight csharp >}}
boolean SaveFontFaceCssSeparately { get; set; }
{{< /highlight >}}

### RtfLoadOptions class was extended

WORDSNET-17184 has been resolved.

A new LoadOptions class for dealing with RTF files was introduced : ***RtfLoadOptions***.

New public property ***RecognizeUtf8Text*** was added into the RtfLoadOptions class:

{{< highlight csharp >}}
/// <summary>
/// <para> When set to true, <see cref="CharsetDetector"/> will try to detect UTF8 characters,
/// they will be preserved during import.
/// </para>
/// Default value is false.
/// </summary>
public boolean RecognizeUtf8Text
{{< /highlight >}}

This property allows to detect UTF-8 encoded characters and preserve them during import.

UC:

{{< highlight csharp >}}
RtfLoadOptions loadOptions = new RtfLoadOptions();
loadOptions.setRecognizeUtf8Text(true);
Document doc = new Document(fileName, loadOptions);
{{< /highlight >}}

### Obsolete Member NumInDash was Removed from NumberStyle Enum

Obsolete value NumInDash was removed from NumberStyle enum. Please, use NumberStyle.NumberInDash value instead.

### Obsolete Method ToTxt() was Removed from Node Class

Obsolete method ToTxt() was removed from Node class. Please, use ToString(SaveFormat.Text) instead.

### Obsolete Property Location was Removed from FootnoteOptions and EndnoteOptions Classes

The obsolete property Location has been removed from the FootnoteOptions and EndnoteOptions classes. Please use the Position property. Also, the FootnoteLocation emum type has been removed.

### Obsolete Property WarningCallback  was Removed from SaveOptions Class

Obsolete property WarningCallback  was removed from SaveOptions class. Please, use the Document.WarningCallback property instead.
