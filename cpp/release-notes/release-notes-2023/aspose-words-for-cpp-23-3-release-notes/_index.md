---
title: Aspose.Words for C++ 23.3 Release Notes
description: "Aspose.Words for C++ 23.3 Release Notes – the latest updates and fixes."
type: docs
weight: 50
url: /cpp/aspose-words-for-cpp-23-3-release-notes/
---
{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.3](https://www.nuget.org/packages/Aspose.Words.Cpp/23.3.0).

{{% /alert %}}

## Major Features

There are 78 improvements and fixes in this regular monthly release. The most notable are:

- Extended set of public properties for working with fill colors.
- Implemented rendering of radial gradients with SkiaSharp native shader for .NET Standard.
- Added support of InvertIfNegative property for bar chart rendering.
- Implemented saving progress notifications for MOBI and AZW3 formats.
- Added an ability to specify whether to adjust sentence and word spacing automatically upon document import.

### Full list of changes

<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Add ability to determine if font color is overridden for Inline node and for paragraph break character
2. LINQ Reporting Engine - Column chart does not support different color for negative value
3. Allow ImportFormatOptions.AdjustSentenceAndWordSpacing option in API
4. Provide public API to manipulate chart gridlines
5. Add Fill.ThemeColor option
6. Implement plugin license support
7. Implement rendering of radial gradients with SkiaSharp native shader for .NET Standard
8. Enable SaveOptions.ProgressCallback when saving to MOBI
9. Enable SaveOptions.ProgressCallback when saving to AZW3
10. Implement rendering of a radial gradient into XPS using XPS radial gradient brush
11. Add navigation to generated AZW3 documents
12. Consider preserving TOC formatting upon exporting to HTML formats
13. Preserve TOC Page numbers during Word to HTML to Word round-trip
14. Unsupported BMP - Images are not displayed after loading HTML
15. Text on metafile is rendered improperly
16. XHTML to PDF conversion issue
17. Symbols overlap after rendering
18. Additional datapoint is rendered in the line chart
19. Czech localized heading style names are not handled when updating STYLEREF fields
20. Font size is incorrect after rendering text with revision
21. Text orientation is turned to vertical after converting to HTML
22. Metafile is rendered improperly in .NET Standard
23. PDF file can't be opened
24. Image is rendered improperly in .NET Standard version of Aspose.Words
25. Spacing between symbols is incorrect after rendering
26. InsertField method throws NullReferenceException when using IF field
27. FileCorruptedException is thrown upon loading encrypted DOCX document
28. A redundant empty page is produced when render Hebrew document
29. Delete paragraph fails when paragraph is inside SDT
30. Significant performance decrease upon conversion OfficeMath to string
31. HTML to MD: Backslash is appended in name of image in resultant file
32. Table with merged cells is recognized improperly
33. GroupShape does not render correctly in fixed file format
34. FileCorruptedException is thrown upon loading RTF document
35. Effects for "thin" elements are not rendered
36. Comparison displays wrong document revision
37. Footer shows a delete revision after comparing documents
38. FileCorruptedException is thrown upon loading DOC document
39. Document comparison removes highlighted text
40. NullReferenceException is thrown upon comparing documents
41. ArgumentNullException is thrown upon calling UpdatePageLayout
42. FileCorruptedException is thrown upon loading DOCX document
43. Watermark image is missed from document after save to Iso29500_2008_Strict DOCX
44. Aspose.Words does not include an empty heading paragraph with numbering into the TOC
45. Effects applied to grid lines are not rendered
46. Content is pushed down and overlaps footnotes
47. Colors are inverted after importing PDF document
48. Doted background is rendered in metafile
49. FileCorruptedException on loading MHTML
50. NullReferenceException on converting DOCX
51. Trendline label is not rendered
52. Text behind images in PDF conversion
53. List item tabs are rendered bigger than required
54. List tab stop is incorrect after rendering
55. Part of TC field becomes visible after conversion to RTF
56. Allow creating DML Shape from public API
57. Shape position and size is changed after open/save document
58. HTML to MD: Table of content does not lead to content
59. PdfCompositeEncodingConvertor throws ArgumentOutOfRangeException
60. Arabic text in SVG is rendered inaccurately in case of font fallback
61. Problem loading document
62. HTM loading issue
63. ReportingEngine, when reading Async Method throws exception in the document
64. Bookmark from headings are not created saving to PDF
65. XML to PDF incorrect formatting
66. Empty output document after converting from CHM to DOCX
67. Exception is thrown while saving DOCX to image format under Linux
68. OutOfMemoryException throws when document is saved
69. Table Front style issue while converting Word to HTML to word document
70. HTML to PDF conversion generates incorrect output
71. InvalidOperationException on UpdatePageLayout after inserting HTML via DocumentBuilder
72. Tables width increase beyond the Page width during Word to HTML to Word round-trip
73. The use of ExportListLabels.AsInlineText value for HtmlOptions.ExportListLabels option can raise System.InvalidOperationException
74. Problems to covert html containing element located in absolute position into PDF
75. The delta character in a math formula is replaced with the V character
76. NullReferenceException is thrown upon rendering document
77. Image elements in absolute positions in HTML are not displayed in Word
78. Aspose.Word .NET Core Performance Problem

</details>

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.3. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added new public properties for working with fill colors

A new public properties ForeThemeColor and BackThemeColor has been added to class Fill.
{{< highlight cpp >}}
/// Gets a ThemeColor object that represents the foreground color for the fill.
ASPOSE_WORDS_SHARED_API Aspose::Words::Themes::ThemeColor get_ForeThemeColor();

/// Sets a ThemeColor object that represents the foreground color for the fill.
ASPOSE_WORDS_SHARED_API void set_ForeThemeColor(Aspose::Words::Themes::ThemeColor value);

/// Gets a ThemeColor object that represents the background color for the fill.
ASPOSE_WORDS_SHARED_API Aspose::Words::Themes::ThemeColor get_BackThemeColor();

/// Sets a ThemeColor object that represents the background color for the fill.
ASPOSE_WORDS_SHARED_API void set_BackThemeColor(Aspose::Words::Themes::ThemeColor value);
{{< /highlight >}}

A new public properties ForeTintAndShade and BackTintAndShade has been added to class Fill.
{{< highlight cpp >}}
/// Gets or sets a double value that lightens or darkens the foreground color.
///
/// The allowed values are within the range from -1 (the darkest) to 1 (the lightest) for this property.
/// Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
/// results in <see cref="System::ArgumentOutOfRangeException">ArgumentOutOfRangeException</see>.
ASPOSE_WORDS_SHARED_API double get_ForeTintAndShade();

/// Setter for Aspose::Words::Drawing::Fill::get_ForeTintAndShade
ASPOSE_WORDS_SHARED_API void set_ForeTintAndShade(double value);

/// Gets or sets a double value that lightens or darkens the background color.
///
/// The allowed values are within the range from -1 (the darkest) to 1 (the lightest) for this property.
/// Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
/// results in <see cref="System::ArgumentOutOfRangeException">ArgumentOutOfRangeException</see>.
ASPOSE_WORDS_SHARED_API double get_BackTintAndShade();

/// Setter for Aspose::Words::Drawing::Fill::get_BackTintAndShade
ASPOSE_WORDS_SHARED_API void set_BackTintAndShade(double value);
{{< /highlight >}}

#### Use Case:
Explains how to work with theme colors and tint and shade.
{{< highlight cpp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"in.docx");

System::SharedPtr<Aspose::Words::Drawing::Fill> shapeFill = (System::AsCast<Aspose::Words::Drawing::Shape>(doc->GetChild(Aspose::Words::NodeType::Shape, 0, true)))->get_Fill();
// Gets and sets the value of theme colors.
if (shapeFill->get_ForeThemeColor() == Aspose::Words::Themes::ThemeColor::Accent1)
{
    shapeFill->set_ForeThemeColor(Aspose::Words::Themes::ThemeColor::Dark1);
}

if (shapeFill->get_BackThemeColor() == Aspose::Words::Themes::ThemeColor::Accent2)
{
    shapeFill->set_BackThemeColor(Aspose::Words::Themes::ThemeColor::Dark2);
}

System::SharedPtr<Aspose::Words::Drawing::Fill> textFill1 = doc->get_FirstSection()->get_Body()->get_FirstParagraph()->get_Runs()->idx_get(0)->get_Font()->get_Fill();
// Gets and sets the tint value.
if (textFill1->get_ForeTintAndShade() == 0)
{
    textFill1->set_ForeTintAndShade(0.5);
}

System::SharedPtr<Aspose::Words::Drawing::Fill> textFill2 = doc->get_FirstSection()->get_Body()->get_FirstParagraph()->get_Runs()->idx_get(1)->get_Font()->get_Fill();
// Gets and sets the shade value.
if (textFill2->get_ForeTintAndShade() == 0)
{
    textFill2->set_ForeTintAndShade(-0.2);
}

doc->Save(u"out.docx");
{{< /highlight >}}

### Added public properties HasMajorGridlines and HasMinorGridlines to ChartAxis class

The following public properties have been added to the Aspose.Words.Drawing.Charts.ChartAxis class:
{{< highlight cpp >}}
/// Gets a flag indicating whether the axis has major gridlines.
ASPOSE_WORDS_SHARED_API bool get_HasMajorGridlines();

/// Sets a flag indicating whether the axis has major gridlines.
ASPOSE_WORDS_SHARED_API void set_HasMajorGridlines(bool value);

/// Gets a flag indicating whether the axis has minor gridlines.
ASPOSE_WORDS_SHARED_API bool get_HasMinorGridlines();

/// Sets a flag indicating whether the axis has minor gridlines.
ASPOSE_WORDS_SHARED_API void set_HasMinorGridlines(bool value);
{{< /highlight >}}

#### Use Case:
Explains how to show chart gridlines.
{{< highlight cpp >}}
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>();
System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>(doc);

// Insert a chart.
System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertChart(Aspose::Words::Drawing::Charts::ChartType::Column, 432, 252);
    
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartAxis> xAxis = shape->get_Chart()->get_AxisX();
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartAxis> yAxis = shape->get_Chart()->get_AxisY();
    
// Show gridlines.
xAxis->set_HasMajorGridlines(true);
xAxis->set_HasMinorGridlines(true);
yAxis->set_HasMajorGridlines(true);
yAxis->set_HasMinorGridlines(true);
    
doc->Save(u"Gridlines.docx");
{{< /highlight >}}

### Added public property ImportFormatOptions.AdjustSentenceAndWordSpacing

The following public property was added to Aspose.Words.ImportFormatOptions class:
{{< highlight cpp >}}
/// Gets a boolean value that specifies whether to adjust sentence and word spacing automatically.
/// The default value is <c>%false</c>.
ASPOSE_WORDS_SHARED_API bool get_AdjustSentenceAndWordSpacing() const;

/// Sets a boolean value that specifies whether to adjust sentence and word spacing automatically.
/// The default value is <c>%false</c>.
ASPOSE_WORDS_SHARED_API void set_AdjustSentenceAndWordSpacing(bool value);
{{< /highlight >}}

#### Use Case:
Explains how to use AdjustSentenceAndWordSpacing option.
{{< highlight cpp >}}
System::SharedPtr<Aspose::Words::Document> srcDoc = System::MakeObject<Aspose::Words::Document>();
System::SharedPtr<Aspose::Words::Document> dstDoc = System::MakeObject<Aspose::Words::Document>();

System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>(srcDoc);
builder->Write(u"Dolor sit amet.");
    
builder = System::MakeObject<Aspose::Words::DocumentBuilder>(dstDoc);
builder->Write(u"Lorem ipsum.");
    
System::SharedPtr<Aspose::Words::ImportFormatOptions> options = System::MakeObject<Aspose::Words::ImportFormatOptions>();
options->set_AdjustSentenceAndWordSpacing(true);
builder->InsertDocument(srcDoc, Aspose::Words::ImportFormatMode::UseDestinationStyles, options);
    
System::Console::WriteLine(dstDoc->get_FirstSection()->get_Body()->get_FirstParagraph()->GetText());
    
/* This code produces the following output (please note the additional ' ' space character just before pasted content):
Lorem ipsum. Dolor sit amet.
*/
{{< /highlight >}}

### Added public property TextBox.NoTextRotation

The following public property was added to Aspose.Words.Drawing.TextBox class:
{{< highlight cpp >}}
/// Gets a boolean value indicating either text of the TextBox should not rotate when the shape is rotated.
///
/// The default value is <c>%false</c>
ASPOSE_WORDS_SHARED_API bool get_NoTextRotation();

/// Sets a boolean value indicating either text of the TextBox should not rotate when the shape is rotated.
/// 
/// The default value is <c>%false</c>
ASPOSE_WORDS_SHARED_API void set_NoTextRotation(bool value);
{{< /highlight >}}

#### Use Case:
Explains how to use NoTextRotation option.
{{< highlight cpp >}}
System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>();
System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertShape(Aspose::Words::Drawing::ShapeType::Ellipse, 20, 20);
shape->get_TextBox()->set_NoTextRotation(true);
{{< /highlight >}}

### Enabled saving progress notifications for MOBI and AZW3 formats

The SaveOptions.ProgressCallback is now also invoked when saving to Mobi or AZW3.

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
