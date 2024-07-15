---
title: What's new
second_title: Aspose.Words for Python via .NET
articleTitle: What's new in Aspose.Words for Python via .NET
linktitle: What's new in Aspose.Words for Python via .NET
type: docs
description: "Aspose.Words for Python via .NET expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 10
url: /python-net/what-s-new-in-aspose-words-for-python-net/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

## Aspose.Words for Python via .NET 24.5, 24.6, 24.7

Aspose.Words 24.5 expands options for assemblies, improves rendering capabilities, and expands some other options.

Aspose.Words 24.6 improves rendering options, enhances search and compare functionality, and expands several other features.

Aspose.Words 24.7 changes how you work with ActiveX, expands rendering capabilities, as well as exporting to Markdown and XLSX formats.

### Supported Formats

Starting from version 24.7, export to PDF/UA-2 is supported to ensure accessibility for users with disabilities.

### Rendering and Printing

#### Changes in Charts, Shapes and DrawingML <sup>24.5</sup>

* DrawingML effects rendering for SVG graphics, extending previous functionality limited to images, has been implemented.
* Support for creating combo charts and adjusting properties such as gap width, overlap, and bubble scale within series groups has been introduced by adding the [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) and [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) classes and the [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) property.
* Functionality to manipulate the SoftEdge effect of shapes has been implemented by adding the [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/) class.
* The ability to modify adjust values of shapes has been implemented by adding the **AdjustmentCollection** and **Adjustment** public classes and [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) property.

#### Changes in Charts, Shapes and Drawing <sup>24.6</sup>

- Charting capabilities have been enhanced. You can now create a wider variety of charts, including *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* charts, *Box & Whisker* charts, *Waterfalls*, and *Funnels*. This allows you to visualize your data in a more diverse and informative way.
- Color control for shadow formatting has been improved. You can gain more precise control over the appearance of your documents by accessing shadow colors.
- Performance boost for background rendering has been improved. You can significantly speed up the rendering of backgrounds containing small elements thanks to native tiling technology.
- Realistic gradients for shapes have been added. You can now create DML shapes with non-linear gradients, mimicking the visual style of Microsoft Word for a more polished look.

#### Chart Data Label Customization <sup>24.7</sup>

The ability to customize chart data labels such as **Orientation** and **Rotation** has been added.

#### Custom Number Styling for List Levels <sup>24.7</sup>

A setter for the public property [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/) has been added. You can now define a custom number styling for list levels.

#### Changes in working with ActiveX <sup>24.7</sup>

- The properties of ActiveX objects can now be modified, giving you more control over their behavior.
- The ability to modify the value of the radio button ActiveX control to enable dynamic interaction has been added.
- The ability to toggle an ActiveX checkbox to "checked" or "unchecked" has been added.

### Loading and Saving Documents

#### Exporting Links to Markdown Format <sup>24.7</sup>

The ability to control the export of links in Markdown format has been added through the implementation of the [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/) property.

### Search and Compare

#### Advanced Comparison Options <sup>24.6</sup>

The ability to streamline data analysis workflows with improved comparison functionality has been added. This includes a new [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) option and a redesigned interface for advanced comparisons.

### Other

