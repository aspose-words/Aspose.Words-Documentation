---
title: 23.9 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.9 Release Notes
linktitle: Aspose.Words for Python via .NET 23.9 Release Notes
description: "Aspose.Words for Python via .NET 23.9 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for  [Aspose.Words for Python via .NET 23.9](https://pypi.org/project/aspose-words/23.9.0/).

{{% /alert %}}

## Major Features

There are 69 improvements and fixes in this regular monthly release. The most notable are:

- Released version Aspose.Words for Python via .Net for MacOs X x86/64
- Added an ability to set axis title of charts.
- Extended MarkdownSaveOptions with ImagesFolderAlias property.
- Added an ability to specify fonts vertical position on a line for paragraph.
- Implemented metafile rendering emulation of rasterization size for WMF pen width and EMF cosmetic pen.

## Full List of Issues Covering all Changes in this Release

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues.</summary>

1. Allow getting styleId value form Style
2. Support MarkdownSaveOptions.ImagesFolderAlias
3. Support chart axis title in API
4. Axis title support
5. Add feature to set Axis Title of Chart
6. Support paragraph's property Automatically Adjust Right Indent When Using Document Grid
7. LINQ Reporting Engine - Treat a variable initialized upon a missing member as a missing member
8. Consider moving to SkiaSharp 2.88.3 
9. None of the table lines are being printed on the TIFF image and incorrect table layout
10. Text is Shifted up to Previous Page in output PDF
11. Table lines are not printed on the TIFF image
12. Content is shown incorrectly after report building and converting to PDF
13. Text outline format is lost on CHM loading
14. Invalid license signature error message when a license is applied
15. FileCorruptedException is thrown upon loading DOCX document
16. DOCX to MD: Ticks not converted correctly
17. Content appears on the wrong page in AW layout
18. Incorrect paragraph border position
19. OutOfMemoryException on rendering to PDF
20. DOCX to PDF: different chart label
21. Text is not matched when FindWholeWordsOnly is enabled
22. Make ParagraphFormat.BaselineAlignment public
23. Markdown document with a SVG image embedded as a data URL is imported as plain text
24. Zero-width joiner is not rendered correctly when exporting Word document to PDF
25. REF filed is rendered/updated incorrectly when saving to PDF
26. Exception loading rtf file
27. Date SDT has incorrect value after comparing documents.
28. Leading spaces for the Code 128 font are rendered incorrectly
29. DOCX merging issue
30. Page numbers in TOC is incorrect after rendering
31. Form field font is changed after open/save document as RTF and further rendering to PDF
32. Performance degradation of AppendDocument method after 23.8 version
33. InvalidCastException is thrown while comparing documents
34. EMF cosmetic pen to vector graphics rendering - pictures render incorrectly in PDF
35. Dashed line is rendered with too small step in metafile
36. Text is moved to the previous page after DOCX to PDF conversion 
37. Shape is moved to previous page and overlaps content
38. DOC to PDF: Image is clipped on conversion
39. The size of radical sign according to the font size of the first MathElement
40. Incorrect height calculation of the function if it is part of complex math element
41. FileCorruptedException is thrown upon loading HTML document when BlockImportMode.Preserve is used
42. Double underline looks like a single bold underline in HtmlFixed or PDF
43. The exception is thrown when comparing documents
44. Excel spreadsheet OLE object extracted from DOC cannot be opened
45. NullReferenceException on conversion to PDF
46. IndexOutOfRangeException is thrown on conversion to PDF
47. Textbox is missing on the first page after import
48. Artifact appears after rendering document to PDF with SkiaSharp 2.88.0
49. Incorrect rendering document to PDF
50. Line AutoShape is rendered thinner
51. Aspose.Words 23.8 - evaluation message added if metered license applied
52. Document.UpdateFields() throws 'Invalid document model. Operation can not be completed.'
53. Missing characters after converting PDF to DOCX
54. Metered license not expired but watermark is shown
55. The size of "Sigma" and "Pi" signs is incorrect in "stretch" mode of the N-ary function
56. Transparent page background does not work in EMF using AW EMF renderer
57. Fonts are substituted even when they are availabe in the fonts folder
58. Incorrect rendering of the radical sign
59. Extra memory consumption for metafiles
60. Font size is changed after converting PDF to DOCX
61. DML shape is not detected as a watermark by Aspose.Words
62. InvalidOperationException is thrown when remove hidden bookmark
63. List type is changed after appending documents
64. Inaccurate header export when converting RTF to HTML
65. Font in footer is changed after appending document with KeepSourceFormatting
66. Image is lost upon rendering document on Alpine Linux
67. Inline shape is not clipped by the container table cell on conversion to PDF
68. Unexpected font in output PDF
69. Released version Aspose.Words for Python via .Net for MacOs X x86/64
</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words for Python via .NET which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added an ability to set chart axis title

