---
title: Aspose.Words for C++ 23.6 Release Notes
description: "Aspose.Words for C++ 23.6 Release Notes – the latest updates and fixes."
type: docs
weight: 45
url: /cpp/aspose-words-for-cpp-23-6-release-notes/
---
{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.6](https://www.nuget.org/packages/Aspose.Words.Cpp/23.6.0).

{{% /alert %}}

## Major Features

There are 86 improvements and fixes in this regular monthly release. The most notable are:

- Implemented an ability to save documents as XLSX.
- Added support of Advanced Typography in WMF, EMF and EMF+ rendering.
- Added public property (PageInfo.Colored) indicating whether the page is in color or not.
- Implemented ability to set fill, stroke and callout formatting for chart data labels.
- Added a new LowCode methods intended to merge a variety of different types of documents into a single output document.

## Full list of changes

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Support advanced typography in EMF
2. Add feature to update Chart X-Axis data
3. Consider providing a property indicating whether page is colored or not in PageInfo
4. Support table-column data bands and conditional blocks
5. Update metered license checking code to support plugins
6. Improve venture license mechanism
7. Issue a warning if the XML document being loaded is in fact a FB2 book
8. Fix minor code issues
9. Invalid CMYK color space in PDF/A-1b
10. Persian text does not render correctly in output PDF
11. DOCX to PDF conversion issue with Arabic text rendering
12. Content position in table's cell is different in output DOCX and BMP
13. Arabic Words in Embedded Excel Sheet Object Distorted in Rendered Document
14. DOCX to DOCX merging issue
15. Chinese text in Visio embedded drawing object rotated upon rendering
16. DOC to DOCX merging issue
17. DOCX to DOCX merging issue with tables
18. FileCorruptedException is thrown upon loading MHTML document
19. Support the "callout" data labels
20. Y-axis major units are not the same as in MS Word after rendering
21. DOCX to PDF: Code hangs at Save
22. ODT to ODT merging issue
23. Positions of shapes inside group shape are incorrect after rendering.
24. .NET 6 app consumes all available memory to convert one page of DOCX file to PNG
25. DOCX merging issue, layout is wrong
26. DOC merging issue
27. Images don't preserve hyperlinks when they are saved using the HtmlFixedSaveOptions
28. Arabic text in metafile is rendered improperly
29. Series line width is incorrect after rendering chart
30. Trailing spaces become underlined after conversion to PDF
31. Extra page occurs while merging documents
32. EMF in document - wrong font and bracket orientation when saved to PDF or HTML
33. Persian text rendering issue
34. Formatting of hyperlinks inside IF field is changed after updating fields
35. DOCX to PDF merging issue
36. Add feature to merge PDF documents without parsing to flow document model
37. DOCX merging issue, layout is incorrect
38. Field type XValue should be replaced by x-value
39. DOCX to PDF: Incorrect spacing around line objects
40. Inserting EMF: Wrong character spacing in Arabic text
41. Comparing documents throws "System.InvalidOperationException"
42. Detecting changes using Range.Revision lasts much longer than custom node
43. Width of inline fraction became larger after converting to PDF
44. API hang representing document layout
45. Use ResourceLoadingCallback when external resource are loaded upon updating fields
46. Unexpected occurrence of Paragraph.LeftIndent during Docx-Html-Docx roundtrip
47. Last list item missing when converting to PDF
48. Keep original font metrics on substitution (Word 2013 vs Word 2019) - Inaccurate line spacing after font fallback
49. The argument out of range exception occurs while rendering the document with a chart
50. DOCX to PDF loses alternate text
51. Formatting of PDF document is damaged
52. ArgumentOutOfRangeException on conversion DOCX to MD
53. InvalidOperationException is thrown upon importing node with KeepSourceFormatting
54. SDT data is incorrect after rendering document
55. Incorrect table text direction on conversion to PDF
56. Incorrect line-relative shape positions
57. Pie chart converted incorrectly to HTML
58. Chinese hieroglyph is changed after rendering document
59. Compare method throws 'Cannot insert a node of this type at this location' exception
60. Implement removing signature in ODF Text Document Template
61. Aspose.Words compares documents with and without SDT differently than MS Word
62. Document is still in compatibility mode after OptimizeFor (Word2019)
63. Content position in table's cell is different in output DOCX and PDF
64. Discrepancy between MS Word and Aspose.Words compare
65. Items are missed in INDEX after updating fields
66. Cannot insert a node of this type at this location error on attempt to append DOCX to DOCX
67. FileCorruptedException: 'The document appears to be corrupted and cannot be loaded.'
68. Call doc.UpdateFormat(LoadFormat.Pdf) after loading is finished
69. Cache product name in MeteredBillingService
70. Arabic text distorts during EMF to PDF conversion
71. Korean text of chart is overlapped in output PDF
72. System.ArgumentOutOfRangeException: empty image
73. Implement internal version of Merge feature
74. IndexOutOfBoundsException raised on header footer specific combination of getHeadersFooters().linkToPrevious
75. DOC to PDF File conversion - Bullet (solid circle) converted to (square)
76. Odd behavior of CompatibilityOptions.OptimizeFor method with empty document
77. Provide a way to make Document.MergeDocuments public
78. Fix parameters fill when switch operation after request
79. Venture license not working when loading Azw3
80. Document is not rendered correctly in Aspose API
81. Part of content is moved to the next page
82. Bookmark.Text set to empty string does not remove all content from bookmarks spanned several rows
83. Numbering issue for Text file
84. Office blocks Ole Objects inserted by Aspose
85. Line overlaps the text after rendering SVG
86. FieldPageRef has the wrong page number when saving with Optimize for Word 2019 option

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to remove digital signatures from OTT

Implemented removing digital signatures from OTT using **Aspose.Words.DigitalSignatures.DigitalSignatureUtil.RemoveAllSignatures** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove digital signatures from OTT. Please see the following code example to learn how to use such a method:

{{% /alert %}}

```cpp
Aspose::Words::DigitalSignatures::DigitalSignatureUtil::RemoveAllSignatures(u"in.ott", u"out.ott");
```

### Added a new warning during reading FB2 format

The corresponding warning will be added during reading a FB2 book.

```cpp
The original file load format is FB2, which is not supported by Aspose.Words. The file is loaded as an XML document.
```

### Added a property indicating whether the page is in color or not

Implemented a new **PageInfo.Colored** property indicating whether the page is in color or not.

```cpp
/// Returns <c>%true</c> if the page contains colored content.
ASPOSE_WORDS_SHARED_API bool get_Colored();
```

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to check that the particular page of the document is not colored. Please see the following code example to learn how to use such a property:

{{% /alert %}}

```cpp
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(System::String(u"in.docx"));
    
// Check that the first page of the document is not colored.
ASSERT_FALSE(doc->GetPageInfo(0)->get_Colored());
```

Evaluating this property causes internal rendering of the document, which can affect performance. Although, if further rendering of the document is supposed, then the necessary values are most likely already in the cache.

### Added new public property LayoutOptions.KeepOriginalFontMetrics

We have changed the default behavior of Aspose.Words during font substitution to copy the behavior introduced in Microsoft Word 2019. Previously, the metrics of the original font were used in some cases. Now the metrics of the substitution font is used in all cases by default.

The **KeepOriginalFontMetrics** property has been added to the **LayoutOptions** class:

```cpp
/// Gets an indication of whether the original font metrics should be used after font substitution.
/// Default is <c>%true</c>.
ASPOSE_WORDS_SHARED_API bool get_KeepOriginalFontMetrics() const;

/// Sets an indication of whether the original font metrics should be used after font substitution.
/// Default is <c>%true</c>.
ASPOSE_WORDS_SHARED_API void set_KeepOriginalFontMetrics(bool value);
```

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to return the previous behavior. Please see the following code example to learn how to use such a property:

{{% /alert %}}

```cpp
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(System::String(u"in.docx"));
doc->get_LayoutOptions()->set_KeepOriginalFontMetrics(true);
doc->Save(u"out.pdf");
```

### Implemented ability to save documents as XLSX

The following changes have been made to the API:

A new class **XlsxSaveOptions** has been implemented.
A new item **Xlsx** has been added to the **SaveFormat** enum type.
A new item **Xlsx** has been added to the **WarningSource** enum type.
```cpp
namespace Aspose {

namespace Words {

namespace Saving {

/// Can be used to specify additional options when saving a document into the <see cref="Aspose::Words::SaveFormat::Xlsx">Xlsx</see>
/// format.
/// To learn more, visit the <a href="https://docs.aspose.com/words/net/specify-save-options/">Specify
/// Save Options</a> documentation article.
class ASPOSE_WORDS_SHARED_CLASS XlsxSaveOptions : public Aspose::Words::Saving::SaveOptions
{
    typedef XlsxSaveOptions ThisType;
    typedef Aspose::Words::Saving::SaveOptions BaseType;

    typedef ::System::BaseTypesInfo<BaseType> ThisTypeBaseTypesInfo;
    ASPOSE_WORDS_SHARED_RTTI_INFO_DECL();

public:

    /// Specifies the format in which the document will be saved if this save options object is used.
    /// Can only be <see cref="Aspose::Words::SaveFormat::Xlsx">Xlsx</see>.
    ASPOSE_WORDS_SHARED_API Aspose::Words::SaveFormat get_SaveFormat() override;

    /// Specifies the format in which the document will be saved if this save options object is used.
    /// Can only be <see cref="Aspose::Words::SaveFormat::Xlsx">Xlsx</see>.
    ASPOSE_WORDS_SHARED_API void set_SaveFormat(Aspose::Words::SaveFormat value) override;

    /// Specifies the compression level used to save document.
    /// The default value is <see cref="Aspose::Words::Saving::CompressionLevel::Normal">Normal</see>.
    ASPOSE_WORDS_SHARED_API Aspose::Words::Saving::CompressionLevel get_CompressionLevel() const;

    /// Specifies the compression level used to save document.
    /// The default value is <see cref="Aspose::Words::Saving::CompressionLevel::Normal">Normal</see>.
    ASPOSE_WORDS_SHARED_API void set_CompressionLevel(Aspose::Words::Saving::CompressionLevel value);

    ASPOSE_WORDS_SHARED_API XlsxSaveOptions();

private:

    __TypeStub<4,4,4,4>::type mField0;

};

}
}
}

namespace Aspose {

namespace Words {
    
enum class ASPOSE_WORDS_SHARED_CLASS SaveFormat
{
    ...
    /// Saves the document as an Office Open XML SpreadsheetML Document (macro-free).
    Xlsx = 80,
    ...
}

enum class ASPOSE_WORDS_SHARED_CLASS WarningSource
{
    ...
    /// Module that writes XLSX files.
    Xlsx
}

}
}
```

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save document as XLSX. Please see the following code example to learn how to use such a property:

{{% /alert %}}

```cpp
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(System::String(u"input.docx"));
doc->Save(u"output.xlsx");
```

### Implemented ability to set fill, stroke and callout formatting for chart data labels

The **Format** properties of the **ChartFormat** type have been added to the **ChartDataLabel** and **ChartDataLabelCollection** classes.

```cpp
class ASPOSE_WORDS_SHARED_CLASS ChartDataLabel
{
    ...
    /// Provides access to fill and line formatting of the data label.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Drawing::Charts::ChartFormat> get_Format();
}

class ASPOSE_WORDS_SHARED_CLASS ChartDataLabelCollection
{
    ...
    /// Provides access to fill and line formatting of the data labels.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Drawing::Charts::ChartFormat> get_Format();
}
```

The new enum type **ChartShapeType** has been implemented and the **ShapeType** property of this type has been added to the **ChartFormat** class.

```cpp
/// Specifies the shape type of chart elements.
/// 
/// @sa Aspose::Words::Drawing::Charts::ChartFormat::get_ShapeType
enum class ASPOSE_WORDS_SHARED_CLASS ChartShapeType
{
    /// Indicates that a shape is not defined for the chart element.
    Default,

    /// Rectangle.
    Rectangle,
    ...
}

class ASPOSE_WORDS_SHARED_CLASS ChartFormat
{
    ...
    /// Gets the shape type of the parent chart element.
    ASPOSE_WORDS_SHARED_API Aspose::Words::Drawing::Charts::ChartShapeType get_ShapeType();
    
    /// Sets the shape type of the parent chart element.
    ASPOSE_WORDS_SHARED_API void set_ShapeType(Aspose::Words::Drawing::Charts::ChartShapeType value);
}
```

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to format data labels as callouts. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

```cpp
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>();
System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>(doc);

System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertChart(Aspose::Words::Drawing::Charts::ChartType::Column, 432, 252);
System::SharedPtr<Aspose::Words::Drawing::Charts::Chart> chart = shape->get_Chart();

// Delete default generated series.
chart->get_Series()->Clear();

// Add new series.
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> series = chart->get_Series()->Add(u"AW Series 1", System::MakeArray<System::String>({u"AW Category 1", u"AW Category 2", u"AW Category 3", u"AW Category 4"}), System::MakeArray<double>({100, 200, 300, 400}));

// Show data labels.
series->set_HasDataLabels(true);
series->get_DataLabels()->set_ShowValue(true);

// Format data labels as callouts.
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartFormat> format = series->get_DataLabels()->get_Format();
format->get_Stroke()->set_Color(System::Drawing::Color::get_Gray());
format->set_ShapeType(Aspose::Words::Drawing::Charts::ChartShapeType::WedgeRectCallout);

doc->Save(u"Callouts.docx");
```

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to set fill and stroke formatting to data labels. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

```cpp
System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>();
System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>(doc);

System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertChart(Aspose::Words::Drawing::Charts::ChartType::Column, 432, 252);
System::SharedPtr<Aspose::Words::Drawing::Charts::Chart> chart = shape->get_Chart();

// Delete default generated series.
chart->get_Series()->Clear();

// Add new series.
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> series = chart->get_Series()->Add(u"AW Series 1", System::MakeArray<System::String>({u"AW Category 1", u"AW Category 2", u"AW Category 3", u"AW Category 4"}), System::MakeArray<double>({100, 200, 300, 400}));

// Show data labels.
series->set_HasDataLabels(true);
series->get_DataLabels()->set_ShowValue(true);

// Set fill and stroke for all data labels.
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartFormat> format = series->get_DataLabels()->get_Format();
format->get_Stroke()->set_Color(System::Drawing::Color::get_DarkGreen());
format->get_Fill()->Solid(System::Drawing::Color::get_Green());
series->get_DataLabels()->get_Font()->set_Color(System::Drawing::Color::get_Yellow());

// Change fill and stroke of an individual data label.
System::SharedPtr<Aspose::Words::Drawing::Charts::ChartFormat> labelFormat = series->get_DataLabels()->idx_get(0)->get_Format();
labelFormat->get_Stroke()->set_Color(System::Drawing::Color::get_DarkBlue());
labelFormat->get_Fill()->Solid(System::Drawing::Color::get_Blue());

doc->Save(u"FillAndStroke.docx");
```

### Removed obsolete property Fill.On

The following obsolete public property is removed from **Aspose.Words.Drawing.Fill** class:

```cpp
/// @deprecated This property is obsolete. Please, use Visible property instead.
/// Gets value that is <c>%true</c> if the formatting applied to this instance, is visible.
[[deprecated("This property is obsolete. Please, use Visible property instead.")]]
ASPOSE_WORDS_SHARED_API bool get_On();

/// @deprecated This property is obsolete. Please, use Visible property instead.
/// Sets value that is <c>%true</c> if the formatting applied to this instance, is visible.
[[deprecated("This property is obsolete. Please, use Visible property instead.")]]
ASPOSE_WORDS_SHARED_API void set_On(bool value);
```

We also decided to leave obsolete property **Fill.Color** along with a new **Fill.ForeColor**, as these two methods have slightly different behavior in regarding transparency:
```cpp
/// @deprecated This property is obsolete. Please, use ForeColor property instead.
/// Gets or sets a Color object that represents the foreground color for the fill.
///
/// @par Examples
///
/// Shows how to convert any of the fills back to solid fill.
/// @code
/// auto doc = MakeObject<Document>(MyDir + u"Two color gradient.docx");
///
/// // Get Fill object for Font of the first Run.
/// SharedPtr<Fill> fill = doc->get_FirstSection()->get_Body()->get_Paragraphs()->idx_get(0)->get_Runs()->idx_get(0)->get_Font()->get_Fill();
///
/// // Check Fill properties of the Font.
/// std::cout << String::Format(u"The type of the fill is: {0}", fill->get_FillType()) << std::endl;
/// std::cout << "The foreground color of the fill is: " << fill->get_ForeColor() << std::endl;
/// std::cout << "The fill is transparent at " << (fill->get_Transparency() * 100) << "%" << std::endl;
///
/// // Change type of the fill to Solid with uniform green color.
/// fill->Solid(System::Drawing::Color::get_Green());
/// std::cout << "\nThe fill is changed:" << std::endl;
/// std::cout << String::Format(u"The type of the fill is: {0}", fill->get_FillType()) << std::endl;
/// std::cout << "The foreground color of the fill is: " << fill->get_ForeColor() << std::endl;
/// std::cout << "The fill transparency is " << (fill->get_Transparency() * 100) << "%" << std::endl;
///
/// doc->Save(ArtifactsDir + u"Drawing.FillSolid.docx");
/// @endcode
[[deprecated("This property is obsolete. Please, use ForeColor property instead.")]]
ASPOSE_WORDS_SHARED_API System::Drawing::Color get_Color();

/// @deprecated This property is obsolete. Please, use ForeColor property instead.
/// Setter for Aspose::Words::Drawing::Fill::get_Color
[[deprecated("This property is obsolete. Please, use ForeColor property instead.")]]
ASPOSE_WORDS_SHARED_API void set_Color(System::Drawing::Color value);
```

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with Fill color and visibility. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

```cpp
System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>();

System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertShape(Aspose::Words::Drawing::ShapeType::Balloon, 300, 300);
// Set Color with transparency.
shape->get_Fill()->set_Color(System::Drawing::Color::FromArgb(128, System::Drawing::Color::get_Red()));

// Fill.Color preserves alpha component of the Color.
System::Console::WriteLine(u"Fill.Color: {0}", shape->get_Fill()->get_Color());

// Fill.ForeColor ignores alpha component of the Color.
System::Console::WriteLine(u"Fill.ForeColor: {0}", shape->get_Fill()->get_ForeColor());

// Use Fill.Visible instead of obfuscated Fill.On property to determine fill visibility.
System::Console::WriteLine(u"Fill.Visible: {0}", shape->get_Fill()->get_Visible());

// Make fill invisible.
shape->get_Fill()->set_Visible(false);
System::Console::WriteLine(u"Fill.Visible: {0}", shape->get_Fill()->get_Visible());

/* This code produces the following output:
Fill.Color: Color [A=128, R=255, G=0, B=0]
Fill.ForeColor: Color [A=255, R=255, G=0, B=0]
Fill.Visible: True
Fill.Visible: False
*/
```

### Added a new LowCode methods intended to merge a variety of different types of documents into a single output document

Added a new **LowCode.Merger** class, which represents a group of methods intended to merge a variety of different types of documents into a single output document.

The following overloads were provided:

```cpp
/// Merges the given input documents into a single output document using specified input and output file names.
/// 
/// By default <see cref="Aspose::Words::LowCode::MergeFormatMode::KeepSourceFormatting">KeepSourceFormatting</see> is used.
/// 
/// @param outputFile The output file name.
/// @param inputFiles The input file names.
static ASPOSE_WORDS_SHARED_API void Merge(const System::String& outputFile, const System::ArrayPtr<System::String>& inputFiles);

/// Merges the given input documents into a single output document using specified input output file names and the final document format.
/// 
/// @param outputFile The output file name.
/// @param inputFiles The input file names.
/// @param saveFormat The save format.
/// @param mergeFormatMode Specifies how to merge formatting that clashes.
static ASPOSE_WORDS_SHARED_API void Merge(const System::String& outputFile, const System::ArrayPtr<System::String>& inputFiles, Aspose::Words::SaveFormat saveFormat, Aspose::Words::LowCode::MergeFormatMode mergeFormatMode);

/// Merges the given input documents into a single output document using specified input output file names and save options.
/// 
/// @param outputFile The output file name.
/// @param inputFiles The input file names.
/// @param saveOptions The save options.
/// @param mergeFormatMode Specifies how to merge formatting that clashes.
static ASPOSE_WORDS_SHARED_API void Merge(const System::String& outputFile, const System::ArrayPtr<System::String>& inputFiles, const System::SharedPtr<Aspose::Words::Saving::SaveOptions>& saveOptions, Aspose::Words::LowCode::MergeFormatMode mergeFormatMode);

/// Merges the given input documents into a single document and returns <see cref="Aspose::Words::Document">Document</see> instance of the final document.
/// 
/// @param inputFiles The input file names.
/// @param mergeFormatMode Specifies how to merge formatting that clashes.
static ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Document> Merge(const System::ArrayPtr<System::String>& inputFiles, Aspose::Words::LowCode::MergeFormatMode mergeFormatMode);

/// Merges the given input documents into a single output document using specified input output streams and the final document format.
/// 
/// @param outputStream The output stream.
/// @param inputStreams The input streams.
/// @param saveFormat The save format.
static ASPOSE_WORDS_SHARED_API void Merge(const System::SharedPtr<System::IO::Stream>& outputStream, const System::ArrayPtr<System::SharedPtr<System::IO::Stream>>& inputStreams, Aspose::Words::SaveFormat saveFormat);

/// Merges the given input documents into a single output document using specified input output streams and save options.
/// 
/// @param outputStream The output stream.
/// @param inputStreams The input streams.
/// @param saveOptions The save options.
/// @param mergeFormatMode Specifies how to merge formatting that clashes.
static ASPOSE_WORDS_SHARED_API void Merge(const System::SharedPtr<System::IO::Stream>& outputStream, const System::ArrayPtr<System::SharedPtr<System::IO::Stream>>& inputStreams, const System::SharedPtr<Aspose::Words::Saving::SaveOptions>& saveOptions, Aspose::Words::LowCode::MergeFormatMode mergeFormatMode);

/// Merges the given input documents into a single document and returns <see cref="Aspose::Words::Document">Document</see> instance of the final document.
/// 
/// @param inputStreams The input streams.
/// @param mergeFormatMode Specifies how to merge formatting that clashes.
static ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Document> Merge(const System::ArrayPtr<System::SharedPtr<System::IO::Stream>>& inputStreams, Aspose::Words::LowCode::MergeFormatMode mergeFormatMode);
```

Added a new **MergeFormatMode** enum, which specifies how formatting is merged when combining multiple documents.

```cpp
/// Specifies how formatting is merged when combining multiple documents.
enum class ASPOSE_WORDS_SHARED_CLASS MergeFormatMode
{
    
    /// Combine the formatting of the merged documents.
    /// 
    /// By using this option, %Aspose.Words adapts the formatting of the first document to match the structure and
    /// appearance of the second document, but keeps some of the original formatting intact.
    /// This option is useful when you want to maintain the overall look and feel of the destination document
    /// but still retain certain formatting aspects from the original document.
    /// 
    /// This option does not have any affect when the input and the output formats are PDF.
    MergeFormatting,
    
    /// Means that the source document will retain its original formatting,
    /// such as font styles, sizes, colors, indents, and any other formatting elements applied to its content.
    /// 
    /// By using this option, you ensure that the copied content appears as it did in the original source,
    /// regardless of the formatting settings of the first document in merge queue.
    /// 
    /// This option does not have any affect when the input and the output formats are PDF.
    KeepSourceFormatting,
    
    /// Preserve the layout of the original documents in the final document.
    /// 
    /// In general, it looks like you print out the original documents and manually adhere them together using glue.
    KeepSourceLayout
};
```

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to merge multiple documents (DOCX, PDF, DOC, RTF) into a single PDF document. Please see the following code example to learn how to use such a simple low-code method:

{{% /alert %}}

```cpp
// Merges multiple documents (DOCX, PDF, DOC, RTF) into a single PDF document.
Aspose::Words::LowCode::Merger::Merge(u"out.pdf", System::MakeArray<System::String>({u"in.docx", u"in.pdf", u"in.doc", u"in.rtf"}));
```

## Limitations and API Differences

Aspose.Words for C++ has some differences as compared to its equivalent .NET version of the API. This section contains information about all such functionality that is not available in the current release. The missing features will be added in future releases.

- The current release does not support LINQ and Reporting features.
- The current release does not support OpenGL 3D Shapes rendering.
- The current release does not support loading PDF documents.
- The current release has limited support for database features - C++ doesn't have common API for DB like .NET System.Data.
