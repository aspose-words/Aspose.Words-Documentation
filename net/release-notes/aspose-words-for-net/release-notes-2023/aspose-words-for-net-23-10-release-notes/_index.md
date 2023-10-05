---
title: 23.10 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 23.10 Release Notes
linktitle: Aspose.Words for .NET 23.10 Release Notes
description: "Aspose.Words for .NET 23.10 Release Notes – the latest updates and fixes."
type: docs
weight: 25
url: /net/aspose-words-for-net-23-10-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 23.10](https://www.nuget.org/packages/Aspose.Words/23.10.0).

{{% /alert %}}

## Major Features

There are 125 improvements and fixes in this regular monthly release. The most notable are:

- Added generic type parameter to CompositeNode's class methods.
- Implemented various PDF rendering optimizations to reduce output size when utilizing PdfSaveOptions.OptimizeOutput settings.
- Added the capability to retrieve the foreground color without modifiers in the Fill and Stroke classes.
- Expanded the functionality of ChartDataPointCollection, ChartSeries, and ChartFormat classes with new options.
- Introduced a simplified method for inserting one document inside another document inline at the current cursor position.
- Introduced the ImageData.FitImageToShape() method.
- Added the ability to access and modify the Locked property of a Style.
- Implemented a feature to recognize hyperlinks when loading TXT documents.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-24964|Ability to get grid span of cell|New Feature
|WORDSNET-24946|Ability to load images using relative path with support of ResourceLoadingCallback|New Feature
|WORDSNET-24950|Provide way in API to restart numbering of particular list items|New Feature
|WORDSNET-24963|Implement special mode for DocumentBuilder.InsertDocument and DocumentBuilder.InsertHtml methods|New Feature
|WORDSNET-24951|Provide way to remove Color and Underline font attributes|New Feature
|WORDSNET-16052|HTML to DOCX/PDF conversion issue with css property "white-space: nowrap"|New Feature
|WORDSNET-16076|Cell's text is wrapped to next line in output PDF|New Feature
|WORDSNET-25505|Consider providing InsertDocument overload to insert document content inline|New Feature
|WORDSNET-24841|Support MSO properties during import headers and footers|New Feature
|WORDSNET-17007|Word Table messed up in PDF|New Feature
|WORDSNET-25529|Clickable links in txt-model-html conversion|New Feature
|WORDSNET-24944|Ability to copy data point format/properties to/from another data point or series defaults, and ability to determine whether data point has non default formatting|New Feature
|WORDSNET-24913|Ability to generate consistent IDs of comment nodes when cloning the nodes|New Feature
|WORDSNET-23827|Implement CompositeNode manipulation methods as generic|New Feature
|WORDSNET-11412|Html to Pdf conversion with table's layout|New Feature
|WORDSNET-21824|Add feature to set/get color of Chart Title|New Feature
|WORDSNET-14416|Paragraph is rendered on next page in output FixedHtml|New Feature
|WORDSNET-13661|Add feature to change the font of chart title|New Feature
|WORDSNET-12747|Provide API to set Vertical (Value) Axis Title of Chart|New Feature
|WORDSNET-25898|Implement writing signature created field.|New Feature
|WORDSNET-25914|Signing documents in OTT format.|New Feature
|WORDSNET-24933|Ability to get foreground colour without modifiers in Fill and Stroke classes|New Feature
|WORDSNET-24909|Ability to inherit from CompositeNode in API|New Feature
|WORDSNET-7479|DOCX to PDF file conversion issue with text rendering|New Feature
|WORDSNET-24967|Add method to shape API to keep image aspect ratio|New Feature
|WORDSNET-19651|Table header's text render incorrectly in output PDF|Enhancement
|WORDSNET-22217|Text is wrapped within table cell after DOCX to PDF conversion |Enhancement
|WORDSNET-8148|Table height issue while converting Aspose.Words.Document into PDF|Enhancement
|WORDSNET-18040|Table header width in PDF is not the same as word document|Enhancement
|WORDSNET-21637|Text of content control is rendered incorrectly in output PDF|Enhancement
|WORDSNET-25816|DOCX to MD: Internal reference links|Enhancement
|WORDSNET-10656|Table.AutoFit(AutoFitBehavior.AutoFitToContents) does not work when save the document to PDF/XPS|Enhancement
|WORDSNET-15216|Text moves to next page in rendered PDF after AcceptAllRevisions|Enhancement
|WORDSNET-22444|Text is pushed down to next page after DOCX to PDF conversion|Enhancement
|WORDSNET-21289|Incorrect text wrapping when NoWrap=false and PreferredWidth set on cell|Enhancement
|WORDSNET-20379|Table Column Cell Widths reduced in rendered PDF|Enhancement
|WORDSNET-19650|Table border is lost after conversion from MHT to PDF|Bug
|WORDSNET-20904|Table cell width is changed when HTML is converted to PDF|Bug
|WORDSNET-22426|DOCX to PDF conversion issue with text position|Bug
|WORDSNET-22813|Empty Page is created in output PDF after changing PaperSize under German culture |Bug
|WORDSNET-23423|Incorrect TableGrid issue|Bug
|WORDSNET-24703|Table layout is different after rendering|Bug
|WORDSNET-24462|Table is rendered narrower than it should|Bug
|WORDSNET-25374|Deprecated UpdateTableLayout() is required for table update|Bug
|WORDSNET-24996|DOCX to PDF: Table not rendered correctly|Bug
|WORDSNET-24997|Table width is incorrect after rendering|Bug
|WORDSNET-25000|DOCX to PDF: Table header text is not retained upon conversion|Bug
|WORDSNET-25485|Table is rendered improperly|Bug
|WORDSNET-25171|Table column widths are different after rendering document|Bug
|WORDSNET-25155|UpdateTableLayout is still required even if it is deprecated|Bug
|WORDSNET-25736|Table borders are rendered improperly|Bug
|WORDSNET-25753|Table layout is changed after rendering that leads to content move to the next page|Bug
|WORDSNET-13197|Incorrect text wrapping in Cells in PDF|Bug
|WORDSNET-14356|Problem with converation of table in FixedHtml|Bug
|WORDSNET-19049|Export to PDF ignores cells WrapText|Bug
|WORDSNET-16558|Table columns width changes in PDF|Bug
|WORDSNET-18012|A Table column is missing from PDF|Bug
|WORDSNET-7303|Text wrapping issue with HTML to PDF conversion |Bug
|WORDSNET-19968|Table width is change after DOCX to PDF conversion|Bug
|WORDSNET-16967|Table cells with Wrapped text do not auto resize in PDF|Bug
|WORDSNET-20710|Text is wrapped in table's cell when document is saved to PDF|Bug
|WORDSNET-19784|Table column widths are not correct in PDF|Bug
|WORDSNET-13147|Table's column width is increased in output PDF|Bug
|WORDSNET-16063|Table formatting issue in HTM to TIF conversion|Bug
|WORDSNET-11119|HTML to Tiff conversion issue with text rendering|Bug
|WORDSNET-16160|Table rendering issue in HTML to PDF conversion|Bug
|WORDSNET-25995|"Avenir Next LT Pro" fonts are improperly substituted|Bug
|WORDSNET-25513|Rendering performance depredated in new version of Aspose.Words|Bug
|WORDSNET-24292|RTL document layout is broken after rendering|Bug
|WORDSNET-25544|Consider exposing Style.Locked property|Bug
|WORDSNET-25297|Provide public access to CellPr.HideMark property|Bug
|WORDSNET-24412|List items are shown in one line if CssStyleSheetType.Embedded is used |Bug
|WORDSNET-25372|IF field is not updated properly upon execution mail merge|Bug
|WORDSNET-25665|ArgumentException is thrown upon saving HTML document after loading MHTML with IResourceLoadingCallback|Bug
|WORDSNET-25673|SVG with page background has white space at the left side when rendered with FitToViewPort option|Bug
|WORDSNET-25721|Redundant empty pages are added after PDF to DOCX conversion|Bug
|WORDSNET-25182|A redundant shape is rendered in the document header|Bug
|WORDSNET-25489|Accessing paragraph border creates None border in the output document|Bug
|WORDSNET-25738|Numbering is incorrect after using ExtractPages|Bug
|WORDSNET-25751|Resulting text has no shadow after converting DOCX to PNG|Bug
|WORDSNET-25777|Document.ExtractPages method produces 2-page document instead of 1-page|Bug
|WORDSNET-25776|Formula is not rendered correctly when saving to PDF|Bug
|WORDSNET-25779|Incorrect links for TOC entries in SVG|Bug
|WORDSNET-25785|Document.ExtractPages method produces 2-page document instead of 1-page|Bug
|WORDSNET-25799|Provide access to the font properties of ChartTitle|Bug
|WORDSNET-25804|Watermark is rendered improperly|Bug
|WORDSNET-25810|Image in header is doubled after rendering|Bug
|WORDSNET-25828|PAGE field in footer is updated improperly upon rendering|Bug
|WORDSNET-25827|Header is rendered improperly, image overlaps textbox|Bug
|WORDSNET-25832|Formatting problem in TOC while merging DOCX|Bug
|WORDSNET-25834|DOCX to PDF: Save method hangs|Bug
|WORDSNET-25836|Chart is changed after open/save document using Aspose.Words|Bug
|WORDSNET-25845|Incorrect font is selected when Nunito Extrabold is used|Bug
|WORDSNET-25847|HTMLs not compared correctly |Bug
|WORDSNET-25853|Additional properties (rotation and vertical overflow) appear for the chart title after conversion to PDF|Bug
|WORDSNET-25860|InvalidCastException is thrown upon comparing document|Bug
|WORDSNET-25868|Remove support for external images for MOBI/AZW3 file formats|Bug
|WORDSNET-25869|HtmlSaveOptions.ExportOriginalUrlForLinkedImages doesn't have any effect on HTML image export|Bug
|WORDSNET-25646|Document compare accessing Revision.Group performance|Bug
|WORDSNET-25864|OutOfMemoryException is thrown upon extracting pages|Bug
|WORDSNET-25982|BarcodeParameters.BarcodeType contains redundant character|Bug
|WORDSNET-25873|NullReferenceException is thrown upon saving document as RTF|Bug
|WORDSNET-25877|The characters are garbled in Word 95 binary DOC|Bug
|WORDSNET-25878|DOCX to PDF: Incorrect spacing|Bug
|WORDSNET-25886|Footer position is incorrect after merging documents|Bug
|WORDSNET-25891|NullReferenceException is thrown upon calling UpdateFields|Bug
|WORDSNET-25889|Page footer is moved to the next page and overlaps content|Bug
|WORDSNET-25892|Compare throws "NC sync failed" error|Bug
|WORDSNET-25894|Header Alignment Issue|Bug
|WORDSNET-25904|Shape's adjustment workaround|Bug
|WORDSNET-25612|Radar chart with NaN values is rendered improperly|Bug
|WORDSNET-25946|Aspose.Words hangs upon rendering document|Bug
|WORDSNET-25941|FORMULA field does not recognize table cell coordinates references.|Bug
|WORDSNET-25970|Image is not resized to the container after updating INCLUDEPICTURE field|Bug
|WORDSNET-25893|Evaluation message added if metered AW for Cloud license applied|Bug
|WORDSNET-8998|UpdateFields does not calculate the page number in TOC field correctly|Bug
|WORDSNET-25978|Incorrect fallback font for VML WordArt with Thai locale|Bug
|WORDSNET-25979|Incorrect size calculation of VML WordArt text when using fallback font|Bug
|WORDSNET-11008|Performance issue while rendering document to PDF|Bug
|WORDSNET-25971|Tofu is rendered after ®? Character|Bug
|WORDSNET-25883|WK: Incorrect Stroke.DashStyle|Bug
|WORDSNET-25881|Text is improperly distributed while rendering|Bug
|WORDSNET-16161|Table overlaps the image in HTML to PDF conversion|Bug
|WORDSNET-25843| Symbol Replacement Issue in MailMerge|Bug
|WORDSNET-25399|ArgumentOutOfRangeException is thrown upon updating page layout|Bug
</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to get foreground colour without modifiers in Fill and Stroke classes

Related issue: WORDSNET-24933

A new public property **BaseForeColor** has been added to class **Fill** and **Stroke**:
{{< highlight csharp >}}
//// <summary>
/// Gets a Color object that represents the base foreground color for the fill
/// without any modifiers.
/// </summary>
public Color BaseForeColor

...

/// <summary>
/// Gets the base foreground color of the stroke without any modifiers.
/// </summary>
public Color BaseForeColor
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to get foreground color without modifiers in **Fill** and **Stroke** classes:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "fill-base-color.cs" >}}
{{% /alert %}}

