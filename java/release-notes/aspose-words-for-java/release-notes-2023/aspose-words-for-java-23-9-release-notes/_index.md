---
title: 23.9 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 23.9 Release Notes
linktitle: Aspose.Words for Java 23.9 Release Notes
description: "Aspose.Words for Java 23.9 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /java/aspose-words-for-java-23-9-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 23.9](https://releases.aspose.com/words/java/23-9/).

{{% /alert %}}

## Major Features

There are 75 improvements and fixes in this regular monthly release. The most notable are:

- Added an ability to set axis title of charts.
- Extended MarkdownSaveOptions with ImagesFolderAlias property.
- Added an ability to specify fonts vertical position on a line for paragraph.
- Implemented metafile rendering emulation of rasterization size for WMF pen width and EMF cosmetic pen.


## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by Java Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSJAVA-2700|StringIndexOutOfBoundsException is thrown when load MHTML from stream.|Bug
|WORDSJAVA-2782|FileCorruptedException is thrown upon loading EPUB document.|Bug
|WORDSJAVA-2878|Bookmark end position is changed after comparing documents.|Bug
|WORDSJAVA-2883|Update Metered License request|Bug
|WORDSJAVA-2783|Acrobat Chrome extension throws error for EncryptedPDFs|Bug
|WORDSJAVA-2882|MeteredBillingService.GetProductName returns unexpected values|Bug
|WORDSJAVA-2886|Infinite loop on document opening|Bug

