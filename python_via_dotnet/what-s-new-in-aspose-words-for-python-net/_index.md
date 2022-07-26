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

## Aspose.Words for Python via .NET 22.5, 22.6, 22.7

Aspose.Words 22.5 introduces support for new loading formats and a new print page size, as well as improves some rendering options.

Aspose.Words 22.6 expands the possibilities of converting PDF to other formats, as well as improve work with DrawingML and solid text fill effect.

Aspose.Words 22.7 enhances the possibilities of working with rendering features, and also adds new features for working with HTML import and export to PDF.

The API is enhanced for more flexible and convenient development.

### Supported Formats

Support for loading EPUB and XML documents has been introduced by adding new values to the **LoadFormat** enumeration. Starting from version 22.5, it is possible to load EPUB and XML documents into Aspose.Words document model and convert them to any [supported formats](/words/python-net/supported-document-formats/).

### Rendering and Printing

#### New Priting Size

Support for the “Envelope No. 10” print page size has been added by introducing a new value to the **PaperSize** enumeration.

#### Rendering MathML Formulas

The rendering of a border box around MathML formulas and font detection when rendering characters for such formulas has been improved.

#### DML Chart Improvements

DrawingML charts public API has been extended to support gradient, texture, and pattern fills.

#### Glyph outlines parsing for OpenType

Aspose.Words own glyph outlines parsing for OpenType (CFF) fonts has been implemented.

Previously, glyph parsing for OpenType (CFF) fonts was performed via GDI+. So now it works in cases where GDI+ is not available – Java, .NET Standard platforms, Linux OS, etc. Glyph outlines parsing is required in specific cases like WordArt, text effects, some Office Math features, and others.

#### Set shape shadow formatting

The ability to set the shadow formatting of the shape object has been provided by adding a new **ShadowFormat** property.

### Loading and saving documents

#### Load and convert PDF to fixed-page format without layout model

The ability to load and convert PDF documents to fixed page formats with high fidelity and performance has been implemented.

#### New HTML import mode

A new HTML import mode for block-level elements has been introduced by adding a new value to the **HtmlInsertOptions** enumeration.

#### Convert to PDF/UA-1 compliant with WCAG 2.0

Support for converting a document to PDF/UA-1 format, compliant with WCAG 2.0, has been added.

So, if the customer has an accessible Word document and converts it to PDF/UA-1 via Aspose.Words mentioning the conversion specifics, then the output will be WCAG 2.0 compatible.

WCAG or Web Content Accessibility Guidelines is a set of guidelines developed by W3C in collaboration with individuals and organizations all over the world. Now with Aspose.Words you can convert your document to the output PDF/UA-1 format, which is suitable to build WCAG 2.0 compliant PDF documents.

It is worth noting that WCAG 2.0 has two additional requirements that are not specified in the PDF/UA-1 specification:

- contrast requirements
- requirements for tagging multimedia content

But both requirements are not relevant to our case of converting from Word to PDF.

### Other

Exception of inheriting the solid text fill effect that mimics MS Word behavior has been implemented.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Python via .NET 22.5 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.6 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

Learn more about [Aspose.Words for Python via .NET 22.7 Release Notes](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

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

Rendering into PDF with PDF/A-4 compliance has been added by adding new values to the **PdfCompliance** enumeration – PdfA4. This option assumes revised conformance levels: regular PDF/A-4 conformance is equivalent to conformance level U of previous versions, and the level A conformance is removed.

#### Reading of Photoshop metadata resolution in JPEG

Reading of Photoshop metadata resolution in JPEG images has been implemented to fix an interesting issue with incorrect scaling of images upon rendering.

#### Allow Latin Text to Wrap in the Middle of a Word

Support for the "Allow Latin text to wrap in the middle of a word" feature has been implemented to make our Latin support even better upon rendering.

### Loading and Saving Documents

#### Controlling Style Behavior When Loading a Document

A new option **ForceCopyStyles** has been introduced to control the behavior of conflicting styles upon document import.

#### Convert Shapes to SVG When Exporting

The ability to convert shapes to SVG images upon exporting to HTML, MHTML, or EPUB has been provided by adding the **ExportShapesAsSvg** property.

#### Saving to PDF 2.0 and Improvements in PDF Output

The ability to save a document as PDF 2.0 by adding a new value to the **PdfCompliance** enumeration, as well as several other requested improvements to PDF output, have been introduced.

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
