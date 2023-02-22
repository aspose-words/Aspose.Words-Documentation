---
title: Aspose.Words for C++ 23.1 Release Notes
description: "Aspose.Words for C++ 23.1 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /cpp/aspose-words-for-cpp-23-1-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.1](https://www.nuget.org/packages/Aspose.Words.Cpp/23.1.0).

{{% /alert %}}

## Major Features

There are 75 improvements and fixes in this regular monthly release. The most notable are:

- Significantly improved performance and quality of emulation of raster operations with metafiles.
- Implemented an ability to work with shading theme colors.
- Added the ability to generate TOC (table of contents) for AZW3 documents.
- Provided the way to control how the list items are exported to the Markdown format.
- Added support of R-squared coefficient in DML charts trendline labels when rendering.

<details><summary>Full list of changes</summary>

1. Add feature to support PDF/X-1a:2001 compliance level
2. Support of DOCX to PDF_X_1A conversion
3. PDF/X3 support in Aspose.Words
4. Support of DOCX to PDF_X_3 conversion
5. Support of PdfCompliance PDF/E
6. Add TOC (table of contents) to AZW3/MOBI file formats
7. Rendering of the coefficient of determination in the trendline data label
8. DOCX to MD: Converting to .md file does not change heading numbering
9. Document.Compare ignores the Move revisions
10. Add Shading.ThemeColor
11. Support of manual layout settings for trendline data labels
12. Data label font size and color options in charts
13. Consider providing Node.Revisions property to retrieve revisions of the current node
14. Problem when rendering Shape in Header
15. Aspose.Words does not generate Moved Down or Moved Up Revisions during Compare
16. Rendering of document with text effects is slow
17. Inaccurate line wrapping when saving to PDF
18. Image color is changed after conversion from DOC to HTMLFixed
19. Text is wrapped improperly upon rendering
20. Slow rendering of document with metafile
21. When DOCX is converted to PDF, an image in output looks different
22. High peak memory usage when working with the document containing a large number of images
23. EQ fields with math formulas are replaced with "Error" on rendering
24. GetChildNodes method from StructuredDocumentTag class throws "OutOfMemory" exception
25. Aspose.Words returns incorrect font for Run with revision
26. Image resolution is changed after saving to HTML with ScaleImageToShapeSize = false for grouped images
27. Comparing documents throws "System.ArgumentException"
28. Document compare throws System.InvalidOperationException: NC sync failed
29. DOCX to PDF NullReferenceException occurs
30. Spacing between characters in office math is wrong
31. Incorrect coefficients of trendline formula after converting to PDF
32. Incorrect applying of styles for formula
33. An empty paragraph disappears after saving to HTML
34. Document tags structure exported to PDF differs from MS Word
35. Remove empty list levels from PDF logical structure
36. Column with is wrong after open/save document
37. Spacing between columns is wrong after open/save document
38. Unexpected warning while validating the document
39. Multi-level category labels are lost after open/save DOCX document
40. NullReferenceException is thrown upon rendering document
41. Fix the margins for it-It locale
42. NUMPAGES issue in PageExtractor
43. Incorrect placement of legend items if the legend has a manual layout
44. Legend overlaps part of chart
45. Table header is located on the wrong page when saving to PDF
46. Incorrect header rendering when saving to PDF
47. Revision in SDT content is lost after open/save document
48. Incorrect rendering of Radar Type Chart in PDF
49. FileCorruptedException is thrown upon loading DOC document
50. Reference in .NET6 Aspose.Words.Pdf2Word dll
51. FileCorruptedException on loading ODT document
52. Allow comparing charts
53. Missing revision of type Moving after Document.Compare
54. Document.Compare ignores the Move revisions
55. PdfJPXDecodeFilter throws NullReferenceException
56. PdfASCII85DecodeFilter throws ArgumentOutOfRangeException
57. KeyNotFoundException in SetPageHyperlinksStep
58. InvalidOperationException: MediaBox is null
59. IndexOutOfRangeException at SixLabors.ImageSharp.ICC.Calculators.LutCalculator.Lookup()
60. Moving of the footnote line from the previous page
61. Table is moved to previous page and overlaps footnote
62. Secondary axis becomes visible after rendering chart if HarfBuzz text shaping is used
63. InvalidOperationException: Failed to find the start of the hex number
64. PdfTilingPatternFactory throws IndexOutOfRangeException
65. InvalidCastException: Unable to cast PdfIndirectObjectReference to PdfNumber
66. After copying styles from template style inheritance is incorrect
67. PdfDCTDecodeFilter throws NullReferenceException
68. DOCX->HTML->DOCX: Indentation and margins issue
69. Created two comments instead of comment with reply for ODT/OTT format
70. Missing content when converting HTML to DOCX
71. Chart is rendered improperly when PdfA1a compliance is used
72. DOC to DOCX: "This document contains fields that may refer to other files" message
73. The insertHtml() method adds indentation
74. Exported image looks like a screenshot, not as image visible in MS Word
75. Couple of lines in footer are cutting in PDF/A

