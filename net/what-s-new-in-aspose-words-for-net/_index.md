---
Stitle: What's new
second_title: Aspose.Words for .NET
articleTitle: What's new in Aspose.Words for .NET
linktitle: What's new in Aspose.Words for .NET
type: docs
description: "Aspose.Words for .NET expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 10
url: /net/what-s-new-in-aspose-words-for-net/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

## Aspose.Words for .NET 24.1

Aspose.Words 24.1 improves the experience around managing stroke colors, enhances OLE objects and LINQ reporting, as well as introduces a new Bibliography Sources public API.

### Rendering and Printing

#### Stroke Color Control <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) class has been extended with a set of new public properties related to managing stroke colors: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) and [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) and [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

### Other

* The capability to modify the text of the `TextBox` OLE control has been introduced by adding a new [Text](https://reference.aspose.com/words/net/aspose.words.forms2/textboxcontrol/text/) property to the new [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.forms2/textboxcontrol/) class. <sup>24.1</sup>
* The Bibliography Sources public API was implemented through the adding a new namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) with its new classes and enumerations, and through the adding a new [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) property to the [Document](https://reference.aspose.com/words/net/aspose.words/document/) class. <sup>24.1</sup>
* An API to limit access to type members using template syntax for the LINQ Reporting Engine has been provided. <sup>24.1</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 24.1 Release Notes](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expands rendering options, metafile rendering emulation, and markdown save options.

Aspose.Words 23.10 improves rendering, expands options for loading and saving documents, and allows users to merge documents in new ways.

Aspose.Words 23.11 enhances the work with revisions, XLSX format and fonts on chart legend with additional options.

Aspose.Words 23.12 introduces new properties and enumerations for working with PDF and OOXML documents, as well as support for WebP images.

### Rendering and Printing

#### Customizing Axes Titles in DrawingML Charts <sup>23.9</sup>

The capability to customize axis titles in DrawingML charts has been introduced by the implementation of a new public class [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) and [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) property.

#### Determining the Vertical Position of Fonts within a Paragraph <sup>23.9</sup>

It is now possible to define the vertical position of fonts within a paragraph using the new public [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) property and the new [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) enumeration.

#### Foreground Color Control <sup>23.10</sup>

The ability to retrieve the foreground color without modifiers has been added to the [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) and [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) classes via the **BaseForeColor** property.

#### Expanding the Functionality of Charts <sup>23.10</sup>

The functionality of the [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/), and [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) classes has been expanded with new methods and properties.

#### Automatically Adjust and Fit an Image into a Shape <sup>23.10</sup>

A simple way to automatically adjust and fit an image within a particular shape has been provided through the new [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) method.

#### Default Font Formatting for DrawingML Chart Legend Entries <sup>23.11</sup>

The ability to specify default font formatting for legend entries of DrawingML charts has been added via the [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) property. This feature facilitates a more streamlined and consistent appearance for chart elements, improving the overall document aesthetics.

#### Specify Page Layout when Opening PDF in Reader <sup>23.12</sup>

The ability to specify the page layout to be used when opening a document in a PDF reader has been added through the introduction of a new [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) property to the [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) class and the introduction of a new [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) enumeration.

### Loading and Saving Documents

#### Specifying a Folder Name to Construct Image URIs in Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) class has been expanded by including the [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) property, which allows to specifies the name of the folder used to construct image URIs written into the Markdown document.

#### Reduce PDF Output Size <sup>23.10</sup>

Various PDF rendering optimizations to reduce output size when utilizing [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) settings have been implemented.

#### Recognize Hyperlinks when Loading TXT Documents <sup>23.10</sup>

The feature to recognize hyperlinks when loading TXT documents has been implemented by adding a new [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) property.

### Other

* Metafile rendering emulation to determine rasterization size has been implemented, specifically for WMF pen width and EMF cosmetic pen width. To achieve this, the **ScaleWmfFontsToMetafileSize** property was replaced with the [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) property and the [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) property was added. <sup>23.9</sup>
* A simplified method for inserting one document into another document at the current cursor position has been introduced using the [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/) method. <sup>23.10</sup>
* The ability to access and modify style properties has been added through the introduction of the new [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) property.  <sup>23.10</sup>
* A generic type parameter has been added to the methods of the [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) class. <sup>23.10</sup>
* A way to control when a certain revision should be accepted/rejected or not has been implemented by using the [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) and [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) methods. This enhancement grants users finer control over the revision process. <sup>23.11</sup>
* The ability to write all sections of a document onto the same XLSX worksheet has been provided through the new [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) enumeration type and the new [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) property. <sup>23.11</sup>
* A way to control how ZIP64 format extensions will be used for OOXML documents has been implemented through the new Zip64Mode property of the `OoxmlSaveOptions` class and the new Zip64Mode enumeration. <sup>23.12</sup>
* Support for WebP image has been introduced. Please note that this feature is only available for .NetStandart and .NET6+ versions. <sup>23.12</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 23.9 Release Notes](/words/net/aspose-words-for-net-23-9-release-notes/).

