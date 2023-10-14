---
title: 23.10 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.10 Release Notes
linktitle: Aspose.Words for Python via .NET 23.10 Release Notes
description: "Aspose.Words for Python via .NET 23.10 Release Notes – the latest updates and fixes."
type: docs
weight: 30
url: /python-net/aspose-words-for-python-via-dotnet-23-10-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.10](https://pypi.org/project/aspose-words/23.10.0/).

{{% /alert %}}

## Major Features

There are 124 improvements and fixes in this regular monthly release. The most notable are:

- Implemented various PDF rendering optimizations to reduce output size when utilizing PdfSaveOptions.OptimizeOutput settings.
- Added the capability to retrieve the foreground color without modifiers in the Fill and Stroke classes.
- Expanded the functionality of ChartDataPointCollection, ChartSeries, and ChartFormat classes with new options.
- Introduced a simplified method for inserting one document inside another document inline at the current cursor position.
- Introduced the ImageData.fit_image_to_shape() method.
- Added the ability to access and modify the Locked property of a Style.
- Implemented a feature to recognize hyperlinks when loading TXT documents.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

1. Ability to get grid span of cell
2. Ability to load images using relative path with support of ResourceLoadingCallback
3. Provide way in API to restart numbering of particular list items
4. Implement special mode for DocumentBuilder.InsertDocument and DocumentBuilder.InsertHtml methods
5. Provide way to remove Color and Underline font attributes
6. HTML to DOCX/PDF conversion issue with css property "white-space: nowrap"
7. Cell's text is wrapped to next line in output PDF
8. Consider providing InsertDocument overload to insert document content inline
9. Support MSO properties during import headers and footers
10. Word Table messed up in PDF
11. Clickable links in txt-model-html conversion
12. Ability to copy data point format/properties to/from another data point or series defaults, and ability to determine whether data point has non default formatting
13. Ability to generate consistent IDs of comment nodes when cloning the nodes
14. Html to Pdf conversion with table's layout
15. Add feature to set/get color of Chart Title
16. Paragraph is rendered on next page in output FixedHtml
17. Add feature to change the font of chart title
18. Provide API to set Vertical (Value) Axis Title of Chart
19. Implement writing signature created field.
20. Signing documents in OTT format.
21. Ability to get foreground color without modifiers in Fill and Stroke classes
22. Ability to inherit from CompositeNode in API
23. DOCX to PDF file conversion issue with text rendering
24. Add method to shape API to keep image aspect ratio
25. Table header's text render incorrectly in output PDF
26. Text is wrapped within table cell after DOCX to PDF conversion 
27. Table height issue while converting Aspose.Words.Document into PDF
28. Table header width in PDF is not the same as word document
29. Text of content control is rendered incorrectly in output PDF
30. DOCX to MD: Internal reference links
31. Table.AutoFit(AutoFitBehavior.AutoFitToContents) does not work when save the document to PDF/XPS
32. Text moves to next page in rendered PDF after AcceptAllRevisions
33. Text is pushed down to next page after DOCX to PDF conversion
34. Incorrect text wrapping when NoWrap=false and PreferredWidth set on cell
35. Table Column Cell Widths reduced in rendered PDF
36. Table border is lost after conversion from MHT to PDF
37. Table cell width is changed when HTML is converted to PDF
38. DOCX to PDF conversion issue with text position
39. Empty Page is created in output PDF after changing PaperSize under German culture 
40. Incorrect TableGrid issue
41. Table layout is different after rendering
42. Table is rendered narrower than it should
43. Deprecated UpdateTableLayout() is required for table update
44. DOCX to PDF: Table not rendered correctly
45. Table width is incorrect after rendering
46. DOCX to PDF: Table header text is not retained upon conversion
47. Table is rendered improperly
48. Table column widths are different after rendering document
49. UpdateTableLayout is still required even if it is deprecated
50. Table borders are rendered improperly
51. Table layout is changed after rendering that leads to content move to the next page
52. Incorrect text wrapping in Cells in PDF
53. Problem with converation of table in FixedHtml
54. Export to PDF ignores cells WrapText
55. Table columns width changes in PDF
56. A Table column is missing from PDF
57. Text wrapping issue with HTML to PDF conversion 
58. Table width is change after DOCX to PDF conversion
59. Table cells with Wrapped text do not auto resize in PDF
60. Text is wrapped in table's cell when document is saved to PDF
61. Table column widths are not correct in PDF
62. Table's column width is increased in output PDF
63. Table formatting issue in HTM to TIF conversion
64. HTML to Tiff conversion issue with text rendering
65. Table rendering issue in HTML to PDF conversion
66. "Avenir Next LT Pro" fonts are improperly substituted
67. Rendering performance depredated in new version of Aspose.Words
68. RTL document layout is broken after rendering
69. Consider exposing Style.Locked property
70. Provide public access to CellPr.HideMark property
71. List items are shown in one line if CssStyleSheetType.Embedded is used 
72. IF field is not updated properly upon execution mail merge
73. ArgumentException is thrown upon saving HTML document after loading MHTML with IResourceLoadingCallback
74. SVG with page background has white space at the left side when rendered with FitToViewPort option
75. Redundant empty pages are added after PDF to DOCX conversion
76. A redundant shape is rendered in the document header
77. Accessing paragraph border creates None border in the output document
78. Numbering is incorrect after using ExtractPages
79. Resulting text has no shadow after converting DOCX to PNG
80. Document.ExtractPages method produces 2-page document instead of 1-page
81. Formula is not rendered correctly when saving to PDF
82. Incorrect links for TOC entries in SVG
83. Document.ExtractPages method produces 2-page document instead of 1-page
84. Provide access to the font properties of ChartTitle
85. Watermark is rendered improperly
86. Image in header is doubled after rendering
87. PAGE field in footer is updated improperly upon rendering
88. Header is rendered improperly, image overlaps textbox
89. Formatting problem in TOC while merging DOCX
90. DOCX to PDF: Save method hangs
91. Chart is changed after open/save document using Aspose.Words
92. Incorrect font is selected when Nunito Extrabold is used
93. HTMLs not compared correctly 
94. Additional properties (rotation and vertical overflow) appear for the chart title after conversion to PDF
95. InvalidCastException is thrown upon comparing document
96. Remove support for external images for MOBI/AZW3 file formats
97. HtmlSaveOptions.ExportOriginalUrlForLinkedImages doesn't have any effect on HTML image export
98. Document compare accessing Revision.Group performance
99. OutOfMemoryException is thrown upon extracting pages
100. BarcodeParameters.BarcodeType contains redundant character
101. NullReferenceException is thrown upon saving document as RTF
102. The characters are garbled in Word 95 binary DOC
103. DOCX to PDF: Incorrect spacing
104. Footer position is incorrect after merging documents
105. NullReferenceException is thrown upon calling UpdateFields
106. Page footer is moved to the next page and overlaps content
107. Compare throws "NC sync failed" error
108. Header Alignment Issue
109. Shape's adjustment workaround
110. Radar chart with NaN values is rendered improperly
111. Aspose.Words hangs upon rendering document
112. FORMULA field does not recognize table cell coordinates references.
113. Image is not resized to the container after updating INCLUDEPICTURE field
114. Evaluation message added if metered AW for Cloud license applied
115. UpdateFields does not calculate the page number in TOC field correctly
116. Incorrect fallback font for VML WordArt with Thai locale
117. Incorrect size calculation of VML WordArt text when using fallback font
118. Performance issue while rendering document to PDF
119. Tofu is rendered after ®? Character
120. WK: Incorrect Stroke.DashStyle
121. Text is improperly distributed while rendering
122. Table overlaps the image in HTML to PDF conversion
123. Symbol Replacement Issue in MailMerge 
124. ArgumentOutOfRangeException is thrown upon updating page layout
</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.10. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words for Python via .NET which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to get foreground color without modifiers in Fill and Stroke classes

A new public property **base_fore_color** has been added to class **Fill** and **Stroke**:
{{< highlight python >}}
@property
def base_fore_color(self) -> aspose.pydrawing.Color:
    """Gets a Color object that represents the base foreground color for the fill
    without any modifiers."""
    ...

...

@property
def base_fore_color(self) -> aspose.pydrawing.Color:
    """Gets the base foreground color of the stroke without any modifiers.
    
    The default value for a :class:`Shape` is
    System.Drawing.Color.Black."""
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to get foreground color without modifiers in **Fill** and **Stroke** classes:
{{% /alert %}}
{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.drawing import ShapeType
from aspose.pydrawing import Color

doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_shape(aw.drawing.ShapeType.RECTANGLE, 100, 40)
shape.fill.fore_color = drawing.Color.red
shape.fill.fore_tint_and_shade = 0.5
shape.stroke.fill.fore_color = drawing.Color.green
shape.stroke.fill.transparency = 0.5
drawing.Color.from_argb(255, 255, 188, 188).to_argb()

self.assertEqual(drawing.Color.from_argb(255, 255, 188, 188).to_argb(), shape.fill.fore_color.to_argb())
self.assertEqual(drawing.Color.red.to_argb(), shape.fill.base_fore_color.to_argb())
self.assertEqual(drawing.Color.from_argb(128, 0, 128, 0).to_argb(), shape.stroke.fore_color.to_argb())
self.assertEqual(drawing.Color.green.to_argb(), shape.stroke.base_fore_color.to_argb())

self.assertEqual(drawing.Color.green.to_argb(), shape.stroke.fill.fore_color.to_argb())
self.assertEqual(drawing.Color.green.to_argb(), shape.stroke.fill.base_fore_color.to_argb())
{{< /highlight >}}

### Added new members to ChartDataPointCollection, ChartSeries and ChartFormat classes

The following new methods and property have been added to the **ChartDataPointCollection**, **ChartSeries** and **ChartFormat** classes:
{{< highlight python >}}
class ChartDataPointCollection:

    def has_default_format(self, data_point_index: int) -> bool:
        """Gets a flag indicating whether the data point at the specified index has default format."""
        ...
    
    def copy_format(self, source_index: int, destination_index: int) -> None:
        """Copies format from the source data point to the destination data point."""
        ...

class ChartSeries:
 
    def copy_format_from(self, data_point_index: int) -> None:
        """Copies default data point format from the data point with the specified index."""
        ...

class ChartFormat:
 
    def set_default_fill(self) -> None:
        """Resets the fill of the chart element to have the default value."""
        ...
    
    @property
    def is_defined(self) -> bool:
        """Gets a flag indicating whether any format is defined."""
        ...
    ...
}
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to copy data point format:
{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType
from aspose.words.drawing import Shape

doc = Document("DataPoint format.docx")

# Get the chart and series to update format.
shape = doc.get_child(NodeType.SHAPE, 0, True).as_shape()

series = shape.chart.series[0]

data_points = series.data_points

self.assertEqual(True, data_points.has_default_format(0))
self.assertEqual(False, data_points.has_default_format(1))

# Copy format of the data point with index 1 to the data point with index 2
# so that the data point 2 looks the same as the data point 1.
data_points.copy_format(0, 1)

self.assertEqual(True, data_points.has_default_format(0))
self.assertEqual(True, data_points.has_default_format(1))

# Copy format of the data point with index 0 to the series defaults so that all data points
# in the series that have the default format look the same as the data point 0.
series.copy_format_from(1)

self.assertEqual(True, data_points.has_default_format(0))
self.assertEqual(True, data_points.has_default_format(1))

doc.save("Charts.CopyDataPointFormat.docx")
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to reset data point fill:
{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, NodeType
from aspose.words.drawing import Shape

doc = Document("DataPoint format.docx")
shape = doc.get_child(NodeType.SHAPE, 0, True).as_shape()

series = shape.chart.series[0]
data_point = series.data_points[1]

self.assertEqual(True, data_point.format.is_defined)

data_point.format.set_default_fill()

doc.save("Charts.ResetDataPointFill.docx")
{{< /highlight >}}
### Added new public method ImageData.fit_image_to_shape()

A new **FitImageToShape** public method has been added to **ImageData** class:
{{< highlight python >}}
def fit_image_to_shape(self) -> None:
    """Fits the image data to Shape frame so that the aspect ratio of the image data matches the aspect ratio of Shape frame."""
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to work with **ImageData.fit_image_to_shape()**:
{{% /alert %}}
{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.drawing import ShapeType

doc = Document()
builder = DocumentBuilder(doc)

# Insert an image shape and leave its orientation in its default state.
shape = builder.insert_shape(ShapeType.RECTANGLE, 300, 450)
shape.image_data.set_image("Barcode.png")
shape.image_data.fit_image_to_shape()

doc.save("Shape.FitImageToShape.docx")
{{< /highlight >}}

### Added public method DocumentBuilder.insert_document_inline

A new public method **insert_document_inline** has been added to class **DocumentBuilder**:
{{< highlight python >}}
def insert_document_inline(self, src_doc: aspose.words.Document, import_format_mode: aspose.words.ImportFormatMode, import_format_options: aspose.words.ImportFormatOptions) -> aspose.words.Node:
    """Inserts a document inline at the cursor position.
    
    This method mimics the MS Word behavior, as if CTRL+'A' (select all content) was pressed,
    then CTRL+'C' (copy selected into the buffer) inside one document
    and then CTRL+'V' (insert content from the buffer) inside another document.
    
    As a difference from :meth:`DocumentBuilder.insert_document`
    this method moves the content of the paragraph of the destination document,
    before which the source document is inserted, into the last
    paragraph of the inserted source document. Actually, this means that
    paragraph break of the last inserted paragraph is removed.
    
    Note, if the last node of the source document is not a paragraph, then nothing will be done.
    
    :param src_doc: Source document for inserting.
    :param import_format_mode: Specifies how to merge style formatting that clashes.
    :param import_format_options: Allows to specify options that affect formatting of a result document.
    :returns: First node of the inserted content."""
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to insert one document into another inline:
{{% /alert %}}
{{< highlight python >}}
from aspose.words import DocumentBuilder, BookmarkEnd, BookmarkStart, ImportFormatMode, ImportFormatOptions

src_doc = DocumentBuilder()
src_doc.write("[src content]")

# Create destination document.

dst_doc = DocumentBuilder()
dst_doc.write("Before ")
dst_doc.insert_node(BookmarkStart(dst_doc.document, "src_place"))
dst_doc.insert_node(BookmarkEnd(dst_doc.document, "src_place"))
dst_doc.write(" after")

self.assertEqual("Before  after", dst_doc.document.get_text().strip())

# Insert source document into destination inline.
dst_doc.move_to_bookmark("src_place")
dst_doc.insert_document_inline(src_doc.document, ImportFormatMode.USE_DESTINATION_STYLES,
                               ImportFormatOptions())

self.assertEqual("Before [src content] after", dst_doc.document.get_text().strip())
{{< /highlight >}}

### Added public properties ChartTitle.font and ChartAxisTitle.font

An ability to set font properties for chart and axis titles has been implemented.

The following new public properties have been added:
{{< highlight python >}}
class ChartTitle
    @property
    def font(self) -> aspose.words.Font:
        """Provides access to the font formatting of the chart title."""
        ...

class ChartAxisTitle:
    @property
    def font(self) -> aspose.words.Font:
        """Provides access to the font formatting of the axis title."""
        ...
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use cases explain how to set font properties for chart and axis titles:
{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
import aspose.pydrawing as drawing
from aspose.words.drawing.charts import ChartType

doc = Document()

builder = DocumentBuilder(doc)
shape = builder.insert_chart(ChartType.COLUMN, 432, 252)

chart = shape.chart

series_coll = chart.series
# Delete default generated series.
series_coll.clear()

series_coll.add("AW Series 1", ["AW Category 1", "AW Category 2"], [1, 2])

# Set axis title.
chart.axis_x.title.text = "Categories"
chart.axis_x.title.show = True
chart.axis_y.title.text = "Values"
chart.axis_y.title.show = True
chart.axis_y.title.overlay = True
chart.axis_y.title.font.size = 12
chart.axis_y.title.font.color = drawing.Color.blue

doc.save("Charts.ChartAxisTitle.docx")
{{< /highlight >}}

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
import aspose.pydrawing as drawing
from aspose.words.drawing.charts import ChartType

doc = Document()
builder = DocumentBuilder(doc)

# Insert a chart shape with a document builder and get its chart.
chart_shape = builder.insert_chart(ChartType.BAR, 400, 300)
chart = chart_shape.chart

# Use the "title" property to give our chart a title, which appears at the top center of the chart area.
title = chart.title
title.text = "My Chart"
title.font.size = 15
title.font.color = drawing.Color.blue

# Set the "show" property to "True" to make the title visible.
title.show = True

# Set the "overlay" property to "True" Give other chart elements more room by allowing them to overlap the title
title.overlay = True

doc.save("Charts.chart_title.docx")
{{< /highlight >}}

### Added public property Style.locked

A new public property **locked** has been added to class **Style**:
{{< highlight python >}}
@property
def locked(self) -> bool:
    """Specifies whether this style is locked."""
    ...

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to get and set **locked** property of a **Style**:
{{% /alert %}}
{{< highlight python >}}
from aspose.words import Document, StyleIdentifier

doc = Document()

style_heading_1 = doc.styles[StyleIdentifier.HEADING1]
if not style_heading_1.locked:
    style_heading_1.locked = True

doc.save("Styles.LockStyle.docx")
{{< /highlight>}}

### Added public property TxtLoadOptions.DetectHyperlinks

A new public property **detect_hyperlinks** has been added to class **TxtLoadOptions**:
{{< highlight python >}}
@property
def detect_hyperlinks(self) -> bool:
    """Specifies either to detect hyperlinks in text.
    The default value is ``False``."""
    ...

@detect_hyperlinks.setter
def detect_hyperlinks(self, value: bool):
    ...

...
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**

This use case explains how to recognize hyperlinks when loading TXT documents:
{{% /alert %}}
{{< highlight python >}
from aspose.words import Document, StyleIdentifier
from aspose.words.loading import TxtLoadOptions
import io

input_text = b"Some links in TXT:\nhttps://www.aspose.com/\nhttps://docs.aspose.com/words/python-net/\n"

stream_ = io.BytesIO()
stream_.write(input_text)
stream_.flush()

options = TxtLoadOptions()
options.detect_hyperlinks = True

doc = Document(stream_, options)

stream_.close()

for field in doc.range.fields:
    print(field.result)
{{< /highlight>}}
