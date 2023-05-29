---
title: Aspose.Words for C++ 23.4 Release Notes
description: "Aspose.Words for C++ 23.4 Release Notes – the latest updates and fixes."
type: docs
weight: 60
url: /cpp/aspose-words-for-cpp-23-4-release-notes/
---
{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.4](https://www.nuget.org/packages/Aspose.Words.Cpp/23.4.0).

{{% /alert %}}

## Major Features

There are 70 improvements and fixes in this regular monthly release. The most notable are:

- Added an ability to set distance between table and surrounding text.
- Provided an ability to determine whether a Run is a phonetic guide run.
- Implemented the simple way to work with series and axes of a combo charts.
- Provided the new public properties connected to the shape relative positioning and sizing.
- Improved accuracy and performance of color brightness calculation for automatic text color resolution in accordance with the latest versions of MS Word.

## Full list of changes

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Ability to set foreground color with update of all gradient stops having the same color
2. Ability to determine whether run is ruby text
3. Floating table margins setters
4. Provide access to all series and axes of a chart in API
5. When loading CHM documents, also read articles that are referenced by index only
6. Inconsistent behavior when Printing/Saving with values from field value or from the field code
7. Different number of images in PDF document
8. Font color is changed after rendering a document
9. Incorrect auto-color resolution on textured shading
10. Incorrect calculation and evaluation of background luminance
11. NullReferenceException is thrown upon calling UpdatePageLayout
12. Part of content is missed from the document upon conversion
13. Text is missed upon rendering ODT document
14. InvalidOperationException: Footnotes are only allowed inside the main text of the document
15. Header numbers are not preserved when converting to PDF
16. ArgumentException is thrown upon setting bookmark text
17. Shapes position are changed and pushed down to next page in output PDF
18. API performance issue with large documents
19. Image in header is shifted after rendering the document
20. DOCX to PDF: Extra page is added upon conversion
21. Shape position in header is incorrect after rendering
22. Aspose.Words produces corrupted document after open/save DOCX file
23. Image is not loaded properly if the document is loaded form LazyLoadingReadOnlyStream
24. MHTML document is loaded as empty document
25. Incorrect calculation of maximum size and position of PieChart label inside the sector
26. Radius of Pie chart differs from the original
27. NullReferenceException is thrown upon rendering document
28. Incomplete access to series of a combo charts
29. DOCX to PDF: Table does not retain width
30. Text color is changed after appending document with ImportFormatMode.KeepSourceFormatting
31. Ordered list is imported improperly from DOC file
32. HTML to MD: Table formatting is not retain in resultant file
33. Document.UpdateFields throws exception - Master value already initialized
34. "Root element is missing" error when opening DOCX
35. Save to EMF failed when inserting SVG document on .NET 6
36. Chinese fonts are not used upon rendering
37. UpdateFields throws NullReferenceException exception
38. Content is pushed down upon rendering the document
39. Do not rename bookmarks when import building blocks
40. InvalidOperationException : PDF corrupt. Invalid PDF page node object
41. Inner shadow to wide converting to PDF
42. Aspose.Words produces a broken document
43. ZlibException: Bad state (invalid bit length repeat)
44. NotImplementedException : cannot add ImageWrapper into PageModel
45. FileCorruptedException is thrown upon loading DOCX document
46. Update GhostPCL to the latest version
47. PCL file produced by Aspose.Words is displayed/printed improperly
48. Colors in the chart are turned to black and white after updating page layout
49. Rendering chart shape produces cropped output
50. Incorrect scaling of horizontal axis of bar chart with a manual layout
51. Text is wrapped improperly in SmartArt Radial picture list diagram
52. Text is wrapped improperly in SmartArt Hexagon diagram
53. Text is wrapped improperly upon rendering SmartArt Varying Width List diagram
54. Text is wrapped improperly in SmartArt diagram
55. ZIP arhive is loaded as TXT document into Aspose.Words
56. PPTX document is wrongly loaded into Document as Text document
57. Append document method is adding blank page
58. RTF to PDF: New lines are added upon conversion
59. When converting a PDF to SVG a while line appears in the image that is not in the source
60. DOCX to PDF: Nested alternate text failed
61. Setting CharacterUnit indents to zero does not work
62. Image Truncating from top when saving in to HTML
63. Compare() method Memory Leak
64. Content is missing on conversion from HTML to DOCX or PDF
65. Exception raised load a document form a stream generated by DocumentFormat.OpenXml.Packaging
66. Multiline text Run lose white-spaces after line-breaks
67. Ordered list discrepancy in MS Word and HTML
68. Poor quality of the resulting rendered shape after converting DOCX to JPG
69. Text rotates after DOCX to HTML conversion
70. HTML is exported in one vertical line after conversion from DOCX

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to set distance between table and surrounding text

Now you can set the following properties of the **Table** class:

{{< highlight cpp >}}
    /// Gets or sets distance between table left and the surrounding text, in points.
    ///
    /// @par Examples
    ///
    /// Shows the minimum distance operations between table boundaries and text.
    /// @code
    /// auto doc = MakeObject<Document>(MyDir + u"Table wrapped by text.docx");
    ///
    /// SharedPtr<Table> table = doc->get_FirstSection()->get_Body()->get_Tables()->idx_get(0);
    ///
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceTop());
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceBottom());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceLeft());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceRight());
    /// @endcode
    ASPOSE_WORDS_SHARED_API double get_DistanceLeft();
    
    /// Setter for Aspose::Words::Tables::Table::get_DistanceLeft
    ASPOSE_WORDS_SHARED_API void set_DistanceLeft(double value);
    
    /// Gets or sets distance between table right and the surrounding text, in points.
    ///
    /// @par Examples
    ///
    /// Shows the minimum distance operations between table boundaries and text.
    /// @code
    /// auto doc = MakeObject<Document>(MyDir + u"Table wrapped by text.docx");
    ///
    /// SharedPtr<Table> table = doc->get_FirstSection()->get_Body()->get_Tables()->idx_get(0);
    ///
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceTop());
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceBottom());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceLeft());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceRight());
    /// @endcode
    ASPOSE_WORDS_SHARED_API double get_DistanceRight();
    
    /// Setter for Aspose::Words::Tables::Table::get_DistanceRight
    ASPOSE_WORDS_SHARED_API void set_DistanceRight(double value);
    
    /// Gets or sets distance between table top and the surrounding text, in points.
    ///
    /// @par Examples
    ///
    /// Shows the minimum distance operations between table boundaries and text.
    /// @code
    /// auto doc = MakeObject<Document>(MyDir + u"Table wrapped by text.docx");
    ///
    /// SharedPtr<Table> table = doc->get_FirstSection()->get_Body()->get_Tables()->idx_get(0);
    ///
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceTop());
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceBottom());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceLeft());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceRight());
    /// @endcode
    ASPOSE_WORDS_SHARED_API double get_DistanceTop();
    
    /// Setter for Aspose::Words::Tables::Table::get_DistanceTop
    ASPOSE_WORDS_SHARED_API void set_DistanceTop(double value);
    
    /// Gets or sets distance between table bottom and the surrounding text, in points.
    /// 
    /// @par Examples
    /// 
    /// Shows the minimum distance operations between table boundaries and text.
    /// @code
    /// auto doc = MakeObject<Document>(MyDir + u"Table wrapped by text.docx");
    /// 
    /// SharedPtr<Table> table = doc->get_FirstSection()->get_Body()->get_Tables()->idx_get(0);
    /// 
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceTop());
    /// ASPOSE_ASSERT_EQ(25.9, table->get_DistanceBottom());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceLeft());
    /// ASPOSE_ASSERT_EQ(17.3, table->get_DistanceRight());
    /// @endcode
    ASPOSE_WORDS_SHARED_API double get_DistanceBottom();
    
    /// Setter for Aspose::Words::Tables::Table::get_DistanceBottom
    ASPOSE_WORDS_SHARED_API void set_DistanceBottom(double value);
{{< /highlight >}}

