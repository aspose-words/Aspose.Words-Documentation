---
title: 23.6 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.6 Release Notes
linktitle: Aspose.Words for Python via .NET 23.6 Release Notes
description: "Aspose.Words for Python via .NET 23.6 Release Notes – the latest updates and fixes."
type: docs
weight: 70
url: /python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.6](https://pypi.org/project/aspose-words/23.6.0/).

{{% /alert %}}

## Major Features

There are 87 improvements and fixes in this regular monthly release. The most notable are:

- Implemented an ability to save documents as XLSX.
- Added support of Advanced Typography in WMF, EMF and EMF+ rendering.
- Added public property (PageInfo.Colored) indicating whether the page is in color or not.
- Added a new way of dynamic HTML insertion for LINQ Reporting Engine.
- Implemented ability to set fill, stroke and callout formatting for chart data labels.
- Added a new LowCode methods intended to merge a variety of different types of documents into a single output document.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

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
40. Inserting EMF:  Wrong character spacing in Arabic text
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
58. LINQ Reporting Engine - Unexpected hyperlink formatting while inserting HTML
59. Chinese hieroglyph is changed after rendering document
60. Compare method throws 'Cannot insert a node of this type at this location' exception
61. Implement removing signature in ODF Text Document Template
62. Aspose.Words compares documents with and without SDT differently than MS Word
63. Document is still in compatibility mode after OptimizeFor (Word2019)
64. Content position in table's cell is different in output DOCX and PDF
65. Discrepancy between MS Word and Aspose.Words compare
66. Items are missed in INDEX after updating fields
67. Cannot insert a node of this type at this location error on attemp to append DOCX to DOCX
68. FileCorruptedException: 'The document appears to be corrupted and cannot be loaded.'
69. Call doc.UpdateFormat(LoadFormat.Pdf) after loading is finished
70. Cache  product name in MeteredBillingService
71. Arabic text distorts during EMF to PDF conversion
72. Korean text of chart is overlapped in output PDF
73. System.ArgumentOutOfRangeException : empty image
74. Implement internal version of Merge feature
75. IndexOutOfBoundsException raised on header footer specific combination of  getHeadersFooters().linkToPrevious
76. DOC to PDF File conversion - Bullet (solid circle) converted to (square)
77. Odd behavior of CompatibilityOptions.OptimizeFor method with empty document
78. Provide a way to make Document.MergeDocuments public
79. Fix parameters fill when switch operation after request
80. Venture license not working when loading Azw3
81. Document is not rendered correctly in Aspose API
82. Part of content is moved to the next page
83. Bookmark.Text set to empty string does not remove all content from bookmarks spanned several rows
84. Numbering issue for Text file
85. Office blocks Ole Objects inserted by Aspose
86. Line overlaps the text after rendering SVG
87. FieldPageRef has the wrong page number when saving with Optimize for Word 2019 option

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.6. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words for Python via .NET which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added ability to remove digital signatures from OTT

Implemented removing digital signatures from OTT using **Aspose.Words.DigitalSignatures.DigitalSignatureUtil.RemoveAllSignatures** method.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to remove digital signatures from OTT. Please see the following code example to learn how to use such a method:

{{% /alert %}}

{{< highlight python >}}
from aspose.words.digitalsignatures import DigitalSignatureUtil
DigitalSignatureUtil.remove_all_signatures("in.ott", "out.ott")
{{< /highlight >}}

### Added a new warning during reading FB2 format

The corresponding warning will be added during reading a FB2 book.

{{< highlight python >}}
The original file load format is FB2, which is not supported by Aspose.Words. The file is loaded as an XML document.
{{< /highlight >}}

### Added a new way of dynamic HTML insertion for LINQ Reporting Engine

Starting from Aspose.Words 23.6, you can use the HTML tag to insert HTML dynamically to your documents using LINQ Reporting Engine. This new way of HTML insertion provides more options to control formatting of an HTML block being inserted.

By default, HTML content is formatted by deriving styles of a template document. Template syntax for this is as follows.

{{< highlight python >}}
<<html [html_text_expression]>>
{{< /highlight >}}

However, you can keep source HTML formatting for content being inserted (to make it look like in a browser) by using the sourceStyles switch as follows.

{{< highlight python >}}
<<html [html_text_expression] -sourceStyles>>
{{< /highlight >}}

### Added a property indicating whether the page is in color or not

Implemented a new **PageInfo.colored** property indicating whether the page is in color or not.

{{< highlight python >}}
 @property
def colored(self) -> bool:
    '''Returns ``True`` if the page contains colored content.'''
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to check that the particular page of the document is not colored. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight csharp >}}
from aspose.words import Document
doc = Document("in.docx")