A new public class **ChartAxisTitle** has been implemented. And a property **title** of this type has been added to **ChartAxis** class.

{{< highlight python >}}
class ChartAxisTitle:
    """Provides access to the axis title properties.
    To learn more, visit the `Working with
                Charts <https://docs.aspose.com/words/python-net/working-with-charts/>` documentation article."""
    
    @property
    def text(self) -> str:
        """Gets or sets the text of the axis title.
        If ``None`` or empty value is specified, auto generated title will be shown.
        
        Use :attr:`ChartAxisTitle.show` option if you need to show the title."""
        ...
    
    @text.setter
    def text(self, value: str):
        ...
    
    @property
    def overlay(self) -> bool:
        """Determines whether other chart elements shall be allowed to overlap the title.
        The default value is ``False``."""
        ...
    
    @overlay.setter
    def overlay(self, value: bool):
        ...
    
    @property
    def show(self) -> bool:
        """Determines whether the title shall be shown for the axis.
        The default value is ``False``."""
        ...
    
    @show.setter
    def show(self, value: bool):
        ...
    

class ChartAxis:

     @property
        def title(self) -> aspose.words.drawing.charts.ChartAxisTitle:
            """Provides access to the axis title properties."""

{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**
This use case explains how to set and show title of X and Y axes:
{{% /alert %}}
{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.drawing.charts import ChartType
doc = Document()

builder = DocumentBuilder(doc)
shape = builder.insert_chart(ChartType.COLUMN, 432, 252)

chart = shape.chart

seriesColl = chart.series
# Delete default generated series.
seriesColl.clear()

seriesColl.add("AW Series 1", ["AW Category 1", "AW Category 2"], [1, 2])

# Set axis title.
chart.axis_x.title.text = "Categories"
chart.axis_x.title.show = True
chart.axis_y.title.text = "Values"
chart.axis_y.title.show = True
chart.axis_y.title.overlay = True

doc.save("Charts.ChartAxisTitle.docx")
{{< /highlight >}}

### Added public property MarkdownSaveOptions.images_folder_alias

A new public property **images_folder_alias** has been added to class **MarkdownSaveOptions**:
{{< highlight python >}}
@property
def images_folder_alias(self) -> str:
    """Specifies the name of the folder used to construct image URIs written into a document.
    Default is an empty string.
    
    When you save a :class:`aspose.words.Document` in :attr:`aspose.words.SaveFormat.MARKDOWN` format,
    Aspose.Words needs to save all images embedded in the document as standalone files.
    :attr:`MarkdownSaveOptions.images_folder` allows you to specify where the images will be saved and
    :attr:`MarkdownSaveOptions.images_folder_alias` allows to specify how the image URIs will be constructed.
    
    If :attr:`MarkdownSaveOptions.images_folder_alias` is not an empty string, then the image URI written
    to Markdown will be *ImagesFolderAlias + \<image file name\>*.
    
    If :attr:`MarkdownSaveOptions.images_folder_alias` is an empty string, then the image URI written
    to Markdown will be *ImagesFolder + \<image file name\>*.
    
    If :attr:`MarkdownSaveOptions.images_folder_alias` is set to '.' (dot), then the image file name
    will be written to Markdown without path regardless of other options."""
    ...

@images_folder_alias.setter
def images_folder_alias(self, value: str):
        ...
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**
This use case explains how to use ImagesFolderAlias property within MarkdownSaveOptions:
{{% /alert %}}
{{< highlight python >}}
from aspose.words import DocumentBuilder
from aspose.words.saving import MarkdownSaveOptions
builder = DocumentBuilder()

builder.writeln("Some image below:")
builder.insert_image("Logo.jpg")

saveOptions = MarkdownSaveOptions()
# Use the "ImagesFolder" property to assign a folder in the local file system into which
# Aspose.Words will save all the document's linked images.
saveOptions.images_folder = "ImagesDir/"
# Use the "ImagesFolderAlias" property to use this folder
# when constructing image URIs instead of the images folder's name.
saveOptions.images_folder_alias = "http://example.com/images"
builder.document.save("MarkdownSaveOptions.ImagesFolder.md", saveOptions)
{{< /highlight >}}

### Added public property ParagraphFormat.baseline_alignment

A new public property **baseline_alignment** has been added to class **ParagraphFormat** and a new public enum has been introduced:
{{< highlight python >}}
@property
def baseline_alignment(self) -> aspose.words.BaselineAlignment:
    """Gets or sets fonts vertical position on a line."""
    ...

@baseline_alignment.setter
def baseline_alignment(self, value: aspose.words.BaselineAlignment):
    ...

class BaselineAlignment:
    """Specifies fonts vertical position on a line."""
{{< /highlight >}}

{{% alert color="secondary" %}}
**Use Case**
This use case explains how to use BaselineAlignment property of a ParagraphFormat:
{{% /alert %}}
{{< highlight python >}}
from aspose.words import BaselineAlignment, Document
doc = Document("Office math.docx")

format_ = doc.first_section.body.paragraphs[0].paragraph_format

if format_.baseline_alignment == BaselineAlignment.AUTO:
    format_.baseline_alignment = BaselineAlignment.TOP

doc.save("ParagraphFormat.ParagraphBaselineAlignment.docx")
{{< /highlight >}}

### Changed MetafileRenderingOptions properties related to metafile size on page emulation

**scale_wmf_fonts_to_metafile_size** property is replaced with **emulate_rendering_to_size_on_page** and added **emulate_rendering_to_size_on_page_resolution**.

{{< highlight python >}}
@property
def emulate_rendering_to_size_on_page(self) -> bool:
    """Gets or sets a value determining whether metafile rendering emulates the display of the metafile according to the size on page
    or the display of the metafile in its default size.
    
    When metafiles are displayed in MS Word, some graphics may be scaled according to the actual metafile size in pixels.
    I.e. even zooming may affect the metafile display.
    
    When this value is set to ``True``, Aspose.Words emulates rendering according to the metafile size on page.
    The size in pixels is calculated from the metafile size on the page and the specified :attr:`MetafileRenderingOptions.emulate_rendering_to_size_on_page_resolution`.
    
    When this value is set to ``False``, Aspose.Words emulates metafile rendering to its default size in pixels.
    
    This option is used only when metafile is rendered as vector graphics.
    
    The default value is ``True``."""
    ...

@emulate_rendering_to_size_on_page.setter
def emulate_rendering_to_size_on_page(self, value: bool):
    ...

@property
def emulate_rendering_to_size_on_page_resolution(self) -> int:
    """Gets or sets the resolution in pixels per inch for the emulation of metafile rendering to the size on page.
    
    This option is used only when :attr:`MetafileRenderingOptions.emulate_rendering_to_size_on_page` is set to ``True``.
    
    The default value is 96. This is a default display resolution. I.e. metafile rendering will emulate the display of
    the metafile in MS Word with a 100% zoom factor."""
    ...

@emulate_rendering_to_size_on_page_resolution.setter
def emulate_rendering_to_size_on_page_resolution(self, value: int):
    ...
{{% alert color="secondary" %}}
**Use Case**

This use case explains how to set the emulate_rendering_to_size_on_page property to emulate rendering according to the metafile size on page:

{{% /alert %}}
{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import PdfSaveOptions
doc = Document("WMF with text.docx")

# Create a "PdfSaveOptions" object that we can pass to the document's "save" method
# to modify how that method converts the document to .PDF.
save_options = PdfSaveOptions()

# Set the "EmulateRenderingToSizeOnPage" property to "true"
# to emulate rendering according to the metafile size on page.
# Set the "EmulateRenderingToSizeOnPage" property to "false"
# to emulate metafile rendering to its default size in pixels.
save_options.metafile_rendering_options.emulate_rendering_to_size_on_page = True
save_options.metafile_rendering_options.emulate_rendering_to_size_on_page_resolution = 50

doc.save("PdfSaveOptions.EmulateRenderingToSizeOnPage.pdf", save_options)
{{< /highlight >}}