</details>

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.2. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.


### Added Font property to ChartDataLabel and ChartDataLabelCollection classes

The Font property has been added to the ChartDataLabel and ChartDataLabelCollection classes:
{{< highlight csharp >}}
class ChartDataLabel
{
/// Provides access to the font formatting of this data label.
System::SharedPtr<Aspose::Words::Font> get_Font();
...
}

class ChartDataLabelCollection
{
/// Provides access to the font formatting of the data labels of the entire series.
System::SharedPtr<Aspose::Words::Font> get_Font();
...
}
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>();
System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>(doc);

// Create a column chart.
System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertChart(Aspose::Words::Drawing::Charts::ChartType::Column, 432, 252);
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeriesCollection> seriesCollection = shape->get_Chart()->get_Series();
seriesCollection->Clear();

// Add a chart series.
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> series = seriesCollection->Add(u"Series 1", System::MakeArray<System::String>({u"Category 1", u"Category 2", u"Category 3", u"Category 4", u"Category 5"}), System::MakeArray<double>({5.5, 2, 3.5, 6, 9}));

// Display data labels.
series->set_HasDataLabels(true);
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartDataLabelCollection> labels = series->get_DataLabels();
labels->set_ShowValue(true);

// Set font size for all labels of the series.
labels->get_Font()->set_Size(12);

const int32_t minValueIndex = 1;
// Let's use a constant for simplicity.
const int32_t maxValueIndex = 4;
// Let's use a constant for simplicity.

// Mark the labels for the max and min values.
labels->idx_get(minValueIndex)->get_Font()->set_Size(14);
labels->idx_get(minValueIndex)->get_Font()->set_Color(System::Drawing::Color::get_Red());
labels->idx_get(maxValueIndex)->get_Font()->set_Size(14);
labels->idx_get(maxValueIndex)->get_Font()->set_Color(System::Drawing::Color::get_Green());

// Save the document.
doc->Save(u"LabelFont.docx");
{{< /highlight >}}

### Added IgnoreOleData option into LoadOptions class

The IgnoreOleData property has been added to the LoadOptions class.
May be usefull when destination format does not support OLE.
{{< highlight csharp >}}
class LoadOptions
{
...
/// Specifies whether to ignore the OLE data.
///
/// Ignoring OLE data may reduce memory consumption and increase performance without data lost in a case when destination format does not support OLE objects.
///
/// The default value is <c>%false</c>.
bool get_IgnoreOleData() const;

/// Setter for Aspose::Words::Loading::LoadOptions::get_IgnoreOleData
void set_IgnoreOleData(bool value);
...
}
{{< /highlight >}}

Use Case:
{{< highlight csharp >}}
auto lo = System::MakeObject<Aspose::Words::Loading::LoadOptions>();
lo->set_IgnoreOleData(true);
auto doc = System::MakeObject<Aspose::Words::Document>(u"Test.docx", lo);

doc->Save(u"Test.pdf");
{{< /highlight >}}

### Added MetafileRenderingOptions.UseGdiRasterOperationsEmulation and overall improvements in metafile raster operations emulation

Metafile raster operations emulations have been improved.

Also added an option to use GDI+ in raster operations emulation process.
{{< highlight csharp >}}
/// Gets or sets a value determining whether or not to use the GDI+ for raster operations emulation.
///
/// Windows GDI+ library could be used to emulate raster operations. It provides support for all raster operation
/// comparing to %Aspose.Words own emulation but performance may be slower in some cases.
///
/// When this value is set to <c>%true</c>, %Aspose.Words uses GDI+ for raster operations emulation.
///
/// When this value is set to <c>%false</c>, %Aspose.Words uses its own implementation of raster operations emulation.
///
/// This option is used only when metafile is rendered as vector graphics.
///
/// The default value is <c>%false</c>.
bool get_UseGdiRasterOperationsEmulation() const;

/// Setter for Aspose::Words::Saving::MetafileRenderingOptions::get_UseGdiRasterOperationsEmulation
void set_UseGdiRasterOperationsEmulation(bool value);
{{< /highlight >}}