Learn more about [Aspose.Words for .NET 23.10 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Learn more about [Aspose.Words for .NET 23.11 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Learn more about [Aspose.Words for .NET 23.12 Release Notes](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 enhances the ability to work with chart series data and the ability to work with ODT documents, as well as improve headers/footers and their text wrapping.

Aspose.Words 23.6 expands rendering options, adds a new export format, improves LINQ reporting and LowCode tools.

Aspose.Words 23.7 enhances reporting capabilities, adds a new export format, and introduces changes to working with tables and digital signatures.

Aspose.Words 23.8 expands the capabilities of different formats, improves rendering, and adds new options for working with fields. 

### Supported Formats

* Starting with version 23.6, it is possible to save a document in XLSX format. Now you can convert your documents to Excel format. <sup>23.6</sup>
* Starting with version 23.7, it is possible to save a document page or shape in EPS format. <sup>23.7</sup>

### New Format Features

* The functionality to automatically generate Table of Contents (TOC) for MOBI documents has been introduced. <sup>23.8</sup>
* The [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) constructor has been expanded with [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* Shaping of vertical text for EMF metafiles has been implemented. <sup>23.8</sup>

### Rendering and Printing

#### Get and Modify Chart Series Data <sup>23.5</sup>

The feature to get and modify chart series data was provided by adding:

* new classes: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* new enum types: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Support for Advanced Typography <sup>23.6</sup>

Support for Advanced Typography in WMF, EMF and EMF+ rendering has been added.

#### Colored Content on the Page <sup>23.6</sup>

The public property [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), indicating whether the page is colored or not, has been added.

#### Formatting for Chart Data Labels <sup>23.6</sup>

The ability to set fill, stroke, and callout formatting for chart data labels has been implemented.

### Mail Merge and Reporting

#### Dynamic HTML Insertion for LINQ Reporting Engine <sup>23.6</sup>

A new way of dynamic HTML insertion for LINQ Reporting Engine has been added.

#### Mustache Tags Support <sup>23.7</sup>

Mustache tags are now supported in the [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) and [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) methods.

#### LINQ Reporting Engine Template Syntax Updates <sup>23.7</sup>

The LINQ Reporting Engine template syntax now supports the `ElementAt` and ElementAtOrDefault extension methods.

#### Specifying the Size of Rendered Images <sup>23.8</sup>

A new public property [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) for specifying the size of rendered images in pixel has been introduced.

#### Preserve Whitespaces for JSON String Values – LINQ <sup>23.8</sup>

An option has been added to the LINQ Reporting Engine to preserve whitespaces for JSON string values.

### LowCode <sup>23.6</sup>

New LowCode methods intended to merge different types of documents into a single output document have been added.

### Other

* Support for text wrapping in headers/footers has been implemented. <sup>23.5</sup>
* The ability to remove digital signatures from ODT documents has been added through the [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) method. <sup>23.5</sup>
* The public property [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) to obtain the base and ruby text of the phonetic guide [Run](https://reference.aspose.com/words/net/aspose.words/run/) has been added. <sup>23.5</sup>
* The ability to retrieve a digital signature value from a digitally signed document as a byte array has been added by introducing a new [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) property. <sup>23.7</sup>
* The [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) and [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) classes have been extended with new public members – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/), and [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* Support for CITATION and BIBLIOGRAPHY fields has been added. <sup>23.8</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 23.5 Release Notes](/words/net/aspose-words-for-net-23-5-release-notes/).

Learn more about [Aspose.Words for .NET 23.6 Release Notes](/words/net/aspose-words-for-net-23-6-release-notes/).

Learn more about [Aspose.Words for .NET 23.7 Release Notes](/words/net/aspose-words-for-net-23-7-release-notes/).

Learn more about [Aspose.Words for .NET 23.8 Release Notes](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 23.1, 23.2, 23.3, 23.4

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

The [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) class has been extended with a set of new public properties related to background and foreground colors: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) and [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) and [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Radial Gradients with the `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering of radial gradients with the `SkiaSharp` native shader for .NET Standard has been implemented.

#### Distance Between the Table and Surrounding Text <sup>23.4</sup>

The ability to set the distance between the table and surrounding text has been added by introducing new properties to the [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) class: [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/), and [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Loading and Saving Documents

#### Generate TOC for AZW3 Documents <sup>23.1</sup>

The ability to generate TOC (table of contents) for AZW3 documents has been added through the use of the [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) property.

#### Exporting List Items to Markdown <sup>23.1</sup>

A way to control the export of list items to Markdown format has been provided by adding the [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) property to the [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) class.

#### Document Saving Progress Notifications <sup>23.3</sup>

Saving progress notifications for MOBI and AZW3 formats has been implemented.

#### Sentence and Word Spacing Adjustment  <sup>23.3</sup>

The ability to specify whether to adjust sentence and word spacing automatically upon document import has been added by introducing the [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) property.

### Other

* The ability to specify the character spacing adjustment of a document has been added through the [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) property implementation <sup>23.2</sup>
* The way to instruct Aspose.Words whether to include textboxes, footnotes, and endnotes in word count statistics has been provided by adding the [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) property <sup>23.2</sup>
* A new option for a document style, which allows specifying whether the style is automatically redefined based on the appropriate value, has been introduced through the [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) property <sup>23.2</sup>
* The ability to determine whether [Run](https://reference.aspose.com/words/net/aspose.words/run/) is a phonetic guide run has been added using the [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) property <sup>23.4</sup>
* A simple way to work with series and axes of combo charts has been implemented by introducing the [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) class and adding the [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) property <sup>23.4</sup>
* New public properties connected to the shape relative positioning and sizing have been added to the [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) class <sup>23.4</sup>
* Accuracy and performance of color brightness calculation for automatic text color resolution has been improved in accordance with the latest versions of Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 23.1 Release Notes](/words/net/aspose-words-for-net-23-1-release-notes/).

Learn more about [Aspose.Words for .NET 23.2 Release Notes](/words/net/aspose-words-for-net-23-2-release-notes/).

Learn more about [Aspose.Words for .NET 23.3 Release Notes](/words/net/aspose-words-for-net-23-3-release-notes/).

Learn more about [Aspose.Words for .NET 23.4 Release Notes](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 expands options for loading and saving documents and improved interaction with some other options.

Aspose.Words 22.10 improves find and replace options, enhances OLE objects, and expands list functionality.

Aspose.Words 22.11 expands its functionality with new options for more convenient work with already familiar objects: fields, printing, OLE and structured document tags.

Aspose.Words 22.12 enhances rendering capabilities and introduces options for working with margins when loading/saving a document.

### Performance Improvements <sup>22.12</sup>

An optimization that significantly reduces the depth of graphics state nesting when rendering to PDF to maintain specification compliance has been introduced.

### Rendering and Printing

#### Printing Non-colored Pages on a Color Printer <sup>22.11</sup>

A custom colored/grayscale print mode has been implemented by adding a new **GrayscaleAuto** value to the [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/) enumeration.

A new print property allows users to control how non-colored pages are printed if the device supports color printing. This feature can be useful if users want to automatically print non-colored pages using only grayscale printing mode.

#### New Border Rendering Properties <sup>22.12</sup>

New public properties [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) and [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) have been introduced.

#### Linear Trendline Formula for DrawingML Rendering <sup>22.12</sup>

Linear trendline formula rendering for DrawingML charts has been implemented.

#### Font Fallback Settings for Google Noto Fonts <sup>22.12</sup>

The predefined font fallback settings for Google Noto fonts have been updated.

### Loading and Saving Documents

#### Cache Header or Footer Shapes to Reduce PDF Size <sup>22.9</sup>

The ability to cache header/footer shapes to reduce the size of the output PDF file has been implemented by adding a new **CacheHeaderFooterShapes** property.

#### Automatic Numbering Detection when Loading a Document <sup>22.9</sup>

The ability to specify the [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) property upon text loading has been implemented through an extended of the [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) class.

#### Specifying a Particular Margin Type <sup>22.12</sup>

The ability to specify a particular [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) type for the given section has been implemented.

### Search and Compare <sup>22.10</sup>

The ability to ignore [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) upon find and replace options has been implemented by adding a new [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) property to the [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) class.

### Other

* A new feature to get FieldEQ as an OfficeMath has been added. <sup>22.9</sup>
* The creation of structured document tags of Group type at the Row level was allowed. <sup>22.9</sup>
* OLE objects and controls are now treated as metafile images when converting a document to HTML. <sup>22.10</sup>
* A new feature to check that a particular list was created from the same template as the compared list has been added by introducing a new [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) method into the [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) class. <sup>22.10</sup>
* The ability to create new structured document tags of the [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) type has been added. <sup>22.11</sup>
* The ability to track the field updating progress has been provided. <sup>22.11</sup>
* A new **EmbedAttachments** property that allows users to embed OLE attachments from a source document into the output PDF document has been introduced. <sup>22.11</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 22.9 Release Notes](/words/net/aspose-words-for-net-22-9-release-notes/).

Learn more about [Aspose.Words for .NET 22.10 Release Notes](/words/net/aspose-words-for-net-22-10-release-notes/).

Learn more about [Aspose.Words for .NET 22.11 Release Notes](/words/net/aspose-words-for-net-22-11-release-notes/).

Learn more about [Aspose.Words for .NET 22.12 Release Notes](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 introduces support for new loading formats and a new print page size, as well as improves some rendering options.

Aspose.Words 22.6 expands the possibilities of converting PDF to other formats, as well as improve work with DrawingML and solid text fill effect.

Aspose.Words 22.7 enhances the possibilities of working with rendering features, and also adds new features for working with HTML import and export to PDF.

Aspose.Words 22.8 introduces a new export format and improves various rendering algorithms.

The API is enhanced for more flexible and convenient development.

### Supported Formats

* Support for loading EPUB and XML documents has been introduced by adding new values to the [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) enumeration. Starting from version 22.5, it is possible to load EPUB and XML documents into Aspose.Words document model and convert them to any [supported formats](https://reference.aspose.com/words/net/aspose.words/saveformat/). <sup>22.5</sup>
* Starting from version 22.8, it is possible to save a document in AZW3 format – Amazon Kindle's proprietary e-book file format (KF8 is another name for the format). Now you can not only load AZW3 documents, but also export your files to AZW3 format, which is essentially a compiled EPUB. <sup>22.8</sup>

### Rendering and Printing

#### New Printing Size <sup>22.5</sup>

Support for the “Envelope No. 10” print page size has been added by introducing a new value to the [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/) enumeration.

#### Rendering MathML Formulas <sup>22.5</sup>

The rendering of a border box around MathML formulas and font detection when rendering characters for such formulas has been improved.

#### DML Chart Improvements <sup>22.6</sup>

DrawingML charts public API has been extended to support gradient, texture, and pattern fills.

#### Glyph Outlines Parsing for OpenType <sup>22.7</sup>

Aspose.Words own glyph outlines parsing for OpenType (CFF) fonts has been implemented.

Previously, glyph parsing for OpenType (CFF) fonts was performed via GDI+. So now it works in cases where GDI+ is not available – Java, .NET Standard platforms, Linux OS, etc. Glyph outlines parsing is required in specific cases like WordArt, text effects, some Office Math features, and others.

#### Set Shape Shadow Formatting <sup>22.7</sup>

The ability to set the shadow formatting of the shape object has been provided by adding a new [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/) property.

#### Support for Cell Spacing in Tables <sup>22.8</sup>

The layout engine is now significantly improved: a very complex cell spacing mechanism in tables has been implemented.

#### Font Substitution for Symbols <sup>22.8</sup>

Font substitution for symbols has been improved.

#### Chart Axis Label Rotation Algorithm <sup>22.8</sup>

The rotation algorithm of chart axis labels has been improved.

### Loading and Saving Documents

#### Load and Convert PDF to Fixed-page Format without Layout Model <sup>22.6</sup>

The ability to load and convert PDF documents to fixed page formats with high fidelity and performance has been implemented.

#### New HTML Import Mode <sup>22.7</sup>

A new HTML import mode for block-level elements has been introduced by adding a new value to the [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/) enumeration.

#### Convert to PDF/UA-1 CSompliant with WCAG 2.0 <sup>22.7</sup>

Support for converting a document to PDF/UA-1 format, compliant with WCAG 2.0, has been added.

So, if the customer has an accessible Word document and converts it to PDF/UA-1 via Aspose.Words mentioning the conversion specifics, then the output will be WCAG 2.0 compatible.

WCAG or Web Content Accessibility Guidelines is a set of guidelines developed by W3C in collaboration with individuals and organizations all over the world. Now with Aspose.Words you can convert your document to the output PDF/UA-1 format, which is suitable to build WCAG 2.0 compliant PDF documents.

It is worth noting that WCAG 2.0 has two additional requirements that are not specified in the PDF/UA-1 specification:

* contrast requirements

* requirements for tagging multimedia content

But both requirements are not relevant to our case of converting from Word to PDF.

### Other

* Exception of inheriting the solid text fill effect that mimics MS Word behavior has been implemented. <sup>22.6</sup>
* Support of the `DATABASE` fields has been added. Using this type of field, you can, for example, show the results of a database query in a Microsoft Word table. <sup>22.7</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 22.5 Release Notes](/words/net/aspose-words-for-net-22-5-release-notes/).

Learn more about [Aspose.Words for .NET 22.6 Release Notes](/words/net/aspose-words-for-net-22-6-release-notes/).

Learn more about [Aspose.Words for .NET 22.7 Release Notes](/words/net/aspose-words-for-net-22-7-release-notes/).

Learn more about [Aspose.Words for .NET 22.8 Release Notes](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## See Also

{{% alert color="primary" %}}

This page contains the latest release news for the past 2 years. For details on earlier releases, see the [Release Notes'](/words/net/release-notes/) pages in the relevant sections.

{{% /alert %}}