---
title: Aspose.Words for .NET 21.10 Release Notes
description: "Aspose.Words for .NET 21.10 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 20
url: /net/aspose-words-for-net-21-10-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 21.10](https://www.nuget.org/packages/Aspose.Words/21.10.0).

{{% /alert %}} 

## Major Features

There are 64 improvements and fixes in this regular monthly release. The most notable are:

- Added an ability to get ParentRegion through the MailMergeRegionInfo.
- Added new public methods and properties to work with gradient fills and gradient stops.
- Introduced an intuitive capability to change the appearance of a structured document tag.
- Added new option to ignore footnotes during find-replace operation.

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-22808 | Allow to work with gradient stops of   gradient fills | New Feature |
| WORDSNET-19658 | Provide API to Set Opacity of Image Shape | New Feature |
| WORDSNET-22651 | StructuredDocumentTag - control Appearance | New Feature |
| WORDSNET-21594 | Provide API to Add Remove Gradient Color Fill for Text | New Feature |
| WORDSNET-16032 | Support of Gradient Fill for Shapes | New Feature |
| WORDSNET-22371 | Add ability to ignore Footnotes in Range.Replace | New Feature |
| WORDSNET-22003 | Implement Fill.OneColorGradient() method | New Feature |
| WORDSNET-22302 | Provide API to Set Shading Fill & Patterns for Table | New Feature |
| WORDSNET-22445 | Implement Fill.TextureAlignment property | New Feature |
| WORDSNET-22650 | FieldToc.UpdatePageNumbers takes much time to execute | Enhancement |
| WORDSNET-22565 | Shape is lost after DOCX to PDF Conversion | Bug |
| WORDSNET-22261 | SVG is stretched in output DOCX and PDF | Bug |
| WORDSNET-21228 | DOCX to PDF conversion issue table position | Bug |
| WORDSNET-22617 | storeItemChecksum attribute not calculated | Bug |
| WORDSNET-22108 | Text and tables do not convert correctly in output DOCX | Bug |
| WORDSNET-22691 | String format firstCap does not work in combination with html switch | Bug |
| WORDSNET-22690 | String format firstCap not working in combination with html switch for   LINQ Reporting Engine | Bug |
| WORDSNET-22616 | StructuredDocumentTagRangeStart\End pair removed from document model | Bug |
| WORDSNET-22773 | Content overlaps in PDF | Bug |
| WORDSNET-22790 | Document comparison does not show deletion of shape | Bug |
| WORDSNET-22767 | System.IndexOutOfRangeException is thrown when DOC is saved to PDF | Bug |
| WORDSNET-14562 | Paragraph background color trasparency | Bug |
| WORDSNET-22764 | Extra vertical spacing added in PDF | Bug |
| WORDSNET-22140 | Run.Font.Border changes the text of column as single vertical line | Bug |
| WORDSNET-22608 | Data merge issue | Bug |
| WORDSNET-21936 | Text is truncated in table cell after DOCX to PDF conversion | Bug |
| WORDSNET-22728 | DOCX to PDF: Banded rows style is not displayed correctly | Bug |
| WORDSNET-19767 | Paragraph formatting is lost after removing bookmark | Bug |
| WORDSNET-19660 | Incorret scaling of the vertical axis | Bug |
| WORDSNET-20808 | Aspose.Words does not import content controls containing Table | Bug |
| WORDSNET-22717 | MailMergeRegionInfo.EndField returns null for mail merge region | Bug |
| WORDSNET-22709 | Incorrect formatting of appended document with UseDestinationStyles mode | Bug |
| WORDSNET-22596 | DOCX to PDF: Column missing in the output file | Bug |
| WORDSNET-19172 | Chart to PNG conversion issue with Y-axis | Bug |
| WORDSNET-22699 | Incorrect order of the series data labels and incorrect rendering of the   leader lines after converting to PDF | Bug |
| WORDSNET-22693 | PieChart. Rounding of the series data labels values | Bug |
| WORDSNET-22708 | Incorrect font selection when rendering MathML objects | Bug |
| WORDSNET-22400 | Table graphics is not tagged | Bug |
| WORDSNET-22680 | Image text is changed after DOCX to PDF Conversion | Bug |
| WORDSNET-22653 | Image is lost after RTF to DOCX/PDF conversion | Bug |
| WORDSNET-22701 | The invoked member is not supported in a dynamic assembly exception when   setting a license | Bug |
| WORDSNET-22624 | Text position is changed after DOCX to PDF conversion | Bug |
| WORDSNET-22222 | UpdatePageLayout does not update SDT content | Bug |
| WORDSNET-18053 | Add support for the "preserveAspectRatio" SVG attribute on   import | Bug |
| WORDSNET-20967 | DOCX to PDF conversion issue with Bullet item left indent | Bug |
| WORDSNET-22346 | Table alignment is missing in the output PDF/DOC | Bug |
| WORDSNET-21732 | Lines between Data Points Disappear when updating a Scatter Chart with   Smooth Lines | Bug |
| WORDSNET-14609 | Dml text shadow disappears after rendering | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-18317 | The gradient fill support for WordArt shapes | New Feature |
| WORDSNET-22543 | LINQ Reporting Engine does not allow JSON   or XML data source with same element name of parent and child | Bug |
| WORDSNET-22775 | System.IndexOutOfRangeException occurs upon DOCX to PDF conversion | Bug |
| WORDSNET-21291 | Table header rows are repeated in PDF where they shouldn't be | Bug |
| WORDSNET-18910 | Colors of SVG not preserved in generated DOCX | Bug |
| WORDSNET-22741 | DOCX to PDF: Image loses alternative text | Bug |
| WORDSNET-21277 | Outlined Fonts SVG output is wrong in Word Document | Bug |
| WORDSNET-22640 | Russian text is lost after DOCX to PDF Conversion | Bug |
| WORDSNET-22704 | Period characters move to next lines causing additional vertical space   between Numbered lists | Bug |
| WORDSNET-22637 | Non Chinese Words render below the baseline in HTML Fixed | Bug |
| WORDSNET-22667 | Aspose.Words.FileCorruptedException occurs upon loading a DOT | Bug |
| WORDSNET-22556 | Text position is changed after DOCX to PDF Conversion | Bug |
| WORDSNET-22510 | The List Numbers are not aligned to paragraphs in output PDF | Bug |
| WORDSNET-22154 | Subscript is appeared as superscript in output PDF | Bug |
| WORDSNET-20939 | DOCX to PDF conversion issue with list item rendering | Bug |
| WORDSNET-22118 | Content are lost after HTML to PDF conversion | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new public property MailMergeRegionInfo.ParentRegion

A new public property ParentRegion has been added to the MailMergeRegionInfo class.

{{< highlight csharp >}}
/// <summary>
/// Returns parent region info (null for top-level region).
/// </summary>
public MailMergeRegionInfo ParentRegion { get; }
{{< /highlight >}}

Use Case: Explains how to use the ParentRegion property.

{{< highlight csharp >}}
Document document = new Document("template.docx");
foreach (MailMergeRegionInfo detailsRegion in document.MailMerge.GetRegionsByName("Details"))
{
    MailMergeRegionInfo masterRegion = detailsRegion.ParentRegion;
    Console.WriteLine(masterRegion.Name);
}
{{< /highlight >}}

### Added new public methods and properties to work with gradient fills

Related issue: WORDSNET-22003

Added the following methods to Fill class:

{{< highlight csharp >}}
/// <summary>
/// Sets the specified fill to a one-color gradient.
/// </summary>
/// <param name="style">The gradient style <see cref="Drawing.GradientStyle"/></param>
/// <param name="variant">The gradient variant <see cref="Drawing.GradientVariant"/></param>
/// <param name="degree">The gradient degree. Can be a value from 0.0 (dark) to 1.0 (light).</param>
public void OneColorGradient(GradientStyle style, GradientVariant variant, double degree)
 
/// <summary>
/// Sets the specified fill to a one-color gradient and applies a specified color to the <see cref="ForeColor"/>.
/// </summary>
/// <param name="color">The color to apply to <see cref="ForeColor"/> after the fill is set.</param>
/// <param name="style">The gradient style <see cref="Drawing.GradientStyle"/></param>
/// <param name="variant">The gradient variant <see cref="Drawing.GradientVariant"/></param>
/// <param name="degree">The gradient degree. Can be a value from 0.0 (dark) to 1.0 (light).</param>
public void OneColorGradient(Color color, GradientStyle style, GradientVariant variant, double degree)
 
/// <summary>
/// Sets the specified fill to a two-color gradient.
/// </summary>
/// <param name="style">The gradient style <see cref="Drawing.GradientStyle"/>.</param>
/// <param name="variant">The gradient variant <see cref="Drawing.GradientVariant"/></param>
public void TwoColorGradient(GradientStyle style, GradientVariant variant)
 
/// <summary>
/// Sets the specified fill to a two-color gradient.
/// </summary>
/// <param name="color1">The first gradient color,
/// which will be set to <see cref="ForeColor"/> after the fill is applied.</param>
/// <param name="color2">The second gradient color,
/// which will be set to <see cref="BackColor"/> after the fill is applied.</param>
/// <param name="style">The gradient style <see cref="Drawing.GradientStyle"/>.</param>
/// <param name="variant">The gradient variant <see cref="Drawing.GradientVariant"/></param>
public void TwoColorGradient(Color color1, Color color2, GradientStyle style, GradientVariant variant)
{{< /highlight >}}

Added the following properties to Fill class:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the angle of the gradient fill.
/// </summary>
public double GradientAngle
 
/// <summary>
/// Gets the gradient variant <see cref="Drawing.GradientVariant"/> for the fill.
/// </summary>
public GradientVariant GradientVariant
 
/// <summary>
/// Gets the gradient style <see cref="Drawing.GradientStyle"/> for the fill.
/// </summary>
public GradientStyle GradientStyle
{{< /highlight >}}

Also the following public enums are introduced:
{{< highlight csharp >}}
/// <summary>
/// Specifies the style for a gradient fill.
/// </summary>
public enum GradientStyle
 
/// <summary>
/// Specifies the variant for a gradient fill.
/// </summary>
/// <remarks>
/// Corresponds to the four variants on the Gradient tab in the Fill Effects dialog box in Word.
/// </remarks>
public enum GradientVariant
{{< /highlight >}}

Use Case: Explains how to work with gradient fills.
{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
 
// Add new rectangle shape.
Shape shape = builder.InsertShape(ShapeType.Rectangle, 80, 80);
// Apply One-color gradient fill to the shape.
shape.Fill.OneColorGradient(GradientStyle.Horizontal, GradientVariant.Variant2, 0.1);
// Change ForeColor of gradient fill.
shape.Fill.ForeColor = Color.Red;
 
// Print gradient style, variant and angle of the fill.
Console.WriteLine(
    "Gradient style:{0}, variant:{1}, angle: {2}",
    shape.Fill.GradientStyle,
    shape.Fill.GradientVariant,
    shape.Fill.GradientAngle);
 
// Add another one rectangle shape.
shape = builder.InsertShape(ShapeType.Rectangle, 80, 80);
// Apply Two-color gradient fill to the shape.
shape.Fill.TwoColorGradient(GradientStyle.FromCorner, GradientVariant.Variant4);
// Change BackColor of gradient fill.
shape.Fill.BackColor = Color.Yellow;
 
// Print gradient style, variant and angle of the fill.
Console.WriteLine(
    "Gradient style:{0}, variant:{1}, angle: {2}",
    shape.Fill.GradientStyle,
    shape.Fill.GradientVariant,
    shape.Fill.GradientAngle);
 
builder.Document.Save("Gradients.docx");
 
// The code produces the following output:
//
// Gradient style:Horizontal, variant:Variant2, angle: 270
// Gradient style:FromCorner, variant:Variant4, angle: 0
{{< /highlight >}}

### Added new public methods and properties to work with gradient stops

Related issue: WORDSNET-22808

Added the following property to Fill class:
{{< highlight csharp >}}
/// <summary>
/// Gets a collection of <see cref="GradientStop"/> objects for the fill.
/// </summary>
public GradientStopCollection GradientStops
{{< /highlight >}}

Implemented the following new class GradientStopCollection:
{{< highlight csharp >}}
/// <summary>
/// Contains a collection of <see cref="GradientStop"/> objects.
/// </summary>
/// <remarks>
/// You do not create instances of this class directly.
/// Use the <see cref="Fill.GradientStops"/> property to access gradient stops of fill objects.
/// </remarks>
public class GradientStopCollection : IEnumerable<GradientStop>
{{< /highlight >}}

with the following public methods:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a <see cref="GradientStop"/> object in the collection.
/// </summary>
public GradientStop this[int index]
 
/// <summary>
/// Inserts a <see cref="GradientStop"/> to the collection at a specified index.
/// </summary>
public GradientStop Insert(int index, GradientStop gradientStop)
 
/// <summary>
/// Adds a specified <see cref="GradientStop"/> to a gradient.
/// </summary>
public GradientStop Add(GradientStop gradientStop)
 
/// <summary>
/// Removes a <see cref="GradientStop"/> from the collection at a specified index.
/// </summary>
/// <returns>Removed <see cref="GradientStop"/>.</returns>
public GradientStop RemoveAt(int index)
 
/// <summary>
/// Removes a specified <see cref="GradientStop"/> from the collection.
/// </summary>
/// <returns>True if gradient stop was successfully removed, otherwise false.</returns>
public bool Remove(GradientStop gradientStop)
{{< /highlight >}}

and the following public property:
{{< highlight csharp >}}
/// <summary>
/// Gets an integer value indicating the number of items in the collection.
/// </summary>
public int Count
{{< /highlight >}}

Implemented the following new class GradientStop:
{{< highlight csharp >}}
/// <summary>
/// Represents one gradient stop.
/// </summary>
public class GradientStop
{{< /highlight >}}

with the following public methods:
{{< highlight csharp >}}
/// <summary>
/// Initializes a new instance of the <see cref="GradientStop" /> class.
/// </summary>
/// <param name="color">Represents the color of the gradient stop.</param>
/// <param name="position">Represents the position of a stop within
/// the gradient expressed as a percent in range 0.0 to 1.0.</param>
public GradientStop(Color color, double position)
 
/// <summary>
/// Initializes a new instance of the <see cref="GradientStop" /> class.
/// </summary>
/// <param name="color">Represents the color of the gradient stop.</param>
/// <param name="position">Represents the position of a stop within
/// the gradient expressed as a percent in range 0.0 to 1.0.</param>
/// <param name="transparency">Represents the transparency of a stop within
/// the gradient expressed as a percent in range 0.0 to 1.0.</param>
public GradientStop(Color color, double position, double transparency) : this(color, position)
 
/// <summary>
/// Removes the gradient stop from the parent <see cref="GradientStopCollection"/>.
/// </summary>
public void Remove()
{{< /highlight >}}

and the following public properties:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets a value representing the color of the gradient stop.
/// </summary>
public Color Color
 
/// <summary>
/// Gets or sets a value representing the position of a stop within the gradient
/// expressed as a percent in range 0.0 to 1.0.
/// </summary>
public double Position
 
/// <summary>
/// Gets or sets a value representing the transparency of the gradient fill
/// expressed as a percent in range 0.0 to 1.0.
/// </summary>
public double Transparency
{{< /highlight >}}

Use Case: Explains how to work with gradient stops of gradient fills.
{{< highlight csharp >}}
DocumentBuilder builder = new DocumentBuilder();
builder.Document.CompatibilityOptions.OptimizeFor(MsWordVersion.Word2010);
 
// Add new rectangle shape.
Shape shape = builder.InsertShape(ShapeType.Rectangle, 80, 80);
shape.Fill.TwoColorGradient(Color.Green, Color.Red, GradientStyle.Horizontal, GradientVariant.Variant2);
 
// Get gradient stops collection.
GradientStopCollection gradientStops = shape.Fill.GradientStops;
 
// Change first gradient stop.
gradientStops[0].Color = Color.Aqua;
gradientStops[0].Position = 0.1;
gradientStops[0].Transparency = 0.25;
 
// Add new gradient stop to the end of collection.
GradientStop gradientStop = new GradientStop(Color.Brown, 0.5);
gradientStops.Add(gradientStop);
 
// Remove gradient stop at index 1.
gradientStops.RemoveAt(1);
// And insert new gradient stop at the same index 1.
gradientStops.Insert(1, new GradientStop(Color.Chocolate, 0.75, 0.3));
 
// Print properties:
Console.WriteLine("There are {0} gradient stops in the fill:", gradientStops.Count);
foreach (GradientStop stop in gradientStops)
{
    Console.WriteLine("Color: {0}, Position: {1}, Transparency: {2}", stop.Color, stop.Position, stop.Transparency);
}
 
builder.Document.Save("GradientStops.docx");
 
// The code produces the following output:
//
//There are 3 gradient stops in the fill:
//Color: Color [A=255, R=0, G=255, B=255], Position: 0.1, Transparency: 0.25
//Color: Color [A=255, R=210, G=105, B=30], Position: 0.75, Transparency: 0.3
//Color: Color [A=255, R=165, G=42, B=42], Position: 0.5, Transparency: 0
{{< /highlight >}}

### Added new public property Fill.TextureAlignment

Related issue: WORDSNET-22445

A new Fill.TextureAlignment public property has been added:
{{< highlight csharp >}}
/// <summary>
/// Gets or sets the alignment for tile texture fill.
/// </summary>
public TextureAlignment TextureAlignment { get; set; }
{{< /highlight >}}

A new public enum has been introduced:
{{< highlight csharp >}}
/// <summary>
/// Specifies the alignment for the tiling of the texture fill.
/// </summary>
public enum TextureAlignment
{{< /highlight >}}

Use Case: Explains how to get and apply a TextureAlignment for the tiling of the texture fill.
{{< highlight csharp >}}
// Open some document with a textured shape.
Document doc = new Document("TexturedShape.docx");
  
// Get Fill object for the textured shape.
Fill fill = doc.FirstSection.Body.Shapes[0].Fill;
  
// Check Fill TextureAlignment value.
Console.WriteLine("TextureAlignment value is: {0}", fill.TextureAlignment);
  
// Apply TopRight texture alignment to the shape fill.
fill.TextureAlignment = TextureAlignment.TopRight;
  
doc.Save("TexturedShape_TopRight.docx");
{{< /highlight >}}

### A new public property StructuredDocumentTag.Appearance has been published

Related issue: WORDSNET-22651

A new public property StructuredDocumentTag.Appearance has been published:
{{< highlight csharp >}}
/// <summary>
/// Gets/sets the appearance of a structured document tag.
/// </summary>
public SdtAppearance Appearance{ get; set; }
{{< /highlight >}}

A new public enum has been introduced:
{{< highlight csharp >}}
/// <summary>
/// Specifies the appearance of a structured document tag.
/// </summary>
public enum SdtAppearance
{{< /highlight >}}

Use Case: Explains how to work with an Appearance of a StructuredDocumentTag.
{{< highlight csharp >}}
// Get structured document tag object.
StructuredDocumentTag sdt = document.GetChild(NodeType.StructuredDocumentTag, 0, true) as StructuredDocumentTag;
 
// Check Appearance value.
Console.WriteLine("Appearance value is: {0}", sdt.Appearance);
 
// Apply SdtAppearance.Hidden appearance to the structured document tag object.
sdt.Appearance = SdtAppearance.Hidden;
 
doc.Save("output.docx");
{{< /highlight >}}

### Added new property HtmlLoadOptions.ConvertSvgToEmf

Related issue: WORDSNET-18910

The new option HtmlLoadOptions.ConvertSvgToEmf allows to turn back the legacy behavior where all SVG images loaded from a HTML document were converted to EMF.
Now SVG images are loaded without conversion if the MS Word version specified in load options supports SVG images natively.

Use Case:
{{< highlight csharp >}}
LoadOptions lo = new HtmlLoadOptions() {ConvertSvgToEmf = true};
Document doc = new Document("html_file_with_svg_images.html", lo);
{{< /highlight >}}

### Added new option to ignore footnotes during find-replace operation

Related issue: WORDSNET-22371

New option allows to ignore footnote during find/replace operations.

Use Case: Explains how to ignore footnote during find/replace operations.
{{< highlight csharp >}}
Document doc = new Document("document with footnotes");
 
FindReplaceOptions options = new FindReplaceOptions() { IgnoreFootnotes = true };
doc.Range.Replace("Hello World", "other", options);
{{< /highlight >}}

### Added new property LoadOptions.FlatOpcXmlMappingOnly

Related issue: WORDSNET-22608

New option allows to map structured document tag to documents which have other than FlatOpc document format.

In general customer need to set both LoadOptions.FlatOpcXmlMappingOnly and SaveOptions.FlatOpcXmlMappingOnly to allow this non-standard kind of mapping. 

Use Case:
{{< highlight csharp >}}
LoadOptions lo = new LoadOptions() {FlatOpcXmlMappingOnly = false};
Document doc = new Document("input_file_name", lo);
 
SaveOptions so = SaveOptions.CreateSaveOptions(SaveFormat.Pdf);
so.FlatOpcXmlMappingOnly = false;
 
doc.Save("output_file_name", so);
{{< /highlight >}}
