---
title: 23.3 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.3 Release Notes
linktitle: Aspose.Words for Python via .NET 23.3 Release Notes
description: "Aspose.Words for Python via .NET 23.3 Release Notes – the latest updates and fixes."
type: docs
weight: 100
url: /python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.3](https://pypi.org/project/aspose-words/23.3.0/).

{{% /alert %}}

## Major Features

There are 78 improvements and fixes in this regular monthly release. The most notable are:

- Extended set of public properties for working with fill colors.
- Implemented rendering of radial gradients with SkiaSharp native shader for .NET Standard.
- Added support of InvertIfNegative property for bar chart rendering.
- Implemented saving progress notifications for MOBI and AZW3 formats.
- Added an ability to specify whether to adjust sentence and word spacing automatically upon document import.

## Full list of changes

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, covering all changes in this release.</summary>

1. Add ability to determine if font color is overridden for Inline node and for paragraph break character
2. LINQ Reporting Engine - Column chart does not support different color for negative value
3. Allow ImportFormatOptions.AdjustSentenceAndWordSpacing option in API
4. Provide public API to manipulate chart gridlines
5. Add Fill.ThemeColor option
6. Implement plugin license support|New Feature
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
17. Symbols overlap after rendering|Bug
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
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.3. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added new public properties for working with fill colors

A new public properties **fore_theme_color** and **back_theme_color** has been added to the **Fill** class.

{{< highlight python >}}
@property
def fore_theme_color(self) -> aspose.words.themes.ThemeColor:
    '''Gets or sets a ThemeColor object that represents the foreground color for the fill.'''
    ...
    
@fore_theme_color.setter
def fore_theme_color(self, value: aspose.words.themes.ThemeColor):
    ...
    
@property
def back_theme_color(self) -> aspose.words.themes.ThemeColor:
    '''Gets or sets a ThemeColor object that represents the background color for the fill.'''
    ...
    
@back_theme_color.setter
def back_theme_color(self, value: aspose.words.themes.ThemeColor):
    ...
{{< /highlight >}}

A new public properties **fore_tint_and_shade** and **back_tint_and_shade** has been added to thr **Fill** class.

{{< highlight python >}}
@property
def fore_tint_and_shade(self) -> float:
    '''Gets or sets a double value that lightens or darkens the foreground color.
        
    The allowed values are within the range from -1 (the darkest) to 1 (the lightest) for this property.
    Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
    results in System.ArgumentOutOfRangeException.'''
    ...

@fore_tint_and_shade.setter
def fore_tint_and_shade(self, value: float):
    ...
    
@property
def back_tint_and_shade(self) -> float:
    '''Gets or sets a double value that lightens or darkens the background color.
        
    The allowed values are within the range from -1 (the darkest) to 1 (the lightest) for this property.
    Zero (0) is neutral. Attempting to set this property to a value less than -1 or more than 1
    results in System.ArgumentOutOfRangeException.'''
    ...

@back_tint_and_shade.setter
def back_tint_and_shade(self, value: float):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with **theme colors** and **tint and shade**. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight python >}}
import typing
from aspose.words import Document, DocumentBuilder, NodeType
from aspose.words.drawing import Shape
from aspose.words.themes import ThemeColor

doc = Document("in.docx")

shape = doc.get_child(NodeType.SHAPE, 0, True)
shape_fill = typing.cast(Shape, shape).fill

'''Gets and sets the value of theme colors.'''
if shape_fill.fore_theme_color == ThemeColor.ACCENT1:
    shape_fill.fore_theme_color(ThemeColor.DARK1)

if shape_fill.back_theme_color == ThemeColor.ACCENT2:
    shape_fill.back_theme_color(ThemeColor.DARK2)

text_fill_1 = doc.first_section.body.first_paragraph.runs[0].font.fill

'''Gets and sets the tint value.'''
if text_fill_1.fore_tint_and_shade == 0:
    text_fill_1.fore_tint_and_shade(0.5)

text_fill_2 = doc.first_section.body.first_paragraph.runs[1].font.fill
    
'''Gets and sets the shade value.'''
if text_fill_2.fore_tint_and_shade == 0:
    text_fill_2.fore_tint_and_shade(-0.2)

doc.save("output.docx")
{{< /highlight >}}

### Added public properties has_major_gridlines and has_minor_gridlines to ChartAxis class

The following public properties have been added to the **aspose.words.drawing.charts.ChartAxis** class:

{{< highlight python >}}
@property
def has_major_gridlines(self) -> bool:
    '''Gets or sets a flag indicating whether the axis has major gridlines.'''
    ...
    
@has_major_gridlines.setter
def has_major_gridlines(self, value: bool):
    ...
    
@property
def has_minor_gridlines(self) -> bool:
    '''Gets or sets a flag indicating whether the axis has minor gridlines.'''
    ...
    
@has_minor_gridlines.setter
def has_minor_gridlines(self, value: bool):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to show chart gridlines. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.drawing.charts import ChartType

doc = Document()
builder = DocumentBuilder(doc)

'''Insert a chart.'''
shape = builder.insert_chart(ChartType.COLUMN, 432, 252)

x_axis = shape.chart.axis_x
y_axis = shape.chart.axis_y

'''Show gridlines.'''
x_axis.has_major_gridlines(True)
x_axis.has_minor_gridlines(True)
y_axis.has_major_gridlines(True)
y_axis.has_minor_gridlines(True)

doc.save("Gridlines.docx")
{{< /highlight >}}

### Added public property ImportFormatOptions.adjust_sentence_and_word_spacing

The following public property was added to the **aspose.words.ImportFormatOptions** class:

{{< highlight python >}}
@property
def adjust_sentence_and_word_spacing(self) -> bool:
    '''Gets or sets a boolean value that specifies whether to adjust sentence and word spacing automatically.
    The default value is ``False``.'''
    ...
    
@adjust_sentence_and_word_spacing.setter
def adjust_sentence_and_word_spacing(self, value: bool):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use the **adjust_sentence_and_word_spacing** option. Please see the following code example:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder, ImportFormatOptions, ImportFormatMode

src_doc = Document()
dst_doc = Document()

builder = DocumentBuilder(src_doc)
builder.write("Dolor sit amet.")

builder = DocumentBuilder(dst_doc)
builder.Write("Lorem ipsum.")

options = ImportFormatOptions()
options.adjust_sentence_and_word_spacing(True)  
    
builder.InsertDocument(src_doc, ImportFormatMode.USE_DESTINATION_STYLES, options);
print(dst_doc.first_section.body.first_paragraph.get_text())

'''This code produces the following output (please note the additional ' ' space character just before pasted content):
Lorem ipsum. Dolor sit amet.
'''
{{< /highlight >}}

### Added public property TextBox.no_text_rotation

The following public property was added to **aspose.words.drawing.TextBox** class:

{{< highlight python >}}
@property
def no_text_rotation(self) -> bool:
    '''Gets or sets a boolean value indicating either text of the TextBox should not rotate when the shape is rotated.
        
    The default value is ``False``'''
    ...

@no_text_rotation.setter
def no_text_rotation(self, value: bool):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to use the **NoTextRotation** option. Please see the following code example:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.drawing import ShapeType

builder = DocumentBuilder()
shape = builder.insert_shape(ShapeType.ELLIPSE, 20, 20)
shape.text_box.no_text_rotation(True)
{{< /highlight >}}

### Enabled saving progress notifications for MOBI and AZW3 formats

The **SaveOptions.ProgressCallback** is now also invoked when saving to Mobi or AZW3.