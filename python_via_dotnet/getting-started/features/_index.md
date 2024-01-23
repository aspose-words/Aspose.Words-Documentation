---
title: Features
second_title: Aspose.Words for Python via .NET
articleTitle: Supported Features
linktitle: Supported Features
description: "Aspose.Words for Python via .NET provides users with a wide range of features from simply converting and modifying documents to creating structured and visually appealing documents or automating reporting."
type: docs
weight: 30
url: /python-net/features/
aliases:
 - /python/feature-overview/
 - /python/what-document-features-are-supported/
 - /python/features/
---

Aspose.Words provides users with a wide range of features. Users can perform a huge amount of document-related tasks – from simply converting documents from one supported format to another and modifying those documents during the conversion process to business tasks, such as creating structured and visually appealing documents or automating reporting.

Modern document formats and standards are complex, and when you require document conversion or other document processing features in your project, the only practical solution is often to rely on a third-party component that implements the desired functionality. But using a third-party component always carries some risk. One of the unique risks in document processing is the question about how completely and correctly the library implements a particular document format or standard.

Aspose is committed to delivering the most complete and accurate implementations of document formats and standards. The Aspose.Words team demonstrates their commitment to interoperability by providing detailed implementation notes for supported document formats across multiple platforms.

The tables below summarize and compare the availability of Aspose.Words for Python via .NET features and provide links to detailed feature descriptions.

## Supported Platforms

The platforms Aspose.Words for Python via .NET can be used on Windows x64 or x86 and wide range of Linux distributions with Python 3.5 or later installed. There are additional requirements to the target Linux platform:
- GCC-6 runtime libraries (or later)
- Dependencies of .NET Core Runtime. Installing .NET Core Runtime itself is NOT required
- For Python 3.5-3.7: The `pymalloc` build of Python is needed. The `--with-pymalloc` Python build option is enabled by default. Typically, the `pymalloc` build of Python is marked with `m` suffix in the filename.
- `libpython` shared Python library. The `--enable-shared` Python build option is disabled by default, some Python distributions do not contain the `libpython` shared library. For some linux platforms, the `libpython` shared library can be installed using the package manager, for example: `sudo apt-get install libpython3.7`. The common issue is that `libpython` library is installed in a different location than the standard system location for shared libraries. The issue can be fixed by using the Python build options to set alternate library paths when compiling Python, or fixed by creating a symbolic link to the `libpython` library file in the system standard location for shared libraries. Typically, the `libpython` shared library file name is `libpythonX.Ym.so.1.0` for Python 3.5-3.7, or libpythonX.Y.so.1.0 for Python 3.8 or later (for example: `libpython3.7m.so.1.0`, `libpython3.9.so.1.0`).

If you need support for more platforms, look for the "twin brother" products Aspose.Words for .NET or Aspose.Words for Java.

## File Formats and Conversions

Many customers worldwide rely on the thorough document import and export features provided by Aspose.Words.

| Feature |Description|Python via .NET|
| :- | :- | :- |
|Microsoft Word - DOC|The fastest and most complete DOC format implementation you can find.|{{< emoticons/tick >}}|
|WordprocessingML - DOCX and XML|Aspose.Words provides exhaustive support OOXML, Flat OPC and also Word 2003 XML.|{{< emoticons/tick >}}|
|Rich Text Format - RTF|Comprehensive support of the RTF format to interact with a variety of applications.|{{< emoticons/tick >}}|
|HTML, XHTML and MHTML|Load and save HTML/XHTML for even greater interoperability. Save as MHTML is also available.|{{< emoticons/tick >}}|
|OpenDocument - ODT|Aspose.Words can load and save documents in the OpenDocument Text (.odt) format.|{{< emoticons/tick >}}|
|Adobe Portable Document Format - PDF|Convert any document to PDF with high fidelity. PDF/A is supported.|{{< emoticons/tick >}}|
|XML Paper Specification - XPS|Convert any document to XPS with high fidelity.|{{< emoticons/tick >}}|
|Plain Text - TXT|Easily extract text by saving in plain text format.|{{< emoticons/tick >}}|
|Digital Publishing EPUB|EPUB is a popular format for eBooks. You can convert any document from Aspose.Words to the IDPF EPUB format.|{{< emoticons/tick >}}|
|Printer Command Language (PCL)|Aspose.Words for .NET provides support to save document to PCL format.|{{< emoticons/tick >}}|

## Rendering and Printing

Aspose.Words now provides high fidelity rendering of document pages.

| Feature |Python via .NET|
| :- | :- |
|Layout document into pages with high fidelity (exactly like Microsoft Word® would do that) to all the formats below.|{{< emoticons/tick >}}|
|Render individual pages or complete documents to PDF or XPS.|{{< emoticons/tick >}}|
|Render document pages to BMP images|{{< emoticons/tick >}}|
|Render document pages to images (PNG, EMF, JPEG, GIF).|{{< emoticons/tick >}}|
|Render individual shapes from the document into raster or vector images.|{{< emoticons/tick >}}|
|Specify image resolution, quality, compression and other options.|{{< emoticons/tick >}}|
|Render pages or shapes to a .NET Graphics object with transforms, to a specific size.|{{< emoticons/tick >}}|
|Print document pages using the .NET printing infrastructure.|{{< emoticons/cross >}}|
|Update TOC, page numbers and other fields before rendering or printing.|{{< emoticons/tick >}}|

## Document Content Features

Aspose.Words provides a rich object model that consists of over 100 public classes, which allow you to programmatically generate, combine, modify, parse or otherwise examine loaded documents.

