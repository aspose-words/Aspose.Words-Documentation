---
title: Aspose.Words for .NET 18.4 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 18.4 Release Notes
linktitle: Aspose.Words for .NET 18.4 Release Notes
description: "Aspose.Words for .NET 18.4 Release Notes – the latest updates and fixes."
type: docs
weight: 90
url: /net/aspose-words-for-net-18-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 18.4](https://www.nuget.org/packages/Aspose.Words/18.4.0)

{{% /alert %}}

## Major Features

There are 66 improvements and fixes in this regular monthly release. The most notable are:

- Provide an ability to work with password-protected ODT and OTT file formats
- Preserve PaperTray information in PCL       
- Added ShapeBase.IsLayoutInCell property 
- Implemented optimization of metafile rendering vector output. Optimization includes applying intermediate transformations directly to the graphics and removing redundant canvases. Such optimization is also performed by MW when saving metafiles as vector graphics to PDF, XPS, etc.
- PaperTray information is now saved in PCL output
- "DrawingML shapes are not fully supported" warning is not thrown anymore, more specific warnings are used instead while rendering
- DrawingML shapes with auto-size and empty textboxes don't throw exception while rendering now
- WordArt objects with empty fill now cast only outline shadows while rendering. Previously the whole shape cast a shadow
- Improved rendering of MathAccentElement. The accent symbol is rendered in accordance with the letter's height
- Improved rendering of PieChart, if data labels have a manual layout
- Improved rendering of the text boxes with OleObjects (e.g. Math equation)
- Improved rendering of WordArt objects with gradient fill
- Fixed a bug causing the corruption of radial gradient fill for rotated shapes while rendering
- Fixed rendering of “Monotype Hadassah” font with legacy encoding
- Fixed a problem with META_SETPIXEL WMF record while rendering meta-files
- Improved frame width calculation when paragraph has right indent
- Improved computation of widths of ideographic space when combined with document grid, space inside footnotes
- Improved floating table positioning for RTL tables in 2013 compatibility mode
- Improved layout of 2013 compatible documents when page break overlaps footer
- Improved positioning of wrapped lines in 2013 compatibility mode, and lines with large inline images
- Fixed issue with character compressing when Kinsoku rule is ignored by document
- Fixed incorrect glyph selection for Zero Width No-Break Space when font does not have this glyph
- Fixed comment range highlighting issue when comment spans multiple pages inside a repeated header row of a table
- Fixed rendering of text in merged cells when row contains hidemark attribute on the cell break and all remaining cells are merged

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-16587|Content are pushed down to the page in output PDF|Bug|
|WORDSNET-16585|DOCX to PDF - text split next line|Bug|
|WORDSNET-16580|The output PDF document contains blank page after page 9.|Bug|
|WORDSNET-16578|Missing text during word to pdf conversion|Bug|
|WORDSNET-16567|OMathPara with added text is "inline" in DOCX, but not "inline" in PDF.|Bug|
|WORDSNET-16563|Cell background becomes black upon rendering|Bug|
|WORDSNET-16559|Japanese characters are misaligned in PDF|Bug|
|WORDSNET-16557|Aspose.Words.UnsupportedFileFormatException is thrown for DOTX|Bug|
|WORDSNET-16525|Some artifacts in AutoCAD.Drawing.18 are dimmed or missed in PDF|Bug|
|WORDSNET-16523|Field.Unlink does not unlink IF fields|Bug|
|WORDSNET-16514|DocumentBuilder.InsertImage causes issue with vertical dashed lines in SVG drawings for PDF|Bug|
|WORDSNET-16510|Handle "DrawingML shapes are not fully supported" warning correctly|Bug|
|WORDSNET-16507|WordArt Style lost in PDF|Bug|
|WORDSNET-16505|Image presentation of OLE object is changed after re-saving ODT|Bug|
|WORDSNET-16502|DOCX to PDF - ToC link not pointing to same table|Bug|
|WORDSNET-16500|Character is being turned in to "6" in PDF|Bug|
|WORDSNET-16484|DOCX to PDF conversion issue with zero width no-break space character|Bug|
|WORDSNET-16482|PDF output is corrupted after rendition|Bug|
|WORDSNET-16467|Chart image is not rendered correctly in output PDF|Bug|
|WORDSNET-16465|Math equation is truncated after conversion from DOC to PDF|Bug|
|WORDSNET-16460|Syntax issue in output PDF|Bug|
|WORDSNET-16450|Wrong radial gradient if object is rotated|Bug|
|WORDSNET-16449|Wrong pen thickness in EMF metafile|Bug|
|WORDSNET-16446|DocumentBuilder.InsertImage causes issue with dashed lines in SVG drawings|Bug|
|WORDSNET-16440|Y position of the line after floaters is computed improperly for MS Word 2013|Bug|
|WORDSNET-16422|A Drawing truncates from right in PDF|Bug|
|WORDSNET-16418|System.NullReferenceException is thrown when RevisionOptions.ShowRevisionBalloons is set to true.|Bug|
|WORDSNET-16393|Charts' size is smaller in output PDF|Bug|
|WORDSNET-16350|Incorrect TOC page number in RTF to DOCX conversion|Bug|
|WORDSNET-16337|WordArt is not rendered correctly|Bug|
|WORDSNET-16303|Insert revisions are inserted into Document using Document.TrackRevisions|Bug|
|WORDSNET-16289|Images have been misplaced in PDF output.|Bug|
|WORDSNET-16252|DOCX to PDF issue with Characters with above bar line|Bug|
|WORDSNET-16169|Highlighted text issue in Rendered PDF|Bug|
|WORDSNET-16072|Page and Table margin are not preserved during DOCX-HTML-DOCX round trip|Bug|
|WORDSNET-15226|List label is changed after conversion from DOC to DOCX/PDF|Bug|
|WORDSNET-15016|Paragraph text inside StructuredDocumentTag is not modified after DOCX-HTML-DOCX round trip|Bug|
|WORDSNET-14763|Diagram Shapes coming oddly when exporting Word to HTML|Bug|
|WORDSNET-11370|/table grid/ Barcodes and Tables do not render to their complete widths in PDF|Bug|
|WORDSNET-9743|Some images are missing from output Pdf|Bug|
|WORDSNET-7586|Support C1 control character mapping (MHTML to Tiff conversion issue with text rendering after lower quotes)|Bug|
|WORDSNET-6840|Table background Shading color is not preserved when saving to MHTML|Bug|
|WORDSNET-5799|Text of list items in a comment is not rendered|Bug|
|WORDSNET-16546|Watermark on each page is not at correct position|Enhancement|
|WORDSNET-16530|Loading RTF hangs|Enhancement|
|WORDSNET-16490|DOCX to PDF - text moved to right|Enhancement|
|WORDSNET-16479|Add warnings when document has issues with its content|Enhancement|
|WORDSNET-16396|Remove obsolete LoadOptions.WebRequestTimeout|Enhancement|
|WORDSNET-16349|Review the methods depending on DocPr.IsGutterSide as it may return an incorrect value|Enhancement|
|WORDSNET-15811|Incorrect digital signing with DSA certificate|Enhancement|
|WORDSNET-15490|DOCX to PDF conversion issue with text color|Enhancement|
|WORDSNET-15004|Formatting of StructuredDocumentTag is lost during DOCX-HTML-DOCX round trip|Enhancement|
|WORDSNETSTD-47|TypeInitializationException on .NET Standard|Exception|
|WORDSNET-16584|System.NullReferenceException occurs upon rendering to PDF|Exception|
|WORDSNET-16552|System.NullReferenceException is thrown while saving DOCX to PDF|Exception|
|WORDSNET-16541|FileCorruptedException loading html with SVG|Exception|
|WORDSNET-16456|Document.ImportNode throws System.InvalidOperationException|Exception|
|WORDSNET-16453|An exception raises while saving the output in PDF format.|Exception|
|WORDSNET-16425|FileCorruptedException occurs upon loading a ODT|Exception|
|WORDSNET-16408|System.InvalidCastException occurs when loading a ODT file|Exception|
|WORDSNET-16135|Appending document throws InvalidOperation Exception|Exception|
|WORDSNET-16513|Provide ability to extract Subject and the Issuer of a certificate|Feature|
|WORDSNET-16391|Preserve PaperTray information in PCL|Feature|
|WORDSNET-16353|Improve the rendering of compound lines and DrawingML shapes|Feature|
|WORDSNET-16133|Provide an ability to work with password-protected ODT and OTT file formats|Feature|
|WORDSNET-16565|UpdateFields caused hidden fields to be shown|Regression|

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 18.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Ability to Work with Password-Protected ODT and OTT File Formats Added

Related issue: WORDSNET-16133

Supported encryption for ODF documents.

The following public API has been added to the OdtSaveOptions class:

{{< highlight csharp >}}
/// <summary>
/// Initializes a new instance of this class that can be used to save a document in the <see cref="Words.SaveFormat.Odt"/> format
/// encrypted with a password.
/// </summary>
public OdtSaveOptions(string password)
{{< /highlight >}}

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a password to encrypt document.
/// </summary>
/// <remarks>
/// <para>In order to save document without encryption this property should be null or empty string.</para>
/// </remarks>
public string Password
{{< /highlight >}}

#### UC1: Load encrypted ODT document.

{{< highlight csharp >}}
Document doc = new Document(@"\encrypted.odt", new LoadOptions("password"));
{{< /highlight >}}

##### UC2: Save ODT document encrypted with a password.

{{< highlight csharp >}}
Document doc = new Document();
doc.Save(@"\encryped.odt", new OdtSaveOptions("password"));
{{< /highlight >}}

##### UC3: Verify ODT document is encrypted.

{{< highlight csharp >}}
FileFormatInfo info = FileFormatUtil.DetectFileFormat(@"\encryped.odt");
Debug.Assert(info.IsEncrypted);
{{< /highlight >}}

### Ability to Preserve PaperTray Information in PCL Added

Related issue: WORDSNET-16391

Paper tray information is now preserved when saving document to PCL format.
Following information is transferred from document's model to PCL file:

{{< highlight csharp >}}
PageSetup.FirstPageTray
PageSetup.OtherPagesTray
{{< /highlight >}}

No additional code is required.
Please note the value of paper tray is passed from document "as is".
PCL format supports only 8-bit identifiers for paper tray so make sure this values are correct for PCL printer.

### Added ShapeBase.IsLayoutInCell property

Related issue: WORDSNET-16546

The following public property has been added into the **ShapeBase** class:

{{< highlight csharp >}}
/// <summary>
/// Gets or sets a flag indicating whether the shape is displayed inside a table or outside of it.
/// </summary>
/// <remarks>
/// The default value is <b>true</b>.
/// Has effect only for top level shapes, the property <see cref="WrapType"/> of which is set to value
/// other than <see cref="WrapType.Inline"/>.
/// </remarks>
public bool IsLayoutInCell
{
    get; set;
}
{{< /highlight >}}

The property may be helpful for shapes (mainly VML) that are placed into a table cell but are needed to position without binding to the cell.

#### Usage

{{< highlight csharp >}}
Shape watermark = new Shape(doc, ShapeType.TextPlainText);
watermark.RelativeHorizontalPosition = RelativeHorizontalPosition.Page;
watermark.RelativeVerticalPosition = RelativeVerticalPosition.Page;
watermark.IsLayoutInCell = false;
 // Display the shape outside of table cell if it will be placed into a cell.
watermark.Width = 300;
watermark.Height = 70;
watermark.HorizontalAlignment = HorizontalAlignment.Center;
watermark.VerticalAlignment = VerticalAlignment.Center;
watermark.Rotation = -40;
watermark.Fill.Color = Color.Gray;
watermark.StrokeColor = Color.Gray;
watermark.TextPath.Text = "watermarkText";
watermark.TextPath.FontFamily = "Arial";
watermark.Name = string.Format("WaterMark_{0}", Guid.NewGuid());
watermark.WrapType = WrapType.None;
builder.MoveTo(run);
builder.InsertNode(watermark);
{{< /highlight >}}

### Optimization of Vector Graphics Output of Metafile Rendering

Related issues: WORDSNET-16449, WORDSNET-15490

Implemented optimization of metafile rendering vector output. Optimization includes applying intermediate transformations directly to the graphics and removing redundant canvases. Such optimization is also performed by MW when saving metafiles as vector graphics to PDF, XPS, etc.

Optimization may affect the visual appearance of metafile vector graphics in viewer applications due to peculiarities of vector graphics rendering. For example, there are cases when not optimized output looks faded out in Acrobat Reader comparing to optimized output.

Metafile output optimization is controlled by existing FixedPageSaveOptions.OptimizeOutput flag.

### Obsolete property LoadOptions.WebRequestTimeout was removed

` `Obsolete property WebRequestTimeout was removed from the LoadOptions class. Please use the HtmlLoadOptions.WebRequestTimeout property instead.
