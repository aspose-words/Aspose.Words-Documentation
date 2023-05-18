---
title: 23.1 Release Notes
second_title: Aspose.Words for Python via .NET
articleTitle: Aspose.Words for Python via .NET 23.1 Release Notes
linktitle: Aspose.Words for Python via .NET 23.1 Release Notes
description: "Aspose.Words for Python via .NET 23.1 Release Notes – the latest updates and fixes."
type: docs
weight: 120
url: /python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Python via .NET 23.1](https://www.nuget.org/packages/Aspose.Words/23.1.0).

{{% /alert %}}

## Major Features

There are 75 improvements and fixes in this regular monthly release. The most notable are:

- Significantly improved performance and quality of emulation of raster operations with metafiles.
- Implemented an ability to work with shading theme colors.
- Added the ability to generate TOC (table of contents) for AZW3 documents.
- Provided the way to control how the list items are exported to the Markdown format.
- Added support of R-squared coefficient in DML charts trendline labels when rendering.

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

{{% alert color="secondary" %}}
<details><summary>Expand to view the full list of issues, reported by .NET Users.</summary>

|Key|Summary|Category|
| :- | :- | :- |
|WORDSNET-15063|Add feature to support PDF/X-1a:2001 compliance level|New Feature
|WORDSNET-15131|Support of DOCX to PDF_X_1A conversion|New Feature
|WORDSNET-6609|PDF/X3 support in Aspose.Words|New Feature
|WORDSNET-15132|Support of DOCX to PDF_X_3 conversion|New Feature
|WORDSNET-6615|Support of PdfCompliance PDF/E|New Feature
|WORDSNET-24389|Add TOC (table of contents) to AZW3/MOBI file formats|New Feature
|WORDSNET-24610|Rendering of the coefficient of determination in the trendline data label|New Feature
|WORDSNET-24544|DOCX to MD: Converting to .md file does not change heading numbering|New Feature
|WORDSNET-22857|Document.Compare ignores the Move revisions|New Feature
|WORDSNET-24456|Add Shading.ThemeColor|New Feature
|WORDSNET-24554|Support of manual layout settings for trendline data labels|New Feature
|WORDSNET-24652|Data label font size and color options in charts|Enhancement
|WORDSNET-24257|Consider providing Node.Revisions property to retrieve revisions of the current node|Enhancement
|WORDSNET-23984|Problem when rendering Shape in Header|Enhancement
|WORDSNET-18608|Aspose.Words does not generate Moved Down or Moved Up Revisions during Compare|Enhancement
|WORDSNET-24187|Rendering of document with text effects is slow|Enhancement
|WORDSNET-24742|Inaccurate line wrapping when saving to PDF|Bug
|WORDSNET-18185|Image color is changed after conversion from DOC to HTMLFixed|Bug
|WORDSNET-24587|Text is wrapped improperly upon rendering|Bug
|WORDSNET-23763|Slow rendering of document with metafile|Bug
|WORDSNET-15507|When DOCX is converted to PDF, an image in output looks different|Bug
|WORDSNET-24477|High peak memory usage when working with the document containing a large number of images|Bug
|WORDSNET-24765|EQ fields with math formulas are replaced with "Error" on rendering|Bug
|WORDSNET-24722|GetChildNodes method from StructuredDocumentTag class throws "OutOfMemory" exception|Bug
|WORDSNET-24532|Aspose.Words returns incorrect font for Run with revision|Bug
|WORDSNET-24065|Image resolution is changed after saving to HTML with ScaleImageToShapeSize = false for grouped images|Bug
|WORDSNET-24738|Comparing documents throws "System.ArgumentException"|Bug
|WORDSNET-24745|Document compare throws System.InvalidOperationException: NC sync failed|Bug
|WORDSNET-24750|DOCX to PDF NullReferenceException occurs|Bug
|WORDSNET-24528|Spacing between characters in office math is wrong|Bug
|WORDSNET-24626|Incorrect coefficients of trendline formula after converting to PDF|Bug
|WORDSNET-24744|Incorrect applying of styles for formula|Bug
|WORDSNET-24244|An empty paragraph disappears after saving to HTML|Bug
|WORDSNET-24606|Document tags structure exported to PDF differs from MS Word|Bug
|WORDSNET-24729|Remove empty list levels from PDF logical structure|Bug
|WORDSNET-24693|Column with is wrong after open/save document|Bug
|WORDSNET-24692|Spacing between columns is wrong after open/save document|Bug
|WORDSNET-24530|Unexpected warning while validating the document|Bug
|WORDSNET-24655|Multi-level category labels are lost after open/save DOCX document|Bug
|WORDSNET-24671|NullReferenceException is thrown upon rendering document|Bug
|WORDSNET-24657|Fix the margins for it-It locale|Bug
|WORDSNET-24508|NUMPAGES issue in PageExtractor|Bug
|WORDSNET-23456|Incorrect placement of legend items if the legend has a manual layout|Bug
|WORDSNET-24268|Legend overlaps part of chart|Bug
|WORDSNET-24501|Table header is located on the wrong page when saving to PDF|Bug
|WORDSNET-24500|Incorrect header rendering when saving to PDF|Bug
|WORDSNET-24644|Revision in SDT content is lost after open/save document|Bug
|WORDSNET-21034|Incorrect rendering of Radar Type Chart in PDF|Bug
|WORDSNET-24775|FileCorruptedException is thrown upon loading DOC document|Bug
|WORDSNET-24718|Reference in .NET6 Aspose.Words.Pdf2Word dll|Bug
|WORDSNET-24723|FileCorruptedException on loading ODT document|Bug
|WORDSNET-24725|Allow comparing charts|Bug
|WORDSNET-18547|Missing revision of type Moving after Document.Compare|Bug
|WORDSNET-14445|Document.Compare ignores the Move revisions|Bug
|WORDSNET-24651|PdfJPXDecodeFilter throws NullReferenceException|Bug
|WORDSNET-24650|PdfASCII85DecodeFilter throws ArgumentOutOfRangeException|Bug
|WORDSNET-24661|KeyNotFoundException in SetPageHyperlinksStep|Bug
|WORDSNET-24660|InvalidOperationException: MediaBox is null|Bug
|WORDSNET-24665|IndexOutOfRangeException at SixLabors.ImageSharp.ICC.Calculators.LutCalculator.Lookup()|Bug
|WORDSNET-24526|Moving of the footnote line from the previous page|Bug
|WORDSNET-24347|Table is moved to previous page and overlaps footnote|Bug
|WORDSNET-24627|Secondary axis becomes visible after rendering chart if HarfBuzz text shaping is used|Bug
|WORDSNET-24663|InvalidOperationException: Failed to find the start of the hex number|Bug
|WORDSNET-24678|PdfTilingPatternFactory throws IndexOutOfRangeException|Bug
|WORDSNET-24669|InvalidCastException: Unable to cast PdfIndirectObjectReference to PdfNumber|Bug
|WORDSNET-24640|After copying styles from template style inheritance is incorrect|Bug
|WORDSNET-24656|PdfDCTDecodeFilter throws NullReferenceException|Bug
|WORDSNET-24411|DOCX->HTML->DOCX: Indentation and margins issue|Bug
|WORDSNET-24717|Created two comments instead of comment with reply for ODT/OTT format|Bug
|WORDSNET-24706|Missing content when converting HTML to DOCX|Bug
|WORDSNET-24574|Chart is rendered improperly when PdfA1a compliance is used|Bug
|WORDSNET-24531|DOC to DOCX: "This document contains fields that may refer to other files" message|Bug
|WORDSNET-24495|The insertHtml() method adds indentation|Bug
|WORDSNET-24365|Exported image looks like a screenshot, not as image visible in MS Word|Bug
|WORDSNET-13264|Couple of lines in footer are cutting in PDF/A|Bug

</details>
{{% /alert %}}

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words for Python via .NET 23.1. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added Font property to ChartDataLabel and ChartDataLabelCollection classes

Related issue: WORDSNET-24652

The **Font** property has been added to the **ChartDataLabel** and **ChartDataLabelCollection** classes:

{{< highlight python >}}
class ChartDataLabel:
    @property
    def font(self) -> aspose.words.Font:
        # Provides access to the font formatting of this data label.
        ...

class ChartDataLabelCollection:
    @property
    def font(self) -> aspose.words.Font:
        '''Provides access to the font formatting of the data labels of the entire series.
        
        Value defined for this property can be overridden for an individual data label with using the
        :attr:`ChartDataLabel.font` property.'''
        ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case:**

This use case explains how to work with **Font** in Charts. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Create a column chart.
shape = builder.insert_chart(aw.drawing.charts.ChartType.COLUMN, 432, 252)
series_collection = shape.chart.series
series_collection.clear()

# Add a chart series.
series = series_collection.add("Series 1",
    ["Category 1", "Category 2", "Category 3", "Category 4", "Category 5"],
    [5.5, 2, 3.5, 6, 9])

# Display data labels.
series.has_data_labels = True
labels = series.data_labels
labels.show_value = True

# Set font size for all labels of the series.
labels.font.size = 12

# Let's use a constant for simplicity.
min_value_index = 1
# Let's use a constant for simplicity.
max_value_index = 4

# Mark the labels for the max and min values.
labels[min_value_index].font.size = 14
labels[min_value_index].font.color = drawing.Color.red
labels[max_value_index].font.size = 14
labels[max_value_index].font.color = drawing.Color.green

# Save the document.
doc.save("LabelFont.docx")
{{< /highlight >}}

### Added IgnoreOleData option into LoadOptions class

Related issue: WORDSNET-24477

The **ignore_ole_data** property has been added to the **LoadOptions** class.
May be usefull when destination format does not support OLE.

{{< highlight python >}}
class LoadOptions:
    @property
    def ignore_ole_data(self) -> bool:
        '''Specifies whether to ignore the OLE data.
        
        Ignoring OLE data may reduce memory consumption and increase performance without data lost in a case when destination format does not support OLE objects.
        
        The default value is ``False``.'''
        ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case:**

This use case explains how to work with **ignore_ole_data**. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
lo = aw.loading.LoadOptions()
lo.ignore_ole_data = True
doc = aw.Document("Test.docx", lo)

doc.save("Test.pdf")
{{< /highlight >}}

### Added MetafileRenderingOptions.UseGdiRasterOperationsEmulation and overall improvements in metafile raster operations emulation

Related issue: #WORDSNET-24003

Metafile raster operations emulations have been improved.

Also added an option to use GDI+ in raster operations emulation process.

{{< highlight python >}}
@property
def use_gdi_raster_operations_emulation(self) -> bool:
    '''Gets or sets a value determining whether or not to use the GDI+ for raster operations emulation.
    
    Windows GDI+ library could be used to emulate raster operations. It provides support for all raster operation
    comparing to Aspose.Words own emulation but performance may be slower in some cases.
    
    When this value is set to ``True``, Aspose.Words uses GDI+ for raster operations emulation.
    
    When this value is set to ``False``, Aspose.Words uses its own implementation of raster operations emulation.
    
    This option is used only when metafile is rendered as vector graphics.
    
    The default value is ``False``.'''
    ...
{{< /highlight >}}

### Added new public properties for working with shading theme colors

Related issue: WORDSNET-24456

A new public properties **foreground_pattern_theme_color** and 88background_pattern_theme_color** has been added to the **Shading** class.

{{< highlight python >}}
@property
def foreground_pattern_theme_color(self) -> aspose.words.themes.ThemeColor:
    '''Gets or sets the foreground pattern theme color in the applied color scheme that is associated with this :class:`Shading` object.'''
    ...

@foreground_pattern_theme_color.setter
def foreground_pattern_theme_color(self, value: aspose.words.themes.ThemeColor):
    ...

@property
def background_pattern_theme_color(self) -> aspose.words.themes.ThemeColor:
    '''Gets or sets the background pattern theme color in the applied color scheme that is associated with this :class:`Shading` object.'''
    ...

@background_pattern_theme_color.setter
def background_pattern_theme_color(self, value: aspose.words.themes.ThemeColor):
    ...
{{< /highlight >}}

A new public properties **foreground_tint_and_shade** and **background_tint_and_shade** has been added to the **Shading** class.

{{< highlight python >}}
@property
def foreground_tint_and_shade(self) -> float:
    #Gets or sets a double value that lightens or darkens a foreground theme color.
    ...

@foreground_tint_and_shade.setter
def foreground_tint_and_shade(self, value: float):
    ...

@property
def background_tint_and_shade(self) -> float:
    #Gets or sets a double value that lightens or darkens a background theme color.
    ...

@background_tint_and_shade.setter
def background_tint_and_shade(self, value: float):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to work with shading theme colors. Please see the following code example to learn how to use such properties:

{{% /alert %}}

{{< highlight python >}}
doc = aw.Document("c:\\Documents\\TestDocument.docx")

shading = doc.first_section.body.first_paragraph.paragraph_format.shading
# Gets and sets the values of theme colors.
if shading.foreground_pattern_theme_color == aw.themes.ThemeColor.ACCENT1:
    shading.foreground_pattern_theme_color = ThemeColor.DARK1

if shading.background_pattern_theme_color == aw.themes.ThemeColor.ACCENT2:
    shading.background_pattern_theme_color == aw.themes.ThemeColor.DARK2

# Gets and sets the lightens values.
if shading.foreground_tint_and_shade == 0:
    shading.ForegroundTintAndShade = 0.5

if shading.background_tint_and_shade == 0:
    shading.background_tint_and_shade = -0.2

doc.save("output.docx")
{{< /highlight >}}

### Added public property Range.Revisions

Related issue: WORDSNET-24257

A new public property **revisions** has been added to the **Range** class:

{{< highlight python >}}
@property
def revisions(self) -> aspose.words.RevisionCollection:
    '''Gets a collection of revisions (tracked changes) that exist in this range.
    
    The returned collection is a "live" collection, which means if you remove parts of a document that contain
    revisions, the deleted revisions will automatically disappear from this collection.'''
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to get actual revisions from the node range. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
doc = aw.Document("c:\\Documents\\TestDocument.docx")
# Getting the first paragraph revisions.
paragraph = doc.first_section.body.first_paragraph
for revision in paragraph.range.revisions:
    if revision.revision_type == aw.RevisionType.DELETION:
        revision.accept()
# Getting the first section revisions.
doc.first_section.range.revisions.reject_all()
{{< /highlight >}}

### Added the ability to generate TOC (table of contents) for AZW3 documents

Related issue: WORDSNET-24389

Now Aspose.Words can generate TOC (table of contents) for AZW3 documents.

Desired depth of TOC can be specified same way as it's done for EPUB documents using **HtmlSaveOptions.epub_navigation_map_level** property.

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to create AZW3 document with a two-level TOC. Please see the following code example to learn how to use such a property:

{{% /alert %}}

{{< highlight python >}}
doc = aw.Document()

options = aw.saving.HtmlSaveOptions(aw.SaveFormat.AZW3)
options.epub_navigation_map_level = 2

doc.save(MY_DIR + "DocumentWithTwoLevelTOC.azw3", options)
{{< /highlight >}}

### Added the ability to specify how list items will be written to the Markdown

Related issue: WORDSNET-24544

The following public enumeration is added to **aspose.words.saving** module:

{{< highlight python >}}
class MarkdownListExportMode:
    '''Specifies how lists are exported into Markdown.'''

    # Export list items compatible with Markdown syntax.
    MARKDOWN_SYNTAX: int
    # Export list items as plain text.
    PLAIN_TEXT: int

{{< /highlight >}}

The following public property is added to **MarkdownSaveOptions** class:

{{< highlight python >}}
@property
def list_export_mode(self) -> aspose.words.saving.MarkdownListExportMode:
    '''Specifies how list items will be written to the output file.
    Default value is :attr:`MarkdownListExportMode.MARKDOWN_SYNTAX`.
    
    When this property is set to :attr:`MarkdownListExportMode.PLAIN_TEXT` all list labels are
    updated using :meth:`aspose.words.Document.update_list_labels` and exported with their actual values. Such lists
    can be non-compatible with Markdown format and will be recognized as plain text upon importing in this case.
    
    When this property is set to :attr:`MarkdownListExportMode.MARKDOWN_SYNTAX`, writer tries to export
    list items in manner that allows to numerate list items in automatic mode by Markdown.'''
    ...

@list_export_mode.setter
def list_export_mode(self, value: aspose.words.saving.MarkdownListExportMode):
    ...
{{< /highlight >}}

{{% alert color="secondary" %}}

**Use Case**

This use case explains how to export document with plain text numbering into Markdown. Please see the following code example:

{{% /alert %}}

{{< highlight python >}}
doc = aw.Document("input.docx")

# Set option to export list items as plain text.
options = aw.saving.MarkdownSaveOptions()
options.list_export_mode = aw.saving.MarkdownListExportMode.PLAIN_TEXT
doc.save("output.md", options)
{{< /highlight >}}

### HtmlSaveOptions.ScaleImageToShapeSize now also affects grouped raster images

Related issue: WORDSNET-24065

Behavior of the **HtmlSaveOptions.scale_image_to_shape_size** property was changed to affect groups of raster images.

Previously, **HtmlSaveOptions.scale_image_to_shape_size** didn't affect grouped raster images and they were always scaled to shape size and were rendered using the resolution value specified in **HtmlSaveOptions.image_resolution**. If grouped images were high resolution, their quality would reduce considerably because of scaling.

Now Aspose.Words tries to preserve quality of grouped high resolution images. If a group of raster images is saved to HTML and the **HtmlSaveOptions.scale_image_to_shape_size** property is set to false, Aspose.Words computes max intrinsic resolution among all images in the group and if it is greater than the value specified in **HtmlSaveOptions.image_resolution**, the group is rendered using the computed increased resolution. This doesn't eliminate scaling completely but reduces its impact on grouped high resolution raster images.

### OfficeMath.EquationXmlEncoding property was marked as obsolete

Related issue: WORDSNET-24770

The **OfficeMath.equation_xml_encoding** property has been marked as obsolete because it is not intended to be used in the API.

{{< highlight python >}}
@property
def equation_xml_encoding(self) -> str:
    '''Gets/sets an encoding that was used to encode equation XML, if this office math object is read from
    equation XML.'''
    ...

@equation_xml_encoding.setter
def equation_xml_encoding(self, value: str):
    ...
{{< /highlight >}}