### Added new public properties for working with shading theme colors

A new public properties ForegroundPatternThemeColor and BackgroundPatternThemeColor has been added to class Shading.
{{< highlight csharp >}}
/// Gets the foreground pattern theme color in the applied color scheme that is associated with this <see cref="Aspose::Words::Shading">Shading</see> object.
Aspose::Words::Themes::ThemeColor get_ForegroundPatternThemeColor();

/// Sets the foreground pattern theme color in the applied color scheme that is associated with this <see cref="Aspose::Words::Shading">Shading</see> object.
void set_ForegroundPatternThemeColor(Aspose::Words::Themes::ThemeColor value);

/// Gets the background pattern theme color in the applied color scheme that is associated with this <see cref="Aspose::Words::Shading">Shading</see> object.
Aspose::Words::Themes::ThemeColor get_BackgroundPatternThemeColor();

/// Sets the background pattern theme color in the applied color scheme that is associated with this <see cref="Aspose::Words::Shading">Shading</see> object.
void set_BackgroundPatternThemeColor(Aspose::Words::Themes::ThemeColor value);
{{< /highlight >}}

A new public properties ForegroundTintAndShade and BackgroundTintAndShade has been added to class Shading.
{{< highlight csharp >}}
/// Gets or sets a double value that lightens or darkens a foreground theme color.
///
/// The allowed values are in the range from -1 (the darkest) to 1 (the lightest) for this property.
/// Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
/// results in <see cref="System::ArgumentOutOfRangeException">ArgumentOutOfRangeException</see>.
///
/// Setting this property for Border object with non-theme colors
/// results in <see cref="System::InvalidOperationException">InvalidOperationException</see>.
double get_ForegroundTintAndShade();

/// Setter for Aspose::Words::Shading::get_ForegroundTintAndShade
void set_ForegroundTintAndShade(double value);

/// Gets or sets a double value that lightens or darkens a background theme color.
///
/// The allowed values are in the range from -1 (the darkest) to 1 (the lightest) for this property.
/// Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
/// results in <see cref="System::ArgumentOutOfRangeException">ArgumentOutOfRangeException</see>.
///
/// Setting this property for Border object with non-theme colors
/// results in <see cref="System::InvalidOperationException">InvalidOperationException</see>.
double get_BackgroundTintAndShade();

/// Setter for Aspose::Words::Shading::get_BackgroundTintAndShade
void set_BackgroundTintAndShade(double value);
{{< /highlight >}}

Use Case: Explains how to work with shading theme colors.
{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"c:\\Documents\\TestDocument.docx");
System::SharedPtr<Aspose::Words::Shading> shading = doc->get_FirstSection()->get_Body()->get_FirstParagraph()->get_ParagraphFormat()->get_Shading();
// Gets and sets the values of theme colors.
if (shading->get_ForegroundPatternThemeColor() == Aspose::Words::Themes::ThemeColor::Accent1)
{
    shading->set_ForegroundPatternThemeColor(Aspose::Words::Themes::ThemeColor::Dark1);
}

if (shading->get_BackgroundPatternThemeColor() == Aspose::Words::Themes::ThemeColor::Accent2)
{
    shading->set_BackgroundPatternThemeColor(Aspose::Words::Themes::ThemeColor::Dark2);
}

// Gets and sets the lightens values.
if (shading->get_ForegroundTintAndShade() == 0)
{
    shading->set_ForegroundTintAndShade(0.5);
}

if (shading->get_BackgroundTintAndShade() == 0)
{
    shading->set_BackgroundTintAndShade(-0.2);
}

doc->Save(u"output.docx");
{{< /highlight >}}

### Added public property Range.Revisions

A new public property Revisions has been added to class Range:
{{< highlight csharp >}}
/// Gets a collection of revisions (tracked changes) that exist in this range.
///
/// The returned collection is a "live" collection, which means if you remove parts of a document that contain
/// revisions, the deleted revisions will automatically disappear from this collection.
System::SharedPtr<Aspose::Words::RevisionCollection> get_Revisions();
{{< /highlight >}}

Use Case: Explains how to get actual revisions from the node range.
{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"c:\\Documents\\TestDocument.docx");
// Getting the first paragraph revisions.
System::SharedPtr<Aspose::Words::Paragraph> paragraph = doc->get_FirstSection()->get_Body()->get_FirstParagraph();

