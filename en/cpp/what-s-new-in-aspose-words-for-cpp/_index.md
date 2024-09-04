---
title: What's new
second_title: Aspose.Words for C++
articleTitle: What's new in Aspose.Words for C++
linktitle: What's new in Aspose.Words for C++
type: docs
description: "Aspose.Words for C++ expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 2
url: /cpp/what-s-new-in-aspose-words-for-cpp/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

## Aspose.Words for C++ 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 expands options for assemblies, improves rendering capabilities, and expands some other options.

Aspose.Words 24.6 improves rendering options, enhances search and compare functionality, and expands several other features.

Aspose.Words 24.7 changes how you work with ActiveX, expands rendering capabilities, as well as exporting to Markdown and XLSX formats.

Aspose.Words 24.8 enhances chart customization with precise control over axis labels, expands font management, improves document structure handling, and adds new capabilities for HTML/XAML export, PDF functionality, document conversion, and digital signatures.

### Supported Formats

Starting from version 24.7, export to PDF/UA-2 is supported to ensure accessibility for users with disabilities.

### Rendering and Printing

#### Changes in Charts, Shapes and DrawingML <sup>24.5</sup>

- DrawingML effects rendering for SVG graphics, extending previous functionality limited to images, has been implemented.
- Support for creating combo charts and adjusting properties such as gap width, overlap, and bubble scale within series groups has been introduced by adding the **ChartSeriesGroup** and **ChartSeriesGroupCollection** classes and the **SeriesGroups** property.
- Functionality to manipulate the SoftEdge effect of shapes has been implemented by adding the **SoftEdgeFormat** class.
- The ability to modify adjust values of shapes has been implemented by adding the **AdjustmentCollection** and **Adjustment** public classes and **Adjustments** property.

#### Changes in Charts, Shapes and Drawing <sup>24.6</sup>

- Charting capabilities have been enhanced. You can now create a wider variety of charts, including *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* charts, *Box & Whisker* charts, *Waterfalls*, and *Funnels*. This allows you to visualize your data in a more diverse and informative way.
- Color control for shadow formatting has been improved. You can gain more precise control over the appearance of your documents by accessing shadow colors.
- Performance boost for background rendering has been improved. You can significantly speed up the rendering of backgrounds containing small elements thanks to native tiling technology.
- Realistic gradients for shapes have been added. You can now create DML shapes with non-linear gradients, mimicking the visual style of Microsoft Word for a more polished look.

#### Chart Data Label Customization <sup>24.7</sup>

The ability to customize chart data labels such as **Orientation** and **Rotation** has been added.

#### Custom Number Styling for List Levels <sup>24.7</sup>

A setter for the public property [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) has been added. You can now define a custom number styling for list levels.

#### Changes in working with ActiveX <sup>24.7</sup>

- The properties of ActiveX objects can now be modified, giving you more control over their behavior.
- The ability to modify the value of the radio button ActiveX control to enable dynamic interaction has been added.
- The ability to toggle an ActiveX checkbox to "checked" or "unchecked" has been added.

#### Control Over the Chart Axis Tick Labels Orientation and Rotation <sup>24.8</sup>

Precise control over the orientation and rotation of chart axis tick labels has been added for more convenient chart customization – the AxisTickLabels class has been extended with new Orientation and Rotation properties.

#### Replacing the Backslash with the Yen Sign <sup>24.8</sup>

The backwards compatible HTML and XAML export for replacing the backslash character with the Yen sign has been improved. To achieve this, the ReplaceBackslashWithYenSign property has been added to the HtmlSaveOptions and XamlFlowSaveOptions classes.

#### Using SDT Tags as Form Field Names when Exporting to PDF <sup>24.8</sup>

PDF export with support for using SDT tags as form field names has been enhanced by adding a new UseSdtTagAsFormFieldName property to the PdfSaveOptions class.

### Converting, Loading and Saving Documents

#### Exporting Links to Markdown Format <sup>24.7</sup>