### Added generic type parameter to CompositeNode's class methods

Related issue: WORDSNET-23827

Added generic type parameter to the following CompositeNode's methods:
{{< highlight csharp >}}
/// <summary>
/// Adds the specified node to the end of the list of child nodes for this node.
/// </summary>
public T AppendChild<T>(T newChild) where T : Node;

/// <summary>
/// Adds the specified node to the beginning of the list of child nodes for this node.
/// </summary>
public T PrependChild<T>(T newChild) where T : Node;

/// <summary>
/// Inserts the specified node immediately after the specified reference node.
/// </summary>
/// <remarks>
public T InsertAfter<T>(T newChild, Node refChild) where T : Node;

/// <summary>
/// Inserts the specified node immediately before the specified reference node.
/// </summary>
public T InsertBefore<T>(T newChild, Node refChild) where T : Node;

/// <summary>
/// Removes the specified child node.
/// </summary>
public T RemoveChild<T>(T oldChild) where T : Node;
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to use new generic methods:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "create-simple-document.cs" >}}
{{% /alert %}}

### Added new members to ChartDataPointCollection, ChartSeries and ChartFormat classes

Related issue: WORDSNET-24944

The following new methods and property have been added to the **ChartDataPointCollection**, **ChartSeries** and **ChartFormat** classes:
{{< highlight csharp >}}
namespace Aspose.Words.Drawing.Charts
{
    public class ChartDataPointCollection
    {
        ...

