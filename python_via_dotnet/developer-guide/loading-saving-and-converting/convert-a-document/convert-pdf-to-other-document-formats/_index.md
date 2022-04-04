---
title: Convert PDF to Other Document Formats
second_title: Aspose.Words for Python via .NET
articleTitle: Convert PDF to Other Document Formats
linktitle: Convert PDF to Other Document Formats
type: docs
description: "Convert PDF to Word formats such as DOCX, DOC, image formats such as JPG or PNG, or any other formats supported by Aspose using Python.Words."
keywords: convert pdf to other formats python
weight: 45
url: /python-net/convert-pdf-to-other-document-formats/
aliases: [/python/convert-pdf-to-other-document-formats/]
---

Aspose.Words can load even such a complex format as PDF. This opens up new opportunities: it is possible to convert PDF to Word or other formats that bring users far ahead in solving many applied problems.

## Convert PDF to Other Formats {#convert-pdf-to-other-formats}

The most popular conversion from PDF is conversion to Microsoft Word formats such as DOCX, DOC, as well as image formats such as JPG or PNG. With that said, converting a document from one format to another performs in a familiar way.

The following code example shows how to convert a document from PDF to DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Specify Load Options when Importing PDF {#specify-load-options-when-importing-pdf}

Aspose.Words provides you with the **PdfLoadOptions** class, which allows more precise control over how PDF documents are loaded.

Most properties inherit or overload properties that already exist in the **LoadOptions** class. In addition to them, a number of properties are specified for PDF format. For example, you can use the **page_count** and **page_index** properties to define the page range to be loaded from a PDF document, and the **skip_pdf_images** properties to control whether images should be skipped when loading PDF. Another supported parameter is the **password**, which must be provided for password-protected documents.

## Supported PDF Content {#supported-pdf-content}

PDF2Word plugin currently supports the following data types:

* Text paragraphs
* Images
* Tables
* Lists
* Headers and footers
* Footnotes
* Page numbers
* Right-to-left text (with some limitations)
* Searchable PDFs (front images will be removed in favor of background text)

## Planned Features {#planned-features}

Some features are still in early development or included in the development roadmap:

* Table of Contents
* OCR for Searchable and Non-Searchable PDFs
* Progress report
* Multicolumn text
* Math formulas
* More automatic fields (besides PAGE and NUMPAGES)

## PDF Load Exceptions

During a PDF document conversion, one of the following exceptions might happen:

| Exception                        | Description                                                  |
| -------------------------------- | ------------------------------------------------------------ |
| *FileLoadException*              | A PDF file cannot be processed for some reason.<br />{{% alert color="primary" %}}You can report the issue to the development team for a detailed investigation using the [technical support](/words/python-net/technical-support/).{{% /alert %}} |
| *DrmProtectedFileException*      | A PDF file is protected by Adobe DRM and cannot be decoded by Pdf2Word. |
| *PasswordProtectedFileException* | The correct password must be provided for a password-protected PDF. |


