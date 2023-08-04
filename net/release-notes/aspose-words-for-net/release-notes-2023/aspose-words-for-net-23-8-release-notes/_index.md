---
title: 23.8 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 23.8 Release Notes
linktitle: Aspose.Words for .NET 23.8 Release Notes
description: "Aspose.Words for .NET 23.8 Release Notes – the latest updates and fixes."
type: docs
weight: 35
url: /net/aspose-words-for-net-23-8-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 23.8](https://www.nuget.org/packages/Aspose.Words/23.8.0).

{{% /alert %}}

## Major Features

There are 107 improvements and fixes in this regular monthly release. The most notable are:

- Added support for CITATION and BIBLIOGRAPHY fields.
- Introduced functionality to automatically generate a Table of Contents (TOC) for MOBI documents.
- Expanded PdfEncryptionDetails constructor with PdfPermissions.
- Introduced a new public property to specify the size of rendered images in pixels.
- Implemented shaping of vertical text for EMF metafiles.
- Added an option in the LINQ Reporting Engine to preserve whitespaces for JSON string values.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-17531|Unexpected break (text wrapping) occurs in Cell when rendered to PDF|New Feature
|WORDSNET-25370|Amended version of the Aspose.Word SaveOption WordHtmlFixedSaveOptions|New Feature
|WORDSNET-25093|Add navigation (table of contents, TOC) to generated MOBI documents|New Feature
|WORDSNET-21715|Content are distorted and truncated after MHTML to PDF conversion |New Feature
|WORDSNET-17829|Document.UpdateTableLayout changes the table's width in output PDF|New Feature
|WORDSNET-21822|Text wrapping problem in Tables during HTML to PDF conversion|New Feature
|WORDSNET-6857|HTML to PDF conversion issue with table's width|New Feature
|WORDSNET-12392|Table Cells widths are incorrect in rendered TIFF|New Feature
|WORDSNET-13757|Tables in HTML file is not proper in the converted file|New Feature
|WORDSNET-18801|Content are truncated in output PDF after conversion from MHTML|New Feature
|WORDSNET-21440|Table layout is badly formatted after conversion from MHT to DOCX/PDF|New Feature
|WORDSNET-22212|Conversion issue in MSG to PDF - One character per line in Table|New Feature
|WORDSNET-25194|Table content is partially invisible after rendering MHTML document|New Feature
|WORDSNET-10910|Width of table's cell is changed after conversion from DOCX to PDF|New Feature
|WORDSNET-11680|Image is getting trimmed while converting from DOCX to PDF|New Feature
|WORDSNET-13029|Table/Cell width is not correct in rendered document|New Feature
|WORDSNET-19933|Table Column Cell Widths are incorrect in rendered PDF|New Feature
|WORDSNET-20088|Cell spacing issue while converting DOC to PDF|New Feature
|WORDSNET-23597|Table content is truncated when saving to PDF|New Feature
|WORDSNET-23847|Incorrect document layout upon rendering|New Feature
|WORDSNET-23611|Enable the new table grid re-calculation logic for formats other than DOC/DOCX|New Feature
|WORDSNET-25600|Consider providing PdfEncryptionDetails constructor overload that accepts PdfPermissions and a parameter|New Feature
|WORDSNET-25267|Implement ImageSaveOptions.ImageSize property|New Feature
|WORDSNET-22453|TOC not being updated correctly|New Feature
|WORDSNET-7846|Cell borders with cell spacing 0" are not rendered properly|New Feature
|WORDSNET-10107|A single word Run in Cell is rendering in two lines in PDF|New Feature
|WORDSNET-9308|HTML to PDF conversion issue with Text rendering |New Feature
|WORDSNET-10831|MHTML to PDF conversion issue with number rendering|New Feature
|WORDSNET-11087|Cell width is not calculated correctly during rendering to PDF|New Feature
|WORDSNET-11409|HTML to PDF conversion issue with table's width|New Feature
|WORDSNET-12645|Table formatting is lost after HTML to PDF|New Feature
|WORDSNET-12990|HTML table not displayed correctly in PDF|New Feature
|WORDSNET-13352|Cell text renders lower than the actual position in PDF|New Feature
|WORDSNET-13886|Table is rendered outside the page in output PDF|New Feature
|WORDSNET-14890|Tables have incorrect widths in PDF|New Feature
|WORDSNET-14964|Content is shifted when rendering mht to pdf or image|New Feature
|WORDSNET-15259|HTML to PDF conversion issue with custom margin|New Feature
|WORDSNET-15476|MHTML to PDF conversion issue with content position|New Feature
|WORDSNET-12724|Incorrect table column width after MHTML to PDF|New Feature
|WORDSNET-12232|Text in a table cell is wrapped when saved to PDF|New Feature
|WORDSNET-15665|MHTML to PDF conversion issue with table's cell width|New Feature
|WORDSNET-17548|Table width is lost after conversion from HTML to PDF|New Feature
|WORDSNET-16114|When converting HTML to PDF, the output is shrunken|New Feature
|WORDSNET-18117|Incorrect Table layout when converting HTML to PDF|New Feature
|WORDSNET-18659|DOCX to PDF conversion issue with cell width after using LINQ|New Feature
|WORDSNET-19491|Tables are lost in output PDF when UpdateTableLayout is called|New Feature
|WORDSNET-20179|Wrong additional columns appear in Table when converting HTML to DOCX|New Feature
|WORDSNET-20903|Table cell width is changed when HTML is converted to PDF|New Feature
|WORDSNET-21920|HTLM to PDF conversion - Table widths are not correct|New Feature
|WORDSNET-24039|Table moved to the right after conversion to PDF|New Feature
|WORDSNET-22153|Contents are Lost after HTML to PDF conversion |New Feature
|WORDSNET-25074|Table width is incorrect after rendering MHTML document|New Feature
|WORDSNET-25313|DOCX to PDF conversion issue|New Feature
|WORDSNET-25625|Consider adding a warning about missing, empty or not accessing fonts folder|New Feature
|WORDSNET-25652|Incorrect space before the first line on the page after a page break|Enhancement
|WORDSNET-2627|Cells spacing is ignored upon rendering|Enhancement
|WORDSNET-12026|HTML to PDF conversion issue with table's cells|Enhancement
|WORDSNET-16678|Table Cells have incorrect Widths causing more pages in PDF|Enhancement
|WORDSNET-25668|Numbering is changed after converting DOCX to RTF|Bug
|WORDSNET-25618|Numbers format is changed after conversion from DOCX to XLSX|Bug
|WORDSNET-25705|DOCX to MD: incorrect heading levels in the output document|Bug
|WORDSNET-22666|OleFormat.GetRawData returns null|Bug
|WORDSNET-25678|Numbering is changed after DOCX to RTF conversion|Bug
|WORDSNET-25709|Footer looks ugly after conversion to XLSX|Bug
|WORDSNET-25468|Exception is thrown when handling SVG image|Bug
|WORDSNET-25295|Data label font size changes are not applied|Bug
|WORDSNET-25711|Data label font size and color changes are not applied|Bug
|WORDSNET-25230|Remove obsolete SaveOptions.UpdateSdtContent property|Bug
|WORDSNET-25701|Pdf2Word should process XForm dictionary with missing "Type" key|Bug
|WORDSNET-25677|LINQ Reporting Engine - JsonDataSource trims whitespaces for string values|Bug
|WORDSNET-25442|The style changed after xmlns modification|Bug
|WORDSNET-25675|Incorrect calculation of the minimum height of the math formula|Bug
|WORDSNET-25595|RTL content is moved outside the page after rendering|Bug
|WORDSNET-25564|Document comparison long execution time|Bug
|WORDSNET-25578|The math text size is changed after converting to PDF|Bug
|WORDSNET-25634|Footer from the first page is mover to the top of the second page after PDF to DOCX conversion|Bug
|WORDSNET-25405|Hebrew text is rendered improperly|Bug
|WORDSNET-13854|CITATION and BIBLIOGRAPHY fields are not updated by Document.UpdateFields method|Bug
|WORDSNET-25617|Performance degradation of UpdateFields|Bug
|WORDSNET-25681|NullReferenceException is thrown upon comparing documents|Bug
|WORDSNET-25200|Issue with TIFF images|Bug
|WORDSNET-25655|IndexOutOfRangeException is thrown upon rendering document|Bug
|WORDSNET-25629|StructuredDocumentTag.GetText() returns incorrect value for Date SDT|Bug
|WORDSNET-24388|Bookmark end position is changed after comparing documents|Bug
|WORDSNET-25669|An exception occurs while saving pages as SVG|Bug
|WORDSNET-25128|Chart area is shifted upon rendering|Bug
|WORDSNET-25533|Incorrect shape sizes or properties on HTML to DOCX conversion|Bug
|WORDSNET-25490|REF field is not updated properly|Bug
|WORDSNET-24896|"Footnote Reference" is not properly updated|Bug
|WORDSNET-25569|Bulleted list is converted to numbered list after open/save|Bug
|WORDSNET-25582|DOCX to PDF with HarfBuzz: Symbols not converted correctly |Bug
|WORDSNET-25596|Incorrect placement of text in a fraction when using a font with "Internal Leading"|Bug
|WORDSNET-25491|FileCorruptedException is thrown upon loading HTML document|Bug
|WORDSNET-25651|Implement PseudoInline property reading for DOC format|Bug
|WORDSNET-25660|FileCorruptedException is thrown upon loading DOTX document|Bug
|WORDSNET-25643|Text is wrapped improperly upon rendering|Bug
|WORDSNET-25148|Problem with Captions and References in the first paragraph|Bug
|WORDSNET-25258|Text outline in EMF shape partially invisible in AW pdf output|Bug
|WORDSNET-25480|Image is cropped after rendering|Bug
|WORDSNET-25530|Shadow effects are rendered incorrectly for glyphs with simulated bold and/or italic style|Bug
|WORDSNET-25606|Thaana RTL text is exported to PDF as LRT |Bug
|WORDSNET-25647|Three pages instead of two in DOCX file on Linux|Bug
|WORDSNET-25653|Hairlines in metafile are barely invisible in Acrobat reader.|Bug
|WORDSNET-23501|Images are not displayed in Mac TextEdit after open/save RTF document|Bug
|WORDSNET-25712|Failed to open PDF file generated by our apps|Bug
|WORDSNET-22170|License Conflict with Cortex XDR|Bug
|WORDSNET-4236|Rendering document causes tables to continue outside the page|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.8. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new public property to specify the size of rendered images in pixels

Related issue: WORDSNET-25267

The following public property has been added to the **ImageSaveOptions** class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the size of a generated image in pixels.
/// </summary>
/// <remarks>
/// <para>This property has effect only when saving to raster image formats.</para>
/// <para> The default value is (0 x 0), which means that the size of the generated image will be calculated
/// according to the size of the image in points, the specified resolution and scale.</para>
/// </remarks>
public Size ImageSize { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to render every page of a document to a separate TIFF image at 2325x5325 pixels and 600 dpi:
{{< gist "aspose-words-gists" "7aae1e8fa6cb0a16cdfb2f28fb56e432" "image-size-for-every-page.cs" >}}
{{% /alert %}}

### Added PdfEncryptionDetails ctor overload with PdfPermissions

Related issue: WORDSNET-25600

{{< highlight csharp >}}
public PdfEncryptionDetails(string userPassword, string ownerPassword, PdfPermissions permissions)
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use PdfPermissions:
{{< gist "aspose-words-gists" "7aae1e8fa6cb0a16cdfb2f28fb56e432" "encryption-permissions.cs" >}}
{{% /alert %}}

### Added the ability to generate TOC (table of contents) for MOBI documents

Related issue: WORDSNET-25093

Now Aspose.Words can generate TOC (table of contents) for MOBI documents.

Desired depth of TOC can be specified same way as it's done for AZW3 or EPUB documents using HtmlSaveOptions.NavigationMapLevel property.

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to create MOBI document with a two-level TOC:
{{< gist "aspose-words-gists" "7aae1e8fa6cb0a16cdfb2f28fb56e432" "create-mobi-toc.cs" >}}
{{% /alert %}}

Note: Currently MOBI TOC won't be displayed by some viewers. For example, MOBI TOC won't be displayed by calibre app.

### Supported CITATION and BIBLIOGRAPHY fields

Related issue: WORDSNET-13854

Now the **CITATION** and **BIBLIOGRAPHY** fields are supported by Aspose.Words and can be updated with the **Document.UpdateFields**, **Range.UpdateFields** or **Field.Update** methods.

Aspose.Words supports following citation and bibliography styles:

- **APA** - APASixthEditionOfficeOnline.xsl
- **Chicago** - CHICAGO.XSL
- **GB7714** - GB.XSL
- **GOST** - Name Sort - GostName.XSL
- **GOST** - Title Sort - GostTitle.XSL
- **Harvard** - Anglia - HarvardAnglia2008OfficeOnline.xsl
- **IEEE** - IEEE2006OfficeOnline.xsl
- **ISO 690** - First Element and Date - ISO690.XSL
- **ISO 690** - Numerical Reference - ISO690Nmerical.XSL
- **MLA** - MLASeventhEditionOfficeOnline.xsl
- **SIST02** - SIST02.XSL
- **Turabian** - TURABIAN.XSL

The **IBibliographyStylesProvider** interface and the **FieldOptions.BibliographyStylesProvider** property are introduced to override built-in styles or provide custom one:
{{< highlight csharp >}}
/// <summary>
/// Implement this interface to provide bibliography style for
/// the  <see cref="FieldBibliography"/> and <see cref="FieldCitation"/> fields when they're updated.
/// </summary>
public interface IBibliographyStylesProvider
{
    /// <summary>
    /// Returns bibliography style.
    /// </summary>
    /// <param name="styleFileName">The bibliography style file name.</param>
    /// <returns>The <see cref="Stream"/> with bibliography style XSLT stylesheet.</returns>
    /// <remarks>
    /// The implementation should return <c>null</c> to indicate that
    /// the MS Word version of specified style should be used.
    /// </remarks>
    Stream GetStyle(string styleFileName);
}

public sealed class FieldOptions
{
    /// <summary>
    /// Gets or sets a provider that returns a bibliography style for
    /// the <see cref="FieldBibliography"/> and <see cref="FieldCitation"/> fields.
    /// </summary>
    public IBibliographyStylesProvider BibliographyStylesProvider { get; set; }
}
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use IBibliographyStylesProvider:
{{< gist "aspose-words-gists" "7aae1e8fa6cb0a16cdfb2f28fb56e432" "change-bibliography-styles.cs" >}}
{{% /alert %}}

### The HtmlSaveOptions.EpubNavigationMapLevel property is now obsolete

Related issue: WORDSNET-25093

The **HtmlSaveOptions.EpubNavigationMapLevel** property is now obsolete. The customers should use **HtmlSaveOptions.NavigationMapLevel** instead.

### Added an option for LINQ Reporting Engine to preserve whitespaces for JSON string values

Related issue: WORDSNET-25677

Starting from Aspose.Words 23.8, you can instruct LINQ Reporting Engine to preserve leading and trailing whitespaces for JSON string values (which are trimmed by default).

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to instruct LINQ Reporting Engine to preserve leading and trailing whitespaces:
{{< gist "aspose-words-gists" "7aae1e8fa6cb0a16cdfb2f28fb56e432" "json-data-preserve-spaces.cs" >}}
{{% /alert %}}