The ability to control the export of links in Markdown format has been added through the implementation of the [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/) property.

#### LowCode 24.8 <sup>24.8</sup>

A new LowCode.Converter class, designed to provide a set of methods for converting various document types with a single line of code, has been introduced.

### Search and Compare

#### Advanced Comparison Options <sup>24.6</sup>

The ability to streamline data analysis workflows with improved comparison functionality has been added. This includes a new **IgnoreStoreItemId** option and a redesigned interface for advanced comparisons.

### Other

* The function to eliminate empty pages from a document has been implemented by adding the [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/) method. <sup>24.5</sup>
* The ability  to check for the presence of VBA macros without loading a document has been provided by adding the **HasMacros** property. <sup>24.5</sup>
* A new **DateTimeUtc** property has been added – this provides a more precise timestamp for comments, improving organization and traceability. <sup>24.6</sup>
* The datetime format is now automatically detected for seamless export to XLSX format. <sup>24.7</sup>
* The public property [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), which allows you to verify whether a VBA project is protected, has been added. <sup>24.7</sup>
* Font information has been expanded with the **EmbeddingLicensingRights** property added to the FontInfo and PhysicalFontInfo classes. <sup>24.8</sup>
* A way to efficiently clear section headers and footers while preserving watermarks has been added to more accurately work with document structure. To clear section headers and footers, use the new public method ClearHeadersFooters. <sup>24.8</sup>
* Digital signing of XPS documents using XpsSaveOptions has been enabled – a new property DigitalSignatureDetails has been added for this purpose. <sup>24.8</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 24.5 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Learn more about [Aspose.Words for C++ 24.6 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Learn more about [Aspose.Words for C++ 24.7 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

Learn more about [Aspose.Words for C++ 24.8 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words for C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 improves the experience around managing stroke colors, enhances OLE objects, as well as introduces a new Bibliography Sources public API.

Aspose.Words 24.2 expanded Charts API and style management. This version of Aspose.Words also introduced the capability to specify SvgSaveOptions during rendering, more flexible control loading Markdown files, and working with reference text for footnotes and endnotes.

Aspose.Words 24.3 introduces Emulation of binary raster operations for WMF metafiles and also continues to expand the Charts API.

Aspose.Words 24.4 enhances some rendering options, as well as improves work with digital signatures.

### Rendering and Printing

#### Stroke Color Control <sup>24.1</sup>

The [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) class has been extended with a set of new public properties related to managing stroke colors: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) and [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) and [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### DrawingML Charts API Extension <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** continues to be expanded.

#### Embed Fonts Declared in @font-face Rules <sup>24.4</sup>

Added an ability to embed fonts declared in @font-face rules into the resulting document’s font definitions has been introduced by adding a new [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) property.

#### Work with Glow and Reflection Formatting <sup>24.4</sup>

The ability to work with glow and reflection formatting for a drawing object has been implemented.

### Loading and Saving Documents

#### Specify SvgSaveOptions During Rendering <sup>24.2</sup>

The capability to specify [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) during rendering has been added using the [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) and [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) methods.

#### Preserve Empty Lines when Loading Markdown files <sup>24.2</sup>

The ability to preserve empty lines when loading Markdown files has been added.

### Other

- The capability to modify the text of the `TextBox` OLE control has been introduced by adding a new **Text** property to the new **TextBoxControl** class. <sup>24.1</sup>
- The Bibliography Sources public API was implemented through the adding a new namespace [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) with its new classes and enumerations, and through the adding a new [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) property to the [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) class. <sup>24.1</sup>
- New public properties [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/), and [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) for enhanced style management have been added to the [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) class. <sup>24.2</sup>
- The functionality to retrieve the actual reference mark text for footnotes and endnotes has been enhanced with the [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) property and the [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/) method. <sup>24.2</sup>
- Emulation of binary raster operations for WMF metafiles has been implemented. <sup>24.3</sup>
- The capability to define signature options for documents within **SaveOptions** has been enabled by adding a new **DigitalSignatureDetails** class with new public members, as well as adding new properties to the [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) and [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/) classes. <sup>24.4</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 24.1 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Learn more about [Aspose.Words for C++ 24.2 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Learn more about [Aspose.Words for C++ 24.3 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Learn more about [Aspose.Words for C++ 24.4 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words for C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 expands rendering options, metafile rendering emulation, and markdown save options.

Aspose.Words 23.10 improves rendering, expands options for loading and saving documents, and allows users to merge documents in new ways.

Aspose.Words 23.11 enhances the work with revisions, XLSX format and fonts on chart legend with additional options.

Aspose.Words 23.12 introduces new properties and enumerations for working with PDF and OOXML documents, as well as support for WebP images.

### Rendering and Printing

#### Customizing Axes Titles in DrawingML Charts <sup>23.9</sup>

The capability to customize axis titles in DrawingML charts has been introduced by the implementation of a new public class **ChartAxisTitle** and [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) property.

#### Determining the Vertical Position of Fonts within a Paragraph <sup>23.9</sup>

It is now possible to define the vertical position of fonts within a paragraph using the new public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) property and the new [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) enumeration.

#### Foreground Color Control <sup>23.10</sup>

The ability to retrieve the foreground color without modifiers has been added to the [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) and [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) classes via the **BaseForeColor** property.

#### Expanding the Functionality of Charts <sup>23.10</sup>

The functionality of the [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/), and [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) classes has been expanded with new methods and properties.

#### Automatically Adjust and Fit an Image into a Shape <sup>23.10</sup>

A simple way to automatically adjust and fit an image within a particular shape has been provided through the new [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) method.

#### Default Font Formatting for DrawingML Chart Legend Entries <sup>23.11</sup>

The ability to specify default font formatting for legend entries of DrawingML charts has been added via the [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/) property. This feature facilitates a more streamlined and consistent appearance for chart elements, improving the overall document aesthetics.

#### Specify Page Layout when Opening PDF in Reader <sup>23.12</sup>

The ability to specify the page layout to be used when opening a document in a PDF reader has been added through the introduction of a new **PageLayout** property to the [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) class and the introduction of a new **PdfPageLayout** enumeration.

### Loading and Saving Documents

#### Specifying a Folder Name to Construct Image URIs in Markdown <sup>23.9</sup>

The [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) class has been expanded by including the [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/) property, which allows to specifies the name of the folder used to construct image URIs written into the Markdown document.

#### Reduce PDF Output Size <sup>23.10</sup>

Various PDF rendering optimizations to reduce output size when utilizing [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) settings have been implemented.

#### Recognize Hyperlinks when Loading TXT Documents <sup>23.10</sup>

The feature to recognize hyperlinks when loading TXT documents has been implemented by adding a new [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) property.

### Other

- Metafile rendering emulation to determine rasterization size has been implemented, specifically for WMF pen width and EMF cosmetic pen width. To achieve this, the **ScaleWmfFontsToMetafileSize** property was replaced with the [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) property and the [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) property was added. <sup>23.9</sup>
* A simplified method for inserting one document into another document at the current cursor position has been introduced using the [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/) method. <sup>23.10</sup>
* The ability to access and modify style properties has been added through the introduction of the new [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) property.  <sup>23.10</sup>
* A generic type parameter has been added to the methods of the [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) class. <sup>23.10</sup>
* A way to control when a certain revision should be accepted/rejected or not has been implemented by using the [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) and [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) methods. This enhancement grants users finer control over the revision process. <sup>23.11</sup>
* The ability to write all sections of a document onto the same XLSX worksheet has been provided through the new [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) enumeration type and the new [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) property. <sup>23.11</sup>
* A way to control how ZIP64 format extensions will be used for OOXML documents has been implemented through the new Zip64Mode property of the `OoxmlSaveOptions` class and the new Zip64Mode enumeration. <sup>23.12</sup>
* Support for WebP image has been introduced. Please note that this feature is only available for .NetStandart and .NET6+ versions. <sup>23.12</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 23.9 Release Notes](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Learn more about [Aspose.Words for C++ 23.10 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Learn more about [Aspose.Words for C++ 23.11 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Learn more about [Aspose.Words for C++ 23.12 Release Notes](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words for C++ 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 enhances the ability to work with chart series data and the ability to work with ODT documents, as well as improve headers/footers and their text wrapping.

Aspose.Words 23.6 expands rendering options, adds a new export format, improves LowCode tools.

Aspose.Words 23.7 enhances reporting capabilities, adds a new export format, and introduces changes to working with tables and digital signatures.

Aspose.Words 23.8 expands the capabilities of different formats, improves rendering, and adds new options for working with fields. 

### Supported Formats

* Starting with version 23.6, it is possible to save a document in XLSX format. Now you can convert your documents to Excel format. <sup>23.6</sup>
* Starting with version 23.7, it is possible to save a document page or shape in EPS format. <sup>23.7</sup>

### New Format Features

- The functionality to automatically generate Table of Contents (TOC) for MOBI documents has been introduced. <sup>23.8</sup>
- The [PdfEncryptionDetails](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) constructor has been expanded with [PdfPermissions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
- Shaping of vertical text for EMF metafiles has been implemented. <sup>23.8</sup>

### Rendering

#### Get and Modify Chart Series Data <sup>23.5</sup>

The feature to get and modify chart series data was provided by adding:

- new classes: [ChartXValue](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartmultilevelvalue/)
- new enum types: [ChartXValueType](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartyvaluetype/)

#### Support for Advanced Typography <sup>23.6</sup>

Support for Advanced Typography in WMF, EMF and EMF+ rendering has been added.

#### Colored Content on the Page <sup>23.6</sup>

The public property [PageInfo.Colored](https://reference.aspose.com/words/cpp/aspose.words.rendering/pageinfo/get_colored/), indicating whether the page is colored or not, has been added.

#### Formatting for Chart Data Labels <sup>23.6</sup>

The ability to set fill, stroke, and callout formatting for chart data labels has been implemented.

### Mail Merge and Reporting

#### Mustache Tags Support <sup>23.7</sup>

Mustache tags are now supported in the [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getregionshierarchy/) and [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/) methods.

#### Specifying the Size of Rendered Images <sup>23.8</sup>

A new public property [ImageSize](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagesize/) for specifying the size of rendered images in pixel has been introduced.

### LowCode <sup>23.6</sup>

New LowCode methods intended to merge different types of documents into a single output document have been added.

### Other

- Support for text wrapping in headers/footers has been implemented. <sup>23.5</sup>
- The ability to remove digital signatures from ODT documents has been added through the [RemoveAllSignatures](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) method. <sup>23.5</sup>
- The public property [PhoneticGuide](https://reference.aspose.com/words/cpp/aspose.words/run/get_phoneticguide/) to obtain the base and ruby text of the phonetic guide [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) has been added. <sup>23.5</sup>
- The ability to retrieve a digital signature value from a digitally signed document as a byte array has been added by introducing a new [SignatureValue](https://reference.aspose.com/words/cpp/aspose.words.digitalsignatures/digitalsignature/get_signaturevalue/) property. <sup>23.7</sup>
- The [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) and [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) classes have been extended with new public members – [Row.NextRow](https://reference.aspose.com/words/cpp/aspose.words.tables/row/get_nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/cpp/aspose.words.tables/row/get_previousrow/), [Cell.NextCell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/get_nextcell/), and [Cell.PreviousCell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/get_previouscell/). <sup>23.7</sup>
- Support for CITATION and BIBLIOGRAPHY fields has been added. <sup>23.8

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 23.5 Release Notes](/words/cpp/aspose-words-for-cpp-23-5-release-notes/).

Learn more about [Aspose.Words for C++ 23.6 Release Notes](/words/cpp/aspose-words-for-cpp-23-6-release-notes/).

Learn more about [Aspose.Words for C++ 23.7 Release Notes](/words/cpp/aspose-words-for-cpp-23-7-release-notes/).

Learn more about [Aspose.Words for C++ 23.8 Release Notes](/words/cpp/aspose-words-for-cpp-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words for C++ 23.1, 23.2, 23.3, 23.4

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

The [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) class has been extended with a set of new public properties related to background and foreground colors: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/get_forethemecolor/) and [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/get_foretintandshade/) and [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/get_backtintandshade/).

#### Radial Gradients with the `SkiaSharp` Native Shader <sup>23.3</sup>

Rendering of radial gradients with the `SkiaSharp` native shader for .NET Standard has been implemented.

#### Distance Between the Table and Surrounding Text <sup>23.4</sup>

The ability to set the distance between the table and surrounding text has been added by introducing new properties to the [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) class: [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/), [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/), [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/), and [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/).

### Loading and Saving Documents

#### Generate `TOC` for AZW3 Documents <sup>23.1</sup>

The ability to generate `TOC` (table of contents) for AZW3 documents has been added through the use of the [NavigationMapLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_navigationmaplevel/) property.

#### Exporting List Items to Markdown <sup>23.1</sup>

A way to control the export of list items to Markdown format has been provided by adding the **ListExportMode** property to the [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) class.

#### Document Saving Progress Notifications <sup>23.3</sup>

Saving progress notifications for MOBI and AZW3 formats has been implemented.

#### Sentence and Word Spacing Adjustment  <sup>23.3</sup>

The ability to specify whether to adjust sentence and word spacing automatically upon document import has been added by introducing the [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_adjustsentenceandwordspacing/) property.

### Other

- The ability to specify the character spacing adjustment of a document has been added through the [JustificationMode](https://reference.aspose.com/words/cpp/aspose.words/document/get_justificationmode/) property implementation <sup>23.2</sup>
- The way to instruct Aspose.Words whether to include textboxes, footnotes, and endnotes in word count statistics has been provided by adding the [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/cpp/aspose.words/document/get_includetextboxesfootnotesendnotesinstat/) property <sup>23.2</sup>
- A new option for a document style, which allows specifying whether the style is automatically redefined based on the appropriate value, has been introduced through the [AutomaticallyUpdate](https://reference.aspose.com/words/cpp/aspose.words/style/get_automaticallyupdate/) property <sup>23.2</sup>
- The ability to determine whether [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) is a phonetic guide run has been added using the [IsPhoneticGuide](https://reference.aspose.com/words/cpp/aspose.words/run/get_isphoneticguide/) property <sup>23.4</sup>
- A simple way to work with series and axes of combo charts has been implemented by introducing the [ChartAxisCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxiscollection/) class and adding the [Chart.Axes](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chart/get_axes/) property <sup>23.4</sup>
- New public properties connected to the shape relative positioning and sizing have been added to the [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) class <sup>23.4</sup>
- Accuracy and performance of color brightness calculation for automatic text color resolution has been improved in accordance with the latest versions of Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 23.1 Release Notes](/words/cpp/aspose-words-for-cpp-23-1-release-notes/).

Learn more about [Aspose.Words for C++ 23.2 Release Notes](/words/cpp/aspose-words-for-cpp-23-2-release-notes/).

Learn more about [Aspose.Words for C++ 23.3 Release Notes](/words/cpp/aspose-words-for-cpp-23-3-release-notes/).

Learn more about [Aspose.Words for C++ 23.4 Release Notes](/words/cpp/aspose-words-for-cpp-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words for C++ 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 expands options for loading and saving documents and improved interaction with some other options.

Aspose.Words 22.10 improves find and replace options, enhances OLE objects, and expands list functionality.

Aspose.Words 22.11 expands its functionality with new options for more convenient work with already familiar objects: fields, printing, OLE and structured document tags.

Aspose.Words 22.12 enhances rendering capabilities and introduces options for working with margins when loading/saving a document.

### Performance Improvements <sup>22.12</sup>

An optimization that significantly reduces the depth of graphics state nesting when rendering to PDF to maintain specification compliance has been introduced.

### Rendering and Printing

#### Printing Non-colored Pages on a Color Printer <sup>22.11</sup>

A custom colored/grayscale print mode has been implemented by adding a new **GrayscaleAuto** value to the [ColorPrintMode](https://reference.aspose.com/words/cpp/aspose.words.rendering/colorprintmode/) enumeration.

A new print property allows users to control how non-colored pages are printed if the device supports color printing. This feature can be useful if users want to automatically print non-colored pages using only grayscale printing mode.

#### New Border Rendering Properties <sup>22.12</sup>

New public properties **ThemeColor** and **TintAndShade** have been introduced.

#### Linear Trendline Formula for DrawingML Rendering <sup>22.12</sup>

Linear trendline formula rendering for DrawingML charts has been implemented.

#### Font Fallback Settings for Google Noto Fonts <sup>22.12</sup>

The predefined font fallback settings for Google Noto fonts have been updated.

### Loading and Saving Documents

#### Cache Header or Footer Shapes to Reduce PDF size <sup>22.9</sup>

The ability to cache header/footer shapes to reduce the size of the output PDF file has been implemented by adding a new **CacheHeaderFooterShapes** property.

Renamed to [CacheBackgroundGraphics](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_cachebackgroundgraphics/) on 22.11.

#### Automatic Numbering Detection when Loading a Document <sup>22.9</sup>

The ability to specify the [AutoNumberingDetection](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_autonumberingdetection/) property upon text loading has been implemented through an extended of the [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) class.

#### Specifying a Particular Margin Type <sup>22.12</sup>

The ability to specify a particular **Margin** type for the given section has been implemented.

#### Specifying a Particular Margin Type <sup>22.12</sup>

The ability to specify a particular **Margin** type for the given section has been implemented.

### Search and Compare <sup>22.10</sup>

The ability to ignore [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/) upon find and replace options has been implemented by adding a new [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorestructureddocumenttags/) property to the [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/) class.

### Other

- A new feature to get FieldEQ as an OfficeMath has been added. <sup>22.9</sup>
- The creation of structured document tags of Group type at the Row level was allowed. <sup>22.9</sup>
- OLE objects and controls are now treated as metafile images when converting a document to HTML. <sup>22.10</sup>
- A new feature to check that a particular list was created from the same template as the compared list has been added by introducing a new [HasSameTemplate](https://reference.aspose.com/words/cpp/aspose.words.lists/list/hassametemplate/) method into the [List](https://reference.aspose.com/words/cpp/aspose.words.lists/list/) class. <sup>22.10</sup>
- The ability to create new structured document tags of the [Citation](https://reference.aspose.com/words/cpp/aspose.words.markup/sdttype/) type has been added. <sup>22.11</sup>
- The ability to track the field updating progress has been provided. <sup>22.11</sup>
- A new **EmbedAttachments** property that allows users to embed OLE attachments from a source document into the output PDF document has been introduced. <sup>22.11</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for С++ 22.9 Release Notes](/words/cpp/aspose-words-for-cpp-22-9-release-notes/).

Learn more about [Aspose.Words for С++ 22.10 Release Notes](/words/cpp/aspose-words-for-cpp-22-10-release-notes/).

Learn more about [Aspose.Words for С++ 22.11 Release Notes](/words/cpp/aspose-words-for-cpp-22-11-release-notes/).

Learn more about [Aspose.Words for С++ 22.12 Release Notes](/words/cpp/aspose-words-for-cpp-22-12-release-notes/).

{{% /alert %}}

## See Also

{{% alert color="primary" %}}

This page contains the latest release news for the past 2 years. For details on earlier releases, see the [Release Notes'](/words/cpp/release-notes/) pages in the relevant sections.

{{% /alert %}}