---
title: What's new in Aspose.Words for .NET
type: docs
description: "Aspose.Words expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 10
url: /net/what-s-new-in-aspose-words-for-net/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.


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

HTML import has been modified. Previously, the [MswVersion](https://apireference.aspose.com/words/net/aspose.words/loadoptions/properties/mswversion) property had no effect when loading documents from HTML and HTML-based formats (for example, MHTML). All documents were loaded as if no MswVersion were specified. This has been changed, and now the HTML reader can load documents differently depending on the MswVersion value.

### Report Generation

A condition evaluation extension point has been introduced. This allows users to implement custom evaluation for the IF and COMPARE fields which are very popular upon creating different types of reports.

### Other

- The [VbaReferenceCollection](https://apireference.aspose.com/words/net/aspose.words/vbareferencecollection) class and related types are exposed publicly. Now you have more control over Macros, for example, removing a Template and all its references from the code without using Microsoft Word.
- New public properties [SpellingChecked](https://apireference.aspose.com/words/net/aspose.words/document/properties/spellingchecked) and [GrammarChecked](https://apireference.aspose.com/words/net/aspose.words/document/properties/grammarchecked) have been added to indicate if a document has been checked for spelling and grammar, respectively.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for .NET 20.9 Release Notes](/words/net/aspose-words-for-net-20-9-release-notes/).

Learn more about [Aspose.Words for .NET 20.10 Release Notes](https://docs.aspose.com/words/net/aspose-words-for-net-20-10-release-notes/).

Learn more about [Aspose.Words for .NET 20.11 Release Notes](https://docs.aspose.com/words/net/aspose-words-for-net-20-11-release-notes/).

Learn more about [Aspose.Words for .NET 20.12 Release Notes](https://docs.aspose.com/words/net/aspose-words-for-net-20-12-release-notes/).

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
- The [SkipPdfImages](https://apireference.aspose.com/words/net/aspose.words/pdfloadoptions/properties/skippdfimages) flag has been added to the [PdfLoadOptions](https://apireference.aspose.com/words/net/aspose.words/pdfloadoptions) class to indicate whether images must be skipped when loading a PDF document.
- Support for SVG images embedded using data URLs upon HTML import has been implemented.

{{% alert color="primary" %}} 

Learn more about [Aspose.Words for .NET 20.5 Release Notes](/words/net/aspose-words-for-net-20-5-release-notes/).

Learn more about [Aspose.Words for .NET 20.6 Release Notes](/words/net/aspose-words-for-net-20-6-release-notes/).

Learn more about [Aspose.Words for .NET 20.7 Release Notes](/words/net/aspose-words-for-net-20-7-release-notes/).

Learn more about [Aspose.Words for .NET 20.8 Release Notes](/words/net/aspose-words-for-net-20-8-release-notes/).

{{% /alert %}} 

## Aspose.Words for .NET 20.3, 20.4

Aspose.Words 20.3 introduces support of separate DLLs for Xamarin.Android, Xamarin.Mac and Xamarin.iOS, as well as huge performance and memory improvements.

Aspose.Words 20.4 introduces support for .NET 4.6.1, 3D Effects Rendering through the OpenGL feature in two modes – basic or advanced.

The API is enhanced for more flexible and convenient development.

### Platforms

#### Xamarin Support Changes

Starting with Aspose.Words 20.3, Xamarin support has changed. In earlier versions, we provided separate DLLs for Xamarin.Android, Xamarin.Mac and Xamarin.iOS. Now Xamarin developers can use Aspose.Words for .NET Standard in all mentioned platforms.
According to the .NET Standard documentation, Aspose.Words for .NET Standard 2.0 can be used with Xamarin.iOS 10.14 or newer, Xamarin.Mac 3.8 or newer, and with Xamarin.Android 8.0 or newer.

#### New Platform Support: .NET 4.6.1

Starting from 20.4 version, Aspose.Words has a dedicated release for .NET 4.6.1 framework.

### Performance and Memory Improvements

We released Aspose.Words for .NET and, as always, Aspose.Words for Java almost at the same time. And we are pleased to present the huge performance and memory improvements in Aspose.Words for Java 20.3 due to the *NodeCollectionEnumerator* algorithm optimization, removing the *Ref&lt;T&gt;* objects creation from nested cycles, and Blank documents loading optimization using *arraycopy* for small arrays.

### Graphics

#### 3D Effects Rendering Support

The first version of 3D Effects Rendering through the OpenGL feature has been released. You can select one of two rendering modes for 3D shape effects rendering – “Basic mode” or “Advanced mode”:

- Basic mode – the default lightweight and stable rendering, based on the internal engine, but without advanced effects.
- Advanced mode – rendering of an extended list of special effects, including advanced 3D effects, such as bevels, lighting, and materials, via OpenGL. We position this feature as experimental since it is under development, and there is a number of limitations for advanced mode.

#### More Chart Customization

The API for chart data labels and series has expanded. Now you have more control over data labels, series, and their formatting.

#### New Image Fidelity Options for PDF Format

The [InterpolateImages](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/properties/interpolateimages) interpolation property indicates that a PDF Reader (for example, Acrobat Reader), should smooth the image to make it look more "attractive". For different PDF Readers, this property can work in different ways: some readers may choose to not implement this PDF feature, others use any specific implementation of interpolation that they wish.
Using the *InterpolateImages* property is relevant if the resolution of a source image is significantly lower than the resolution of the output device.

### Search and Compare

Search and compare options are extended:

- The functionality of the *FindReplaceOptions* class becomes more flexible to serve your needs. It is now possible to ignore text inside revisions and fields. You can also enable the use of substitutions in the replacement pattern via the [UseSubstitutions](https://apireference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/properties/usesubstitutions) property – this makes easy to use part or whole match when replacing.
- The [Granularity](https://apireference.aspose.com/words/net/aspose.words/compareoptions/properties/granularity) option, allowing the customer to specify comparison granularity, has been added. This feature allows you to specify the exact granularity of changes to track when comparing two documents.

### Other

- A new public property [UpdateLastPrintedProperty](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/updatelastprintedproperty) has been added. Using this property, you can control when to update *LastPrintedProperty*, for example, before printing.
- The ability to change Asian paragraph spacing and indents through the public API has been added. This is the next step of Chinese language-specific Paragraph formatting improvement.

{{% alert color="primary" %}} 

Learn more about [Aspose.Words for .NET 20.3 Release Notes](/words/net/aspose-words-for-net-20-3-release-notes/).

Learn more about [Aspose.Words for .NET 20.4 Release Notes](/words/net/aspose-words-for-net-20-4-release-notes/).

{{% /alert %}} 
