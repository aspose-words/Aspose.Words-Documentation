---
title: Aspose.Words for .NET 17.5 Release Notes
articleTitle: Aspose.Words for .NET 17.5 Release Notes
linktitle: Aspose.Words for .NET 17.5 Release Notes
description: "Aspose.Words for .NET 17.5 Release Notes – the latest updates and fixes."
type: docs
weight: 80
url: /net/aspose-words-for-net-17-5-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 17.5](https://www.nuget.org/packages/Aspose.Words/17.5.0)

{{% /alert %}}

## Major Features

There are 84 improvements and fixes in this regular monthly release. The most notable are:

- MailMerge and Metafile rendering performance are improved.
- Support TOA, IMPORT, INCLUDE, SHAPE fields.
- API to bind SDT to CustomXML properties is provided.
- Implemented support for ShapeLayoutLikeWW8 compatibility option.
- Improved calculation of width of spaces in Asian text.
- Improved text wrapping for lines consisting of many tabs.
- Improved layout of multi-column sections when column ends with page break followed by paragraph break.
- A low resolution text rendering to images improved.
- Underlined text in EMF+ images are now rendered into fixed page formats.
- HtmlFixed output file rendering improved (removing zero-sized text boxes).
- Image crop is now taken into account while rendering HtmlFixed.
- Shaded DrawingML images rendering fixed.
- DrawingML Charts rendering improved (axis label placement).

## Full List of Issues Covering all Changes in this Release

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-10427|Doc to fixed file format conversion issue with STYLEREF|Bug|
|WORDSNET-10833|non-breaking space. Text position is changed after conversion from Docx to Doc/Pdf|Bug|
|WORDSNET-12367|Aspose.Words does not import the Run nodes correctly in DOM|Bug|
|WORDSNET-12544|space width + BalanceSingleByteDoubleByteWidth. Cell's text moves to next line in output Pdf|Bug|
|WORDSNET-14200|Rtf to Docx conversion issue with spaces's width.|Bug|
|WORDSNET-14348|ShapeLayoutLikeWW8. Doc to Pdf conversion issue with content's position|Bug|
|WORDSNET-14349|Veracode vulnerabilities in running Aspose.Words API code|Bug|
|WORDSNET-14355|ShapeLayoutLikeWW8. Doc to Pdf conversion issue with shape's position|Bug|
|WORDSNET-14408|Bookmark.Remove() removes only some bookmarks.|Bug|
|WORDSNET-14647|Chart is corrupted after conversion from MS WORD to PDF|Bug|
|WORDSNET-14661|List labels are lost after conversion from RTF to PNG|Bug|
|WORDSNET-14667|Image is lost after modifying the output Doc with MS Word 2003.|Bug|
|WORDSNET-14682|Document.AcceptAllRevisions does not accept all tracked changes|Bug|
|WORDSNET-14706|Chart image size seems bigger than original when exporting to HTML|Bug|
|WORDSNET-14874|Embedded Fonts are gone when printing Aspose.Words generated PDF|Bug|
|WORDSNET-14881|If saving to HTML and CssSavingArgs.CssStream is provided, CSS outputs both to the stream and to a file|Bug|
|WORDSNET-14928|Slope of Drawing Line is inversed when opening and saving the document|Bug|
|WORDSNET-14952|Pictures are shifted in rendered documents|Bug|
|WORDSNET-14987|Chart rendering is not accurate.|Bug|
|WORDSNET-14992|Vertical Axis of chart does not render correctly|Bug|
|WORDSNET-14997|Accept revisions cause a text deletion in Cell|Bug|
|WORDSNET-15034|Paragraph space after is changed after mail merge|Bug|
|WORDSNET-15040|Docx to Pdf conversion issue with Shape's text formatting|Bug|
|WORDSNET-15055|FontSettings are not document-bound during import from HTML|Bug|
|WORDSNET-15067|STYLEREF fields in headers resolve in Error when rendering Word document with revisions to PDF|Bug|
|WORDSNET-15083|SVG is not exported in output DOC/PDF|Bug|
|WORDSNET-15105|The stroke of SVG image is lost in output PDF|Bug|
|WORDSNET-15118|Inline styles are used when styles are set to be saved separately|Bug|
|WORDSNET-15139|Html to Docx/Pdf conversion issue with SVG image|Bug|
|WORDSNET-15171|Text color is changed in DOCX to JPG conversion|Bug|
|WORDSNET-15177|Range.Replace method does not replace text in footnote|Bug|
|WORDSNET-15182|Text in DrawingML textboxes missing when converting to PDF|Bug|
|WORDSNET-15184|Paragraph's text is rendered on previous page in output HtmlFixed/Pdf|Bug|
|WORDSNET-15202|Document.AcceptAllRevisions removes the empty paragraph that causes incorrect page layout|Bug|
|WORDSNET-15208|Pages are truncated in output HtmlFixed/PDF|Bug|
|WORDSNET-15210|API throws InvalidCastException upon loading DOCX|Bug|
|WORDSNET-15213|Date field is incorrectly formatted when FieldUpdateCultureSource.FieldCode is used|Bug|
|WORDSNET-15227|Chart's vertical axis are in correct in output PNG|Bug|
|WORDSNET-15228|Chart's vertical axis are rendered as decimal instead of integer|Bug|
|WORDSNET-15230|The minimum axis bound is changed in output PNG|Bug|
|WORDSNET-15232|Axis bounds and units of chart are changed in output PNG|Bug|
|WORDSNET-15237|Incorrect conversion of x-axis data of a Chart|Bug|
|WORDSNET-15242|Docx to PDF conversion issue with image rendering|Bug|
|WORDSNET-15254|Horizontal axis of chart does not render correctly|Bug|
|WORDSNET-6061|decimal tab. Table column text aligned incorrectly while doc to png/bmp format.|Bug|
|WORDSNET-6126|Background of Shape becomes black upon converting to EPUB/HTML|Bug|
|WORDSNET-6538|Shapes are misplaced when rendering to TIFF|Bug|
|WORDSNET-7377|decimal tabs. A Run of text splits into three lines in Cell when rendering to Pdf|Bug|
|WORDSNET-9371|Hebrew (RTL) characters are turned into garbage characters during rendering to PDF|Bug|
|WORDSNET-9606|A nested floating table is not rendering in Pdf|Bug|
|WORDSNET-11781|Incorrect text wrapping when a line starts with a huge space|Enhancement|
|WORDSNET-14782|Outline is incorrect upon converting VML to DML|Enhancement|
|WORDSNET-15014|Aspose.Words Objects are very verbose|Enhancement|
|WORDSNET-15038|MHTML import. Image format EMZ is not supported.|Enhancement|
|WORDSNET-15052|Simplifiy OMath when copying it into toc entry|Enhancement|
|WORDSNET-15135|Take image crop in account when render to HtmlFixed.|Enhancement|
|WORDSNET-15155|Documents rendered incorrectly|Enhancement|
|WORDSNET-15200|Obtain the correct distance between list label and content of list item|Enhancement|
|WORDSNET-7252|Backslashes and double quotes are not processed properly by the FieldTokenDecoder|Enhancement|
|WORDSNET-7302|An odd space added between spans at export to PNG|Enhancement|
|WORDSNET-8436|Rendering RTL tables to GDI/PNG is wrong|Enhancement|
|WORDSNET-14880|Exception when Saving Words document and CSS to Stream|Exception|
|WORDSNET-14926|When open .MOBI file, the Aspose.Words.FileCorruptedException occurs.|Exception|
|WORDSNET-14996|AcceptAllRevisions throws System.ArgumentException|Exception|
|WORDSNET-15068|Document.UpdateFields throws System.IndexOutOfRangeException|Exception|
|WORDSNET-15079|Document.UpdateFields throws System.ArgumentException|Exception|
|WORDSNET-15160|Document.UpdateFields throws System.InvalidOperationException|Exception|
|WORDSNET-15189|Aspose.Words.FileCorruptedException is thrown while loading DOCX|Exception|
|WORDSNET-15194|Bookmark.Text throws System.ArgumentException when it is set to empty string|Exception|
|WORDSNET-15267|Document.Save throws System.InvalidOperationException|Exception|
|WORDSNET-14363|Support TOA field|Feature|
|WORDSNET-15243|Support IMPORT field|Feature|
|WORDSNET-15244|Support INCLUDE field|Feature|
|WORDSNET-15245|Support SHAPE field|Feature|
|WORDSNET-4738|Provide an API to bind SDT to CustomXML properties.|Feature|
|WORDSNET-15089|performance. slow Document.MailMerge.Execute|Performance|
|WORDSNET-13424|Odt appears to be corrupted with 16.2.0 and Mono 2.10.8|Regression|
|WORDSNET-15114|HtmlFixed file size is increased after conversion from DOC|Regression|
|WORDSNET-15122|Escaping problem of double quotes in latest version|Regression|
|WORDSNET-15143|Changing of BackgroundPatternColor doesn't work.|Regression|
|WORDSNET-15146|Table border can't be changed.|Regression|
|WORDSNET-15149|DOC to HTML conversion results a big HTML|Regression|
|WORDSNET-15161|Table borders disappear after Paragraph removal|Regression|
|WORDSNET-15199|Header content becomes visible from behind a floating Frame with shading during rendering|Regression|

Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 17.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

### Added Public Method CustomXmlPartCollection.Add(string id, string xml)

A public method is added into the CustomXmlPartCollection class to help in creation of a custom XML part by specifying its XML:

{{< highlight csharp >}}
/// <summary>
/// Creates a new XML part with the specified XML and adds it to the collection.
/// </summary>
/// <param name="id">Identifier of a new custom XML part.</param>
/// <param name="xml">XML data of the part.</param>
/// <returns>Created custom XML part.</returns>
public CustomXmlPart Add(string id, string xml)
{{< /highlight >}}

Value of the 'xml' parameter is encoded as UTF8 and is stored in creating XML part.

#### UC for creating a custom XML part by specifying its XML

{{< highlight csharp >}}
Document doc = new Document();
CustomXmlPart xmlPart = doc.CustomXmlParts.Add(Guid.NewGuid().ToString("B"), "<root><text>Hello, World!</text></root>");
StructuredDocumentTag sdt = new StructuredDocumentTag(doc, SdtType.PlainText, MarkupLevel.Block);
sdt.XmlMapping.SetMapping(xmlPart, "/root[1]/text[1]", "");
doc.FirstSection.Body.AppendChild(sdt);
{{< /highlight >}}

### Implemented API to Bind StructuredDocumentTag to Node of Custom XML Part

WORDSNET-4738 has been resolved. The following public property is added into the StructuredDocumentTag class:

{{< highlight csharp >}}
/// <summary>
/// Gets an object that represents the mapping of this structured document tag to XML data
/// in a custom XML part of the current document.
/// </summary>
/// <remarks>
/// You can use the <see cref="Markup.XmlMapping.SetMapping"/> method of this object to map
/// a structured document tag to XML data.
/// </remarks>
public XmlMapping XmlMapping { get; }
{{< /highlight >}}

Public methods of the XmlMapping class:

{{< highlight csharp >}}
/// <summary>
/// Specifies the information that is used to establish a mapping between the parent
/// structured document tag and an XML element stored within a custom XML data part in the document.
/// </summary>
public class XmlMapping
{
    /// <summary>
    /// Sets a mapping between the parent structured document tag and an XML node of a custom XML data part.
    /// </summary>
    /// <param name="customXmlPart">A custom XML data part to map to.</param>
    /// <param name="xPath">An XPath expression to find the XML node.</param>
    /// <param name="prefixMapping">XML namespace prefix mappings to evaluate the XPath.</param>
    /// <returns>A flag indicating whether the parent structured document tag is successfully mapped to
    /// the XML node.</returns>
    public bool SetMapping(CustomXmlPart customXmlPart, string xPath, string prefixMapping);
    /// <summary>
    /// Deletes mapping of the parent structured document to XML data.
    /// </summary>
    public void Delete();
    /// <summary>
    /// Returns the custom XML data part to which the parent structured document tag is mapped.
    /// </summary>
    public CustomXmlPart CustomXmlPart { get; }
    /// <summary>
    /// Returns the XPath expression, which is evaluated to find the custom XML node
    /// that is mapped to the parent structured document tag.
    /// </summary>
    public string XPath { get; }
    /// <summary>
    /// Returns XML namespace prefix mappings to evaluate the <see cref="XPath"/>.
    /// </summary>
    /// <remarks>
    /// Specifies the set of prefix mappings, which shall be used to interpret the XPath expression
    /// when the XPath expression is evaluated against the custom XML data parts in the document.
    /// </remarks>
    public string PrefixMappings { get; }
    /// <summary>
    /// Returns <b>true</b> if the parent structured document tag is successfully mapped to XML data.
    /// </summary>
    public bool IsMapped { get; }
}
{{< /highlight >}}

#### UC for creation of an XML part and binding a content control to it

{{< highlight csharp >}}
Document doc = new Document();
CustomXmlPart xmlPart = doc.CustomXmlParts.Add(Guid.NewGuid().ToString("B"), "<root><text>Hello, World!</text></root>");
StructuredDocumentTag sdt = new StructuredDocumentTag(doc, SdtType.PlainText, MarkupLevel.Block);
doc.FirstSection.Body.AppendChild(sdt);
sdt.XmlMapping.SetMapping(xmlPart, "/root[1]/text[1]", "");
doc.Save(fileName);
{{< /highlight >}}

### CellFormat.SetPaddings Method was Introduced.

WORDSNET-15014 (Enhancement) has been resolved. We have added a simple method allowing to set all cell paddings in one line of code.

{{< highlight csharp >}}
/// <summary>
/// Sets the amount of space (in points) to add to the left/top/right/bottom of the contents of cell.
/// </summary>
public void SetPaddings(double leftPadding, double topPadding, double rightPadding, double bottomPadding)
{{< /highlight >}}

You can use this method instead of using four properties:

{{< highlight csharp >}}

// Set all cell paddings.
builder.CellFormat.SetPaddings(30, 40, 50, 60);
{{< /highlight >}}