        /// <summary>
        /// Gets a flag indicating whether the data point at the specified index has default format.
        /// </summary>
        public bool HasDefaultFormat(int dataPointIndex);

        /// <summary>
        /// Copies format from the source data point to the destination data point.
        /// </summary>
        public void CopyFormat(int sourceIndex, int destinationIndex);
    }

    public class ChartSeries
    {
        ...

        /// <summary>
        /// Copies default data point format from the data point with the specified index.
        /// </summary>
        public void CopyFormatFrom(int dataPointIndex);
    }

    public class ChartFormat
    {
        ...

        /// <summary>
        /// Resets the fill of the chart element to have the default value.
        /// </summary>
        public void SetDefaultFill();

        /// <summary>
        /// Gets a flag indicating whether any format is defined.
        /// </summary>
        public bool IsDefined { get; }
    }
}
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to copy data point format:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "copy-data-point-format.cs" >}}

This use case explains how to reset data point fill:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "reset-data-point-fill.cs" >}}

{{% /alert %}}

### Added new public method ImageData.FitImageToShape()

Related issue: WORDSNET-24967

A new **FitImageToShape** public method has been added to **ImageData** class:
{{< highlight csharp >}}
/// <summary>
/// Fits the image data to Shape frame so that the aspect ratio of the image data matches the aspect ratio of Shape frame.
/// </summary>
public void FitImageToShape()
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to work with **ImageData.FitImageToShape()**:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "fit-image-to-shape.cs" >}}
{{% /alert %}}

