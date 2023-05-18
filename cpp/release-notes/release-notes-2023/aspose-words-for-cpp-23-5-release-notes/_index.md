---
title: Aspose.Words for C++ 23.5 Release Notes
description: "Aspose.Words for C++ 23.5 Release Notes – the latest updates and fixes."
type: docs
weight: 50
url: /cpp/aspose-words-for-cpp-23-5-release-notes/
---
{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for C++ 23.5](https://www.nuget.org/packages/Aspose.Words.Cpp/23.5.0).

{{% /alert %}}

## Major Features

There are 174 improvements and fixes in this regular monthly release. The most notable are:

- Provided the feature to get and modify chart series data.
- Implemented support for text wrapping in headers/footers.
- Fixed rendering of MathML formula with embedded images.
- Added an ability to remove digital signatures from ODT documents.
- Added public properties to obtain base and ruby text of phonetic guide Run.

## Full list of changes

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Add support for GlossaryDocuments and BuildingBlocks in Node.ToString() function
2. The layout issue due to a paragraph with FrameFormat in the footer
3. The text is pushed up to previous page in output PDF
4. Paragraphs are rendered on previous page in output PDF
5. Header content is overlapped by the main document content
6. Text layout issue in rendered PDF
7. Add feature to get the categories of chart
8. Position of header content is changed after DOCX to PDF conversion
9. Add feature to modify/remove chart's series data
10. Incorrect text wrapping in the header
11. Table with text wrapping does not render correct in output PDF
12. Content are rendered on previous page in output PDF
13. When convert word to PDF/A, paragraph compressed to same page
14. DOCX to PDF: Content stays on first page instead being moved to next
15. Oval Shape TextBox Overlaps with Content in Header Area in PDF
16. Text and Shape position is changed in the footer of output PDF
17. Text and Page field is lost in the footer of output PDF
18. DOCX to PDF conversion issue with image/content position
19. Shapes' position is changed after conversion from DOCX to PDF
20. Content pushed upwards in all pages of PDF
21. Image position is changed in the header of output PDF
22. DOCX->PDF conversion: Text and image have their positions changed
23. Content overlaps with header in rendered document
24. Text and Shapes are overlapped and their position is incorrect in output PDF
25. DOCX to PDF: Space in header is lost
26. Images are overlapped after DOCX to PDF Conversion
27. Header text is overlapped over each other in output PDF
28. Table shifted to the top and overlapped the header in the PDF
29. Converting docx w/header image with top/bottom text wrapping to pdf
30. Text position in the Header of document is incorrect in output PDF
31. Chart Series' colors were changed after removing and adding new series
32. When transforming Word to pdf the headline is closer to the header than in Word source file
33. DOCX to PDF, issue with table text wrapping option
34. Image is overlapping text in the header
35. Content pushed towards top page edge in PDF
36. Content is shifted upon rendering document
37. Footer text position is changed after DOCX to PDF Conversion
38. Header alignment issue on conversion to PDF
39. DOCX to PDF conversion causes layout issues in output file
40. Text is pushed up to previous page after DOCX to PDF conversion
41. DOCX to PDF conversion issue with position of footer content and table
42. Header content is overlapped
43. Document.UpdateFields does not update the page number of TOC correctly
44. A Cell's content pushed to previous Page in HtmlFixed
45. Part of content is moved to the previous page upon rendering
46. Support Azure Rights Management RMS Encryption. Office365 Digital Rights Management
47. Image in header overlaps text
48. OLE object in OfficeMath are lost in output DOCX
49. Header is moved up when converting DOCX to PDF
50. Layout APIs return incorrect position of Bookmark
51. Add feature to format Data Series (line formatting for Scatter chart)
52. Content of first page is rendered a little upper then in the original document
53. Content in header is overlapped
54. Footer content is moved outside the page upon rendering
55. Header content is overlapped after rendering
56. Content is rendered upper than in the original document
57. Content is moved to previous page upon rendering
58. Text position is changed after DOCX to PDF conversion
59. The radical sign according to the argument height
60. DOCX to PDF: Image is overlapping the content
61. Programmatically get both base text and annotation of Run nodes that contain ruby text
62. DOCX to PDF: Images and shape overflows the header part
63. DOCX to PDF: Image misaligned and overflows the text
64. Footer is rendered improperly
65. Content in header is overlapped
66. Content is pushed to the next page upon rendering
67. Floating image overlaps content in the document's header
68. Rendering of the radical argument if the argument height is large
69. NodeRendererBase.SizeInPoints returns incorrect size
70. Import the simplest HTML document with MSO properties support
71. Aspose.Words should not render all the content of first footer in PDF
72. All tables shifted upwards causing overlapping with logo in header in PDF
73. Image position is changed after conversion from DOCX to DOC/PDF
74. DOCX to PDF - header table overlaps page content
75. Provide API for 'Fill & Line' options to 'Format Data Point' of Chart
76. Add feature to show/hide grid lines of chart
77. Add feature to update chart's data
78. Floating image overlaps content in the document's header
79. Part of content is moved to the previouse page after rendering
80. Update chart series
81. Space (empty paragraphs) in Header are losing after converting to PDF
82. Incorrect position of images and characters when converting DOCX to PDF/PNG
83. Text position is changed after conversion from DOCX to PDF
84. Footer is not appearing correctly when converting DOCX document to PDF
85. One extra line is added to first page when saving to PDF
86. Header contents overlap with the body content in output PDF
87. Ability to determine chart series type
88. DOCX to PDF: Footer pushed down
89. Part of content is moved to next page and is wrapped improperly
90. Image in the header is overlapped by content
91. Content overlaps header
92. Conversion Dotx to Pdf make body overlap header
93. Footer is rendered improperly
94. Header contents are truncated after saving DOCX to DOC/PDF
95. Text position is changed after conversion from DOCX to PDF
96. Rendering issue of Paragraph breaks in header
97. Footer is rendered improperly
98. Document content overlaps header
99. Header/footer height does not match MS Word 2013
100. Content is moved on the previous page
101. Add feature to modify Word Charts
102. Header layout changes when converting to PDF
103. Border and background of SVG image is lost after rendering
104. Corrupted document is loaded when is converted to Stream
105. Shape in header is missed upon rendering document
106. Page numbers are wrong after convert to PDF
107. Add feature to access multilevel series X values
108. German Umlaut characters are improperly read from RTF document
109. NullReferenceException is thrown upon rendering document to Tiff with ColorMode.Grayscale
110. SDT value is changed after rendering document
111. Document compare incorrect result
112. The radical sign is not rendering correctly
113. Incorrect rendering of math formula, if math elements contains embedded image
114. ArgumentException is thrown upon rendering document
115. Numbering is broken after importing section
116. Document compare "Index was out of range." exception
117. Issue with Document.ExtractPages(..)
118. DocumentBuilder.InsertParagraph works incorrectly when cursor is inside inline-level SDT
119. The method ApsCanvas.DeepCopy(bool) doesn't work properly
120. ApsGlyphs.RenderTransform is not correctly applied in SVG rendering
121. NullReferenceException in PdfOperatorGS
122. InvalidCastException in PdfTilingPatternFactory.BuildShadingPattern()
123. Document compare: "Cannot insert node of this type at this location" exception
124. Footer floater not wrapped after header truncation
125. FileCorruptedException is thrown upon loading DOCX document
126. Text position after text frame is incorrect after rendering
127. Put  comment content into a separate line when export to TXT
128. SDT content in footer is changed after rendering document
129. Periods in image name written into MD are escaped
130. DML ArcTo rendering ~/~/ Error rendering shape when convert to HTML
131. SVG image is rendered improperly
132. Include Microsoft YaHei in the CJK linking list
133. InvalidCastException in PdfPageTree.WalkTree()
134. Accents are lost when VBA source code is written to document
135. Document is truncated after accept revisions individually
136. Paragraphs from second page are moved to the first page in PDF
137. NullReferenceException while saving specific DOCX to Markdown
138. Shapes in groupshape are overlapped and partially hidden
139. DOCX to PDF: Superscript is converted from alphabetical to numerical value
140. Incorrect font size
141. ListState.UpdateListState() is not invoked for lists located at the end of the document
142. DOCX to PDF: "Path" tag is added to PDF/UA document
143. IF field is updated improperly after copying to another document
144. Method RequestDictionary is receiving empty string
145. Field value is not read when field is defined as fldSimple
146. Comparison failed
147. Wrong value of ChartDataPoint.InvertIfNegative property
148. Setting color of a gradient stop of data point changes color of entire series
149. Shape position in the header is incorrect after rendering
150. Digitally signed .ODT document raises exception during digital signatures deletion
151. Incorrect floating table position
152. File size increase after mapping
153. Text is covered by black rectangle after rendering SVG
154. Embedded font is not exported when converting to HTML
155. Add an option to ignore shapes in FindReplaceOptions
156. CrossReference hyperlinks stripped but available on surrounding text
157. InvalidCastException is thrown upon calling UpdatePageLayout
158. Open/save breaks hyperlink with nested hyperlink field
159. List item numbering is changed after using ExtractPages
160. StackOverflowException is thrown upon updating fields in the document.
161. Make is possible to use ProgressCallback while saving to DOC format
162. Aspose.Words ignores STYLE elements in HTML documents if their "type" attribute values are empty
163. ArgumentException is thrown when accessing properties of SystemDrawing.Image
164. Allow accessing OLE Control Name and GroupName
165. PDF document does not pass PdfUa validation
166. System.IndexOutOfRangeException raised in UpdateFields method
167. NullReferenceException is thrown upon rendering document
168. Different style in corrections when converting a document to HTML
169. ParagraphFormat objects builder.getParagraphFormat() are references to the same object
170. Image size is differs by one pixel from the original in HTML
171. Analyze what it takes to work Aspose.Words at Azure Paas App Service Web App
172. Table don't autofit to document size saving to PDF
173. Header on the second page is rendered improperly
174. TxtSaveOptions.PreserveTableLayout  does not generate the correct output

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 23.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to remove digital signatures from ODT

Implemented removing digital signatures from ODT using **Aspose.Words.DigitalSignatures.DigitalSignatureUtil.RemoveAllSignatures** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove digital signatures from ODT. Please see the following code example to learn how to use such a method:

{{% /alert %}}

{{< highlight cpp >}}
DigitalSignatureUtil::RemoveAllSignatures(u"in.odt", u"out.odt");
{{< /highlight >}}

### Added new public property FindReplaceOptions.IgnoreShapes

The following public property was added to **Aspose.Words.Replacing.FindReplaceOptions** class:

{{< highlight cpp >}}

    /// Gets a boolean value indicating either to ignore shapes within a text.
    /// The default value is <c>%false</c>.
    ASPOSE_WORDS_SHARED_API bool get_IgnoreShapes() const;

    /// Sets a boolean value indicating either to ignore shapes within a text.
    /// The default value is <c>%false</c>.
    ASPOSE_WORDS_SHARED_API void set_IgnoreShapes(bool value);

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to ignore shapes within a text in FindReplace. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::DocumentBuilder> builder = System::MakeObject<Aspose::Words::DocumentBuilder>();
    builder->Write(u"123");
    builder->InsertShape(Aspose::Words::Drawing::ShapeType::Balloon, 200, 200);
    builder->Write(u"456");
    
    builder->get_Document()->get_Range()->Replace(u"123456", u"789", [&]{ auto tmp_0 = System::MakeObject<Aspose::Words::Replacing::FindReplaceOptions>(); tmp_0->set_IgnoreShapes(true); return tmp_0; }());
    System::Console::Write(builder->get_Document()->GetText());

    // This code produces the following output:
    // 789
    // \u000c

{{< /highlight >}}

### Added new public property Forms2OleControl.GroupName

The following public property was added to **Aspose.Words.Drawing.Ole.Forms2OleControl** class:

{{< highlight cpp >}}

    /// Gets a string that specifies a group of mutually exclusive controls.
    /// The default value is an empty string.
    ASPOSE_WORDS_SHARED_API System::String get_GroupName();

    /// Sets a string that specifies a group of mutually exclusive controls.
    /// The default value is an empty string.
    ASPOSE_WORDS_SHARED_API void set_GroupName(const System::String& value);

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get and change group name of Forms2Ole control. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight cpp >}}

    // Assume there is a shape with Forms2OleControl in document.
    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"input.docx");
    
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = System::ExplicitCast<Aspose::Words::Drawing::Shape>(doc->GetChild(Aspose::Words::NodeType::Shape, 0, true));
    System::SharedPtr<Aspose::Words::Drawing::Ole::Forms2OleControl> control = System::ExplicitCast<Aspose::Words::Drawing::Ole::Forms2OleControl>(shape->get_OleFormat()->get_OleControl());
    
    if (control != nullptr)
    {
        System::Console::WriteLine(u"Control group name is: {0}", control->get_GroupName());
        control->set_GroupName(u"newGroup");
    }