| Feature |Python via .NET|
| :- | :- |
|Access, create and modify paragraphs and text.|{{< emoticons/tick >}}|
|Access, create and modify images, textboxes and shapes.|{{< emoticons/tick >}}|
|Access, create and modify tables, rows and cells.|{{< emoticons/tick >}}|
|Access, create and modify fields, form fields, hyperlinks and bookmarks.|{{< emoticons/tick >}}|
|Access, create and modify document sections, headers and footers.|{{< emoticons/tick >}}|
|Access, create and modify footnotes, endnotes and comments.|{{< emoticons/tick >}}|
|Access, create and modify Custom XML, SmartTags and Structured Document Tags (Content Controls).|{{< emoticons/tick >}}|
|Access and modify all document elements using **XmlDocument** -like classes and methods.|{{< emoticons/tick >}}|
|Update field results IF, formula and other popular field types.|{{< emoticons/tick >}}|
|Rebuild and update Table Of Contents (TOC) fields exactly like Microsoft Word does it.|{{< emoticons/tick >}}|
|Copy and move document elements between documents.|{{< emoticons/tick >}}|
|Join and split documents.|{{< emoticons/tick >}}|
|Get and set built-in and custom document properties.|{{< emoticons/tick >}}|
|Specify document protection, open protected and encrypted documents.|{{< emoticons/tick >}}|
|Find and replace text, enumerate over document content.|{{< emoticons/tick >}}|
|Accept all revisions in a document.|{{< emoticons/tick >}}|
|Preserve or extract OLE objects and ActiveX controls from the document.|{{< emoticons/tick >}}|
|Preserve or remove VBA macros from the document. Preserve VBA macros digital signature.|{{< emoticons/tick >}}|
|Detect and verify digital signatures in documents.|{{< emoticons/tick >}}|
|Insert HTML text.|{{< emoticons/tick >}}|
|Extract VBA Macros from Word Document.|{{< emoticons/tick >}}|

## Document Formatting Features

Aspose.Words provides detailed programmatic access to the formatting properties of all document elements.

| Feature |Python via .NET|
| :- | :- |
|Access and modify all character formatting including fonts, colors, effects, borders and shading.|{{< emoticons/tick >}}|
|Access and modify all paragraph formatting including indents, spacing, borders and shading, tab stops.|{{< emoticons/tick >}}|
|Access and modify all bulleted and numbered lists formatting including numbering and levels.|{{< emoticons/tick >}}|
|Access and modify table formatting including alignment, orientation, borders and shading.|{{< emoticons/tick >}}|
|Access and modify all section properties including paper size, margins and orientation.|{{< emoticons/tick >}}|
|Access, create and modify document styles.|{{< emoticons/tick >}}|
|Access and modify drawing objects including position, size, line and fill properties, image bytes.|{{< emoticons/tick >}}|

## Mail Merge Features

You can use Aspose.Words as a reporting solution on its own. Design your reports in Microsoft Word and then have Aspose.Words populate documents with data from various data sources.

| Feature |Python via .NET|
| :- | :- |
|Use all standard Microsoft Word mail merge fields in your reports including MERGEFIELD, NEXT, NEXTIF, ADDRESSBLOCK, GREETINGLINE.|{{< emoticons/tick >}}|
|Execute mail merge for documents that contain even the most complex and nested `IF` fields and formulas.|{{< emoticons/tick >}}|
|Populate and dynamically grow tables or fragments in the document from your data source using mail merge regions.|{{< emoticons/cross >}}|
|Easily generate reports that contain master-detail (parent-child) data such as Order/OrderDetails.|{{< emoticons/cross >}}|
|Populate documents with data from any .NET data source such as DataSet, DataTable, DataView, DataReader or ADO Recordset.|{{< emoticons/cross >}}|
|Populate documents from any data source such as a LINQ query, XML file or business objects by implementing the [IMailMergeDataSource](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/imailmergedatasource/) interface.|{{< emoticons/cross >}}|
|Take precise control, such as number formatting, over how your data is merged using events.|{{< emoticons/cross >}}|
|Insert images during mail merge.|{{< emoticons/tick >}}|
|Programmatically create or modify a Microsoft Word mail merge data source for a document. Preserve mail merge settings and data sources.|{{< emoticons/tick >}}|
|Retrieve mail merge field names.|{{< emoticons/tick >}}|

## Reporting Features

LINQ Reporting Engine is an advanced reporting tool enabling you to generate documents based upon template documents and data obtained from various sources including databases, XML, JSON, OData, objects of custom CLR types, external documents, and more out of the box.

|Key Features|Python via .NET|
| :- | :- |
|Support of C# syntax and LINQ extension methods directly in templates (even for ADO.NET data sources)|{{< emoticons/tick >}}|
|Support of repeatable and conditional document blocks (loops and conditions) for tables, lists, and common content|{{< emoticons/tick >}}|
|Support of dynamically generated charts and images|{{< emoticons/tick >}}|
|Support of insertion of outer documents and HTML blocks into a document|{{< emoticons/tick >}}|
|Support of multiple data sources (including of different types) for generation of a single document|{{< emoticons/tick >}}|
|Built-in support of data relations (master-detail)|{{< emoticons/tick >}}|
|Comprehensive support of various data manipulations such as grouping, sorting, filtering, and others directly in templates|{{< emoticons/tick >}}|
|WYSIWYG: A generated document retains the same formatting of its elements as a corresponding template has|{{< emoticons/tick >}}|