# Check that the first page of the document is not colored.
self.assertEqual(doc.get_page_info(0).colored, False)
{{< /highlight >}}

Evaluating this property causes internal rendering of the document, which can affect performance. Although, if further rendering of the document is supposed, then the necessary values are most likely already in the cache.

### Added new public property LayoutOptions.KeepOriginalFontMetrics

We have changed the default behavior of Aspose.Words during font substitution to copy the behavior introduced in Microsoft Word 2019. Previously, the metrics of the original font were used in some cases. Now the metrics of the substitution font is used in all cases by default.

The **keep_original_font_metrics** property has been added to the **LayoutOptions** class.

{{< highlight python >}}
@property
def keep_original_font_metrics(self) -> bool:
    '''Gets or sets an indication of whether the original font metrics should be used after font substitution.
    Default is ``True``.'''
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to return the previous behavior. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document

doc = Document("in.docx")
doc.layout_options.keep_original_font_metrics = True

doc.save("out.pdf")
{{< /highlight >}}

### Implemented ability to save documents as XLSX

The following changes have been made to the API:

A new class **XlsxSaveOptions** has been implemented.
A new item **Xlsx** has been added to the **SaveFormat** class.
A new item **Xlsx** has been added to the **WarningSource** class.

{{< highlight python >}}
class XlsxSaveOptions(aspose.words.saving.SaveOptions):
    '''Can be used to specify additional options when saving a document into the :attr:`aspose.words.SaveFormat.XLSX`
    format.
    To learn more, visit the `Specify
                Save Options <https://docs.aspose.com/words/python-net/specify-save-options/>` documentation article.'''
    
    def __init__(self):
        ...
    
    @property
    def save_format(self) -> aspose.words.SaveFormat:
        '''Specifies the format in which the document will be saved if this save options object is used.
        Can only be :attr:`aspose.words.SaveFormat.XLSX`.'''
        ...
    
    @save_format.setter
    def save_format(self, value: aspose.words.SaveFormat):
        ...
    
    @property
    def compression_level(self) -> aspose.words.saving.CompressionLevel:
        '''Specifies the compression level used to save document.
        The default value is :attr:`CompressionLevel.NORMAL`.'''
        ...
    
    @compression_level.setter
    def compression_level(self, value: aspose.words.saving.CompressionLevel):
        ...
    
    ...
class SaveFormat:
    '''Indicates the format in which the document is saved.'''
        ...

    XLSX:int,
      ...


class WarningSource:
    '''Specifies the module that produces a warning during document loading or saving.'''
        ...

    XLSX:int

}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to save document as XLSX. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document

doc = Document("input.docx");
doc.save("output.xlsx");
{{< /highlight >}}

### Implemented ability to set fill, stroke and callout formatting for chart data labels

The **format** properties of the **ChartFormat** type have been added to the **ChartDataLabel** and **ChartDataLabelCollection** classes.