{{< /highlight >}}

### Added new public property PdfSaveOptions.ExportParagraphGraphicsToArtifact

The following public property was added to **Aspose.Words.Saving.PdfSaveOptions** class:

{{< highlight cpp >}}

    /// Gets or sets a value determining whether a paragraph graphic should be marked as an artifact.
    /// 
    /// Default value is <c>%false</c> and paragraph graphics (underlines, text emphasis, etc.)
    /// will be marked as "Span" in the logical structure of the document.
    /// 
    /// When the value is <c>%true</c> the paragraph graphics will be marked as "Artifact".
    /// 
    /// This value is ignored when <see cref="Aspose::Words::Saving::PdfSaveOptions::get_ExportDocumentStructure">ExportDocumentStructure</see> is <c>%false</c>.
    ASPOSE_WORDS_SHARED_API bool get_ExportParagraphGraphicsToArtifact() const;

    /// Setter for Aspose::Words::Saving::PdfSaveOptions::get_ExportParagraphGraphicsToArtifact
    ASPOSE_WORDS_SHARED_API void set_ExportParagraphGraphicsToArtifact(bool value);

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

The following property allows to export paragraph graphics as artifact (underlines, text emphasis, etc.). Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(fileName);
    System::SharedPtr<Aspose::Words::Saving::PdfSaveOptions> saveOptions = System::MakeObject<Aspose::Words::Saving::PdfSaveOptions>();
    saveOptions->set_ExportParagraphGraphicsToArtifact(true);
    doc->Save(outputFileName, saveOptions);