### Added public method DocumentBuilder.InsertDocumentInline

Related issue: WORDSNET-25505

A new public method **InsertDocumentInline** has been added to class **DocumentBuilder**:
{{< highlight csharp >}}
/// <summary>
/// Inserts a document inline at the cursor position.
/// </summary>
/// <remarks>
/// <para>
/// This method mimics the MS Word behavior, as if CTRL+'A' (select all content) was pressed,
/// then CTRL+'C' (copy selected into the buffer) inside one document
/// and then CTRL+'V' (insert content from the buffer) inside another document.
/// </para>
/// <para>As a difference from <see cref="InsertDocument(Aspose.Words.Document,Aspose.Words.ImportFormatMode,Aspose.Words.ImportFormatOptions)"/>
/// this method moves the content of the paragraph of the destination document,
/// before which the source document is inserted, into the last
/// paragraph of the inserted source document. Actually, this means that
/// paragraph break of the last inserted paragraph is removed.</para>
/// <para>Note, if the last node of the source document is not a paragraph, then nothing will be done.</para>
/// </remarks>
/// <param name="srcDoc">Source document for inserting.</param>
/// <param name="importFormatMode">Specifies how to merge style formatting that clashes.</param>
/// <param name="importFormatOptions">Allows to specify options that affect formatting of a result document.</param>
/// <returns>First node of the inserted content.</returns>
public Node InsertDocumentInline(Document srcDoc, ImportFormatMode importFormatMode, ImportFormatOptions importFormatOptions)
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to insert one document into another inline:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "insert-document-inline.cs" >}}
{{% /alert %}}