Please note: setting these properties makes the table floating.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to set distance between table and surrounding text. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight cpp >}}
    auto doc = System::MakeObject<Aspose::Words::Document>(u"input.docx");
    auto table = doc->get_FirstSection()->get_Body()->get_Tables()->idx_get(0);
    
    // Set distance between table and surrounding text.
    table->set_DistanceLeft(24);
    table->set_DistanceRight(24);
    table->set_DistanceTop(3);
    table->set_DistanceBottom(3);
        
    doc->Save(u"output.docx");
{{< /highlight >}}

### Added public property GradientStop.BaseColor

The following public property was added to the **Aspose.Words.Drawing.GradientStop** class:

{{< highlight cpp >}}
    /// Gets a value representing the color of the gradient stop without any modifiers.
    ASPOSE_WORDS_SHARED_API System::Drawing::Color get_BaseColor();
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get unmodified Color of the gradient stop. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight cpp >}}
    System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>();
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertShape(Aspose::Words::Drawing::ShapeType::Balloon, 300, 300);
    
    // Set stroke thickness to 7pt.
    shape->get_Stroke()->set_Weight(7);
        
    // Fill the stroke with one-color gradient.
    shape->get_Stroke()->get_Fill()->OneColorGradient(System::Drawing::Color::get_Red(), Aspose::Words::Drawing::GradientStyle::Horizontal, Aspose::Words::Drawing::GradientVariant::Variant1, 0.1);
        
    // In OneColorGradient the second color is set automatically by adding to the first color either tint or shade.
    // So, we can check unmodified color is actually those we set to the first color.
    System::SharedPtr<Aspose::Words::Drawing::GradientStop> gradientStop = shape->get_Stroke()->get_Fill()->get_GradientStops()->idx_get(1);
    System::Console::WriteLine(u"The color is: {0}", gradientStop->get_Color());
    System::Console::WriteLine(u"The base (unmodified) color is: {0}", gradientStop->get_BaseColor());
    
    /* This code produces the following output:
    The color is: Color [A=255, R=51, G=0, B=0]
    The base (unmodified) color is: Color [A=255, R=255, G=0, B=0]
    */
{{< /highlight >}}

