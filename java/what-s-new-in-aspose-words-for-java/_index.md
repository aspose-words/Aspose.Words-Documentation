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

## Aspose.Words for Java 22.5

Aspose.Words 22.5 introduces support for new loading formats and a new print page size, as well as improves some rendering options.

The API is enhanced for more flexible and convenient development.

### Supported Formats

Support for loading EPUB and XML documents has been introduced by adding new values to the [LoadFormat](https://apireference.aspose.com/words/java/com.aspose.words/LoadFormat) enumeration. Starting from version 22.5, it is possible to load EPUB and XML documents into Aspose.Words document model and convert them to any [supported formats](https://apireference.aspose.com/words/java/com.aspose.words/SaveFormat).

### Rendering and Printing

#### New Priting Size

Support for the “Envelope No. 10” print page size has been added by introducing a new value to the [PaperSize](https://apireference.aspose.com/words/java/com.aspose.words/PaperSize) enumeration.

#### Rendering MathML Formulas

The rendering of a border box around MathML formulas and font detection when rendering characters for such formulas has been improved.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 22.5 Release Notes](/words/java/aspose-words-for-java-22-5-release-notes/).

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

Rendering into PDF with PDF/UA-1 compliance has been implemented by adding new values to the [PdfCompliance](https://apireference.aspose.com/words/java/com.aspose.words/PdfCompliance) enumeration – **PDF_UA_1**. This option assumes compliance with special requirements for document accessibility.

#### Rendering MathML Formulas

The rendering of operators in MathML formulas has been improved.

#### DML Chart Improvements

The following improvements have been made to the DML charts:

- The DML chart axis scaling algorithm has been improved to be the same as in MS Word
- The ability to manipulate with DrawingML chart legend entries has been provided to make our chart API more and more comprehensive
- The ability to specify the name of an xls/xlsx file the DrawingML chart is linked to has been implemented

#### Rendering to PDF with PDF/A-4 Compliance

Rendering into PDF with PDF/A-4 compliance has been added by adding new values to the [PdfCompliance](https://apireference.aspose.com/words/java/com.aspose.words/PdfCompliance) enumeration – PDF_A_4. This option assumes revised conformance levels: regular PDF/A-4 conformance is equivalent to conformance level U of previous versions, and the level A conformance is removed.

#### Reading of Photoshop metadata resolution in JPEG

Reading of Photoshop metadata resolution in JPEG images has been implemented to fix an interesting issue with incorrect scaling of images upon rendering.

### Loading and Saving Documents

#### Controlling Style Behavior When Loading a Document

A new option [ForceCopyStyles](https://apireference.aspose.com/words/java/com.aspose.words/importformatoptions#ForceCopyStyles) has been introduced to control the behavior of conflicting styles upon document import.

#### Document Saving Progress Notifications

An ability to get notifications about the progress of document saving has been added through the [ProgressCallback](https://apireference.aspose.com/words/java/com.aspose.words/saveoptions#ProgressCallback) property in 22.1.

In 22.2, saving progress notifications have been extended for HTML and XAML based flow formats: HTML, MHTML, Epub, XamlFlow, and XamlFlowPack.

In 22.3, saving progress notifications have been extended for TXT format.

#### Convert Shapes to SVG When Exporting

The ability to convert shapes to SVG images upon exporting to HTML, MHTML, or EPUB has been provided by adding the [ExportShapesAsSvg](https://apireference.aspose.com/words/java/com.aspose.words/htmlsaveoptions#ExportShapesAsSvg) property.

#### Export of List Numbering to PDF Logical Structure

List numbering export to PDF logical structure has been implemented.

#### Saving to PDF 2.0 and Improvements in PDF Output

The ability to save a document as PDF 2.0 by adding a new value to the [PdfCompliance](https://apireference.aspose.com/words/java/com.aspose.words/PdfCompliance) enumeration, as well as several other requested improvements to PDF output, have been introduced.

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

A new option [UseAttachments](https://apireference.aspose.com/words/java/com.aspose.words/PdfPageMode) has been implemented to display the attachment pane in output PDF documents.

#### Allow Latin Text to Wrap in the Middle of a Word

Support for the "Allow Latin text to wrap in the middle of a word" feature has been implemented to make our Latin support even better upon rendering.

### Search and Compare

* A new option [IgnoreFootnotes](https://apireference.aspose.com/words/java/com.aspose.words/findreplaceoptions#IgnoreFootnotes) to ignore footnotes during the find and replace operation has been added.

* A new option [IgnoreFieldCodes](https://apireference.aspose.com/words/java/com.aspose.words/findreplaceoptions#IgnoreFieldCodes) to ignore field codes during find and replace operation has been added.

### Conversion

A simple way to save images as Base64 string into Markdown format has been provided through the [ExportImagesAsBase64](https://apireference.aspose.com/words/java/com.aspose.words/markdownsaveoptions#ExportImagesAsBase64) property.

### Mail Merge and Reporting

The ability to get [ParentRegion](https://apireference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo#ParentRegion) through [MailMergeRegionInfo](https://apireference.aspose.com/words/java/com.aspose.words/MailMergeRegionInfo), which made our MailMerge engine more tunable, has been added.

### Other

- An ability to get the [CustomNumberStyleFormat](https://apireference.aspose.com/words/java/com.aspose.words/listlevel#CustomNumberStyleFormat) property of the [ListLevel](https://apireference.aspose.com/words/java/com.aspose.words/ListLevel) object has been added.
- A possibility to get the string representation of the [ListLevel](https://apireference.aspose.com/words/java/com.aspose.words/ListLevel) object for a specified index using the [GetEffectiveValue](https://apireference.aspose.com/words/java/com.aspose.words/listlevel#getEffectiveValue(int,int,java.lang.String)) method has been added.
- An intuitive capability to change the appearance of structured document tags, which actually allow embedding customer-defined semantics as well as its behavior into a document, has been introduced.
- A new class [ChmLoadOptions](https://apireference.aspose.com/words/java/com.aspose.words/ChmLoadOptions) has been added to get more control over CHM loading.
- The ability to get OOXML of a content control and save it to string has been introduced. To do this, the **WordOpenXML** property has been added to the [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTag) and [StructuredDocumentTagRangeStart](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTagRangeStart) classes.
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

A new public method [PresetTextured](https://apireference.aspose.com/words/java/com.aspose.words/fill#PresetTexture) has been added to the [Fill](https://apireference.aspose.com/words/java/com.aspose.words/Fill) class to work with textures. Now it is very easy to get and apply a texture to the fill of any object. Now it is very easy to get and apply a texture to the fill of any object.

#### Rendering of OOXML Ink

Rendering of OOXML Ink (InkML subset) has been implemented. A new public property [ImlRenderingMode](https://apireference.aspose.com/words/java/com.aspose.words/saveoptions#ImlRenderingMode) and a new enumeration [ImlRenderingMode](https://apireference.aspose.com/words/java/com.aspose.words/ImlRenderingMode) have been added to control the mode of Ink rendering.

Prior to this version, Aspose.Words could only render fallback shapes for OOXML Ink objects, i.e. InkML was not actually processed and a simple pre-rendered image was used instead. And now OOXML Ink content part can be rendered directly.

#### Control the Maximum Number of Characters per Line

A new public property [MaxCharactersPerLine](https://apireference.aspose.com/words/java/com.aspose.words/txtsaveoptions#MaxCharactersPerLine) has been introduced to control the maximum number of characters per line in the output document of TXT format.

#### Rendering to PDF/A-2

Rendering to PDF/A-2 format has been implemented by adding new values to the [PdfCompliance](https://apireference.aspose.com/words/java/com.aspose.words/PdfCompliance) enumeration. PDF/A-2 is based on the PDF-1.7 format and removes significant limitations of PDF/A-1 like prohibited transparency and prohibited object compression.

#### Work with Patterns

A simple way to get and apply a pattern to the fill of any fillable objects in a document has been presented. For this purpose, the [Patterned](https://apireference.aspose.com/words/java/com.aspose.words/fill#patterned(int)) method with two overloads and the [Pattern](https://apireference.aspose.com/words/java/com.aspose.words/fill#Pattern) property have been added to the [Fill](https://apireference.aspose.com/words/java/com.aspose.words/Fill) class and the [PatternType](https://apireference.aspose.com/words/java/com.aspose.words/PatternType) enumeration has been added to the Constants.

#### Insert GIF into the Document Model

The ability to insert a GIF image into the document model using the [InsertImage](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) method has been introduced. Please note that saving a document to a format different from DOCX, DOTX, DOCM, DOTM, FOPC causes the conversion of GIF images to PNG.

### Conversion

A new overload of the [InsertHtml](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertHtml(java.lang.String,int)) method with extended options has been implemented to make this operation more flexible.

### Mail Merge and Reporting

A new property [RestartListsAtEachSection](https://apireference.aspose.com/words/java/com.aspose.words/mailmerge#RestartListsAtEachSection) has been added to control whether the list numbering at each section should be restarted after executing a mail merge.

### Other

- New methods [SetCheckedSymbol](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTag#setCheckedSymbol(int,java.lang.String)) and [SetUncheckedSymbol](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTag#setUncheckedSymbol(int,java.lang.String)) have been added to set checked and unchecked symbols for your favorite structured document tags.
- The equations created with EQ fields are now supported upon converting to all HTML-based formats.
- A new public property [ContinuousSectionPageNumberingRestart](https://apireference.aspose.com/words/java/com.aspose.words/layoutoptions#ContinuousSectionPageNumberingRestart) has been added to control the behavior for computing page numbers when a continuous section restarts page numbering.
- An ability to work with Framesets has been added. This is the first simple API which is going to be extended upon your requests. Just tell us what you need.
- A new PDF save option [ExportLanguageToSpanTag](https://apireference.aspose.com/words/java/com.aspose.words/pdfsaveoptions#ExportLanguageToSpanTag) has been added. This option allows users to customize how the `/Lang` entry should be exported. It can be useful for compatibility with some screen readers.
- A new public field updating callback has been implemented. This allows you to have your own custom methods called during field update.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.5 Release Notes](/words/java/aspose-words-for-java-21-5-release-notes/).

Learn more about [Aspose.Words for Java 21.6 Release Notes](/words/java/aspose-words-for-java-21-6-release-notes/).

Learn more about [Aspose.Words for Java 21.7 Release Notes](/words/java/aspose-words-for-java-21-7-release-notes/).

Learn more about [Aspose.Words for Java 21.8 Release Notes](/words/java/aspose-words-for-java-21-8-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 21.1, 21.2, 21.3, 21.4

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

Aspose.Words 21.3 expands rendering and reporting options, and improves interaction with styles and child nodes of the StructuredDocumentTag.

Aspose.Words 21.4 improves rendering and conversion features, and enhances the ability to work with a ranged structured document tag.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/java/com.aspose.words/tablestyle#VerticalAlignment) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

#### Setting Fill Formatting of Text

Font API has been extended with the [Fill](https://apireference.aspose.com/words/java/com.aspose.words/Fill) properties to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

#### Convert Any Fill to Solid

A new method [Solid](https://apireference.aspose.com/words/java/com.aspose.words/fill#solid()) has been added to the [Fill](https://apireference.aspose.com/words/java/com.aspose.words/Fill) class for processing solid fills.

#### Support for Advanced Typography

Support for advanced typography when saving to image formats with GDI+ or SkiaSharp, for example, on all .NET platforms and .NET Standard, has been implemented.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/java/com.aspose.words/IImageSavingCallback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/java/com.aspose.words/htmlloadoptions#IgnoreNoscriptElements) has been added to ignore `<noscript>` HTML elements upon loading HTML.

#### Clean Up Unused Information from a Document

A new public property [UnusedBuiltinStyles](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedBuiltinStyles) has been added to the [CleanupOptions](https://apireference.aspose.com/words/java/com.aspose.words/CleanupOptions) class to detect and remove built-in styles that are marked as "unused" to make the document stricter.

### Reporting

New extension methods **Select** and **SelectMany** have been added for the LINQ Reporting Engine.

### Search and Compare

A new public property [SmartParagraphBreakReplacement](https://apireference.aspose.com/words/java/com.aspose.words/findreplaceoptions#SmartParagraphBreakReplacement) has been added to the [FindReplaceOptions](https://apireference.aspose.com/words/java/com.aspose.words/FindReplaceOptions) object to indicate whether a paragraph break is allowed to be replaced when there is no next sibling paragraph.

### Other

* New public methods [StartColumnBookmark](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#startColumnBookmark(java.lang.String)) and [EndColumnBookmark](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder#endColumnBookmark(java.lang.String)) have been introduced in the [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) class. This gives the ability to add a Bookmark control to one or more columns in a range of rows.
* A new public option [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/java/com.aspose.words/saveoptions#UpdateCreatedTimeProperty) has been added to update the [CreatedTime](https://apireference.aspose.com/words/java/com.aspose.words/BuiltInDocumentProperties#CreatedTime) property of a document upon saving.
* A new property **CustomTimeZoneInfo** has been added to set custom timezone when [SdtType.Date](https://apireference.aspose.com/words/java/com.aspose.words/SdtType) structured document tag is updated from custom XML.
* A new public method **OpenIStream** has been added to the **ComHelper** class to load documents from IStream objects in COM applications.
* A new public method [ClearQuickStyleGallery](https://apireference.aspose.com/words/java/com.aspose.words/Stylecollection#clearQuickStyleGallery()) has been added to the [StyleCollection](https://apireference.aspose.com/words/java/com.aspose.words/StyleCollection) class. Now it is really easy to remove all styles from the Quick Style Gallery panel.
* An ability to work with child nodes of the [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTag) range has been added. New behavior follows the [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/CompositeNode) pattern and returns a live collection.
* The ability to create instances of the [StructuredDocumentTagRangeStart](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTagRangeStart) and [StructuredDocumentTagRangeEnd](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTagRangeEnd) classes manually has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.1 Release Notes](/words/java/aspose-words-for-java-21-1-release-notes/).

Learn more about [Aspose.Words for Java 21.2 Release Notes](/words/java/aspose-words-for-java-21-2-release-notes/).

Learn more about [Aspose.Words for Java 21.3 Release Notes](/words/java/aspose-words-for-java-21-3-release-notes/).

Learn more about [Aspose.Words for Java 21.4 Release Notes](/words/java/aspose-words-for-java-21-4-release-notes/).

{{% /alert %}}