### Added public properties ChartTitle.Font and ChartAxisTitle.Font

Related issue: WORDSNET-25799

An ability to set font properties for chart and axis titles has been implemented.

The following new public properties have been added:
{{< highlight csharp >}}
namespace Aspose.Words.Drawing.Charts
{
    public class ChartTitle
    {
        ...

        /// <summary>
        /// Provides access to the font formatting of the chart title.
        /// </summary>
        public Font Font { get; }
    }

    public class ChartAxisTitle
    {
        ...

        /// <summary>
        /// Provides access to the font formatting of the axis title.
        /// </summary>
        public Font Font { get; }
    }
}
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use cases explain how to set font properties for chart and axis titles:
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "chart-axis-title.cs" >}}
{{< gist "aspose-words-gists" "04b5e87c2c1e7ab4b3399340d0328050" "chart-title.cs" >}}
{{% /alert %}}

### Added public property Style.Locked

Related issue: WORDSNET-25544

A new public property **Locked** has been added to class **Style**:
{{< highlight csharp >}}
/// <summary>
/// Specifies whether this style is locked.
/// </summary>
public bool Locked { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to get and set **Locked** property of a **Style**:
{{< gist "aspose-words-gists" "3428e84add5beb0d46a8face6e5fc858" "lock-style.cs" >}}
{{% /alert %}}

### Added public property TxtLoadOptions.DetectHyperlinks

Related issue: WORDSNET-25529

A new public property **DetectHyperlinks** has been added to class **TxtLoadOptions**:
{{< highlight csharp >}}
/// <summary>
/// Specifies either to detect hyperlinks in text.
/// The default value is <c>false</c>.
/// </summary>
public bool DetectHyperlinks { get; set; }
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to recognize hyperlinks when loading TXT documents:
{{< gist "aspose-words-gists" "3428e84add5beb0d46a8face6e5fc858" "detect-hyperlinks.cs" >}}
{{% /alert %}}