### Added public property Run.IsPhoneticGuide

The following public property was added to **Aspose.Words.Run** class:
{{< highlight cpp >}}
    /// Gets a boolean value indicating either the run is a phonetic guide.
    ASPOSE_WORDS_SHARED_API bool get_IsPhoneticGuide();    
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to determine either a Run is a phonetic guide run. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight cpp >}}
    System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>();
    
    builder->Write(u"text");
        
    System::SharedPtr<Aspose::Words::Run> run = builder->get_Document()->get_FirstSection()->get_Body()->get_FirstParagraph()->get_Runs()->idx_get(0);
    System::Console::WriteLine(u"The phonetic guide value of the run is '{0}'", run->get_IsPhoneticGuide());
    
    /* This code produces the following output:
    The phonetic guide value of the run is 'False'
    */
{{< /highlight >}}

### Added public property Stroke.Fill

The following public property was added to the **Aspose.Words.Drawing.Stroke** class:

{{< highlight cpp >}}
    /// Gets fill formatting for the <see cref="Aspose::Words::Drawing::Stroke">Stroke</see>.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Drawing::Fill> get_Fill();

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to fill a stroke of the shape. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight cpp >}}
    System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>();
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertShape(Aspose::Words::Drawing::ShapeType::Balloon, 300, 300);
    
    // Set stroke thickness to 7pt.
    shape->get_Stroke()->set_Weight(7);
        
    // Fill the stroke with two-color gradient.
    shape->get_Stroke()->get_Fill()->TwoColorGradient(System::Drawing::Color::get_Red(), System::Drawing::Color::get_Blue(), Aspose::Words::Drawing::GradientStyle::Vertical, Aspose::Words::Drawing::GradientVariant::Variant1);
        
    builder->get_Document()->Save(u"GradientStroke.docx");
{{< /highlight >}}

### Improvements in Chart class for Combo charts

The following changes have been implemented:

* A **ChartSeriesCollection** instance returned by the **Chart.Series** property includes all series of a combo chart, not just those of a main chart type.
* Implemented the **ChartAxisCollection** class. Added the **Chart.Axes** property of this type, which allows access to all axes of a combo chart.
* 
{{< highlight cpp >}}
    /// Gets a collection of all axes of this chart.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Drawing::Charts::ChartAxisCollection> get_Axes();
    
    /// Represents a collection of chart axes.
    class ASPOSE_WORDS_SHARED_CLASS ChartAxisCollection : public System::Collections::Generic::IEnumerable<System::SharedPtr<Aspose::Words::Drawing::Charts::ChartAxis>>
    {    
        /// Gets the number of axes in this collection.
        ASPOSE_WORDS_SHARED_API int32_t get_Count();
    
        /// Returns an enumerator object.
        ASPOSE_WORDS_SHARED_API System::SharedPtr<System::Collections::Generic::IEnumerator<System::SharedPtr<Aspose::Words::Drawing::Charts::ChartAxis>>> GetEnumerator() override;
    
        /// Gets the axis at the specified index.
        ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::Drawing::Charts::ChartAxis> idx_get(int32_t index);
    }
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with series and axes of a combo chart. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight cpp >}}
    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"ComboChart.docx");
    System::SharedPtr<Aspose::Words::NodeCollection> shapes = doc->GetChildNodes(Aspose::Words::NodeType::Shape, true);
    System::SharedPtr<Aspose::Words::Drawing::Charts::Chart> chart = (System::ExplicitCast<Aspose::Words::Drawing::Shape>(shapes->idx_get(0)))->get_Chart();
    
    // Show markers in the line series named 'Series 3'.
    
    {
        auto series_enumerator = (chart->get_Series())->GetEnumerator();
        while (series_enumerator->MoveNext())
        {
            auto&& series = series_enumerator->get_Current();
            
            if (series->get_Name() == u"Series 3")
            {
                series->get_Marker()->set_Symbol(Aspose::Words::Drawing::Charts::MarkerSymbol::Circle);
                series->get_Marker()->set_Size(18);
                break;
            }
        }
    }
    
    // Hide the major grid lines on the primary and secondary Y axes.
    
    {
        auto axis_enumerator = (chart->get_Axes())->GetEnumerator();
        while (axis_enumerator->MoveNext())
        {
            auto&& axis = axis_enumerator->get_Current();
            
            if (axis->get_Type() == Aspose::Words::Drawing::Charts::ChartAxisType::Value)
            {
                axis->set_HasMajorGridlines(false);
            }
        }
    }
    
    doc->Save(u"output.docx");
{{< /highlight >}}

### New public properties for working with the shape relative positioning and sizing have been added

New public properties **RelativeHorizontalSize** and **RelativeVerticalSize** for specifying the relative size binding of the shape have been added to the **Shape** class:

{{< highlight cpp >}}
    /// Gets or sets the value of shape's relative size in horizontal direction.
    ///
    /// The default value is <see cref="Aspose::Words::Drawing::RelativeHorizontalSize">RelativeHorizontalSize</see>.
    ///
    /// Has effect only if <see cref="Aspose::Words::Drawing::ShapeBase::get_WidthRelative">WidthRelative</see> is set.
    ASPOSE_WORDS_SHARED_API Aspose::Words::Drawing::RelativeHorizontalSize get_RelativeHorizontalSize();
    
    /// Setter for Aspose::Words::Drawing::ShapeBase::get_RelativeHorizontalSize
    ASPOSE_WORDS_SHARED_API void set_RelativeHorizontalSize(Aspose::Words::Drawing::RelativeHorizontalSize value);
    
    /// Gets or sets the value of shape's relative size in vertical direction.
    ///
    /// The default value is <see cref="Aspose::Words::Drawing::RelativeVerticalSize::Margin">Margin</see>.
    ///
    /// Has effect only if <see cref="Aspose::Words::Drawing::ShapeBase::get_HeightRelative">HeightRelative</see> is set.
    ASPOSE_WORDS_SHARED_API Aspose::Words::Drawing::RelativeVerticalSize get_RelativeVerticalSize();
    
    /// Setter for Aspose::Words::Drawing::ShapeBase::get_RelativeVerticalSize
    ASPOSE_WORDS_SHARED_API void set_RelativeVerticalSize(Aspose::Words::Drawing::RelativeVerticalSize value);
{{< /highlight >}}

New public properties **HeightRelative** and **WidthRelative** for specifying the shape relative size in percent have been added to the **Shape** class:

{{< highlight cpp >}}
    /// Gets the value that represents the percentage of shape's relative height.
    ASPOSE_WORDS_SHARED_API float get_HeightRelative();
    
    /// Sets the value that represents the percentage of shape's relative height.
    ASPOSE_WORDS_SHARED_API void set_HeightRelative(float value);
    
    /// Gets the value that represents the percentage of shape's relative width.
    ASPOSE_WORDS_SHARED_API float get_WidthRelative();
    
    /// Sets the value that represents the percentage of shape's relative width.
    ASPOSE_WORDS_SHARED_API void set_WidthRelative(float value);

{{< /highlight >}}

New public properties **LeftRelative** and **TopRelative** for specifying the shape relative position in percent have been added to the **Shape** class:

{{< highlight cpp >}}
    /// Gets the value that represents shape's relative left position in percent.
    ASPOSE_WORDS_SHARED_API float get_LeftRelative();
    
    /// Sets the value that represents shape's relative left position in percent.
    ASPOSE_WORDS_SHARED_API void set_LeftRelative(float value);
    
    /// Gets the value that represents shape's relative top position in percent.
    ASPOSE_WORDS_SHARED_API float get_TopRelative();
    
    /// Sets the value that represents shape's relative top position in percent.
    ASPOSE_WORDS_SHARED_API void set_TopRelative(float value);

{{< /highlight >}}

New public enums **RelativeHorizontalSize** and **RelativeVerticalSize** have been introduced:

{{< highlight cpp >}}
    /// Specifies relatively to what the width of a shape or a text frame is calculated horizontally.
    ///
    /// @sa Aspose::Words::Drawing::ShapeBase::get_RelativeHorizontalSize
    enum class ASPOSE_WORDS_SHARED_CLASS RelativeHorizontalSize
    
    /// Specifies relatively to what the height of a shape or a text frame is calculated vertically.
    ///
    /// @sa Aspose::Words::Drawing::ShapeBase::get_RelativeVerticalSize
    enum class ASPOSE_WORDS_SHARED_CLASS RelativeVerticalSize
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get and set the shape relative positioning and sizing. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight cpp >}}
    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>();
    System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>(doc);
    
    // Adding a simple shape with absolute size and position.
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = builder->InsertShape(Aspose::Words::Drawing::ShapeType::Rectangle, 100, 40);
    // Set WrapType to WrapType.None since Inline shapes are automatically converted to absolute units.
    shape->set_WrapType(Aspose::Words::Drawing::WrapType::None);
    
    // Checking and setting the relative horizontal size.
    if (shape->get_RelativeHorizontalSize() == Aspose::Words::Drawing::RelativeHorizontalSize::Default)
    {
        // Setting the horizontal size binding to Margin.
        shape->set_RelativeHorizontalSize(Aspose::Words::Drawing::RelativeHorizontalSize::Margin);
        // Setting the width to 50% of Margin width.
        shape->set_WidthRelative(50.0f);
    }
    
    // Checking and setting the relative vertical size.
    if (shape->get_RelativeVerticalSize() == Aspose::Words::Drawing::RelativeVerticalSize::Default)
    {
        // Setting the vertical size binding to Margin.
        shape->set_RelativeVerticalSize(Aspose::Words::Drawing::RelativeVerticalSize::Margin);
        // Setting the height to 30% of Margin height.
        shape->set_HeightRelative(30.0f);
    }
    
    // Checking and setting the relative vertical position.
    if (shape->get_RelativeVerticalPosition() == Aspose::Words::Drawing::RelativeVerticalPosition::Paragraph)
    {
        // Setting the position binding to TopMargin.
        shape->set_RelativeVerticalPosition(Aspose::Words::Drawing::RelativeVerticalPosition::TopMargin);
        // Setting relative Top to 30% of TopMargin position.
        shape->set_TopRelative(30.0f);
    }
    
    // Checking and setting the relative horizontal position.
    if (shape->get_RelativeHorizontalPosition() == Aspose::Words::Drawing::RelativeHorizontalPosition::Default)
    {
        // Setting the position binding to RightMargin.
        shape->set_RelativeHorizontalPosition(Aspose::Words::Drawing::RelativeHorizontalPosition::RightMargin);
        // The position relative value can be negative.
        shape->set_LeftRelative(-260.0f);
    }
    
    doc->Save(u"output.docx");
{{< /highlight >}}

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