{
    auto revision_enumerator = (paragraph->get_Range()->get_Revisions())->GetEnumerator();
    while (revision_enumerator->MoveNext())
    {   
        auto&& revision = revision_enumerator->get_Current(); 
        if (revision->get_RevisionType() == Aspose::Words::RevisionType::Deletion)
        {
            revision->Accept();
        }
    }
}
// Getting the first section revisions.
doc->get_FirstSection()->get_Range()->get_Revisions()->RejectAll();
{{< /highlight >}}

### Added the ability to generate TOC (table of contents) for AZW3 documents

Now Aspose.Words can generate TOC (table of contents) for AZW3 documents.

Desired depth of TOC can be specified same way as it's done for EPUB documents using HtmlSaveOptions.EpubNavigationMapLevel property.

Use Case: Explains how to create AZW3 document with a two-level TOC.
{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>();

System::SharedPtr<Aspose::Words::Saving::HtmlSaveOptions> options = System::MakeObject<Aspose::Words::Saving::HtmlSaveOptions>(Aspose::Words::SaveFormat::Azw3);
options->set_EpubNavigationMapLevel(2);

doc->Save(MyDir + u"DocumentWithTwoLevelTOC.azw3", options);
{{< /highlight >}}

### Added the ability to specify how list items will be written to the Markdown.

The following public enumeration is added to Aspose.Words.Saving namespace:
{{< highlight csharp >}}
/// <summary>
/// Specifies how lists are exported into Markdown.
/// </summary>
enum class MarkdownListExportMode
{

    /// Export list items compatible with Markdown syntax.
    MarkdownSyntax,

    /// Export list items as plain text.
    PlainText
};
{{< /highlight >}}

The following public property is added to MarkdownSaveOptions class:
{{< highlight csharp >}}
/// Specifies how list items will be written to the output file.
/// Default value is <see cref="Aspose::Words::Saving::MarkdownListExportMode::MarkdownSyntax">MarkdownSyntax</see>.
///
/// When this property is set to <see cref="Aspose::Words::Saving::MarkdownListExportMode::PlainText">PlainText</see> all list labels are
/// updated using <see cref="Aspose::Words::Document::UpdateListLabels">UpdateListLabels</see> and exported with their actual values. Such lists
/// can be non-compatible with Markdown format and will be recognized as plain text upon importing in this case.
///
/// When this property is set to <see cref="Aspose::Words::Saving::MarkdownListExportMode::MarkdownSyntax">MarkdownSyntax</see>, writer tries to export
/// list items in manner that allows to numerate list items in automatic mode by Markdown.
Aspose::Words::Saving::MarkdownListExportMode get_ListExportMode() const;

/// Setter for Aspose::Words::Saving::MarkdownSaveOptions::get_ListExportMode
void set_ListExportMode(Aspose::Words::Saving::MarkdownListExportMode value);
{{< /highlight >}}

Use Case: Explains how to export document with plain text numbering into Markdown.
{{< highlight csharp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"input.docx");
// Set option to export list items as plain text.
System::SharedPtr<Aspose::Words::Saving::MarkdownSaveOptions> options = System::MakeObject<Aspose::Words::Saving::MarkdownSaveOptions>();
options->set_ListExportMode(Aspose::Words::Saving::MarkdownListExportMode::PlainText);
doc->Save(u"output.md", options);
{{< /highlight >}}

### HtmlSaveOptions.ScaleImageToShapeSize now also affects grouped raster images

Behavior of the HtmlSaveOptions.ScaleImageToShapeSize property was changed to affect groups of raster images.

Previously, HtmlSaveOptions.ScaleImageToShapeSize didn't affect grouped raster images and they were always scaled to shape size and were rendered using the resolution value specified in HtmlSaveOptions.ImageResolution. If grouped images were high resolution, their quality would reduce considerably because of scaling.

Now Aspose.Words tries to preserve quality of grouped high resolution images. If a group of raster images is saved to HTML and the HtmlSaveOptions.ScaleImageToShapeSize property is set to false, Aspose.Words computes max intrinsic resolution among all images in the group and if it is greater than the value specified in HtmlSaveOptions.ImageResolution, the group is rendered using the computed increased resolution. This doesn't eliminate scaling completely but reduces its impact on grouped high resolution raster images.

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support Metered license.
- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
- The current release supports Microsoft Visual C++ version 2017 or higher.
- The current release supports GCC 6.3 or higher and Clang 3.9.1 or higher on Linux and only for the x86_x64 platform.
- The current release supports macOS Big Sur or later (11.5+) for 64-bit Intel Mac platform.
