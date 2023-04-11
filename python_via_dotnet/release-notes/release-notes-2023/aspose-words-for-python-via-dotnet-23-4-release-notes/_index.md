---
title: 23.4 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.4 Release Notes
linktitle: Aspose.Words for Python via .NET 23.4 Release Notes
description: "Aspose.Words for Python via .NET 23.4 Release Notes – the latest updates and fixes."
type: docs
weight: 90
url: /python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.4](https://pypi.org/project/aspose-words/23.4.0/).

{{% /alert %}}

## Major Features

There are 70 improvements and fixes in this regular monthly release. The most notable are:

- Added an ability to set distance between table and surrounding text.
- Provided an ability to determine whether a Run is a phonetic guide run.
- Implemented the simple way to work with series and axes of a combo charts.
- Provided the new public properties connected to the shape relative positioning and sizing.
- Improved accuracy and performance of color brightness calculation for automatic text color resolution in accordance with the latest versions of MS Word.

## Full List of Issues Covering all Changes in this Release

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

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.4. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words for Python via .NET which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to set distance between table and surrounding text

Now you can set the following properties of the Table class:
{{< highlight python >}}
@property
def distance_left(self) -> float:
    '''Gets or sets distance between table left and the surrounding text, in points.'''
    ...
    
@distance_left.setter
def distance_left(self, value: float):
    ...
    
@property
def distance_right(self) -> float:
    '''Gets or sets distance between table right and the surrounding text, in points.'''
    ...
    
@distance_right.setter
def distance_right(self, value: float):
    ...
    
@property
def distance_top(self) -> float:
    '''Gets or sets distance between table top and the surrounding text, in points.'''
    ...
    
@distance_top.setter
def distance_top(self, value: float):
    ...
    
@property
def distance_bottom(self) -> float:
    '''Gets or sets distance between table bottom and the surrounding text, in points.'''
    ...
    
@distance_bottom.setter
def distance_bottom(self, value: float):
    ...
{{< /highlight >}}

Please note: setting these properties makes the table floating.

#### Use Case: 
Explains how to set distance between table and surrounding text.
{{< highlight python >}}
from aspose.words import Document
from aspose.words.tables import Table
from typing import cast

doc = Document("input.docx")
table = cast(Table, doc.first_section.body.tables[0])

# Set distance between table and surrounding text.
table.distance_left = 24.0
table.distance_right = 24.0
table.distance_top = 3.0
table.distance_bottom = 3.0

doc.save("output.docx")
{{< /highlight >}}

### Added public property GradientStop.base_color

The following public property was added to aspose.words.drawing.GradientStop class:
{{< highlight python >}}
@property
def base_color(self) -> aspose.pydrawing.Color:
    '''Gets a value representing the color of the gradient stop without any modifiers.'''
    ...
{{< /highlight >}}

#### Use Case: 
Explains how to get unmodified Color of the gradient stop.
{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.drawing import ShapeType, GradientStop, GradientStyle, GradientVariant
from aspose.pydrawing import Color
from typing import cast
    
builder = DocumentBuilder()
shape = builder.insert_shape(ShapeType.BALLOON, width=300.0, height=300.0)

# Set stroke thickness to 7pt.
shape.stroke.weight = 7.0

# Fill the stroke with one-color gradient.
shape.stroke.fill.one_color_gradient(Color.red, GradientStyle.HORIZONTAL, GradientVariant.VARIANT1, 0.1)

# In OneColorGradient the second color is set automatically by adding to the first color either tint or shade.
# So, we can check unmodified color is actually those we set to the first color.
gradientStop = cast(GradientStop, shape.stroke.fill.gradient_stops[1])
gradientStop.color.to_string()
print(f"The color is: Color [A={gradientStop.color.a}, R={gradientStop.color.r}, G={gradientStop.color.g}, "
      f"B={gradientStop.color.b}]")
print(f"The base (unmodified) color is: Color [A={gradientStop.base_color.a}, R={gradientStop.base_color.r}, "
      f"G={gradientStop.base_color.g} B={gradientStop.base_color.b}]")

''' This code produces the following output:
The color is: Color [A=255, R=51, G=0, B=0]
The base (unmodified) color is: Color [A=255, R=255, G=0, B=0]
'''
{{< /highlight >}}

### Added public property Run.is_phonetic_guide

The following public property was added to Aspose.Words.Run class:
{{< highlight python >}}
 @property
def is_phonetic_guide(self) -> bool:
    '''Gets a boolean value indicating either the run is a phonetic guide.'''
    ...
{{< /highlight >}}

#### Use Case:
Explains how to determine either a Run is a phonetic guide run.
{{< highlight python >}}
from aspose.words import DocumentBuilder, Run
from typing import cast

builder = DocumentBuilder()
builder.write("text")
run = cast(Run, builder.document.first_section.body.first_paragraph.runs[0])
print(f"The phonetic guide value of the run is '{run.is_phonetic_guide}'")

''' This code produces the following output:
The phonetic guide value of the run is 'False' '''
{{< /highlight >}}

### Added public property Stroke.fill

The following public property was added to aspose.words.drawing.Stroke class:
{{< highlight python >}}
@property
def fill(self) -> aspose.words.drawing.Fill:
    '''Gets fill formatting for the :class:`Stroke`.'''
    ...
{{< /highlight >}}

#### Use Case:
Explains how to fill a stroke of the shape.
{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.drawing import ShapeType, GradientStyle, GradientVariant
from aspose.pydrawing import Color

builder = DocumentBuilder()
shape = builder.insert_shape(ShapeType.BALLOON, width=300.0, height=300.0)

# Set stroke thickness to 7pt.
shape.stroke.weight = 7.0

# Fill the stroke with two - color gradient.
shape.stroke.fill.two_color_gradient(Color.red, Color.blue, GradientStyle.HORIZONTAL, GradientVariant.VARIANT1)

builder.document.save("GradientStroke.docx")
{{< /highlight >}}

### Improvements in Chart class for Combo charts

The following changes have been implemented:

A ChartSeriesCollection instance returned by the Chart.series property includes all series of a combo chart, not just those of a main chart type.

Implemented the ChartAxisCollection class. Added the Chart.axes property of this type, which allows access to all axes of a combo chart.
{{< highlight python >}}
@property
def axes(self) -> aspose.words.drawing.charts.ChartAxisCollection:
    '''Gets a collection of all axes of this chart.'''
    ...

class ChartAxisCollection:
    '''Represents a collection of chart axes.'''
    
    def __getitem__(self, index: int) -> aspose.words.drawing.charts.ChartAxis:
        '''Gets the axis at the specified index.'''
        ...
    
    @property
    def count(self) -> int:
        '''Gets the number of axes in this collection.'''
        ...
    ...
{{< /highlight >}}

#### Use Case:
Explains how to work with series and axes of a combo chart.
{{< highlight python >}}
from aspose.words import Document, NodeType
from typing import cast
from aspose.words.drawing import Shape
from aspose.words.drawing.charts import MarkerSymbol, ChartAxisType

doc = Document("ComboChart.docx")
shape = cast(Shape, doc.get_child_nodes(NodeType.SHAPE, True)[0])
chart = shape.chart

# Show markers in the line series named 'Series 3'.
for series in chart.series:
    if series.name == 'Series 3':
        series.marker.symbol = MarkerSymbol.CIRCLE
        series.marker.size = 18
        break

# Hide the major grid lines on the primary and secondary Y axes.
    for axis in chart.axes:
        if axis.type == ChartAxisType.VALUE:
            axis.has_major_gridlines = False

doc.save("output.docx")
{{< /highlight >}}

### New public properties for working with the shape relative positioning and sizing have been added

New public properties relative_horizontal_size and relative_vertical_size for specifying the relative size binding of the shape have been added to Shape class:
{{< highlight python >}}
@property
def relative_horizontal_size(self) -> aspose.words.drawing.RelativeHorizontalSize:
    '''Gets or sets the value of shape's relative size in horizontal direction.
    
    The default value is :class:`RelativeHorizontalSize`.
    
    Has effect only if :attr:`ShapeBase.width_relative` is set.'''
    ...

@relative_horizontal_size.setter
def relative_horizontal_size(self, value: aspose.words.drawing.RelativeHorizontalSize):
    ...

@property
def relative_vertical_size(self) -> aspose.words.drawing.RelativeVerticalSize:
    '''Gets or sets the value of shape's relative size in vertical direction.
    
    The default value is :attr:`RelativeVerticalSize.MARGIN`.
    
    Has effect only if :attr:`ShapeBase.height_relative` is set.'''
    ...

@relative_vertical_size.setter
def relative_vertical_size(self, value: aspose.words.drawing.RelativeVerticalSize):
    ...
{{< /highlight >}}

New public properties height_relative and width_relative for specifying the shape relative size in percent have been added to Shape class: 
{{< highlight python >}}
@property
def height_relative(self) -> float:
    '''Gets or sets the value that represents the percentage of shape's relative height.'''
    ...

@height_relative.setter
def height_relative(self, value: float):
    ...

@property
def width_relative(self) -> float:
    '''Gets or sets the value that represents the percentage of shape's relative width.'''
    ...

@width_relative.setter
def width_relative(self, value: float):
    ...
{{< /highlight >}}

New public properties left_relative and top_relative for specifying the shape relative position in percent have been added to Shape class:
{{< highlight python >}}
@property
def left_relative(self) -> float:
    '''Gets or sets the value that represents shape's relative left position in percent.'''
    ...

@left_relative.setter
def left_relative(self, value: float):
    ...

@property
def top_relative(self) -> float:
    '''Gets or sets the value that represents shape's relative top position in percent.'''
    ...

@top_relative.setter
def top_relative(self, value: float):
    ...
{{< /highlight >}}

New public enums RelativeHorizontalSize and RelativeVerticalSize have been introduced:
{{< highlight python >}}
class RelativeHorizontalSize:
    '''Specifies relatively to what the width of a shape or a text frame is calculated horizontally.'''

class RelativeVerticalPosition:
    '''Specifies to what the vertical position of a shape or text frame is relative.'''
{{< /highlight >}}

#### Use Case:
Customers may now get and set the shape relative positioning and sizing.
{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.drawing import ShapeType, RelativeHorizontalSize, WrapType, RelativeVerticalSize, \
    RelativeVerticalPosition, RelativeHorizontalPosition

doc = Document()
builder = DocumentBuilder(doc)

# Adding a simple shape with absolute size and position.
shape = builder.insert_shape(ShapeType.RECTANGLE, 100.0, 40.0)
# Set WrapType to WrapType.None since Inline shapes are automatically converted to absolute units.
shape.wrap_type = WrapType.NONE

# Checking and setting the relative horizontal size.
if shape.relative_horizontal_size == RelativeHorizontalSize.DEFAULT:
    # Setting the horizontal size binding to Margin.
    shape.relative_horizontal_size = RelativeHorizontalSize.MARGIN
    # Setting the width to 50 % of Margin width.
    shape.width_relative = 50.0

# Checking and setting the relative vertical size.
if shape.relative_vertical_size == RelativeVerticalSize.DEFAULT:
    # Setting the vertical size binding to Margin.
    shape.relative_vertical_size = RelativeVerticalSize.MARGIN
    # Setting the height to 30 % of Margin height.
    shape.height_relative = 30.0

# Checking and setting the relative vertical position.
if shape.relative_vertical_position == RelativeVerticalPosition.PARAGRAPH:
    # Setting the position binding to top margin.
    shape.relative_vertical_position = RelativeVerticalPosition.TOP_MARGIN
    # Setting relative Top to 30 % of top margin position.
    shape.top_relative = 30.0

# Checking and setting the relative horizontal position.
if shape.relative_horizontal_position == RelativeHorizontalPosition.DEFAULT:
    # Setting the position binding to right margin.
    shape.relative_horizontal_position = RelativeHorizontalPosition.RIGHT_MARGIN
    # The position relative value can be negative.
    shape.left_relative = -260.0

doc.save("output.docx")
{{< /highlight >}}

### Removed obsolete property JsonDataLoadOptions.ExactDateTimeParseFormat

The obsolete property JsonDataLoadOptions.exact_date_time_parse_format has been removed. Please use the JsonDataLoadOptions.exact_date_time_parse_formats property instead.

{{< highlight python >}}
@property
def exact_date_time_parse_formats(self) -> Iterable[str]:
    '''Gets or sets exact formats for parsing JSON date-time values while loading JSON. The default is ``None``.
    
    Strings encoded using Microsoft® JSON date-time format (for example, "/Date(1224043200000)/") are always
    recognized as date-time values regardless of a value of this property. The property defines additional
    formats to be used while parsing date-time values from strings in the following way:
    
    * When :attr:`JsonDataLoadOptions.exact_date_time_parse_formats` is ``None``, the ISO-8601 format and all date-time formats
      supported for the current, English USA, and English New Zealand cultures are used additionally in
      the mentioned order.
    
    * When :attr:`JsonDataLoadOptions.exact_date_time_parse_formats` contains strings, they are used as additional date-time
      formats utilizing the current culture.
    
    * When :attr:`JsonDataLoadOptions.exact_date_time_parse_formats` is empty, no additional date-time formats are used.'''
    ...
{{< /highlight >}}


#### Use Case:
{{< highlight csharp >}}
from aspose.words.reporting import JsonDataSource, JsonDataLoadOptions

options = JsonDataLoadOptions()
options.exact_date_time_parse_formats = ["dd.MM.yy"]

dataSource = JsonDataSource(stream, options)
{{< /highlight >}}
