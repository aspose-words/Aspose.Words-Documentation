---
title: What's new
second_title: Aspose.Words for Java
articleTitle: What's new in Aspose.Words for Java
linktitle: What's new in Aspose.Words for Java
type: docs
description: "Aspose.Words for Java expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 2
url: /java/what-s-new-in-aspose-words-for-java/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

## Aspose.Words for Java 23.1, 23.2, 23.3, 23.4

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

The [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) class has been extended with a set of new public properties related to background and foreground colors: **ForeThemeColor** and **BackThemeColor**, **ForeTintAndShade** and **BackTintAndShade**.

#### Radial Gradients with the SkiaSharp Native Shader <sup>23.3</sup>

Rendering of radial gradients with the SkiaSharp native shader for .NET Standard has been implemented.

#### Distance Between the Table and Surrounding Text <sup>23.4</sup>

The ability to set the distance between the table and surrounding text has been added by introducing new properties to the [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) class: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), and [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Loading and Saving Documents

#### Generate TOC for AZW3 Documents <sup>23.1</sup>

The ability to generate TOC (table of contents) for AZW3 documents has been added through the use of the [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) property.

#### Exporting List Items to Markdown <sup>23.1</sup>

A way to control the export of list items to Markdown format has been provided by adding the [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) property to the [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) class.

#### Document Saving Progress Notifications <sup>23.3</sup>

Saving progress notifications for MOBI and AZW3 formats has been implemented.

#### Sentence and Word Spacing Adjustment  <sup>23.3</sup>

The ability to specify whether to adjust sentence and word spacing automatically upon document import has been added by introducing the **AdjustSentenceAndWordSpacing** property.

### Other

- The ability to specify the character spacing adjustment of a document has been added through the [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) property implementation <sup>23.2</sup>
- The way to instruct Aspose.Words whether to include textboxes, footnotes, and endnotes in word count statistics has been provided by adding the [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) property <sup>23.2</sup>
- A new option for a document style, which allows specifying whether the style is automatically redefined based on the appropriate value, has been introduced through the [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) property <sup>23.2</sup>
- The ability to determine whether [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) is a phonetic guide run has been added using the **IsPhoneticGuide** property <sup>23.4</sup>
- A simple way to work with series and axes of combo charts has been implemented by introducing the **ChartAxisCollection** class and adding the **Chart.Axes** property <sup>23.4</sup>
- New public properties connected to the shape relative positioning and sizing have been added to the [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) class <sup>23.4</sup>
- Accuracy and performance of color brightness calculation for automatic text color resolution has been improved in accordance with the latest versions of Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 23.1 Release Notes](/words/java/aspose-words-for-java-23-1-release-notes/).

Learn more about [Aspose.Words for Java 23.2 Release Notes](/words/java/aspose-words-for-java-23-2-release-notes/).

Learn more about [Aspose.Words for Java 23.3 Release Notes](/words/java/aspose-words-for-java-23-3-release-notes/).