{{< highlight python >}}
class ChartDataLabel:
    '''Represents data label on a chart point or trendline.
    To learn more, visit the `Working with Charts <https://docs.aspose.com/words/python-net/working-with-charts/>` documentation article.
    ...
    @property
    def format(self) -> aspose.words.drawing.charts.ChartFormat:
        '''Provides access to fill and line formatting of the data label.'''
        ...

class ChartDataLabelCollection:
    '''Represents a collection of :class:`ChartDataLabel`.
    To learn more, visit the `Working with Charts <https://docs.aspose.com/words/python-net/working-with-charts/>` documentation article.'''
    ...
  @property
    def format(self) -> aspose.words.drawing.charts.ChartFormat:
        '''Provides access to fill and line formatting of the data labels.'''
        ...
{{< /highlight >}}

The new class type **ChartShapeType** has been implemented and the **shape_type** property of this type has been added to the **ChartFormat** class.

{{< highlight python >}}
class ChartShapeType:
    '''Specifies the shape type of chart elements.'''

    DEFAULT: int,
    RECTANGLE: int,
    ...
}

class ChartFormat:
    '''Represents the formatting of a chart element.
    To learn more, visit the `Working with Charts <https://docs.aspose.com/words/python-net/working-with-charts/>` documentation article.'''
    ...

    @property
    def shape_type(self) -> aspose.words.drawing.charts.ChartShapeType:
        '''Gets or sets the shape type of the parent chart element.
        
        Currently, the property can only be used for data labels.'''
        ...
    
    @shape_type.setter
    def shape_type(self, value: aspose.words.drawing.charts.ChartShapeType):
        ...
    
    ...
}
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to format data labels as callouts. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.pydrawing import Color
from aspose.words.drawing.charts import ChartType, ChartShapeType

doc = Document()
builder = DocumentBuilder(doc)

shape = builder.insert_chart(ChartType.COLUMN, 432, 252)
chart = shape.chart

# Delete default generated series.
chart.series.clear()

# Add new series.
series = chart.series.add("AW Series 1", ["AW Category 1", "AW Category 2", "AW Category 3", "AW Category 4"],
                          [100, 200, 300, 400])

# Show data labels.
series.has_data_labels = True
series.data_labels.show_value = True

# Format data labels as callouts.
format = series.data_labels.format
format.stroke.color = Color.gray
format.shape_type = ChartShapeType.WEDGE_RECT_CALLOUT

doc.save("Callouts.docx")
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to set fill and stroke formatting to data labels. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.pydrawing import Color
from aspose.words.drawing.charts import ChartType

doc = Document()
builder = DocumentBuilder(doc)

shape = builder.insert_chart(ChartType.COLUMN, 432, 252)
chart = shape.chart

# Delete default generated series.
chart.series.clear()

# Add new series.
series = chart.series.add("AW Series 1", ["AW Category 1", "AW Category 2", "AW Category 3", "AW Category 4"],
                          [100, 200, 300, 400])

# Show data labels.
series.has_data_labels = True
series.data_labels.show_value = True

# Set fill and stroke for all data labels.
format = series.data_labels.format
format.stroke.color = Color.dark_green
format.fill.solid(Color.green)
series.data_labels.font.color = Color.yellow

# Change fill and stroke of an individual data label.

labelFormat = series.data_labels[0].format
labelFormat.stroke.color = Color.dark_blue
labelFormat.fill.solid(Color.blue)

doc.save("FillAndStroke.docx")
{{< /highlight >}}

### Supported table-column data bands and conditional blocks for LINQ Reporting Engine

The following sections of the engine's documentation were added or updated to describe the change (see attachments):

Starting from this version, LINQ Reporting Engine supports table-column data bands and conditional blocks making it possible to affect table columns in addition to table rows while filling a table template with data. This enables you to build tables growing horizontally or even in the both directions - vertically and horizontally - depending on bound data. Also, showing or hiding a table column depending on a condition becomes available in this release as well.

### Removed obsolete property Fill.On

The following obsolete public property is removed from **Aspose.Words.Drawing.Fill** class.

We also decided to leave obsolete property **Fill.Color** along with a new **Fill.ForeColor**, as these two methods have slightly different behavior in regarding transparency.

{{< highlight python >}}
@property
def color(self) -> aspose.pydrawing.Color:
    '''Gets or sets a Color object that represents the foreground color for the fill.
    
    This property preserves the alpha component of the System.Drawing.Color,
    unlike the :attr:`Fill.fore_color` property, which resets it to fully opaque color.'''
    ...

@property
def fore_color(self) -> aspose.pydrawing.Color:
    '''Gets or sets a Color object that represents the foreground color for the fill.
    
    This property resets the alpha component of the System.Drawing.Color to fully
    opaque color unlike the :attr:`Fill.color` property, which preserves it.'''
    ...

@fore_color.setter
def fore_color(self, value: aspose.pydrawing.Color):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with Fill color and visibility. Please see the following code example to learn how to use such a properties:

{{% /alert %}}

{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.drawing import ShapeType
from aspose.pydrawing import Color

builder = DocumentBuilder()

shape = builder.insert_shape(ShapeType.BALLOON, 300, 300)
# Set color with transparency.
shape.fill.color = Color.from_argb(128, Color.red)

# Fill.color preserves alpha component of the color.
print(f"Fill.color: [A={shape.fill.color.a}, R={shape.fill.color.r}, G={shape.fill.color.g}, "
      f"B={shape.fill.color.b}]")

# Fill.fore_color ignores alpha component of the color.
print(f"Fill.fore_color: [A={shape.fill.fore_color.a}, R={shape.fill.fore_color.r}, G={shape.fill.fore_color.g}, "
      f"B={shape.fill.fore_color.b}]")

# Use Fill.visible instead of obfuscated Fill.on property to determine fill visibility.
print(f"Fill.Visible: {shape.fill.visible}")

# Make fill invisible.
shape.fill.visible = False
print(f"Fill.Visible: {shape.fill.visible}")

/* This code produces the following output:
Fill.color: [A=128, R=255, G=0, B=0]
Fill.fore_color: [A=255, R=255, G=0, B=0]
Fill.Visible: True
Fill.Visible: False
 */
{{< /highlight >}}

### Added a new LowCode methods intended to merge a variety of different types of documents into a single output document

Added a new **LowCode.Merger** class, which represents a group of methods intended to merge a variety of different types of documents into a single output document.

The following overloads were provided:

{{< highlight python >}}
class Merger:
    '''Represents a group of methods intended to merge a variety of different types of documents into a single output document.
    
    The specified input and output files or streams, along with the desired merge and save options,
    are used to merge the given input documents into a single output document.
    
    The merging functionality supports over 35 different file formats.'''
    
    @overload
    @staticmethod
    def merge(self, output_file: str, input_files: list[str]) -> None:
        '''Merges the given input documents into a single output document using specified input and output file names.
        
        :param output_file: The output file name.
        :param input_files: The input file names.
        
        By default :attr:`MergeFormatMode.KEEP_SOURCE_FORMATTING` is used.'''
        ...
    
    @overload
    @staticmethod
    def merge(self, output_file: str, input_files: list[str], save_format: aspose.words.SaveFormat, merge_format_mode: aspose.words.lowcode.MergeFormatMode) -> None:
        '''Merges the given input documents into a single output document using specified input output file names and the final document format.
        
        :param output_file: The output file name.
        :param input_files: The input file names.
        :param save_format: The save format.
        :param merge_format_mode: Specifies how to merge formatting that clashes.'''
        ...
    
    @overload
    @staticmethod
    def merge(self, output_file: str, input_files: list[str], save_options: aspose.words.saving.SaveOptions, merge_format_mode: aspose.words.lowcode.MergeFormatMode) -> None:
        '''Merges the given input documents into a single output document using specified input output file names and save options.
        
        :param output_file: The output file name.
        :param input_files: The input file names.
        :param save_options: The save options.
        :param merge_format_mode: Specifies how to merge formatting that clashes.'''
        ...
    
    @overload
    @staticmethod
    def merge(self, input_files: list[str], merge_format_mode: aspose.words.lowcode.MergeFormatMode) -> aspose.words.Document:
        '''Merges the given input documents into a single document and returns :class:`aspose.words.Document` instance of the final document.
        
        :param input_files: The input file names.
        :param merge_format_mode: Specifies how to merge formatting that clashes.'''
        ...
    
    @overload
    @staticmethod
    def merge(self, output_stream: io.BytesIO, input_streams: list[io.BytesIO], save_format: aspose.words.SaveFormat) -> None:
        '''Merges the given input documents into a single output document using specified input output streams and the final document format.
        
        :param output_stream: The output stream.
        :param input_streams: The input streams.
        :param save_format: The save format.'''
        ...
    
    @overload
    @staticmethod
    def merge(self, output_stream: io.BytesIO, input_streams: list[io.BytesIO], save_options: aspose.words.saving.SaveOptions, merge_format_mode: aspose.words.lowcode.MergeFormatMode) -> None:
        '''Merges the given input documents into a single output document using specified input output streams and save options.
        
        :param output_stream: The output stream.
        :param input_streams: The input streams.
        :param save_options: The save options.
        :param merge_format_mode: Specifies how to merge formatting that clashes.'''
        ...
    
    @overload
    @staticmethod
    def merge(self, input_streams: list[io.BytesIO], merge_format_mode: aspose.words.lowcode.MergeFormatMode) -> aspose.words.Document:
        '''Merges the given input documents into a single document and returns :class:`aspose.words.Document` instance of the final document.
        
        :param input_streams: The input streams.
        :param merge_format_mode: Specifies how to merge formatting that clashes.'''
        ...
    
    ...
{{< /highlight >}}

Added a new **MergeFormatMode** class, which specifies how formatting is merged when combining multiple documents.

{{< highlight python >}}
 class MergeFormatMode:
    '''Specifies how formatting is merged when combining multiple documents.'''
    
    MERGE_FORMATTING: int
    KEEP_SOURCE_FORMATTING: int
    KEEP_SOURCE_LAYOUT: int
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to merge multiple documents (DOCX, PDF, DOC, RTF) into a single PDF document. Please see the following code example to learn how to use such a simple low-code method:

{{% /alert %}}

{{< highlight python >}}
 from aspose.words.lowcode import Merger
# Merges multiple documents(DOCX, PDF, DOC, RTF) into a single PDF document.
Merger.merge("out.pdf", ["in.docx", "in.pdf", "in.doc", "in.rtf"])
{{< /highlight >}}