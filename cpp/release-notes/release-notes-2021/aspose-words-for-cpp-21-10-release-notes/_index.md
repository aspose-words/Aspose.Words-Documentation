---
title: Aspose.Words for C++ 21.10 Release Notes
articleTitle: Aspose.Words for C++ 21.10 Release Notes
linktitle: Aspose.Words for C++ 21.10 Release Notes
description: "Aspose.Words for C++ 21.10 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 20
url: /cpp/aspose-words-for-cpp-21-10-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 21.10](https://www.nuget.org/packages/Aspose.Words.Cpp/21.10.0).

{{% /alert %}}

## Major Features

We have added the following features from Aspose.Words for .NET on this regular monthly release:

- Added an ability to get ParentRegion through the MailMergeRegionInfo.
- Added new public methods and properties to work with gradient fills and gradient stops.
- Introduced an intuitive capability to change the appearance of a structured document tag.
- Added new option to ignore footnotes during find-replace operation.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release.
The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.
- The current release supports macOS Big Sur or later (11.5+) for 64-bit Intel Mac platform.

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

{{< highlight cpp >}}
auto document = System::MakeObject<Document>(u"template.docx");
for (auto detailsRegion : document->get_MailMerge()->GetRegionsByName(u"Details"))
{
    auto masterRegion = detailsRegion->get_ParentRegion();
    std::cout << masterRegion->get_Name().ToUtf8String();
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
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
 
// Add new rectangle shape.
auto shape = builder->InsertShape(ShapeType::Rectangle, 80, 80);
// Apply One-color gradient fill to the shape.
shape->get_Fill()->OneColorGradient(GradientStyle::Horizontal, GradientVariant::Variant2, 0.1);
// Change ForeColor of gradient fill.
shape->get_Fill()->set_ForeColor(Color::get_Red());
 
// Print gradient style, variant and angle of the fill.
std::cout << "Gradient style: " << System::ObjectExt::ToString(shape->get_Fill()->get_GradientStyle()).ToUtf8String()
", variant: " << System::ObjectExt::ToString(shape->get_Fill()->get_GradientVariant()).ToUtf8String() <<
", angle: ", << System::ObjectExt::ToString(shape->get_Fill()->get_GradientAngle()).ToUtf8String() << '\n';
 
// Add another one rectangle shape.
shape = builder->InsertShape(ShapeType::Rectangle, 80, 80);
// Apply Two-color gradient fill to the shape.
shape->get_Fill()->TwoColorGradient(GradientStyle::FromCorner, GradientVariant::Variant4);
// Change BackColor of gradient fill.
shape->get_Fill()->set_BackColor(Color::get_Yellow);
 
// Print gradient style, variant and angle of the fill.
std::cout << "Gradient style: " << System::ObjectExt::ToString(shape->get_Fill()->get_GradientStyle()).ToUtf8String()
", variant: " << System::ObjectExt::ToString(shape->get_Fill()->get_GradientVariant()).ToUtf8String() <<
", angle: ", << System::ObjectExt::ToString(shape->get_Fill()->get_GradientAngle()).ToUtf8String() << '\n';
 
doc->Save(u"Gradients.docx");
 
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
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
doc->get_CompatibilityOptions()->OptimizeFor(MsWordVersion::Word2010);
 
// Add new rectangle shape.
auto shape = builder->InsertShape(ShapeType::Rectangle, 80, 80);
shape->get_Fill()->TwoColorGradient(Color::get_Green(), Color::get_Red(), GradientStyle::Horizontal, GradientVariant::Variant2);
 
// Get gradient stops collection.
auto gradientStops = shape->get_Fill()->get_GradientStops();
 
// Change first gradient stop.
gradientStops->idx_get(0)->set_Color(Color::get_Aqua());
gradientStops->idx_get(0)->set_Position(0.1);
gradientStops->idx_get(0)->set_Transparency(0.25);
 
// Add new gradient stop to the end of collection.
auto gradientStop = System::MakeObject<GradientStop>(Color::get_Brown(), 0.5);
gradientStops->Add(gradientStop);
 
// Remove gradient stop at index 1.
gradientStops->RemoveAt(1);
// And insert new gradient stop at the same index 1.
gradientStops->Insert(1, System::MakeObject<GradientStop>(Color::get_Chocolate(), 0.75, 0.3));
 
// Print properties:
std::cout << "There are " << gradientStops->get_Count() << " gradient stops in the fill:\n";
for (auto stop : gradientStops)
{
    std:cout << "Color: " << stop->get_Color()->ToString().ToUtf8String() <<
        ", Position: " << stop->get_Position() <<
        ", Transparency: " << stop->get_Transparency() << '\n'
}
 
doc->Save(u"GradientStops.docx");
 
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
{{< highlight cpp >}}
// Open some document with a textured shape.
auto doc = System::MakeObject<Document>(u"TexturedShape.docx");
  
// Get Fill object for the textured shape.
auto fill = doc->get_FirstSection()->get_Body()->get_Shapes()->idx_get(0)->get_Fill();
  
// Check Fill TextureAlignment value.
std::cout << "TextureAlignment value is: " << System::ObjectExt::ToString(fill->get_TextureAlignment()).ToUtf8String() << '\n';
  
// Apply TopRight texture alignment to the shape fill.
fill->set_TextureAlignment(TextureAlignment::TopRight);
  
doc->Save(u"TexturedShape_TopRight.docx");
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
{{< highlight cpp >}}
// Get structured document tag object.
auto sdt = System::DynamicCast<StructuredDocumentTag>(doc->GetChild(NodeType::StructuredDocumentTag, 0, true));
 
// Check Appearance value.
std::cout << "Appearance value is: " << System::ObjectExt::ToString(sdt->get_Appearance()).ToUtf8String() << '\n';
 
// Apply SdtAppearance::Hidden appearance to the structured document tag object.
sdt->set_Appearance(SdtAppearance::Hidden);
 
doc->Save(u"output.docx");
{{< /highlight >}}

### Added new property HtmlLoadOptions.ConvertSvgToEmf

Related issue: WORDSNET-18910

The new option HtmlLoadOptions.ConvertSvgToEmf allows to turn back the legacy behavior where all SVG images loaded from a HTML document were converted to EMF.
Now SVG images are loaded without conversion if the MS Word version specified in load options supports SVG images natively.

Use Case:
{{< highlight csharp >}}
auto lo = System::MakeObject<HtmlLoadOptions>();
lo->set_ConvertSvgToEmf(true);
auto doc = System::MakeObject<Document>(u"html_file_with_svg_images.html", lo);
{{< /highlight >}}

### Added new option to ignore footnotes during find-replace operation

Related issue: WORDSNET-22371

New option allows to ignore footnote during find/replace operations.

Use Case: Explains how to ignore footnote during find/replace operations.
{{< highlight cpp >}}
auto doc = System::MakeObject<Document>(u"document with footnotes");
 
auto options = System::MakeObject<FindReplaceOptions>();
options->set_IgnoreFootnotes(true);
doc->get_Range()->Replace(u"Hello World", u"other", options);
{{< /highlight >}}

### Added new property LoadOptions.FlatOpcXmlMappingOnly

Related issue: WORDSNET-22608

New option allows to map structured document tag to documents which have other than FlatOpc document format.

In general customer need to set both LoadOptions.FlatOpcXmlMappingOnly and SaveOptions.FlatOpcXmlMappingOnly to allow this non-standard kind of mapping. 

Use Case:
{{< highlight cpp >}}
auto lo = System::MakeObject<LoadOptions>();
lo->set_FlatOpcXmlMappingOnly(false);
auto doc = System::MakeObject<Document>(u"input_file_name", lo);
 
auto so = SaveOptions::CreateSaveOptions(SaveFormat::Pdf);
so->set_FlatOpcXmlMappingOnly(false);
 
doc->Save(u"output_file_name", so);
{{< /highlight >}}