{{< /highlight >}}

### Added public properties to obtain base and ruby text of phonetic guide Run

The following public property was added to **Aspose.Words.Run** class:

{{< highlight cpp >}}

    /// Gets a <see cref="Aspose::Words::Run::get_PhoneticGuide">PhoneticGuide</see> object.
    ASPOSE_WORDS_SHARED_API System::SharedPtr<Aspose::Words::PhoneticGuide> get_PhoneticGuide();

{{< /highlight >}}

Added the following public class into **Aspose.Words** namespace:

{{< highlight cpp >}}

    /// Represents Phonetic Guide.
    class ASPOSE_WORDS_SHARED_CLASS PhoneticGuide : public System::Object
    {
        /// Gets base text of the phonetic guide.
        ASPOSE_WORDS_SHARED_API System::String get_BaseText();
    
        /// Gets ruby text of the phonetic guide.
        ASPOSE_WORDS_SHARED_API System::String get_RubyText();
    };

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to obtain base and ruby text from phonetic guide Run. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"DocWithRuby.docx");
    
    System::SharedPtr<Aspose::Words::Run> run = doc->get_FirstSection()->get_Body()->get_FirstParagraph()->get_Runs()->idx_get(0);
    if (run != nullptr)
    {
        System::Console::WriteLine(run->get_PhoneticGuide()->get_BaseText());
        System::Console::WriteLine(run->get_PhoneticGuide()->get_RubyText());
    }