* The function to eliminate empty pages from a document has been implemented by adding the [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/) method. <sup>24.5</sup>
* The ability  to check for the presence of VBA macros without loading a document has been provided by adding the [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/) property. <sup>24.5</sup>
* Keeping source numbering while inserting a document using the LINQ Reporting Engine is now supported. <sup>24.5</sup>
* A new [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) property has been added – this provides a more precise timestamp for comments, improving organization and traceability. <sup>24.6</sup>
* The datetime format is now automatically detected for seamless export to XLSX format. <sup>24.7</sup>
* The public property [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), which allows you to verify whether a VBA project is protected, has been added. <sup>24.7</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 24.5 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Learn more about [Aspose.Words for Python via .NET 24.6 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Learn more about [Aspose.Words for Python via .NET 24.7 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words for Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 improves the experience around managing stroke colors, enhances OLE objects, as well as introduces a new `Bibliography Sources` public API.

Aspose.Words 24.2 expanded Charts API and style management. This version of Aspose.Words also introduced the capability to specify SvgSaveOptions during rendering, more flexible control loading Markdown files, and working with reference text for footnotes and endnotes.

Aspose.Words 24.3 introduces a new TIFF Reader/Writer and Emulation of binary raster operations for WMF metafiles. Aspose.Words 24.3 also continues to expand the Charts API.

Aspose.Words 24.4 enhances saving formats, some rendering options, as well as improves work with digital signatures.

### Supported Formats <sup>24.4</sup>

The modern **WebP** image format is now supported in Aspose.Words for .NET Framework 4.6.2 and higher. You can now read and insert WebP images into documents, as well as save images in WebP format.

Please note that WebP is currently only available in .NET Standard and .NET Framework v4.6.2 and above.

### Rendering and Printing

#### Stroke Color Control <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) class has been extended with a set of new public properties related to managing stroke colors: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) and [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) and [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### DrawingML Charts API Extension <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** continues to be expanded.

#### Embed Fonts Declared in @font-face Rules <sup>24.4</sup>

Added an ability to embed fonts declared in @font-face rules into the resulting document’s font definitions has been introduced by adding a new [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/) property.

#### Work with Glow and Reflection Formatting <sup>24.4</sup>

The ability to work with glow and reflection formatting for a drawing object has been implemented.

### Loading and Saving Documents

#### Specify SvgSaveOptions During Rendering <sup>24.2</sup>

The capability to specify [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) during rendering has been added using the [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) and [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) methods.

#### Preserve Empty Lines when Loading Markdown files <sup>24.2</sup>

The ability to preserve empty lines when loading Markdown files has been added.

#### A New TIFF Reader/Writer <sup>24.3</sup>

A new TIFF reader/writer for Aspose.Words has been developed. Aspose.Words for .NET 24.3 added support for reading TIFF images with JPEG and Old JPEG compression types, and also significantly improved the quality of read and write operations.

### Other

* The capability to modify the text of the `TextBox` OLE control has been introduced by adding a new **Text** property to the new **TextBoxControl** class. <sup>24.1</sup>
* The Bibliography Sources public API was implemented through the adding a new namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) with its new classes and enumerations, and through the adding a new [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) property to the [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) class. <sup>24.1</sup>
* New public properties [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), and [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) for enhanced style management have been added to the [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) class. <sup>24.2</sup>
* The functionality to retrieve the actual reference mark text for footnotes and endnotes has been enhanced with the [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) property and the [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) method. <sup>24.2</sup>
* Emulation of binary raster operations for WMF metafiles has been implemented. <sup>24.3</sup>
* The capability to define signature options for documents within **SaveOptions** has been enabled by adding a new [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) class with new public members, as well as adding new properties to the [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) and [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/) classes. <sup>24.4</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 24.1 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Learn more about [Aspose.Words for Python via .NET 24.2 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Learn more about [Aspose.Words for Python via .NET 24.3 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Learn more about [Aspose.Words for Python via .NET 24.4 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words for Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expands rendering options, metafile rendering emulation, and markdown save options.

Aspose.Words 23.10 improves rendering, expands options for loading and saving documents, and allows users to merge documents in new ways.

Aspose.Words 23.11 enhances the work with revisions, XLSX format and fonts on chart legend with additional options.

Aspose.Words 23.12 introduces new properties and enumerations for working with PDF and OOXML documents, as well as support for WebP images.

### Rendering and Printing

#### Customizing Axes Titles in DrawingML Charts <sup>23.9</sup>

The capability to customize axis titles in DrawingML charts has been introduced by the implementation of a new public class [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) and [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) property.

####  Determining the Vertical Position of Fonts within a Paragraph <sup>23.9</sup>

It is now possible to define the vertical position of fonts within a paragraph using the new public [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) property and the new [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) enumeration.

#### Foreground Color Control <sup>23.10</sup>

The ability to retrieve the foreground color without modifiers has been added to the [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) and [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) classes via the **BaseForeColor** property.

#### Expanding the Functionality of Charts <sup>23.10</sup>

The functionality of the [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/), and [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) classes has been expanded with new methods and properties.

#### Automatically Adjust and Fit an Image into a Shape <sup>23.10</sup>

A simple way to automatically adjust and fit an image within a particular shape has been provided through the new [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) method.

#### Default Font Formatting for DrawingML Chart Legend Entries <sup>23.11</sup>

The ability to specify default font formatting for legend entries of DrawingML charts has been added via the [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) property. This feature facilitates a more streamlined and consistent appearance for chart elements, improving the overall document aesthetics.

#### Specify Page Layout when Opening PDF in Reader <sup>23.12</sup>

The ability to specify the page layout to be used when opening a document in a PDF reader has been added through the introduction of a new [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) property to the [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) class and the introduction of a new [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) enumeration.

### Loading and Saving Documents

#### Specifying a Folder Name to Construct Image URIs in Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) class has been expanded by including the [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) property, which allows to specifies the name of the folder used to construct image URIs written into the Markdown document.

#### Reduce PDF Output Size <sup>23.10</sup>

Various PDF rendering optimizations to reduce output size when utilizing [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) settings have been implemented.

#### Recognize Hyperlinks when Loading TXT Documents <sup>23.10</sup>

The feature to recognize hyperlinks when loading TXT documents has been implemented by adding a new [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) property.

### Other

- Metafile rendering emulation to determine rasterization size has been implemented, specifically for WMF pen width and EMF cosmetic pen width. To achieve this, the **ScaleWmfFontsToMetafileSize** property was replaced with the [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) property and the [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) property was added. <sup>23.9</sup>
- A simplified method for inserting one document into another document at the current cursor position has been introduced using the [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) method. <sup>23.10</sup>
- The ability to access and modify style properties has been added through the introduction of the new [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) property.  <sup>23.10</sup>
- A generic type parameter has been added to the methods of the [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) class. <sup>23.10</sup>
- The ability to write all sections of a document onto the same XLSX worksheet has been provided through the new [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) enumeration type and the new [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) property. <sup>23.11</sup>
* A way to control how ZIP64 format extensions will be used for OOXML documents has been implemented through the new Zip64Mode property of the `OoxmlSaveOptions` class and the new Zip64Mode enumeration. <sup>23.12</sup>
* Support for WebP image has been introduced. Please note that this feature is only available for .NetStandart and .NET6+ versions. <sup>23.12</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 23.9 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.10 Release Notes](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.11 Release Notes](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Learn more about [Aspose.Words for .NET 23.12 Release Notes](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words for Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 enhances the ability to work with chart series data and the ability to work with ODT documents, as well as improve headers/footers and their text wrapping.

Aspose.Words 23.6 expands rendering options, adds a new export format, improves LINQ reporting and LowCode tools.

Aspose.Words 23.7 enhances reporting capabilities, adds a new export format, and introduces changes to working with tables and digital signatures.

Aspose.Words 23.8 expands the capabilities of different formats, improves rendering, and adds new options for working with fields. 

### Supported Formats

* Starting with version 23.6, it is possible to save a document in XLSX format. Now you can convert your documents to Excel format. <sup>23.6</sup>

* Starting with version 23.7, it is possible to save a document page or shape in EPS format. <sup>23.7</sup>

### New Format Features

- The functionality to automatically generate Table of Contents (TOC) for MOBI documents has been introduced. <sup>23.8</sup>
- The [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) constructor has been expanded with [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Shaping of vertical text for EMF metafiles has been implemented. <sup>23.8</sup>

### Rendering

#### Get and Modify Chart Series Data <sup>23.5</sup>

The feature to get and modify chart series data was provided by adding:

- new classes: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- new enum types: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Support for Advanced Typography <sup>23.6</sup>

Support for Advanced Typography in WMF, EMF and EMF+ rendering has been added.

#### Colored Content on the Page <sup>23.6</sup>

The public property [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), indicating whether the page is colored or not, has been added.

#### Formatting for Chart Data Labels <sup>23.6</sup>

The ability to set fill, stroke, and callout formatting for chart data labels has been implemented.

### Mail Merge and Reporting

#### Dynamic HTML Insertion for LINQ Reporting Engine <sup>23.6</sup>

A new way of dynamic HTML insertion for LINQ Reporting Engine has been added.

#### Mustache Tags Support <sup>23.7</sup>

Mustache tags are now supported in the [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) and [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) methods.

#### Specifying the Size of Rendered Images <sup>23.8</sup>

A new public property [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) for specifying the size of rendered images in pixel has been introduced.

#### Preserve Whitespaces for JSON String Values – LINQ <sup>23.8</sup>

An option has been added to the LINQ Reporting Engine to preserve whitespaces for JSON string values.

### LowCode <sup>23.6</sup>

New LowCode methods intended to merge different types of documents into a single output document have been added.

### Other

- Support for text wrapping in headers/footers has been implemented. <sup>23.5</sup>
- The ability to remove digital signatures from ODT documents has been added through the [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) method. <sup>23.5</sup>
- The public property [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) to obtain the base and ruby text of the phonetic guide [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) has been added. <sup>23.5</sup>
- The ability to retrieve a digital signature value from a digitally signed document as a byte array has been added by introducing a new [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) property. <sup>23.7</sup>
- The [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) and [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) classes have been extended with new public members – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/), and [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 23.5 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.6 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.7 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.8 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words for Python via .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 improves the performance of raster operation emulation, as well as enhances document exporting and rendering quality.

Aspose.Words 23.2 introduces saving documents in the MOBI format, improves chart rendering, and makes notable changes to document appearance details.

Aspose.Words 23.3 enhances the documents import and saving with new properties, and also improves the quality of work with background and foreground color and radial gradient.

Aspose.Words 23.4 improves the calculation of some parameters and the positioning of the table and surrounding text.

### Performance Improvements

#### Emulation of Raster Operations <sup>23.1</sup>

Performance and quality of emulation of raster operations with metafiles have been significantly improved.

### Supported Formats

#### Export to MOBI <sup>23.2</sup>

Starting with version 23.2, it is possible to save a document in MOBI format (also called PRC, AZW – Amazon Kindle's own e-book file format). Now you can not only load MOBI documents, but also export your files to MOBI format.

### Rendering

#### Work with Shading Theme Colors <sup>23.1</sup>

The ability to work with shading theme colors has been implemented.

#### Support of R-squared Coefficient in DML Charts <sup>23.1</sup>

Support of R-squared coefficient in DML chart trendline labels when rendering has been added.

#### Chart Rendering Improvements <sup>23.2</sup>

Since 23.2 the chart rendering has been significantly improved.

#### Background and Foreground Color Control <sup>23.3</sup>

The [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) class has been extended with a set of new public properties related to background and foreground colors: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) and [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) and [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Radial Gradients with the `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering of radial gradients with the `SkiaSharp` native shader for .NET Standard has been implemented.

#### Distance Between the Table and Surrounding Text <sup>23.4</sup>

The ability to set the distance between the table and surrounding text has been added by introducing new properties to the [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) class: [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/), and [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Loading and Saving Documents

#### Generate `TOC` for AZW3 Documents <sup>23.1</sup>

The ability to generate `TOC` (table of contents) for AZW3 documents has been added through the use of the [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/) property.

#### Exporting List Items to Markdown <sup>23.1</sup>

A way to control the export of list items to Markdown format has been provided by adding the [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) property to the [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) class.

#### Document Saving Progress Notifications <sup>23.3</sup>

Saving progress notifications for MOBI and AZW3 formats has been implemented.

#### Sentence and Word Spacing Adjustment  <sup>23.3</sup>

The ability to specify whether to adjust sentence and word spacing automatically upon document import has been added by introducing the [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) property.

### Other

- The ability to specify the character spacing adjustment of a document has been added through the [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) property implementation <sup>23.2</sup>
- The way to instruct Aspose.Words whether to include textboxes, footnotes, and endnotes in word count statistics has been provided by adding the [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) property <sup>23.2</sup>
- A new option for a document style, which allows specifying whether the style is automatically redefined based on the appropriate value, has been introduced through the [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) property <sup>23.2</sup>
- The ability to determine whether [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) is a phonetic guide run has been added using the [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) property <sup>23.4</sup>
- A simple way to work with series and axes of combo charts has been implemented by introducing the [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) class and adding the [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) property <sup>23.4</sup>
- New public properties connected to the shape relative positioning and sizing have been added to the [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) class <sup>23.4</sup>
- Accuracy and performance of color brightness calculation for automatic text color resolution has been improved in accordance with the latest versions of Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 23.1 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.2 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.3 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Learn more about [Aspose.Words for Python via .NET 23.4 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words for Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 expands options for loading and saving documents and improved interaction with some other options.

Aspose.Words 22.10 improves find and replace options, enhances OLE objects, and expands list functionality.

Aspose.Words 22.11 expands its functionality with new options for more convenient work with already familiar objects: OLE and structured document tags.

Aspose.Words 22.12 enhances rendering capabilities and introduces options for working with margins when loading/saving a document.

### Performance Improvements <sup>22.12</sup>

An optimization that significantly reduces the depth of graphics state nesting when rendering to PDF to maintain specification compliance has been introduced.

### Rendering and Printing

#### New Border Rendering Properties <sup>22.12</sup>

New public properties [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) and [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/) have been introduced.

#### Linear Trendline Formula for DrawingML Rendering <sup>22.12</sup>

Linear trendline formula rendering for DrawingML charts has been implemented.

#### Font Fallback Settings for Google Noto Fonts <sup>22.12</sup>

The predefined font fallback settings for Google Noto fonts have been updated.

### Loading and Saving Documents

#### Cache Header or Footer Shapes to Reduce PDF size <sup>22.9</sup>

The ability to cache header/footer shapes to reduce the size of the output PDF file has been implemented by adding a new **CacheHeaderFooterShapes** property.

#### Automatic Numbering Detection when Loading a Document <sup>22.9</sup>

The ability to specify the [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) property upon text loading has been implemented through an extended of the [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) class.

#### Specifying a Particular Margin Type <sup>22.12</sup>

The ability to specify a particular **Margin** type for the given section has been implemented.

### Search and Compare <sup>22.10</sup>

The ability to ignore [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) upon find and replace options has been implemented by adding a new [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) property to the [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/) class.

### Other

- A new feature to get FieldEQ as an OfficeMath has been added. <sup>22.9</sup>
- The creation of structured document tags of Group type at the Row level was allowed. <sup>22.9</sup>
- OLE objects and controls are now treated as metafile images when converting a document to HTML. <sup>22.10</sup>
- A new feature to check that a particular list was created from the same template as the compared list has been added by introducing a new **HasSameTemplate** method into the [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) class. <sup>22.10</sup>
- The ability to create new structured document tags of the [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) type has been added. <sup>22.11</sup>
- A new **EmbedAttachments** property that allows users to embed OLE attachments from a source document into the output PDF document has been introduced. <sup>22.11</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 22.9 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.10 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.11 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.12 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## See Also

{{% alert color="primary" %}}

This page contains the latest release news for the past 2 years. For details on earlier releases, see the [Release Notes'](https://releases.aspose.com/words/python/release-notes/) pages in the relevant sections.

{{% /alert %}}