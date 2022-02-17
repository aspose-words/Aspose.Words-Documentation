---
title: Aspose.Words for .NET 18.3 Release Notes
articleTitle: Aspose.Words for .NET 18.3 Release Notes
linktitle: Aspose.Words for .NET 18.3 Release Notes
description: "Aspose.Words for .NET 18.3 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 100
url: /net/aspose-words-for-net-18-3-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 18.3](https://www.nuget.org/packages/Aspose.Words/18.3.0)

{{% /alert %}}

## Major Features

There are 67 improvements and fixes in this regular monthly release. The most notable are:

- LINQ Reporting Engine supports dynamic coloring of chart series and individual series points
- Add support of CssClassNamesPrefix in HtmlSaveOptions
- A number of obsolete properties were removed from PdfSaveOptions class. Please refer to public API changes section for details
- PdfSaveOptions.EscapeUri property was added to allow the usage of custom URI strings without the automatic escape while rendering into PDF
- The automatic font color calculation now takes the fill of the background shape into account while rendering
- Added fallback rendering for Unicode range [U+1F300; U+1F5FF] - Miscellaneous Symbols and Pictographs; This range includes such symbols as Emoji and alike
- Implemented processing of empty EMR_EXTTEXTOUTW records in metafiles rendering
- Improved rendering of DML Chart plot area with a manual layout. The additional offset is calculated for the rotated labels of horizontal axis
- Fixed a bug where the gradient brush with transformation would mess up the texture upon rendering. Texture scaling improved
- Fixed a problem of axis scaling when rendering DML Charts with Arial Narrow font
- Fixed a bug causing freezes when converting to PDF a document with DML Charts with a huge number of data points
- Fixed a symbol positioning bug when rendering MathML equations
- A reflection effect is now applied correctly for 3D rotated WordArt objects

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-16476|Image is not rendered correctly in output PDF|Bug|
|WORDSNET-16474|MS Word error message when opening ODT|Bug|
|WORDSNET-16458|Reading bookmarks from a Table.Range object deleted the bookmarks|Bug|
|WORDSNET-16432|Numbered list in rich text format not saving properly|Bug|
|WORDSNET-16427|Incorrect rendering of OfficeMath equations in PDF|Bug|
|WORDSNET-16424|Word to pdf conversion looses font color|Bug|
|WORDSNET-16420|Wrong OfficeMath to Image Conversion|Bug|
|WORDSNET-16417|Unable to set Run Text after StartTrackRevisions method call|Bug|
|WORDSNET-16416|Document.Save hangs while saving DOCX to HTML|Bug|
|WORDSNET-16403|Emoji symbols are rendered as quotation marks in output PNG|Bug|
|WORDSNET-16400|Range.Replace does not replace all text in document|Bug|
|WORDSNET-16385|The rule Allow Hanging Punctuation should be ignored|Bug|
|WORDSNET-16382|Multi-threading is broken, silently messes up line spacing|Bug|
|WORDSNET-16374|Table row is rendered on previous page in output PDF|Bug|
|WORDSNET-16372|Incorrect field values when saving document|Bug|
|WORDSNET-16359|Background image opacity is not changed for a shape in docx file|Bug|
|WORDSNET-16348|DOCX to HTML5 conversion issue with list labels|Bug|
|WORDSNET-16347|Heading styling misaligned in Table of contents|Bug|
|WORDSNET-16341|Chart is not rendered correctly in output PDF/Image|Bug|
|WORDSNET-16323|RTF to PDF conversion issue with Hebrew text rendering|Bug|
|WORDSNET-16304|Contents are lost after conversion from DOCX to PDF|Bug|
|WORDSNET-16301|SVG is inserted as black image in output DOCX|Bug|
|WORDSNET-16294|DOCX to PDF issue with Image Highlights Shadings|Bug|
|WORDSNET-16286|Location and size of picture changes after re-saving DOC|Bug|
|WORDSNET-16276|TOC text style is changed to hyperlink style when saving to PDF|Bug|
|WORDSNET-16275|Some generated ODT golds cannot be opened in MS Word|Bug|
|WORDSNET-16239|Image dimensions when inserted inside GroupShape are blown in DOCX|Bug|
|WORDSNET-15519|Table's row is rendered on previous page in PDF|Bug|
|WORDSNET-15473|attachment is missing in MHtml conversion|Bug|
|WORDSNET-15422|Range of Y-Axis of chart is changed in output PNG|Bug|
|WORDSNET-15420|Position of chart's legend is changed in output PNG|Bug|
|WORDSNET-15419|Range of X-Axis of chart is changed in output PNG|Bug|
|WORDSNET-15229|Position of chart's legend is changed in output PNG|Bug|
|WORDSNET-14862|Provide code to embed AutoCAD file in Word the way MS Word does|Bug|
|WORDSNET-14725|Range.Replace does not replace the text when it is inside content control|Bug|
|WORDSNET-14691|Range.Replace does not replace the text when it is inside textbox|Bug|
|WORDSNET-11284|Row heights are not preserved in generated PDF|Bug|
|WORDSNET-10016|Font formatting is not preserved during open/save RTF|Bug|
|WORDSNET-9972|Image (GIF) 90 Degrees in Word Document is not displaying in 90 Degrees on PDF Convertion|Bug|
|WORDSNET-8824|A floating table does not render in fixed page formats|Bug|
|WORDSNET-8322|JPG images are getting lost during rendering|Bug|
|WORDSNET-7266|TextBox Shape is positioned incorrectly in PDF|Bug|
|WORDSNET-16156|The width of space is increased after re-saving RTF|Enhancement|
|WORDSNET-16473|Aspose.Words.FileCorruptedException occurs when loading a DOCM|Exception|
|WORDSNET-16455|An exception is thrown while rendering the document with gradient shape.|Exception|
|WORDSNET-16442|MailMerge.GetRegionsHierarchy() fails when encountering a FieldMergeBarcode field|Exception|
|WORDSNET-16441|System.ArgumentException occurs during converting DOC to PDF|Exception|
|WORDSNET-16407|System.ArgumentOutOfRangeException occurs when saving DOCX to HTML|Exception|
|WORDSNET-16398|Exception when saving to PDF/A|Exception|
|WORDSNET-16397|Document.Save throws System.InvalidOperationException after moving the cursor to the document's end|Exception|
|WORDSNET-16351|An exception raises while saving to HTML output|Exception|
|WORDSNET-16339|After Mail Merge Document.Save throws System.ArgumentOutOfRangeException in evaluation mode|Exception|
|WORDSNET-16150|System.ArgumentException occurs when saving DOCX to HTML|Exception|
|WORDSNET-11057|System.NullReferenceException is thrown while converting Doc to XPS|Exception|
|WORDSNET-8566|Aspose.Words.FileCorruptedException is thrown while loading password protected docx|Exception|
|WORDSNET-16352|Add feature to load Custom XML Parts into RTF and remove them|Feature|
|WORDSNET-16335|Add support of CssClassNamesPrefix in HtmlSaveOptions|Feature|
|WORDSNET-16121|Encoded Hyperlink issue during Word to PDF conversion by Aspose.Words|Feature|
|WORDSNET-15007|Add feature to set the color of chart's series using Linq Reporting|Feature|
|WORDSNET-9373|Fonts folder is not included in DOCX when converting from a DOC|Feature|
|WORDSNET-6581|The continue numbering do not work when insert one document to another.|Feature|
|WORDSNET-16426|Performance issue while converting 20 documents in one batch|Performance|
|WORDSNET-13748|PageCount times out for a HTML|Performance|
|WORDSNET-11487|Html to Pdf conversion takes much time|Performance|
|WORDSNET-16428|Unable to save MHT document as HTML|Regression|
|WORDSNET-16399|Empty table rows collapse after HTML round-trip|Regression|
|WORDSNET-15886|Aspose.Words for .NET 17.9 generated DOC appending issue in MS Word|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.3. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Supported Dynamic Coloring of Chart Series and Individual Series Points for LINQ Reporting Engine

Related issue: WORDSNET-15007

The "[Using Charts to Represent Sequential Data](https://docs.aspose.com/words/net/template-syntax/)" section and its subsections in the engine's documentation were updated to describe the change.

### PdfSaveOptions.EscapeUri Property Added

Related issue: WORDSNET-16121

The following property has been added to the PdfSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// A flag specifying whether URI should be escaped before writing.
/// </summary>
/// <remarks>
/// Note that if this option is set to <c>false</c> hyperlinks are written "as is",
/// so valid (escaped) URI should be provided in document's model.
/// <para>The default value is <c>true</c>.</para>
/// </remarks>
public bool EscapeUri
{get;set;}
{{< /highlight >}}

Set this property to false if you are sure that hyperlinks in document's model are already escaped:

{{< highlight csharp >}}
Document doc = new Document ("in.docx");
PdfSaveOptions options = new PdfSaveOptions ();
options.EscapeUri = false;
doc.Save("out.pdf", options);
{{< /highlight >}}

### Added Support of CssClassNamesPrefix in HtmlSaveOptions

Related issue: WORDSNET-16335

The following property has been added to the HtmlSaveOptions class:

**API**

{{< highlight csharp >}}
/// <summary>
/// Specifies a prefix which is added to all CSS class names.
/// Default value is an empty string and generated CSS class names have no common prefix.
/// </summary>
/// <remarks>
/// <para>If this value is not empty, all CSS classes generated by Aspose.Words will start with the specified prefix.
/// This might be useful, for example, if you add custom CSS to generated documents and want to prevent class
/// name conflicts.</para>
/// <para>If the value is not <c>null</c> or empty, it must be a valid CSS identifier.</para>
/// </remarks>
/// <exception cref="ArgumentException">The value is not empty and is not a valid CSS identifier.</exception>
public string CssClassNamePrefix
{
    get { return mCssClassNamesPrefix; }
    set
    {
        if (StringUtil.HasChars(value) && !CssEscape.IsValidIdentifier(value))
            throw new ArgumentException("The class name prefix must be a valid CSS identifier.");
        mCssClassNamesPrefix = value;
    }
}
{{< /highlight >}}

**UC**

{{< highlight csharp >}}
HtmlSaveOptions saveOptions = new HtmlSaveOptions();
saveOptions.CssClassNamePrefix = "pfx_";
doc.Save(fileName, saveOptions);
{{< /highlight >}}

### Obsolete method FormFieldCollection.Remove was removed

Obsolete method FormFieldCollection.Remove was removed. Please use the FormField.RemoveField method instead.

### Obsolete properties were removed from MailMerge class

Obsolete property MailMerge.RemoveEmptyParagraphs was removed. Please use the MailMerge.CleanupOptions property instead.

Obsolete property MailMerge.RemoveEmptyRegions was removed. Please use the MailMerge.CleanupOptions property instead.

Obsolete property MailMerge.RtlCleanupMode was removed.

### Obsolete properties were removed from PdfSaveOptions

Following obsolete properties were removed from the PdfSaveOptions class:

|Removed property|Property to use instead|
| :- | :- |
|PdfSaveOptions.HeadingsOutlineLevels|PdfSaveOptions.OutlineOptions.HeadingsOutlineLevels|
|PdfSaveOptions.ExpandedOutlineLevels|PdfSaveOptions.OutlineOptions.ExpandedOutlineLevels|
|PdfSaveOptions.BookmarksOutlineLevel|PdfSaveOptions.OutlineOptions.DefaultBookmarksOutlineLevel|
|PdfSaveOptions.EmbedStandardWindowsFonts|PdfSaveOptions.FontEmbeddingMode|
|PdfSaveOptions.ExportCustomPropertiesAsMetadata|PdfSaveOptions.CustomPropertiesExport|
|PdfSaveOptions.MetafileRenderingMode|PdfSaveOptions.MetafileRenderingOptions.RenderingMode|
|PdfSaveOptions.DownsampleImages|PdfSaveOptions.DownsampleOptions.DownsampleImages|
|PdfSaveOptions.DownsampleResolution|PdfSaveOptions.DownsampleOptions.Resolution|
Also removed obsolete PdfDigitalSignatureDetails constructor and PdfDigitalSignatureDetails.Certificate property which works System.Security.Cryptography.X509Certificates.X509Certificate2. CertificateHolder should be used instead.

### Obsolete value GeneralFormat.Auieo was removed

Obsolete value GeneralFormat.Auieo was removed. Please use the GeneralFormat.Aiueo value instead.