{{< /highlight >}}

### Added public property ChartSeries.SeriesType of new ChartSeriesType enum type

The SeriesType property has been added to the **ChartSeries** class:

{{< highlight cpp >}}

    /// Gets the type of this chart series.
    ASPOSE_WORDS_SHARED_API Aspose::Words::Drawing::Charts::ChartSeriesType get_SeriesType();

{{< /highlight >}}

The definition of the added **ChartSeriesType** enum type:

{{< highlight cpp >}}

    /// Specifies a type of a chart series.
    enum class ASPOSE_WORDS_SHARED_CLASS ChartSeriesType
    {
    
        /// Represents an Area chart series.
        Area,
    
        /// Represents a Stacked Area chart series.
        AreaStacked,
    
        /// Represents a 100\% Stacked Area chart series.
        AreaPercentStacked,
    
        /// Represents a 3D Area chart series.
        Area3D,
    
        /// Represents a 3D Stacked Area chart series.
        Area3DStacked,
    
        /// Represents a 3D 100\% Stacked Area chart series.
        Area3DPercentStacked,
    
        /// Represents a Bar chart series.
        Bar,
    
        /// Represents a Stacked Bar chart series.
        BarStacked,
    
        /// Represents a 100\% Stacked Bar chart series.
        BarPercentStacked,
    
        /// Represents a 3D Bar chart series.
        Bar3D,
    
        /// Represents a 3D Stacked Bar chart series.
        Bar3DStacked,
    
        /// Represents a 3D 100\% Stacked Bar chart series.
        Bar3DPercentStacked,
    
        /// Represents a Bubble chart series.
        Bubble,
    
        /// Represents a 3D Bubble chart series.
        Bubble3D,
    
        /// Represents a Column chart series.
        Column,
    
        /// Represents a Stacked Column chart series.
        ColumnStacked,
    
        /// Represents a 100\% Stacked Column chart series.
        ColumnPercentStacked,
    
        /// Represents a 3D Column chart series.
        Column3D,
    
        /// Represents a 3D Stacked Column chart series.
        Column3DStacked,
    
        /// Represents a 3D 100\% Stacked Column chart series.
        Column3DPercentStacked,
    
        /// Represents a 3D Clustered Column chart series.
        Column3DClustered,
    
        /// Represents a Doughnut chart series.
        Doughnut,
    
        /// Represents a Line chart series.
        Line,
    
        /// Represents a Stacked Line chart series.
        LineStacked,
    
        /// Represents a 100\% Stacked Line chart series.
        LinePercentStacked,
    
        /// Represents a 3D Line chart series.
        Line3D,
    
        /// Represents a Pie chart series.
        Pie,
    
        /// Represents a 3D Pie chart series.
        Pie3D,
    
        /// Represents a Pie of Bar chart series.
        PieOfBar,
    
        /// Represents a Pie of Pie chart series.
        PieOfPie,
    
        /// Represents a Radar chart series.
        Radar,
    
        /// Represents a Scatter chart series.
        Scatter,
    
        /// Represents a Stock chart series.
        Stock,
    
        /// Represents a Surface chart series.
        Surface,
    
        /// Represents a 3D Surface chart series.
        Surface3D,
    
        /// Represents a Treemap chart series.
        Treemap,
    
        /// Represents a Sunburst chart series.
        Sunburst,
    
        /// Represents a Histogram chart series.
        Histogram,
    
        /// Represents a Pareto chart series.
        Pareto,
    
        /// Represents a Pareto Line chart series.
        ParetoLine,
    
        /// Represents a Box and Whisker chart series.
        BoxAndWhisker,
    
        /// Represents a Waterfall chart series.
        Waterfall,
    
        /// Represents a Funnel chart series.
        Funnel,
    
        /// Represents a Region Map chart series.
        RegionMap
    };

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove/add series of a specific type of a Combo chart. Please see the following code example:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"ComboChart.docx");
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = System::ExplicitCast<Aspose::Words::Drawing::Shape>(doc->GetChild(Aspose::Words::NodeType::Shape, 0, true));
    System::SharedPtr<Aspose::Words::Drawing::Charts::Chart> chart = shape->get_Chart();
    
    // Remove all series of the Column type.
    for (int32_t i = chart->get_Series()->get_Count() - 1; i >= 0; i--)
    {
        if (chart->get_Series()->idx_get(i)->get_SeriesType() == Aspose::Words::Drawing::Charts::ChartSeriesType::Column)
        {
            chart->get_Series()->RemoveAt(i);
        }
    }
    
    // Add a new series.
    chart->get_Series()->Add(u"New Series", System::MakeArray<System::String>({u"Category 1", u"Category 2", u"Category 3", u"Category 4"}), System::MakeArray<double>({5.6, 7.1, 2.9, 8.9}));
    
    doc->Save(u"out.docx");

