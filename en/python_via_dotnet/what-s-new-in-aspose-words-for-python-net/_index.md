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

## Aspose.Words for Python via .NET 24.1, 24.2

Aspose.Words 24.1 improves the experience around managing stroke colors, enhances OLE objects, as well as introduces a new `Bibliography Sources` public API.

Aspose.Words 24.2 expanded Charts API and style management. This version of Aspose.Words also introduced the capability to specify SvgSaveOptions during rendering, more flexible control loading Markdown files, and working with reference text for footnotes and endnotes.

### Rendering and Printing

#### Stroke Color Control <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) class has been extended with a set of new public properties related to managing stroke colors: **ForeThemeColor** and **BackThemeColor**, **ForeTintAndShade** and **BackTintAndShade**.

#### DrawingML Charts API Extension <sup>24.2</sup>

The **DrawingML Charts API** continues to be expanded.

### Loading and Saving Documents

#### Specify SvgSaveOptions During Rendering <sup>24.2</sup>

The capability to specify [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) during rendering has been added using the [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) and [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) methods.

#### Preserve Empty Lines when Loading Markdown files <sup>24.2</sup>

The ability to preserve empty lines when loading Markdown files has been added.

### Other

* The capability to modify the text of the `TextBox` OLE control has been introduced by adding a new **Text** property to the new **TextBoxControl** class. <sup>24.1</sup>
* The Bibliography Sources public API was implemented through the adding a new namespace **Aspose.Words.Bibliography** with its new classes and enumerations, and through the adding a new **Bibliography** property to the **Document** class. <sup>24.1</sup>
* New public properties [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/), and [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) for enhanced style management have been added to the [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) class. <sup>24.2</sup>
* The functionality to retrieve the actual reference mark text for footnotes and endnotes has been enhanced with the [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) property and the [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) method. <sup>24.2</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 24.1 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Learn more about [Aspose.Words for Python via .NET 24.2 Release Notes](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

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

## Aspose.Words for Python via .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 introduces support for new loading formats and a new print page size, as well as improves some rendering options.

Aspose.Words 22.6 expands the possibilities of converting PDF to other formats, as well as improve work with DrawingML and solid text fill effect.

Aspose.Words 22.7 enhances the possibilities of working with rendering features, and also adds new features for working with HTML import and export to PDF.

Aspose.Words 22.8 introduces a new export format and improves various rendering algorithms.

The API is enhanced for more flexible and convenient development.

### Supported Formats

* Support for loading EPUB and XML documents has been introduced by adding new values to the **LoadFormat** enumeration. Starting from version 22.5, it is possible to load EPUB and XML documents into Aspose.Words document model and convert them to any [supported formats](/words/python-net/supported-document-formats/). <sup>22.5</sup>
* Starting from version 22.8, it is possible to save a document in AZW3 format – Amazon Kindle's proprietary e-book file format (KF8 is another name for the format). Now you can not only load AZW3 documents, but also export your files to AZW3 format, which is essentially a compiled EPUB. <sup>22.8</sup>

### Rendering and Printing

#### New Printing Size <sup>22.5</sup>

Support for the “Envelope No. 10” print page size has been added by introducing a new value to the [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/) enumeration.

#### Rendering MathML Formulas <sup>22.5</sup>

The rendering of a border box around MathML formulas and font detection when rendering characters for such formulas has been improved.

#### DML Chart Improvements <sup>22.6</sup>

DrawingML charts public API has been extended to support gradient, texture, and pattern fills.

#### Glyph Outlines Parsing for OpenType <sup>22.7</sup>

Aspose.Words own glyph outlines parsing for OpenType (CFF) fonts has been implemented.

Previously, glyph parsing for OpenType (CFF) fonts was performed via GDI+. So now it works in cases where GDI+ is not available – Java, .NET Standard platforms, Linux, macOS, etc. Glyph outlines parsing is required in specific cases like WordArt, text effects, some Office Math features, and others.

#### Set Shape Shadow Formatting <sup>22.7</sup>

The ability to set the shadow formatting of the shape object has been provided by adding a new [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/) property.

#### Support for Cell Spacing in Tables <sup>22.8</sup>

The layout engine is now significantly improved: a very complex cell spacing mechanism in tables has been implemented.

#### Font Substitution for Symbols <sup>22.8</sup>

Font substitution for symbols has been improved.

#### Chart Axis Label Rotation Algorithm <sup>22.8</sup>

The rotation algorithm of chart axis labels has been improved.

### Loading and Saving documents

#### Load and Convert PDF to Fixed-page Format without Layout Model <sup>22.6</sup>

The ability to load and convert PDF documents to fixed page formats with high fidelity and performance has been implemented.

#### New HTML Import Mode <sup>22.7</sup>

A new HTML import mode for block-level elements has been introduced by adding a new value to the [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/) enumeration.

#### Convert to PDF/UA-1 Compliant with WCAG 2.0 <sup>22.7</sup>

Support for converting a document to PDF/UA-1 format, compliant with WCAG 2.0, has been added.

So, if the customer has an accessible Word document and converts it to PDF/UA-1 via Aspose.Words mentioning the conversion specifics, then the output will be WCAG 2.0 compatible.

WCAG or Web Content Accessibility Guidelines is a set of guidelines developed by W3C in collaboration with individuals and organizations all over the world. Now with Aspose.Words you can convert your document to the output PDF/UA-1 format, which is suitable to build WCAG 2.0 compliant PDF documents.

It is worth noting that WCAG 2.0 has two additional requirements that are not specified in the PDF/UA-1 specification:

- contrast requirements
- requirements for tagging multimedia content

But both requirements are not relevant to our case of converting from Word to PDF.

### Other

Exception of inheriting the solid text fill effect that mimics MS Word behavior has been implemented. <sup>22.6</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 22.5 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.6 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.7 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.8 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words for Python via .NET 22.3, 22.4

Aspose.Words 22.3 expands the possibilities of working with PDF and TXT formats and improves the work of some existing algorithms and engines.

Aspose.Words 22.4 enhances PDF capabilities – now you can save a file in PDF/A-4 format and get a number of other improvements in PDF output. At the same time, Aspose.Words 22.4 provides additional abilities to work with DML charts, read the Photoshop metadata, and import HTML block-level elements.

The API is enhanced for more flexible and convenient development.

### Supported Features

Starting with Aspose.Words 22.4, support for Python 3.10 has been added.

### Performance Improvements

Loading a previously saved font search cache to speed up the font cache initialization process upon rendering has been implemented. Now your solutions will work even faster.

### Supported Formats

Loading a document in AZW3 format (KF8 is another name for the format) has been added. Now you can load an AZW3 document and convert it to any other supported formats.

### Rendering

#### Rendering MathML Formulas

The rendering of operators in MathML formulas has been improved.

#### DML Chart Improvements

The following improvements have been made to the DML charts:

* The DML chart axis scaling algorithm has been improved to be the same as in MS Word

* The ability to manipulate with DrawingML chart legend entries has been provided to make our chart API more and more comprehensive
* The ability to specify the name of an xls/xlsx file the DrawingML chart is linked to has been implemented

#### Rendering to PDF with PDF/A-4 Compliance

Rendering into PDF with PDF/A-4 compliance has been added by adding new values to the [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) enumeration – [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4). This option assumes revised conformance levels: regular PDF/A-4 conformance is equivalent to conformance level U of previous versions, and the level A conformance is removed.

#### Reading of Photoshop metadata resolution in JPEG

Reading of Photoshop metadata resolution in JPEG images has been implemented to fix an interesting issue with incorrect scaling of images upon rendering.

#### Allow Latin Text to Wrap in the Middle of a Word

Support for the "Allow Latin text to wrap in the middle of a word" feature has been implemented to make our Latin support even better upon rendering.

### Loading and Saving Documents

#### Controlling Style Behavior When Loading a Document

A new option [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/) has been introduced to control the behavior of conflicting styles upon document import.

#### Convert Shapes to SVG When Exporting

The ability to convert shapes to SVG images upon exporting to HTML, MHTML, or EPUB has been provided by adding the [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/) property.

#### Saving to PDF 2.0 and Improvements in PDF Output

The ability to save a document as PDF 2.0 by adding a new value to the [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) enumeration, as well as several other requested improvements to PDF output, have been introduced.

#### New HTML Import Mode

A new import mode for HTML block-level elements has been implemented to mimic Microsoft Word behavior.

### Other

* The ability to get OOXML of a content control and save it to string has been introduced.
* Recognition of non-standard footnotes in PDF documents on import has been added.
* An ability to get custom field data that is associated with the field has been added.
* The table comparing algorithm relying on deep analysis of Microsoft Word comparison mechanism has been improved.
* The comments syntax in LINQ Reporting engine has been provided.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 22.3 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.4 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/).

{{% /alert %}}

## See Also

{{% alert color="primary" %}}

This page contains the latest release news for the past 2 years. For details on earlier releases, see the [Release Notes'](/words/python-net/release-notes/) pages in the relevant sections.

{{% /alert %}}