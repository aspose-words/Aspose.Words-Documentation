---
title: What's new
second_title: Aspose.Words for .NET
articleTitle: What's new in Aspose.Words for .NET
linktitle: What's new in Aspose.Words for .NET
type: docs
description: "Aspose.Words for .NET expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 10
url: /net/what-s-new-in-aspose-words-for-net/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

## Aspose.Words for .NET 22.5, 22.6, 22.7

Aspose.Words 22.5 introduces support for new loading formats and a new print page size, as well as improves some rendering options.

Aspose.Words 22.6 expands the possibilities of converting PDF to other formats, as well as improve work with DrawingML and solid text fill effect.

Aspose.Words 22.7 enhances the possibilities of working with rendering features, and also adds new features for working with HTML import and export to PDF.

The API is enhanced for more flexible and convenient development.

### Supported Formats

Support for loading EPUB and XML documents has been introduced by adding new values to the [LoadFormat](https://apireference.aspose.com/words/net/aspose.words/loadformat) enumeration. Starting from version 22.5, it is possible to load EPUB and XML documents into Aspose.Words document model and convert them to any [supported formats](https://apireference.aspose.com/words/net/aspose.words/saveformat).

### Rendering and Printing

#### New Priting Size

Support for the “Envelope No. 10” print page size has been added by introducing a new value to the [PaperSize](https://apireference.aspose.com/words/net/aspose.words/papersize) enumeration.

#### Rendering MathML Formulas

The rendering of a border box around MathML formulas and font detection when rendering characters for such formulas has been improved.

#### DML Chart Improvements

DrawingML charts public API has been extended to support gradient, texture, and pattern fills.

#### Glyph outlines parsing for OpenType

Aspose.Words own glyph outlines parsing for OpenType (CFF) fonts has been implemented.

Previously, glyph parsing for OpenType (CFF) fonts was performed via GDI+. So now it works in cases where GDI+ is not available – Java, .NET Standard platforms, Linux OS, etc. Glyph outlines parsing is required in specific cases like WordArt, text effects, some Office Math features, and others.

#### Set shape shadow formatting

The ability to set the shadow formatting of the shape object has been provided by adding a new [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/) property.

### Loading and saving documents

#### Load and convert PDF to fixed-page format without layout model

The ability to load and convert PDF documents to fixed page formats with high fidelity and performance has been implemented.

#### New HTML import mode

A new HTML import mode for block-level elements has been introduced by adding a new value to the [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/) enumeration.

#### Convert to PDF/UA-1 compliant with WCAG 2.0

Support for converting a document to PDF/UA-1 format, compliant with WCAG 2.0, has been added.

So, if the customer has an accessible Word document and converts it to PDF/UA-1 via Aspose.Words mentioning the conversion specifics, then the output will be WCAG 2.0 compatible.

WCAG or Web Content Accessibility Guidelines is a set of guidelines developed by W3C in collaboration with individuals and organizations all over the world. Now with Aspose.Words you can convert your document to the output PDF/UA-1 format, which is suitable to build WCAG 2.0 compliant PDF documents.

It is worth noting that WCAG 2.0 has two additional requirements that are not specified in the PDF/UA-1 specification:

* contrast requirements

* requirements for tagging multimedia content

But both requirements are not relevant to our case of converting from Word to PDF.

### Other

* Exception of inheriting the solid text fill effect that mimics MS Word behavior has been implemented.
* Support of the DATABASE fields has been added. Using this type of field, you can, for example, show the results of a database query in a Microsoft Word table.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 22.5 Release Notes](/words/net/aspose-words-for-net-22-5-release-notes/).

Learn more about [Aspose.Words for .NET 22.6 Release Notes](/words/net/aspose-words-for-net-22-6-release-notes/).

Learn more about [Aspose.Words for .NET 22.7 Release Notes](https://docs.aspose.com/words/net/aspose-words-for-net-22-7-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 22.1, 22.2, 22.3, 22.4

Aspose.Words 22.1 improves rendering options, as well as loading and saving documents.

Aspose.Words 22.2 introduces a new load format and new options for exporting documents. It also contains a major update for tables and some changes for working with fields.

Aspose.Words 22.3 expands the possibilities of working with PDF and TXT formats and improves the work of some existing algorithms and engines.

Aspose.Words 22.4 enhances PDF capabilities – now you can save a file in PDF/A-4 format and get a number of other improvements in PDF output. At the same time, Aspose.Words 22.4 provides additional abilities to work with DML charts, read the Photoshop metadata, and import HTML block-level elements.

The API is enhanced for more flexible and convenient development.

### Supported Formats

Loading a document in AZW3 format (KF8 is another name for the format) has been added. Now you can load an AZW3 document and convert it to any other supported formats.

### Rendering

#### Rendering to PDF with PDF/UA-1 Compliance

Rendering into PDF with PDF/UA-1 compliance has been implemented by adding new values to the [PdfCompliance](https://apireference.aspose.com/words/net/aspose.words.saving/pdfcompliance) enumeration – **PdfUa1**. This option assumes compliance with special requirements for document accessibility.

#### Rendering MathML Formulas

The rendering of operators in MathML formulas has been improved.

#### DML Chart Improvements

The following improvements have been made to the DML charts:

* The DML chart axis scaling algorithm has been improved to be the same as in MS Word
* The ability to manipulate with DrawingML chart legend entries has been provided to make our chart API more and more comprehensive
* The ability to specify the name of an xls/xlsx file the DrawingML chart is linked to has been implemented

#### Rendering to PDF with PDF/A-4 Compliance

Rendering into PDF with PDF/A-4 compliance has been added by adding new values to the [PdfCompliance](https://apireference.aspose.com/words/net/aspose.words.saving/pdfcompliance) enumeration – PdfA4. This option assumes revised conformance levels: regular PDF/A-4 conformance is equivalent to conformance level U of previous versions, and the level A conformance is removed.

#### Reading of Photoshop metadata resolution in JPEG

Reading of Photoshop metadata resolution in JPEG images has been implemented to fix an interesting issue with incorrect scaling of images upon rendering.

### Loading and Saving Documents

#### Controlling Style Behavior When Loading a Document

A new option [ForceCopyStyles](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/forcecopystyles) has been introduced to control the behavior of conflicting styles upon document import.

#### Document Saving Progress Notifications

An ability to get notifications about the progress of document saving has been added through the [ProgressCallback](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/progresscallback) property in 22.1.

In 22.2, saving progress notifications have been extended for HTML and XAML based flow formats: HTML, MHTML, Epub, XamlFlow, and XamlFlowPack.

In 22.3, saving progress notifications have been extended for TXT format.

#### Convert Shapes to SVG When Exporting

The ability to convert shapes to SVG images upon exporting to HTML, MHTML, or EPUB has been provided by adding the [ExportShapesAsSvg](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/exportshapesassvg) property.

#### Export of List Numbering to PDF Logical Structure

List numbering export to PDF logical structure has been implemented.

#### Saving to PDF 2.0 and Improvements in PDF Output

The ability to save a document as PDF 2.0 by adding a new value to the [PdfCompliance](https://apireference.aspose.com/words/net/aspose.words.saving/pdfcompliance) enumeration, as well as several other requested improvements to PDF output, have been introduced.

#### New HTML Import Mode

A new import mode for HTML block-level elements has been implemented to mimic Microsoft Word behavior.

### Other

* An ability to get custom field data that is associated with the field has been added.
* The latest version of Aspose.Words also included a major update that handles tables with incorrect or missing column width data in the source document.
* The table comparing algorithm relying on deep analysis of Microsoft Word comparison mechanism has been improved.
* The comments syntax in LINQ Reporting engine has been provided.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 22.1 Release Notes](/words/net/aspose-words-for-net-22-1-release-notes/).

Learn more about [Aspose.Words for .NET 22.2 Release Notes](/words/net/aspose-words-for-net-22-2-release-notes/).

Learn more about [Aspose.Words for .NET 22.3 Release Notes](/words/net/aspose-words-for-net-22-3-release-notes/).

Learn more about [Aspose.Words for .NET 22.4 Release Notes](/words/net/aspose-words-for-net-22-4-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 21.9, 21.10, 21.11, 21.12

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

A new option [UseAttachments](https://apireference.aspose.com/words/net/aspose.words.saving/pdfpagemode) has been implemented to display the attachment pane in output PDF documents.

#### Allow Latin Text to Wrap in the Middle of a Word

Support for the "Allow Latin text to wrap in the middle of a word" feature has been implemented to make our Latin support even better upon rendering.

### Search and Compare

* A new option [IgnoreFootnotes](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignorefootnotes) to ignore footnotes during the find and replace operation has been added.
* A new option [IgnoreFieldCodes](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/ignorefieldcodes) to ignore field codes during find and replace operation has been added.

### Conversion

A simple way to save images as Base64 string into Markdown format has been provided through the [ExportImagesAsBase64](https://apireference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/properties/exportimagesasbase64) property.

### Mail Merge and Reporting

The ability to get [ParentRegion](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/properties/parentregion) through [MailMergeRegionInfo](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo), which made our MailMerge engine more tunable, has been added.

### Other

* An ability to get the [CustomNumberStyleFormat](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/properties/customnumberstyleformat) property of the [ListLevel](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel) object has been added.
* A possibility to get the string representation of the [ListLevel](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel) object for a specified index using the [GetEffectiveValue](https://apireference.aspose.com/words/net/aspose.words.lists/listlevel/methods/geteffectivevalue) method has been added.
* An intuitive capability to change the appearance of structured document tags, which actually allow embedding customer-defined semantics as well as its behavior into a document, has been introduced.
* A new property [ProgressCallback](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/progresscallback) for showing the document loading progress has been implemented.
* A new class [ChmLoadOptions](https://apireference.aspose.com/words/net/aspose.words.loading/chmloadoptions) has been added to get more control over CHM loading.
* The ability to get OOXML of a content control and save it to string has been introduced. To do this, the **WordOpenXML** property has been added to the [StructuredDocumentTag](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttag) and [StructuredDocumentTagRangeStart](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttagrangestart) classes.
* Recognition of non-standard footnotes in PDF documents on import has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 21.9 Release Notes](/words/net/aspose-words-for-net-21-9-release-notes/).

Learn more about [Aspose.Words for .NET 21.10 Release Notes](/words/net/aspose-words-for-net-21-10-release-notes/).

Learn more about [Aspose.Words for .NET 21.11 Release Notes](/words/net/aspose-words-for-net-21-11-release-notes/).

Learn more about [Aspose.Words for .NET 21.12 Release Notes](https://docs.aspose.com/words/net/aspose-words-for-net-21-12-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 21.5, 21.6, 21.7, 21.8

Aspose.Words 21.5 improves Mail Merge and Structure Document Tag functionality, as well as working with fields.

Aspose.Words 21.6 enhances formatting and filling options and also improves document display capabilities.

Aspose.Words 21.7 expands rendering and conversion options, as well as provides an ability to work with framesets.

Aspose.Words 21.8 improves rendering and language export features, and enhances the ability to work with field update callback.

The API is enhanced for more flexible and convenient development.

### Rendering

#### Setting Charts Fill and Stroke Formatting

An ability to set fill and stroke formatting for chart series, data points, and markers has been implemented. Using the provided options, you can easily customize any of the charts as you wish.

#### Control the Fill Texture of Any Object

A new public method [PresetTextured](https://apireference.aspose.com/words/net/aspose.words.drawing/fill/methods/presettextured) has been added to the [Fill](https://apireference.aspose.com/words/net/aspose.words.drawing/fill) class to work with textures. Now it is very easy to get and apply a texture to the fill of any object. Now it is very easy to get and apply a texture to the fill of any object.

#### Rendering of OOXML Ink

Rendering of OOXML Ink (InkML subset) has been implemented. A new public property [ImlRenderingMode](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/imlrenderingmode) and a new enumeration [ImlRenderingMode](https://apireference.aspose.com/words/net/aspose.words.saving/imlrenderingmode) have been added to control the mode of Ink rendering.

Prior to this version, Aspose.Words could only render fallback shapes for OOXML Ink objects, i.e. InkML was not actually processed and a simple pre-rendered image was used instead. And now OOXML Ink content part can be rendered directly.

#### Control the Maximum Number of Characters per Line

A new public property [MaxCharactersPerLine](https://apireference.aspose.com/words/net/aspose.words.saving/txtsaveoptions/properties/maxcharactersperline) has been introduced to control the maximum number of characters per line in the output document of TXT format.

#### Rendering to PDF/A-2

Rendering to PDF/A-2 format has been implemented by adding new values to the [PdfCompliance](https://apireference.aspose.com/words/net/aspose.words.saving/pdfcompliance) enumeration. PDF/A-2 is based on the PDF-1.7 format and removes significant limitations of PDF/A-1 like prohibited transparency and prohibited object compression.

#### Work with Patterns

A simple way to get and apply a pattern to the fill of any fillable objects in a document has been presented. For this purpose, the [Patterned](https://apireference.aspose.com/words/net/aspose.words.drawing/fill/methods/patterned/index) method with two overloads and the [Pattern](https://apireference.aspose.com/words/net/aspose.words.drawing/fill/properties/pattern) property have been added to the [Fill](https://apireference.aspose.com/words/net/aspose.words.drawing/fill) class and the [PatternType](https://apireference.aspose.com/words/net/aspose.words.drawing/patterntype) enumeration has been added to the [Drawing](https://apireference.aspose.com/words/net/aspose.words.drawing) namespace.

#### Insert GIF into the Document Model

The ability to insert a GIF image into the document model using the [InsertImage](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/insertimage/index) method has been introduced. Please note that saving a document to a format different from DOCX, DOTX, DOCM, DOTM, FOPC causes the conversion of GIF images to PNG.

### Conversion

A new overload of the [InsertHtml](https://apireference.aspose.com/words/net/aspose.words.documentbuilder/inserthtml/methods/1) method with extended options has been implemented to make this operation more flexible.

### Mail Merge and Reporting

A new property [RestartListsAtEachSection](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/properties/restartlistsateachsection) has been added to control whether the list numbering at each section should be restarted after executing a mail merge.

### Other

* New methods [SetCheckedSymbol](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/methods/setcheckedsymbol) and [SetUncheckedSymbol](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/methods/setuncheckedsymbol) have been added to set checked and unchecked symbols for your favorite structured document tags.
* The equations created with EQ fields are now supported upon converting to all HTML-based formats.
* Using Aspose.Words for .NET via COM Interop has been checked and the documentation has been modified according to the latest version of the VBScript engine.
* A new public property [ContinuousSectionPageNumberingRestart](https://apireference.aspose.com/words/net/aspose.words.layout/layoutoptions/properties/continuoussectionpagenumberingrestart) has been added to control the behavior for computing page numbers when a continuous section restarts page numbering.
* An ability to work with Framesets has been added. This is the first simple API which is going to be extended upon your requests. Just tell us what you need.
* A new PDF save option [ExportLanguageToSpanTag](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/exportlanguagetospantag) has been added. This option allows users to customize how the `/Lang` entry should be exported. It can be useful for compatibility with some screen readers.
* A new public field updating callback has been implemented. This allows you to have your own custom methods called during field update.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 21.5 Release Notes](/words/net/aspose-words-for-net-21-5-release-notes/).

Learn more about [Aspose.Words for .NET 21.6 Release Notes](/words/net/aspose-words-for-net-21-6-release-notes/).

Learn more about [Aspose.Words for .NET 21.7 Release Notes](/words/net/aspose-words-for-net-21-7-release-notes/).

Learn more about [Aspose.Words for .NET 21.8 Release Notes](/words/net/aspose-words-for-net-21-8-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 21.1, 21.2, 21.3, 21.4

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

Aspose.Words 21.3 expands rendering and reporting options, and improves interaction with styles and child nodes of the StructuredDocumentTag.

Aspose.Words 21.4 improves rendering and conversion features, and enhances the ability to work with a ranged structured document tag.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/net/aspose.words/tablestyle/properties/verticalalignment) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

#### Setting Fill Formatting of Text

Font API has been extended with the [Fill](https://apireference.aspose.com/words/net/aspose.words.drawing/fill) properties to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

#### Convert Any Fill to Solid

A new method [Solid](https://apireference.aspose.com/words/net/aspose.words.drawing/fill/methods/solid) has been added to the [Fill](https://apireference.aspose.com/words/net/aspose.words.drawing/fill) class for processing solid fills.

#### Support for Advanced Typography

Support for advanced typography when saving to image formats with GDI+ or SkiaSharp, for example, on all .NET platforms and .NET Standard, has been implemented.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/properties/imagesavingcallback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/properties/ignorenoscriptelements) has been added to ignore `<noscript>` HTML elements upon loading HTML.

#### Clean Up Unused Information from a Document

A new public property [UnusedBuiltinStyles](https://apireference.aspose.com/words/net/aspose.words/cleanupoptions/properties/unusedbuiltinstyles) has been added to the [CleanupOptions](https://apireference.aspose.com/words/net/aspose.words/cleanupoptions) class to detect and remove built-in styles that are marked as "unused" to make the document stricter.

### Reporting

New extension methods **Select** and **SelectMany** have been added for the LINQ Reporting Engine.

### Search and Compare

A new public property [SmartParagraphBreakReplacement](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/smartparagraphbreakreplacement) has been added to the [FindReplaceOptions](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions) object to indicate whether a paragraph break is allowed to be replaced when there is no next sibling paragraph.

### Other

* New public methods [StartColumnBookmark](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/startcolumnbookmark) and [EndColumnBookmark](https://apireference.aspose.com/words/net/aspose.words/documentbuilder/methods/endcolumnbookmark) have been introduced in the [DocumentBuilder](https://apireference.aspose.com/words/net/aspose.words/documentbuilder) class. This gives the ability to add a Bookmark control to one or more columns in a range of rows.
* A new public option [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/updatecreatedtimeproperty) has been added to update the [CreatedTime](https://apireference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/properties/createdtime) property of a document upon saving.
* A new property **CustomTimeZoneInfo** has been added to set custom timezone when [SdtType.Date](https://apireference.aspose.com/words/net/aspose.words.markup/sdttype) structured document tag is updated from custom XML.
* A new public method [OpenIStream](https://apireference.aspose.com/words/net/aspose.words/comhelper/methods/openistream) has been added to the [ComHelper](https://apireference.aspose.com/words/net/aspose.words/comhelper) class to load documents from IStream objects in COM applications.
* A new public method [ClearQuickStyleGallery](https://apireference.aspose.com/words/net/aspose.words/stylecollection/methods/clearquickstylegallery) has been added to the [StyleCollection](https://apireference.aspose.com/words/net/aspose.words/stylecollection) class. Now it is really easy to remove all styles from the Quick Style Gallery panel.
* An ability to work with child nodes of the [StructuredDocumentTag](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttag) range has been added. New behavior follows the [CompositeNode](https://apireference.aspose.com/words/net/aspose.words/compositenode) pattern and returns a live collection.
* The ability to create instances of the [StructuredDocumentTagRangeStart](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttagrangestart) and [StructuredDocumentTagRangeEnd](https://apireference.aspose.com/words/net/aspose.words.markup/structureddocumenttagrangeend) classes manually has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 21.1 Release Notes](/words/net/aspose-words-for-net-21-1-release-notes/).

Learn more about [Aspose.Words for .NET 21.2 Release Notes](/words/net/aspose-words-for-net-21-2-release-notes/).

Learn more about [Aspose.Words for .NET 21.3 Release Notes](/words/net/aspose-words-for-net-21-3-release-notes/).

Learn more about [Aspose.Words for .NET 21.4 Release Notes](/words/net/aspose-words-for-net-21-4-release-notes/).

{{% /alert %}}


## Aspose.Words for .NET 20.9, 20.10, 20.11, 20.12

Aspose.Words 20.9 expands control over Macros, as well as improves the quality of converting from PDF to Word document formats.

Aspose.Words 20.10 introduces a new load format and new options for working with rendering features.

Aspose.Words 20.11 enhanced rendering options and improves document display capabilities.

Aspose.Words 20.12 has expanded the number of supported platforms – now you can work with the newly released .NET 5.0, as well as improved import of HTML documents, rendering options and the reports generation functionality.

The API is enhanced for more flexible and convenient development.

### Platforms

It has been verified that Aspose.Words for .NET Standard works with the newly released .NET 5.0 from Microsoft.

### Supported Formats

Support for loading CHM documents has been added. CHM or Microsoft Compiled HTML Help is a proprietary format consisting of a collection of pages, index, and other navigation tools. Starting from version 20.10, it is possible to load CHM documents into Aspose.Words document model and convert them to any [supported formats](https://apireference.aspose.com/words/net/aspose.words/saveformat).

### Rendering

#### Obtaining a Document with Specified Pages

A new method [ExtractPages](https://apireference.aspose.com/words/net/aspose.words/document/methods/extractpages) has been added to the [Document](https://apireference.aspose.com/words/net/aspose.words/document) class. This method returns a new document consisting of nodes located in the current document within a specified page range. The resulting document should look like one in Microsoft Word, as if we were performing "Print specific pages" – all formatting and layout will be preserved.

#### Export of Specific Pages to Fixed Page Formats

A new public API has been implemented for exporting specific pages to fixed page formats. Previously, you could specify only one continuous range for rendering, but now you can specify a complex set of pages based on different page ranges or individual pages in any order. This provides a flexible way to combine pages into final documents in fixed page formats.

#### The First Version of SmartArt Cold Rendering

The first version of SmartArt Cold Rendering has been released. Microsoft Word generates and saves the pre-rendered drawing along with SmartArt objects. In most cases, the pre-rendered drawing is rendered well by Aspose.Words and no additional actions required. However, if the document is saved by other applications, the pre-rendered SmartArt drawing may be missing or incorrect. In this case, the SmartArt object itself should be laid-out and rendered. We call this process the SmartArt Cold Rendering, and it is now available in Aspose.Words.

#### New API for Chart Data Points

A new API for chart data points has been implemented. This is mainly due to some properties or methods that have been added or changed within the [ChartDataPointCollection](https://apireference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection) and [ChartDataPoint](https://apireference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapoint) classes. For example, you will find that the code has been changed to automatically create a data point if it does not exist yet.

#### Basic Support for Legacy Non-Unicode Arabian Encodings

Basic support for legacy non-Unicode Arabian encodings has been implemented. This was done for the legacy Arabic font class dating back to the 1990s that use poorly documented mechanisms and legacy Windows shaping implementations. In general, these are TrueType fonts, however they use undocumented details not defined in the TrueType or OpenType specifications and do not conform to current specifications on how to implement Unicode fonts for the Arabic language.

#### Embedding Fonts with PostScript Outlines into a Document

An ability to embed fonts with PostScript outlines when embedding TrueType fonts in a document upon saving has been added. This option gives more flexibility in case of using non-standard fonts. Note, that even Microsoft Word does not embed PostScript fonts, but can open documents with embedded fonts of this type.

### Conversion

#### PDF Document Import

PDF import is now faster and more accurate. Footnotes support has been implemented and integrated to the latest version.

#### HTML Document Import

HTML import has been modified. Previously, the [MswVersion](https://apireference.aspose.com/words/net/aspose.words.loading/loadoptions/properties/mswversion) property had no effect when loading documents from HTML and HTML-based formats (for example, MHTML). All documents were loaded as if no MswVersion were specified. This has been changed, and now the HTML reader can load documents differently depending on the MswVersion value.

### Report Generation

A condition evaluation extension point has been introduced. This allows users to implement custom evaluation for the IF and COMPARE fields which are very popular upon creating different types of reports.

### Other

- The [VbaReferenceCollection](https://apireference.aspose.com/words/net/aspose.words.vba/vbareferencecollection) class and related types are exposed publicly. Now you have more control over Macros, for example, removing a Template and all its references from the code without using Microsoft Word.
- New public properties [SpellingChecked](https://apireference.aspose.com/words/net/aspose.words/document/properties/spellingchecked) and [GrammarChecked](https://apireference.aspose.com/words/net/aspose.words/document/properties/grammarchecked) have been added to indicate if a document has been checked for spelling and grammar, respectively.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 20.9 Release Notes](/words/net/aspose-words-for-net-20-9-release-notes/).

Learn more about [Aspose.Words for .NET 20.10 Release Notes](/words/net/aspose-words-for-net-20-10-release-notes/).

Learn more about [Aspose.Words for .NET 20.11 Release Notes](/words/net/aspose-words-for-net-20-11-release-notes/).

Learn more about [Aspose.Words for .NET 20.12 Release Notes](/words/net/aspose-words-for-net-20-12-release-notes/).

{{% /alert %}}

## Aspose.Words for .NET 20.5, 20.6, 20.7, 20.8

Aspose.Words 20.5 introduces performance improvements and enhanced document display capabilities.

Aspose.Words 20.6 expands formatting options, makes saving to Markdown more convenient, and improves SmartArt Cold Rendering.

Aspose.Words 20.7 introduces structured document tags, expands mail merge functionality and document display capabilities.

Aspose.Words 20.8 expands the capabilities of working with images in various supported document formats and improves font substitution rules to ensure a high level of rendering.

The API is improved for more flexible and convenient development.

### Platforms

As you know, .NET 5 is going to be released soon, as the next step forward with .NET Core. It will be useful for you to know that *.NET 5 Preview 4* is already available for testing. We have made sure and tested that Aspose.Words works fine with *.NET 5 Preview 4*.

### Performance and Data Compression

A new public property [CompressionLevel](https://apireference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/properties/compressionlevel) has been added for OOXML documents. Using this property, you can control the compression level when saving a document. For example, you can select the [SuperFast](https://apireference.aspose.com/words/net/aspose.words.saving/compressionlevel) compression level that is used in Microsoft Word. Or leave the [Normal](https://apireference.aspose.com/words/net/aspose.words.saving/compressionlevel) compression level used in Aspose.Words by default.

### Supported Formats

A new public class [MarkdownSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions) has been added to work with advanced options when saving a document to Markdown format. In addition to overloaded and inherited properties, the [TableContentAlignment](https://apireference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/properties/tablecontentalignment) property has been added to this class to control the alignment of content in tables when converting a document to Markdown format.

### Rendering

#### Layout Callback to Interrupt the Layout Building

The long-awaited layout callback has been implemented and made available to the public. The [IPageLayoutCallback](https://apireference.aspose.com/words/net/aspose.words.layout/ipagelayoutcallback) interface allows your application to interrupt the process of layout building for the entire document and render only the part already built.

#### Formatting Options

Formatting options have been extended:

- A new public property [EmphasisMark](https://apireference.aspose.com/words/net/aspose.words/font/properties/emphasismark) has been added to manage the emphasis mark – an additional character that is rendered above or below the main character glyph. Now you can control its behavior using the **EmphasisMark** option.
- A new public property [IgnoreHeaderFooter](https://apireference.aspose.com/words/net/aspose.words/importformatoptions/properties/ignoreheaderfooter) has been added to manage the formatting of headers/footers content. Using this option, you can specify whether to ignore the source formatting of the headers/footers content if the [KeepSourceFormatting](https://apireference.aspose.com/words/net/aspose.words/importformatmode) formatting mode is used.

#### Advanced Control over Revision Options

The [RevisionOptions](https://apireference.aspose.com/words/net/aspose.words.layout/revisionoptions) class has been extended with new properties. Now you have more control over the revision options, such as revision bars position represented by the [RevisionBarsPosition](https://apireference.aspose.com/words/net/aspose.words.layout/revisionoptions/properties/revisionbarsposition) property and measurement units represented by the [MeasurementUnit](https://apireference.aspose.com/words/net/aspose.words.layout/revisionoptions/properties/measurementunit) property.

#### Font Substitution Rules

A new font substitution rule has been added through the [FontNameSubstitutionRule](https://apireference.aspose.com/words/net/aspose.words.fonts/fontnamesubstitutionrule) class. This rule tries to process font name suffixes in the same way as Microsoft Word does.

### Graphics

#### Watermarks in Documents

A new helper class [Watermark](https://apireference.aspose.com/words/net/aspose.words/watermark) has been introduced to work with a watermark inside a document. This class simplifies the way you add or remove a watermark in a document – now you can do it with just one line of code! You can easily create a watermark from text or an image, as well as control its display settings.

#### Improving SmartArt Rendering

SmartArt Cold Rendering has become even better – the processing of hyperlinks in the SmartArt data model has been implemented and the preliminary processing of the chart drawing has been improved.

### Other

- A new ability to show or hide grammatical and spelling errors has been provided. Using the [ShowGrammaticalErrors](https://apireference.aspose.com/words/net/aspose.words/document/properties/showgrammaticalerrors) and [ShowSpellingErrors](https://apireference.aspose.com/words/net/aspose.words/document/properties/showspellingerrors) properties, you can easily control the way grammatical and spelling errors are displayed in your document.
- Two new nodes have been introduced to handle multi-section structured document tags. These structured document tags are now supported upon import/export.
- A new public property [RetainFirstSectionStart](https://apireference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/properties/retainfirstsectionstart) has been added to get or set a value that indicates whether the [SectionStart](https://apireference.aspose.com/words/net/aspose.words/pagesetup/properties/sectionstart) of the first document section and its copies for subsequent data source rows are retained during mail merge or updated according to Microsoft Word behavior.
- Markdown ‘Inline Images’ feature has been implemented to make our Markdown support even better.
- The [SkipPdfImages](https://apireference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/properties/skippdfimages) flag has been added to the [PdfLoadOptions](https://apireference.aspose.com/words/net/aspose.words.loading/pdfloadoptions) class to indicate whether images must be skipped when loading a PDF document.
- Support for SVG images embedded using data URLs upon HTML import has been implemented.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 20.5 Release Notes](/words/net/aspose-words-for-net-20-5-release-notes/).

Learn more about [Aspose.Words for .NET 20.6 Release Notes](/words/net/aspose-words-for-net-20-6-release-notes/).

Learn more about [Aspose.Words for .NET 20.7 Release Notes](/words/net/aspose-words-for-net-20-7-release-notes/).

Learn more about [Aspose.Words for .NET 20.8 Release Notes](/words/net/aspose-words-for-net-20-8-release-notes/).

{{% /alert %}}