</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by .NET Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24397|Allow getting styleId value form Style|New Feature
|WORDSNET-21376|Support MarkdownSaveOptions.ImagesFolderAlias|New Feature
|WORDSNET-24912|Support chart axis title in API|New Feature
|WORDSNET-24672|Axis title support|New Feature
|WORDSNET-13933|Add feature to set Axis Title of Chart|New Feature
|WORDSNET-14201|Support paragraph's property Automatically Adjust Right Indent When Using Document Grid|New Feature
|WORDSNET-25755|LINQ Reporting Engine - Treat a variable initialized upon a missing member as a missing member|New Feature
|WORDSNET-25403|Consider moving to SkiaSharp 2.88.3 |New Feature
|WORDSNET-14300|None of the table lines are being printed on the TIFF image and incorrect table layout|New Feature
|WORDSNET-22157|Text is Shifted up to Previous Page in output PDF|Enhancement
|WORDSNET-14298|Table lines are not printed on the TIFF image|Enhancement
|WORDSNET-25778|Content is shown incorrectly after report building and converting to PDF|Enhancement
|WORDSNET-25801|Text outline format is lost on CHM loading|Bug
|WORDSNET-25808|Invalid license signature error message when a license is applied|Bug
|WORDSNET-25829|FileCorruptedException is thrown upon loading DOCX document|Bug
|WORDSNET-25757|DOCX to MD: Ticks not converted correctly|Bug
|WORDSNET-25812|Content appears on the wrong page in AW layout|Bug
|WORDSNET-25724|Incorrect paragraph border position|Bug
|WORDSNET-25791|OutOfMemoryException on rendering to PDF|Bug
|WORDSNET-25680|DOCX to PDF: different chart label|Bug
|WORDSNET-25588|Text is not matched when FindWholeWordsOnly is enabled|Bug
|WORDSNET-25698|Make ParagraphFormat.BaselineAlignment public|Bug
|WORDSNET-23746|Markdown document with a SVG image embedded as a data URL is imported as plain text|Bug
|WORDSNET-25784|Zero-width joiner is not rendered correctly when exporting Word document to PDF|Bug
|WORDSNET-25797|REF filed is rendered/updated incorrectly when saving to PDF|Bug
|WORDSNET-25270|Exception loading rtf file|Bug
|WORDSNET-25811|Date SDT has incorrect value after comparing documents.|Bug
|WORDSNET-25716|Leading spaces for the Code 128 font are rendered incorrectly|Bug
|WORDSNET-25741|DOCX merging issue|Bug
|WORDSNET-25766|Page numbers in TOC is incorrect after rendering|Bug
|WORDSNET-25806|Form field font is changed after open/save document as RTF and further rendering to PDF|Bug
|WORDSNET-25817|Performance degradation of AppendDocument method after 23.8 version|Bug
|WORDSNET-25756|InvalidCastException is thrown while comparing documents|Bug
|WORDSNET-16656|EMF cosmetic pen to vector graphics rendering - pictures render incorrectly in PDF|Bug
|WORDSNET-24935|Dashed line is rendered with too small step in metafile|Bug
|WORDSNET-21705|Text is moved to the previous page after DOCX to PDF conversion |Bug
|WORDSNET-25718|Shape is moved to previous page and overlaps content|Bug
|WORDSNET-25431|DOC to PDF: Image is clipped on conversion|Bug
|WORDSNET-25488|The size of radical sign according to the font size of the first MathElement|Bug
|WORDSNET-25717|Incorrect height calculation of the function if it is part of complex math element|Bug
|WORDSNET-25528|FileCorruptedException is thrown upon loading HTML document when BlockImportMode.Preserve is used|Bug
|WORDSNET-25234|Double underline looks like a single bold underline in HtmlFixed or PDF|Bug
|WORDSNET-25565|The exception is thrown when comparing documents|Bug
|WORDSNET-25730|Excel spreadsheet OLE object extracted from DOC cannot be opened|Bug
|WORDSNET-25773|NullReferenceException on conversion to PDF|Bug
|WORDSNET-25780|IndexOutOfRangeException is thrown on conversion to PDF|Bug
|WORDSNET-24985|Textbox is missing on the first page after import|Bug
|WORDSNET-24430|Artifacts appears after rendering document to PDF with SkiaSharp 2.88.0|Bug
|WORDSNET-24070|Incorrect rendering document to PDF|Bug
|WORDSNET-25774|Line AutoShape is rendered thinner|Bug
|WORDSNET-25790|Aspose.Words 23.8 - evaluation message added if metered license applied|Bug
|WORDSNET-25725|Document.UpdateFields() throws 'Invalid document model. Operation can not be completed.'|Bug
|WORDSNET-25796|Missing characters after converting PDF to DOCX|Bug
|WORDSNET-25794|Metered license not expired but watermark is shown|Bug
|WORDSNET-25792|The size of "Sigma" and "Pi" signs is incorrect in "stretch" mode of the N-ary function|Bug
|WORDSNET-25739|Transparent page background does not work in EMF using AW EMF renderer|Bug
|WORDSNET-25754|Fonts are substituted even when they are availabe in the fonts folder|Bug
|WORDSNET-24524|Incorrect rendering of the radical sign|Bug
|WORDSNET-21905|Extra memory consumption for metafiles|Bug
|WORDSNET-25732|Font size is changed after converting PDF to DOCX|Bug
|WORDSNET-25682|DML shape is not detected as a watermark by Aspose.Words|Bug
|WORDSNET-25584|InvalidOperationException is thrown when remove hidden bookmark|Bug
|WORDSNET-24600|List type is changed after appending documents|Bug
|WORDSNET-25759|Inaccurate header export when converting RTF to HTML|Bug
|WORDSNET-24612|Font in footer is changed after appending document with KeepSourceFormatting|Bug
|WORDSNET-24110|Image is lost upon rendering document on Alpine Linux|Bug
|WORDSNET-25764|Inline shape is not clipped by the container table cell on conversion to PDF|Bug
|WORDSNET-25795|Unexpected font in output PDF|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added an ability to set chart axis title

Related issue: WORDSNET-24912

A new public class **ChartAxisTitle** has been implemented. And a property **Title** of this type has been added.
{{< highlight csharp >}}
/// <summary>
/// Provides access to the axis title properties.
/// To learn more, visit the <a href="https://docs.aspose.com/words/net/working-with-charts/">Working with
/// Charts</a> documentation article.
/// </summary>
public class ChartAxisTitle
{
    /// <summary>
    /// Gets or sets the text of the axis title.
    /// If <c>null</c> or empty value is specified, auto generated title will be shown.
    /// </summary>
    /// <remarks>Use <see cref="Show"/> option if you need to show the title.</remarks>
    public string Text { get; set; }

