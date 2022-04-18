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