Learn more about [Aspose.Words for Java 23.4 Release Notes](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 expands options for loading and saving documents and improved interaction with some other options.

Aspose.Words 22.10 improves find and replace options, enhances OLE objects, and expands list functionality.

Aspose.Words 22.11 expands its functionality with new options for more convenient work with already familiar objects: fields, printing, OLE and structured document tags.

Aspose.Words 22.12 enhances rendering capabilities and introduces options for working with margins when loading/saving a document.

### Performance Improvements <sup>22.12</sup>

An optimization that significantly reduces the depth of graphics state nesting when rendering to PDF to maintain specification compliance has been introduced.

### Rendering and Printing

#### Printing Non-colored Pages on a Color Printer <sup>22.11</sup>

A custom colored/grayscale print mode has been implemented by adding a new **GrayscaleAuto** value to the [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) enumeration.

A new print property allows users to control how non-colored pages are printed if the device supports color printing. This feature can be useful if users want to automatically print non-colored pages using only grayscale printing mode.

#### New Border Rendering Properties <sup>22.12</sup>

New public properties [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) and [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) have been introduced.

#### Linear Trendline Formula for DrawingML Rendering <sup>22.12</sup>

Linear trendline formula rendering for DrawingML charts has been implemented.

#### Font Fallback Settings for Google Noto Fonts <sup>22.12</sup>

The predefined font fallback settings for Google Noto fonts have been updated.

### Loading and Saving Documents

#### Cache Header or Footer Shapes to Reduce PDF size <sup>22.9</sup>

The ability to cache header/footer shapes to reduce the size of the output PDF file has been implemented by adding a new [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) property.

#### Automatic Numbering Detection when Loading a Document <sup>22.9</sup>

The ability to specify the [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) property upon text loading has been implemented through an extended of the [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) class.

#### Specifying a Particular Margin Type <sup>22.12</sup>

The ability to specify a particular [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) type for the given section has been implemented.

### Search and Compare <sup>22.10</sup>

The ability to ignore [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) upon find and replace options has been implemented by adding a new [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) property to the [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) class.

### Other

- A new feature to get FieldEQ as an OfficeMath has been added. <sup>22.9</sup>
- The creation of structured document tags of Group type at the Row level was allowed. <sup>22.9</sup>
- OLE objects and controls are now treated as metafile images when converting a document to HTML. <sup>22.10</sup>
- A new feature to check that a particular list was created from the same template as the compared list has been added by introducing a new [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) method into the [List](https://reference.aspose.com/words/java/com.aspose.words/list/) class. <sup>22.10</sup>
- The ability to create new structured document tags of the [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) type has been added. <sup>22.11</sup>
- The ability to track the field updating progress has been provided. <sup>22.11</sup>
- A new **EmbedAttachments** property that allows users to embed OLE attachments from a source document into the output PDF document has been introduced. <sup>22.11</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 22.9 Release Notes](/words/java/aspose-words-for-java-22-9-release-notes/).

Learn more about [Aspose.Words for Java 22.10 Release Notes](/words/java/aspose-words-for-java-22-10-release-notes/).

Learn more about [Aspose.Words for Java 22.11 Release Notes](/words/java/aspose-words-for-java-22-11-release-notes/).

Learn more about [Aspose.Words for Java 22.12 Release Notes](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 introduces support for new loading formats and a new print page size, as well as improves some rendering options.

Aspose.Words 22.6 expands the possibilities of converting PDF to other formats, as well as improve work with DrawingML and solid text fill effect.

Aspose.Words 22.7 enhances the possibilities of working with rendering features, and also adds new features for working with HTML import and export to PDF.

Aspose.Words 22.8 introduces a new export format and improves various rendering algorithms.

The API is enhanced for more flexible and convenient development.

### Supported Formats

* Support for loading EPUB and XML documents has been introduced by adding new values to the [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) enumeration. Starting from version 22.5, it is possible to load EPUB and XML documents into Aspose.Words document model and convert them to any [supported formats](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). <sup>22.5</sup>
* Starting from version 22.8, it is possible to save a document in AZW3 format – Amazon Kindle's proprietary e-book file format (KF8 is another name for the format). Now you can not only load AZW3 documents, but also export your files to AZW3 format, which is essentially a compiled EPUB. <sup>22.8</sup>

### Rendering and Printing

#### New Priting Size <sup>22.5</sup>

Support for the “Envelope No. 10” print page size has been added by introducing a new value to the [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/) enumeration.

#### Rendering MathML Formulas <sup>22.5</sup>

The rendering of a border box around MathML formulas and font detection when rendering characters for such formulas has been improved.

#### DML Chart Improvements <sup>22.6</sup>

DrawingML charts public API has been extended to support gradient, texture, and pattern fills.

#### Glyph Outlines Parsing for OpenType <sup>22.7</sup>

Aspose.Words own glyph outlines parsing for OpenType (CFF) fonts has been implemented.

Previously, glyph parsing for OpenType (CFF) fonts was performed via GDI+. So now it works in cases where GDI+ is not available – Java, .NET Standard platforms, Linux OS, etc. Glyph outlines parsing is required in specific cases like WordArt, text effects, some Office Math features, and others.

#### Set Shape Shadow Formatting <sup>22.7</sup>

The ability to set the shadow formatting of the shape object has been provided by adding a new [ShadowFormat](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getShadowFormat) property.

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

A new HTML import mode for block-level elements has been introduced by adding a new value to the [HtmlInsertOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlinsertoptions/) enumeration.

#### Convert to PDF/UA-1 CSSompliant with WCAG 2.0 <sup>22.7</sup>

Support for converting a document to PDF/UA-1 format, compliant with WCAG 2.0, has been added.

So, if the customer has an accessible Word document and converts it to PDF/UA-1 via Aspose.Words mentioning the conversion specifics, then the output will be WCAG 2.0 compatible.

WCAG or Web Content Accessibility Guidelines is a set of guidelines developed by W3C in collaboration with individuals and organizations all over the world. Now with Aspose.Words you can convert your document to the output PDF/UA-1 format, which is suitable to build WCAG 2.0 compliant PDF documents.

It is worth noting that WCAG 2.0 has two additional requirements that are not specified in the PDF/UA-1 specification:

- contrast requirements
- requirements for tagging multimedia content

But both requirements are not relevant to our case of converting from Word to PDF.

### Other

* Exception of inheriting the solid text fill effect that mimics MS Word behavior has been implemented. <sup>22.6</sup>
* Support of the DATABASE fields has been added. Using this type of field, you can, for example, show the results of a database query in a Microsoft Word table. <sup>22.7</sup>

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 22.5 Release Notes](/words/java/aspose-words-for-java-22-5-release-notes/).

Learn more about [Aspose.Words for Java 22.6 Release Notes](/words/java/aspose-words-for-java-22-6-release-notes/).

Learn more about [Aspose.Words for Java 22.7 Release Notes](/words/java/aspose-words-for-java-22-7-release-notes/).

Learn more about [Aspose.Words for Java 22.8 Release Notes](/words/java/aspose-words-for-java-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 22.1, 22.2, 22.3, 22.4

Aspose.Words 22.1 improves rendering options, as well as loading and saving documents.

Aspose.Words 22.2 introduces a new load format and new options for exporting documents. It also contains a major update for tables and some changes for working with fields.

Aspose.Words 22.3 expands the possibilities of working with PDF and TXT formats and improves the work of some existing algorithms and engines.

Aspose.Words 22.4 enhances PDF capabilities – now you can save a file in PDF/A-4 format and get a number of other improvements in PDF output. At the same time, Aspose.Words 22.4 provides additional abilities to work with DML charts, read the Photoshop metadata, and import HTML block-level elements.

The API is enhanced for more flexible and convenient development.

### Supported Formats

Loading a document in AZW3 format (KF8 is another name for the format) has been added. Now you can load an AZW3 document and convert it to any other supported formats.

### Rendering

#### Rendering to PDF with PDF/UA-1 Compliance

Rendering into PDF with PDF/UA-1 compliance has been implemented by adding new values to the [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumeration – **PDF_UA_1**. This option assumes compliance with special requirements for document accessibility.

#### Rendering MathML Formulas

The rendering of operators in MathML formulas has been improved.

#### DML Chart Improvements

The following improvements have been made to the DML charts:

- The DML chart axis scaling algorithm has been improved to be the same as in MS Word
- The ability to manipulate with DrawingML chart legend entries has been provided to make our chart API more and more comprehensive
- The ability to specify the name of an xls/xlsx file the DrawingML chart is linked to has been implemented

#### Rendering to PDF with PDF/A-4 Compliance

Rendering into PDF with PDF/A-4 compliance has been added by adding new values to the [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumeration – PDF_A_4. This option assumes revised conformance levels: regular PDF/A-4 conformance is equivalent to conformance level U of previous versions, and the level A conformance is removed.

#### Reading of Photoshop metadata resolution in JPEG

Reading of Photoshop metadata resolution in JPEG images has been implemented to fix an interesting issue with incorrect scaling of images upon rendering.

### Loading and Saving Documents

#### Controlling Style Behavior When Loading a Document

A new option [ForceCopyStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getForceCopyStyles) has been introduced to control the behavior of conflicting styles upon document import.

#### Document Saving Progress Notifications

An ability to get notifications about the progress of document saving has been added through the [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) property in 22.1.

In 22.2, saving progress notifications have been extended for HTML and XAML based flow formats: HTML, MHTML, Epub, XamlFlow, and XamlFlowPack.

In 22.3, saving progress notifications have been extended for TXT format.

#### Convert Shapes to SVG When Exporting

The ability to convert shapes to SVG images upon exporting to HTML, MHTML, or EPUB has been provided by adding the [ExportShapesAsSvg](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportShapesAsSvg) property.

#### Export of List Numbering to PDF Logical Structure

List numbering export to PDF logical structure has been implemented.

#### Saving to PDF 2.0 and Improvements in PDF Output

The ability to save a document as PDF 2.0 by adding a new value to the [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumeration, as well as several other requested improvements to PDF output, have been introduced.

#### New HTML Import Mode

A new import mode for HTML block-level elements has been implemented to mimic Microsoft Word behavior.

### Other

* An ability to get custom field data that is associated with the field has been added.
* The latest version of Aspose.Words also included a major update that handles tables with incorrect or missing column width data in the source document.
* The table comparing algorithm relying on deep analysis of Microsoft Word comparison mechanism has been improved.
* The comments syntax in LINQ Reporting engine has been provided.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 22.1 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-22-1-release-notes/).

Learn more about [Aspose.Words for Java 22.2 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-22-2-release-notes/).

Learn more about [Aspose.Words for Java 22.3 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-22-3-release-notes/).

Learn more about [Aspose.Words for Java 22.4 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-22-4-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 21.9, 21.10, 21.11, 21.12

Aspose.Words 21.9 expands the list-level formatting control.

Aspose.Words 21.10 enhances rendering options, improves find and replace options, and expands Mail Merge and Structure Document Tag functionality.

Aspose.Words 21.11 expands loadings and saving functionality, improves find and replace option and working with PDF.

Aspose.Words 21.12 introduces additional options for working with Latin text and fonts to improve appearance and performance, and expands the ability to work with content control and footnotes. 

The API is enhanced for more flexible and convenient development.

### Performance Improvements

Loading a previously saved font search cache to speed up the font cache initialization process upon rendering has been implemented. Now your solutions will work even faster.

### Rendering

#### Working with gradient fills and gradient stops

New public methods and properties to work with gradient fills and gradient stops have been added to satisfy the brightest ideas when developing your documents.

#### Attachment Pane in Output PDF Documents

A new option [UseAttachments](https://reference.aspose.com/words/java/com.aspose.words/pdfpagemode/) has been implemented to display the attachment pane in output PDF documents.

#### Allow Latin Text to Wrap in the Middle of a Word

Support for the "Allow Latin text to wrap in the middle of a word" feature has been implemented to make our Latin support even better upon rendering.

### Search and Compare

* A new option [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) to ignore footnotes during the find and replace operation has been added.

* A new option [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes) to ignore field codes during find and replace operation has been added.

### Conversion

A simple way to save images as Base64 string into Markdown format has been provided through the [ExportImagesAsBase64](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportImagesAsBase64) property.

### Mail Merge and Reporting

The ability to get [ParentRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/#getParentRegion) through [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/), which made our MailMerge engine more tunable, has been added.

### Other

- An ability to get the [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) property of the [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) object has been added.
- A possibility to get the string representation of the [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) object for a specified index using the [GetEffectiveValue](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getEffectiveValue-int-int-java.lang.String) method has been added.
- An intuitive capability to change the appearance of structured document tags, which actually allow embedding customer-defined semantics as well as its behavior into a document, has been introduced.
- A new class [ChmLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/chmloadoptions/) has been added to get more control over CHM loading.
- The ability to get OOXML of a content control and save it to string has been introduced. To do this, the **WordOpenXML** property has been added to the [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) and [StructuredDocumentTagRangeStart](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttagrangestart/) classes.
- Recognition of non-standard footnotes in PDF documents on import has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.9 Release Notes](/words/java/aspose-words-for-java-21-9-release-notes/).

Learn more about [Aspose.Words for Java 21.10 Release Notes](/words/java/aspose-words-for-java-21-10-release-notes/).

Learn more about [Aspose.Words for Java 21.11 Release Notes](/words/java/aspose-words-for-java-21-11-release-notes/).

Learn more about [Aspose.Words for Java 21.12 Release Notes](/words/java/aspose-words-for-java-21-12-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 21.5, 21.6, 21.7, 21.8

Aspose.Words 21.5 improves Mail Merge and Structure Document Tag functionality, as well as working with fields.

Aspose.Words 21.6 enhances formatting and filling options and also improves document display capabilities.

Aspose.Words 21.7 expands rendering and conversion options, as well as provides an ability to work with framesets.

Aspose.Words 21.8 improves rendering and language export features, and enhances the ability to work with field update callback.

The API is enhanced for more flexible and convenient development.

### Rendering

#### Setting Charts Fill and Stroke Formatting

An ability to set fill and stroke formatting for chart series, data points, and markers has been implemented. Using the provided options, you can easily customize any of the charts as you wish.

#### Control the Fill Texture of Any Object

A new public method [PresetTextured](https://reference.aspose.com/words/java/com.aspose.words/fill/#getPresetTexture) has been added to the [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) class to work with textures. Now it is very easy to get and apply a texture to the fill of any object. Now it is very easy to get and apply a texture to the fill of any object.

#### Rendering of OOXML Ink

Rendering of OOXML Ink (InkML subset) has been implemented. A new public property [ImlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getImlRenderingMode) and a new enumeration [ImlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/imlrenderingmode/) have been added to control the mode of Ink rendering.

Prior to this version, Aspose.Words could only render fallback shapes for OOXML Ink objects, i.e. InkML was not actually processed and a simple pre-rendered image was used instead. And now OOXML Ink content part can be rendered directly.

#### Control the Maximum Number of Characters per Line

A new public property [MaxCharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/txtsaveoptions/#getMaxCharactersPerLine) has been introduced to control the maximum number of characters per line in the output document of TXT format.

#### Rendering to PDF/A-2

Rendering to PDF/A-2 format has been implemented by adding new values to the [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) enumeration. PDF/A-2 is based on the PDF-1.7 format and removes significant limitations of PDF/A-1 like prohibited transparency and prohibited object compression.

#### Work with Patterns

A simple way to get and apply a pattern to the fill of any fillable objects in a document has been presented. For this purpose, the [Patterned](https://reference.aspose.com/words/java/com.aspose.words/fill/#patterned-int) method with two overloads and the [Pattern](https://reference.aspose.com/words/java/com.aspose.words/fill/#getPattern) property have been added to the [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) class and the [PatternType](https://reference.aspose.com/words/java/com.aspose.words/patterntype/) enumeration has been added to the Constants.

#### Insert GIF into the Document Model

The ability to insert a GIF image into the document model using the [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) method has been introduced. Please note that saving a document to a format different from DOCX, DOTX, DOCM, DOTM, FOPC causes the conversion of GIF images to PNG.

### Conversion

A new overload of the [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String-int) method with extended options has been implemented to make this operation more flexible.

### Mail Merge and Reporting

A new property [RestartListsAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRestartListsAtEachSection) has been added to control whether the list numbering at each section should be restarted after executing a mail merge.

### Other

- New methods [SetCheckedSymbol](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/#setCheckedSymbol-int-java.lang.String) and [SetUncheckedSymbol](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/#setUncheckedSymbol-int-java.lang.String) have been added to set checked and unchecked symbols for your favorite structured document tags.
- The equations created with EQ fields are now supported upon converting to all HTML-based formats.
- A new public property [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) has been added to control the behavior for computing page numbers when a continuous section restarts page numbering.
- An ability to work with Framesets has been added. This is the first simple API which is going to be extended upon your requests. Just tell us what you need.
- A new PDF save option [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) has been added. This option allows users to customize how the `/Lang` entry should be exported. It can be useful for compatibility with some screen readers.
- A new public field updating callback has been implemented. This allows you to have your own custom methods called during field update.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.5 Release Notes](/words/java/aspose-words-for-java-21-5-release-notes/).

Learn more about [Aspose.Words for Java 21.6 Release Notes](/words/java/aspose-words-for-java-21-6-release-notes/).

Learn more about [Aspose.Words for Java 21.7 Release Notes](/words/java/aspose-words-for-java-21-7-release-notes/).

Learn more about [Aspose.Words for Java 21.8 Release Notes](/words/java/aspose-words-for-java-21-8-release-notes/).

{{% /alert %}}

## See Also

{{% alert color="primary" %}}

This page contains the latest release news for the past 2 years. For details on earlier releases, see the [Release Notes'](/words/java/release-notes/) pages in the relevant sections.

{{% /alert %}}