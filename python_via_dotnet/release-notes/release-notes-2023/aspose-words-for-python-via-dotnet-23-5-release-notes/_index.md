---
title: 23.5 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.5 Release Notes
linktitle: Aspose.Words for Python via .NET 23.5 Release Notes
description: "Aspose.Words for Python via .NET 23.5 Release Notes – the latest updates and fixes."
type: docs
weight: 80
url: /python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.5](https://pypi.org/project/aspose-words/23.5.0/).

{{% /alert %}}

## Major Features

There are 174 improvements and fixes in this regular monthly release. The most notable are:

- Provided the feature to get and modify chart series data.
- Implemented support for text wrapping in headers/footers.
- Fixed rendering of MathML formula with embedded images.
- Added an ability to remove digital signatures from ODT documents.
- Added public properties to obtain base and ruby text of phonetic guide Run.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

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
29. Bug converting docx w/header image with top/bottom text wrapping to pdf
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

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.5. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words for Python via .NET which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to remove digital signatures from ODT

Implemented removing digital signatures from ODT using **aspose.words.digitalsignatures.DigitalSignatureUtil.remove_all_signatures** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove digital signatures from ODT. Please see the following code example to learn how to use such a method:

{{% /alert %}}

{{< highlight python >}}
DigitalSignatureUtil.remove_all_signatures("in.odt", "out.odt");
{{< /highlight >}}

### Added new public property FindReplaceOptions.IgnoreShapes

The following public property was added to **aspose.words.replacing.FindReplaceOptions** class:

{{< highlight python >}}
@property
def ignore_shapes(self) -> bool:
    '''Gets or sets a boolean value indicating either to ignore shapes within a text.
    
    The default value is ``False``.'''
    ...

@ignore_shapes.setter
def ignore_shapes(self, value: bool):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to ignore shapes within a text in FindReplace. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.drawing import ShapeType
from aspose.words.replacing import FindReplaceOptions

builder = DocumentBuilder()
builder.write("123")
builder.insert_shape(ShapeType.BALLOON, 200, 200)
builder.write("456")

options = FindReplaceOptions()
options.ignore_shapes = True

builder.document.range.replace("123456", "789", options=options)
print(builder.document.get_text().encode('utf-8', 'ignore'))

# This code produces the following output:
# b'789\r\x0c'
{{< /highlight >}}

### Added new public property Forms2OleControl.group_name

The following public property was added to **aspose.words.drawing.ole.Forms2OleControl** class:

{{< highlight python >}}
@property
def group_name(self) -> str:
    '''Gets or sets a string that specifies a group of mutually exclusive controls.
    The default value is an empty string.'''
    ...

@group_name.setter
def group_name(self, value: str):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get and change group name of Forms2Ole control. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
# Assume there is a shape with Forms2OleControl in document.
from aspose.words import Document, NodeType

doc = Document("input.docx")
shape = doc.get_child_nodes(NodeType.SHAPE, True)[0].as_shape()

control = shape.ole_format.ole_control.as_forms2_ole_control()

if control is not None:
    print(f"Control group name is: {control.group_name}")
    control.group_name = "newGroup"
{{< /highlight >}}

### Added new public property PdfSaveOptions.export_paragraph_graphics_to_artifact

The following public property was added to **aspose.words.saving.PdfSaveOptions** class:

{{< highlight python >}}
@property
def export_paragraph_graphics_to_artifact(self) -> bool:
    '''Gets or sets a value determining whether a paragraph graphic should be marked as an artifact.
    
    Default value is ``False`` and paragraph graphics (underlines, text emphasis, etc.)
    will be marked as "Span" in the logical structure of the document.
    
    When the value is ``True`` the paragraph graphics will be marked as "Artifact".
    
    This value is ignored when :attr:`PdfSaveOptions.export_document_structure` is ``False``.'''
    ...

@export_paragraph_graphics_to_artifact.setter
def export_paragraph_graphics_to_artifact(self, value: bool):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

The following property allows to export paragraph graphics as artifact (underlines, text emphasis, etc.). Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
doc = Document(file_name)

save_options = PdfSaveOptions()
save_options.export_paragraph_graphics_to_artifact = True
doc.save(output_file_name, save_options)
{{< /highlight >}}

### Added public properties to obtain base and ruby text of phonetic guide Run

The following public property was added to **aspose.words.Run** class:

{{< highlight python >}}
@property
def phonetic_guide(self) -> aspose.words.PhoneticGuide:
    '''Gets a :attr:`Run.phonetic_guide` object.'''
    ...
{{< /highlight >}}

Added the following public class into **aspose.words** namespace:

{{< highlight python >}}
class PhoneticGuide:
    '''Represents Phonetic Guide.'''
    
    @property
    def base_text(self) -> str:
        '''Gets base text of the phonetic guide.'''
        ...
    
    @property
    def ruby_text(self) -> str:
        '''Gets ruby text of the phonetic guide.'''
        ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to obtain base and ruby text from phonetic guide Run. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType

doc = Document("DocWithRuby.docx")
run = doc.first_section.body.first_paragraph.get_child(NodeType.RUN, 0, False).as_run();

if run is not None:
    print(run.phonetic_guide.base_text)
    print(run.phonetic_guide.ruby_text)
{{< /highlight >}}

### Added public property ChartSeries.series_type of new ChartSeriesType enum type

The series_type property has been added to the **ChartSeries** class:

{{< highlight python >}}
@property
    def series_type(self) -> aspose.words.drawing.charts.ChartSeriesType:
        '''Gets the type of this chart series.'''
{{< /highlight >}}

The definition of the added **ChartSeriesType** enum type:

{{< highlight python >}}
class ChartSeriesType:
    '''Specifies a type of a chart series.'''
    
    AREA: int
    AREA_STACKED: int
    AREA_PERCENT_STACKED: int
    AREA_3D: int
    AREA_3D_STACKED: int
    AREA_3D_PERCENT_STACKED: int
    BAR: int
    BAR_STACKED: int
    BAR_PERCENT_STACKED: int
    BAR_3D: int
    BAR_3D_STACKED: int
    BAR_3D_PERCENT_STACKED: int
    BUBBLE: int
    BUBBLE_3D: int
    COLUMN: int
    COLUMN_STACKED: int
    COLUMN_PERCENT_STACKED: int
    COLUMN_3D: int
    COLUMN_3D_STACKED: int
    COLUMN_3D_PERCENT_STACKED: int
    COLUMN_3D_CLUSTERED: int
    DOUGHNUT: int
    LINE: int
    LINE_STACKED: int
    LINE_PERCENT_STACKED: int
    LINE_3D: int
    PIE: int
    PIE_3D: int
    PIE_OF_BAR: int
    PIE_OF_PIE: int
    RADAR: int
    SCATTER: int
    STOCK: int
    SURFACE: int
    SURFACE_3D: int
    TREEMAP: int
    SUNBURST: int
    HISTOGRAM: int
    PARETO: int
    PARETO_LINE: int
    BOX_AND_WHISKER: int
    WATERFALL: int
    FUNNEL: int
    REGION_MAP: int
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove/add series of a specific type of a Combo chart. Please see the following code example:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType
from aspose.words.drawing.charts import ChartSeriesType

doc = Document("ComboChart.docx")

shape = doc.get_child_nodes(NodeType.SHAPE, True)[0].as_shape()
chart = shape.chart

# Remove all series of the Column type.
for i in range(chart.series.count,0, -1):
    if chart.series[i].series_type == ChartSeriesType.COLUMN:
        chart.series.remove_at(i)

# Add a new series.
chart.series.add("New Series",["Category 1", "Category 2", "Category 3", "Category 4"], [5.6, 7.1, 2.9, 8.9])
doc.save("out.docx")
{{< /highlight >}}

### Implemented ability to get and modify chart series data

The following changes have been implemented:

Added new classes: **ChartXValue**, **ChartYValue**, **ChartXValueCollection**, **ChartYValueCollection**, **BubbleSizeCollection**, **ChartMultilevelValue**, and new enum types: **ChartXValueType**, **ChartYValueType**.

Added new properties and methods to the **ChartSeries** class.

{{< highlight python >}}

class ChartSeries:
    '''Represents chart series properties.
    To learn more, visit the `Working with Charts <https://docs.aspose.com/words/net/working-with-charts/>` documentation article.'''
    
    @overload
    def add(self, x_value: aspose.words.drawing.charts.ChartXValue) -> None:
        '''Adds the specified X value to the chart series. If the series supports Y values and bubble sizes, they will
        be empty for the X value.'''
        ...
    
    @overload
    def add(self, x_value: aspose.words.drawing.charts.ChartXValue, y_value: aspose.words.drawing.charts.ChartYValue) -> None:
        '''Adds the specified X and Y values to the chart series.'''
        ...
    
    @overload
    def add(self, x_value: aspose.words.drawing.charts.ChartXValue, y_value: aspose.words.drawing.charts.ChartYValue, bubble_size: float) -> None:
        '''Adds the specified X value, Y value and bubble size to the chart series.'''
        ...
    
    @overload
    def insert(self, index: int, x_value: aspose.words.drawing.charts.ChartXValue) -> None:
        '''Inserts the specified X value into the chart series at the specified index. If the series supports Y values
        and bubble sizes, they will be empty for the X value.
        
        The corresponding data point with default formatting will be inserted into the data point collection. And,
        if data labels are displayed, the corresponding data label with default formatting will be inserted too.'''
        ...
    
    @overload
    def insert(self, index: int, x_value: aspose.words.drawing.charts.ChartXValue, y_value: aspose.words.drawing.charts.ChartYValue) -> None:
        '''Inserts the specified X and Y values into the chart series at the specified index.
        
        The corresponding data point with default formatting will be inserted into the data point collection. And,
        if data labels are displayed, the corresponding data label with default formatting will be inserted too.'''
        ...
    
    @overload
    def insert(self, index: int, x_value: aspose.words.drawing.charts.ChartXValue, y_value: aspose.words.drawing.charts.ChartYValue, bubble_size: float) -> None:
        '''Inserts the specified X value, Y value and bubble size into the chart series at the specified index.
        
        The corresponding data point with default formatting will be inserted into the data point collection. And,
        if data labels are displayed, the corresponding data label with default formatting will be inserted too.'''
        ...
    
    def remove(self, index: int) -> None:
        '''Removes the X value, Y value, and bubble size, if supported, from the chart series at the specified index.
        The corresponding data point and data label are also removed.'''
        ...
    
    def clear(self) -> None:
        '''Removes all data values from the chart series. Format of all individual data points and data labels is cleared.'''
        ...
    
    def clear_values(self) -> None:
        '''Removes all data values from the chart series with preserving the format of the data points and data labels.'''
        ...
    
    @property
    def explosion(self) -> int:
        '''Specifies the amount the data point shall be moved from the center of the pie.
        Can be negative, negative means that property is not set and no explosion should be applied.
        Applies only to Pie charts.'''
        ...
    
    @explosion.setter
    def explosion(self, value: int):
        ...
    
    @property
    def x_values(self) -> aspose.words.drawing.charts.ChartXValueCollection:
        '''Gets a collection of X values for this chart series.'''
        ...
    
    @property
    def y_values(self) -> aspose.words.drawing.charts.ChartYValueCollection:
        '''Gets a collection of Y values for this chart series.'''
        ...
    
    @property
    def bubble_sizes(self) -> aspose.words.drawing.charts.BubbleSizeCollection:
        '''Gets a collection of bubble sizes for this chart series.'''
        ...

class ChartXValueType:
    '''Allows to specify type of an X value of a chart series.'''
    
    STRING: int
    DOUBLE: int
    DATE_TIME: int
    TIME: int
    MULTILEVEL: int

class ChartYValueType:
    '''Allows to specify type of an Y value of a chart series.'''
    
    DOUBLE: int
    DATE_TIME: int
    TIME: int

class ChartXValue:
    '''Represents an X value for a chart series.
    
    This class contains a number of static methods for creating an X value of a particular type. The
    :attr:`ChartXValue.value_type` property allows you to determine the type of an existing X value.
    
    All non-null X values of a chart series must be of the same :class:`ChartXValueType` type.'''
    
    @staticmethod
    def from_string(self, value: str) -> aspose.words.drawing.charts.ChartXValue:
        '''Creates a :class:`ChartXValue` instance of the :attr:`ChartXValueType.STRING` type.'''
        ...
    
    @staticmethod
    def from_double(self, value: float) -> aspose.words.drawing.charts.ChartXValue:
        '''Creates a :class:`ChartXValue` instance of the :attr:`ChartXValueType.DOUBLE` type.'''
        ...
    
    @staticmethod
    def from_date_time(self, value: datetime.datetime) -> aspose.words.drawing.charts.ChartXValue:
        '''Creates a :class:`ChartXValue` instance of the :attr:`ChartXValueType.DATE_TIME` type.'''
        ...
    
    @staticmethod
    def from_time_span(self, value: datetime.timespan) -> aspose.words.drawing.charts.ChartXValue:
        '''Creates a :class:`ChartXValue` instance of the :attr:`ChartXValueType.TIME` type.'''
        ...
    
    @staticmethod
    def from_multilevel_value(self, value: aspose.words.drawing.charts.ChartMultilevelValue) -> aspose.words.drawing.charts.ChartXValue:
        '''Creates a :class:`ChartXValue` instance of the :attr:`ChartXValueType.MULTILEVEL` type.'''
        ...
    
    @property
    def value_type(self) -> aspose.words.drawing.charts.ChartXValueType:
        '''Gets the type of the X value stored in the object.'''
        ...
    
    @property
    def string_value(self) -> str:
        '''Gets the stored string value.'''
        ...
    
    @property
    def double_value(self) -> float:
        '''Gets the stored numeric value.'''
        ...
    
    @property
    def date_time_value(self) -> datetime.datetime:
        '''Gets the stored datetime value.'''
        ...
    
    @property
    def time_value(self) -> datetime.timespan:
        '''Gets the stored time value.'''
        ...
    
    @property
    def multilevel_value(self) -> aspose.words.drawing.charts.ChartMultilevelValue:
        '''Gets the stored multilevel value.'''
        ...

class ChartYValue:
    '''Represents an Y value for a chart series.
    
    This class contains a number of static methods for creating an Y value of a particular type. The
    :attr:`ChartYValue.value_type` property allows you to determine the type of an existing Y value.
    
    All non-null Y values of a chart series must be of the same :class:`ChartYValueType` type.'''
    
    @staticmethod
    def from_double(self, value: float) -> aspose.words.drawing.charts.ChartYValue:
        '''Creates a :class:`ChartYValue` instance of the :attr:`ChartYValueType.DOUBLE` type.'''
        ...
    
    @staticmethod
    def from_date_time(self, value: datetime.datetime) -> aspose.words.drawing.charts.ChartYValue:
        '''Creates a :class:`ChartYValue` instance of the :attr:`ChartYValueType.DATE_TIME` type.'''
        ...
    
    @staticmethod
    def from_time_span(self, value: datetime.timespan) -> aspose.words.drawing.charts.ChartYValue:
        '''Creates a :class:`ChartYValue` instance of the :attr:`ChartYValueType.TIME` type.'''
        ...
    
    @property
    def value_type(self) -> aspose.words.drawing.charts.ChartYValueType:
        '''Gets the type of the Y value stored in the object.'''
        ...
    
    @property
    def double_value(self) -> float:
        '''Gets the stored numeric value.'''
        ...
    
    @property
    def date_time_value(self) -> datetime.datetime:
        '''Gets the stored datetime value.'''
        ...
    
    @property
    def time_value(self) -> datetime.timespan:
        '''Gets the stored time value.'''
        ...

class ChartXValueCollection:
    '''Represents a collection of X values for a chart series.
    
    All items of the collection other than **null** must have the same :attr:`ChartXValue.value_type`.
    
    The collection allows only changing X values. To add or insert new values to a chart series, or remove values,
    the appropriate methods of the :class:`ChartSeries` class can be used.'''
    
    def __getitem__(self, index: int) -> aspose.words.drawing.charts.ChartXValue:
        '''Gets or sets the X value at the specified index.
        
        Empty values are represented as **null**.'''
        ...
    
    def __setitem__(self, index: int, value: aspose.words.drawing.charts.ChartXValue):
        ...
    
    @property
    def count(self) -> int:
        '''Gets the number of items in this collection.'''
        ...

class ChartYValueCollection:
    '''Represents a collection of Y values for a chart series.
    
    All items of the collection other than **null** must have the same :attr:`ChartYValue.value_type`.
    
    The collection allows only changing Y values. To add or insert new values to a chart series, or remove values,
    the appropriate methods of the :class:`ChartSeries` class can be used.'''
    
    def __getitem__(self, index: int) -> aspose.words.drawing.charts.ChartYValue:
        '''Gets or sets the Y value at the specified index.
        
        Empty values are represented as **null**.'''
        ...
    
    def __setitem__(self, index: int, value: aspose.words.drawing.charts.ChartYValue):
        ...
    
    @property
    def count(self) -> int:
        '''Gets the number of items in this collection.'''
        ...

class BubbleSizeCollection:
    '''Represents a collection of bubble sizes for a chart series.
    
    The collection allows only changing bubble sizes. To add or insert new values to a chart series, or remove
    values, the appropriate methods of the :class:`ChartSeries` class can be used.
    
    Empty bubble size values are represented as System.Double.NaN.'''
    
    def __getitem__(self, index: int) -> float:
        '''Gets or sets the bubble size value at the specified index.'''
        ...
    
    def __setitem__(self, index: int, value: float):
        ...
    
    @property
    def count(self) -> int:
        '''Gets the number of items in this collection.'''
        ...

class ChartMultilevelValue:
    '''Represents a value for charts that display multilevel data.'''
    
    @overload
    def __init__(self, level1: str, level2: str, level3: str):
        '''Initializes a new instance of this class that represents a three-level value.'''
        ...
    
    @overload
    def __init__(self, level1: str, level2: str):
        '''Initializes a new instance of this class that represents a two-level value.'''
        ...
    
    @overload
    def __init__(self, level1: str):
        '''Initializes a new instance of this class that represents a single-level value.'''
        ...
    
    @property
    def level1(self) -> str:
        '''Gets the name of the chart top level that this value refers to.'''
        ...
    
    @property
    def level2(self) -> str:
        '''Gets the name of the chart intermediate level that this value refers to.'''
        ...
    
    @property
    def level3(self) -> str:
        '''Gets the name of the chart bottom level that this value refers to.'''
        ...

{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to populate existing chart series with data. Please see the following code example:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType
from aspose.words.drawing.charts import ChartXValue, ChartYValue

doc = Document("ScatterChart.docx")

shape = doc.get_child(NodeType.SHAPE, 0, True).as_shape()

chart = shape.chart
series1 = chart.series[0]

# Clear X and Y values of the first series.
series1.clear_values()

# Populate the series with data.
series1.add(x_value=ChartXValue.from_double(3.0), y_value=ChartYValue.from_double(10.0))
series1.add(ChartXValue.from_double(5.0), ChartYValue.from_double(5.0))
series1.add(ChartXValue.from_double(7.0), ChartYValue.from_double(11.0))
series1.add(ChartXValue.from_double(9.0), ChartYValue.from_double(17.0))

series2 = chart.series[1]

# Clear X and Y values of the second series.
series2.clear_values()

# Populate the series with data.
series2.Add(ChartXValue.from_double(2.0), ChartYValue.from_double(4.0))
series2.Add(ChartXValue.from_double(4.0), ChartYValue.from_double(7.0))
series2.Add(ChartXValue.from_double(6.0), ChartYValue.from_double(14.0))
series2.Add(ChartXValue.from_double(8.0), ChartYValue.from_double(7.0))

doc.save("out.docx")
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get data of chart series. Please see the following code example:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType
from aspose.pydrawing import Color

doc = Document("Chart.docx")

shape = doc.get_child(NodeType.SHAPE, 0, True).as_shape()

chart = shape.chart
series = chart.series[0]

minValue = sys.float_info.max
minValueIndex = 0
maxValue = sys.float_info.min
maxValueIndex = 0

for i in range(series.y_values.count):
    # Clear individual format of all data points.Data points and data values are one - to - one in column charts.
    series.data_points[i].clear_format()

    # Get Y value.
    yValue = series.y_values[i].double_value
    
    if yValue < minValue:
        minValue = yValue
        minValueIndex = i
        
    if yValue > maxValue:
        maxValue = yValue
        maxValueIndex = i

# Change colors of the max and min values.
series.data_points[minValueIndex].format.fill.fore_color = Color.red
series.DataPoints[maxValueIndex].Format.Fill.ForeColor = Color.green

doc.save("out.docx");
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to add and remove chart data values. Please see the following code example:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType
from aspose.words.drawing.charts import ChartXValue, ChartYValue

doc = Document("SalesChart.docx")

shape = doc.get_child(NodeType.SHAPE, 0, True).as_shape()

chart = shape.chart
department1Series = chart.series[0]
department2Series = chart.series[1]

# Remove the first value in the both series.
department1Series.remove(0)
department2Series.remove(0)

# Add new values to the both series.

newXCategory = ChartXValue.from_string("Q1, 2023")
department1Series.add(newXCategory, ChartYValue.from_double(10.3))
department2Series.add(newXCategory, ChartYValue.from_double(5.7))

doc.save("out.docx")
{{< /highlight >}}