    /// <summary>
    /// Determines whether other chart elements shall be allowed to overlap the title.
    /// The default value is <c>false</c>.
    /// </summary>
    public bool Overlay { get; set; }

    /// <summary>
    /// Determines whether the title shall be shown for the axis.
    /// The default value is <c>false</c>.
    /// </summary>
    public bool Show { get; set; }
}

public class ChartAxis
{
    /// <summary>
    /// Provides access to the axis title properties.
    /// </summary>
    public ChartAxisTitle Title { get; }
}
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to set and show title of X and Y axes:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "chart-axis-title.cs" >}}
{{% /alert %}}

### Added public property MarkdownSaveOptions.ImagesFolderAlias

Related issue: WORDSNET-21376

A new public property **ImagesFolderAlias** has been added to class **MarkdownSaveOptions**:
{{< highlight csharp >}}
/// <summary>
/// Specifies the name of the folder used to construct image URIs written into a document.
/// </summary>
public string ImagesFolderAlias { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use ImagesFolderAlias property within MarkdownSaveOptions:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "images-folder.cs" >}}
{{% /alert %}}

### Added public property ParagraphFormat.BaselineAlignment

Related issue: WORDSNET-25698

A new public property **BaselineAlignment** has been added to class **ParagraphFormat** and a new public enum has been introduced:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets fonts vertical position on a line.
/// </summary>
public BaselineAlignment BaselineAlignment { get; set; }

/// <summary>
/// Specifies fonts vertical position on a line.
/// </summary>
public enum BaselineAlignment
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use BaselineAlignment property of a ParagraphFormat:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "paragraph-baseline-alignment.cs" >}}
{{% /alert %}}

### Changed MetafileRenderingOptions properties related to metafile size on page emulation

**ScaleWmfFontsToMetafileSize** property is replaced with **EmulateRenderingToSizeOnPage** and added **EmulateRenderingToSizeOnPageResolution**.

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value determining whether metafile rendering emulates the display of the metafile according to the size on page
/// or the display of the metafile in its default size.
/// </summary>
/// <remarks>
/// <para>When metafiles are displayed in MS Word, some graphics may be scaled according to the actual metafile size in pixels.
/// I.e. even zooming may affect the metafile display.</para>
///
/// <p>When this value is set to <c>true</c>, Aspose.Words emulates rendering according to the metafile size on page.
/// The size in pixels is calculated from the metafile size on the page and the specified <see cref="EmulateRenderingToSizeOnPageResolution"/>.</p>
///
/// <p>When this value is set to <c>false</c>, Aspose.Words emulates metafile rendering to its default size in pixels.</p>
///
/// <p>This option is used only when metafile is rendered as vector graphics.</p>
///
/// <p>The default value is <c>true</c>.</p>
/// </remarks>
public bool EmulateRenderingToSizeOnPage { get; set; }

/// <summary>
/// Gets or sets the resolution in pixels per inch for the emulation of metafile rendering to the size on page.
/// </summary>
/// <remarks>
/// <p>This option is used only when <see cref="EmulateRenderingToSizeOnPage"/> is set to <c>true</c>.</p>
///
/// <p>The default value is 96. This is a default display resolution. I.e. metafile rendering will emulate the display of
/// the metafile in MS Word with a 100% zoom factor.</p>
/// </remarks>
public int EmulateRenderingToSizeOnPageResolution { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to set the EmulateRenderingToSizeOnPage property to emulate rendering according to the metafile size on page:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "emulate-rendering-to-size-on-page.cs" >}}
{{% /alert %}}

### Removed obsolete property ChildNodes from CompositeNode class

Related issue: WORDSNET-25439

The obsolete public property **ChildNodes** is removed from **Aspose.Words.CompositeNode** class.
Note, the removed ChildNodes is equivalent to calling GetChildNodes(NodeType, bool) with arguments (NodeType.Any and false)
Please check the following example:

{{< highlight csharp >}}
Node[] children = source.GetChildNodes(NodeType.Any, false).ToArray();
{{< /highlight >}}