{{< /highlight >}}

### Implemented ability to get and modify chart series data

The following changes have been implemented:

Added new classes: **ChartXValue**, **ChartYValue**, **ChartXValueCollection**, **ChartYValueCollection**, **BubbleSizeCollection**, **ChartMultilevelValue**, and new enum types: **ChartXValueType**, **ChartYValueType**.

Added new properties and methods to the **ChartSeries** class.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to populate existing chart series with data. Please see the following code example:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"ScatterChart.docx");
    
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = System::ExplicitCast<Aspose::Words::Drawing::Shape>(doc->GetChild(Aspose::Words::NodeType::Shape, 0, true));
    System::SharedPtr<Aspose::Words::Drawing::Charts::Chart> chart = shape->get_Chart();
    System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> series1 = chart->get_Series()->idx_get(0);
    
    // Clear X and Y values of the first series.
    series1->ClearValues();
    
    // Populate the series with data.
    series1->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(3), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(10));
    series1->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(5), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(5));
    series1->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(7), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(11));
    series1->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(9), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(17));
    
    System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> series2 = chart->get_Series()->idx_get(1);
    
    // Clear X and Y values of the second series.
    series2->ClearValues();
    
    // Populate the series with data.
    series2->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(2), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(4));
    series2->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(4), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(7));
    series2->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(6), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(14));
    series2->Add(Aspose::Words::Drawing::Charts::ChartXValue::FromDouble(8), Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(7));
    
    doc->Save(u"out.docx");

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get data of chart series. Please see the following code example:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"Chart.docx");
    
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = System::ExplicitCast<Aspose::Words::Drawing::Shape>(doc->GetChild(Aspose::Words::NodeType::Shape, 0, true));
    System::SharedPtr<Aspose::Words::Drawing::Charts::Chart> chart = shape->get_Chart();
    System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> series = chart->get_Series()->idx_get(0);
    
    double minValue = std::numeric_limits<double>::max();
    int32_t minValueIndex = 0;
    double maxValue = std::numeric_limits<double>::lowest();
    int32_t maxValueIndex = 0;
    
    for (int32_t i = 0; i < series->get_YValues()->get_Count(); i++)
    {
        // Clear individual format of all data points. Data points and data values are one-to-one in column charts.
        series->get_DataPoints()->idx_get(i)->ClearFormat();
        
        // Get Y value.
        double yValue = series->get_YValues()->idx_get(i)->get_DoubleValue();
        
        if (yValue < minValue)
        {
            minValue = yValue;
            minValueIndex = i;
        }
        
        if (yValue > maxValue)
        {
            maxValue = yValue;
            maxValueIndex = i;
        }
    }
    
    // Change colors of the max and min values.
    series->get_DataPoints()->idx_get(minValueIndex)->get_Format()->get_Fill()->set_ForeColor(System::Drawing::Color::get_Red());
    series->get_DataPoints()->idx_get(maxValueIndex)->get_Format()->get_Fill()->set_ForeColor(System::Drawing::Color::get_Green());
    
    doc->Save(u"out.docx");

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to add and remove chart data values. Please see the following code example:

{{% /alert %}}

{{< highlight cpp >}}

    System::SharedPtr<Aspose::Words::Document> doc = System::MakeObject<Aspose::Words::Document>(u"SalesChart.docx");
    
    System::SharedPtr<Aspose::Words::Drawing::Shape> shape = System::ExplicitCast<Aspose::Words::Drawing::Shape>(doc->GetChild(Aspose::Words::NodeType::Shape, 0, true));
    System::SharedPtr<Aspose::Words::Drawing::Charts::Chart> chart = shape->get_Chart();
    System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> department1Series = chart->get_Series()->idx_get(0);
    System::SharedPtr<Aspose::Words::Drawing::Charts::ChartSeries> department2Series = chart->get_Series()->idx_get(1);
    
    // Remove the first value in the both series.
    department1Series->Remove(0);
    department2Series->Remove(0);
    
    // Add new values to the both series.
    System::SharedPtr<Aspose::Words::Drawing::Charts::ChartXValue> newXCategory = Aspose::Words::Drawing::Charts::ChartXValue::FromString(u"Q1, 2023");
    department1Series->Add(newXCategory, Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(10.3));
    department2Series->Add(newXCategory, Aspose::Words::Drawing::Charts::ChartYValue::FromDouble(5.7));
    
    doc->Save(u"out.docx");

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
