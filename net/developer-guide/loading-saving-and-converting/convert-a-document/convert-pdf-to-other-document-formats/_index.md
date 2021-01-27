---
title: Convert PDF to Other Document Formats
type: docs
description: “Aspose.Words for .NET allows you to convert PDF to Word formats such as DOCX, DOC, image formats such as JPG or PNG, or any other formats supported by Aspose.Words.”
keywords: convert pdf to other formats c#
weight: 45
url: /net/convert-pdf-to-other-document-formats/
---

Aspose.Words can load even such a complex format as PDF. This opens up new opportunities: it is possible to convert PDF to Word or other formats that bring users far ahead in solving many applied problems.

## Prerequisites

* Added reference to Aspose.Words package ***OR*** to Aspose.Words.Pdf2Word.dll.
* At least .NET Framework 4.6.1 or .NET Standard 2.0. Targets like .NET Core 2.x or 3.0, .NET 5, and Xamarin are also supported via compatibility with .NET Standard.

## Convert PDF to Other Formats

The most popular conversion from PDF is conversion to Microsoft Word formats such as DOCX, DOC, as well as image formats such as JPG or PNG. With that said, converting a document from one format to another performs in a familiar way.

The following code example shows how to convert a document from PDF to DOCX:

**.NET**
{{< highlight csharp >}}
// Load the document from disk.
Document doc = new Document(dataDir + "TestDoc.pdf");

// Save the document in DOCX format.
doc.Save(dataDir + "SavePdf2Docx.docx");
{{< /highlight >}}

## Specify Load Options when Importing PDF

Aspose.Words provides you with the [PdfLoadOptions](https://apireference.aspose.com/words/net/aspose.words/pdfloadoptions) class, which allows more precise control over how PDF documents are loaded.

Most properties inherit or overload properties that already exist in the LoadOptions class. In addition to them, a number of properties are specified for PDF format. For example, you can use the [PageCount](https://apireference.aspose.com/words/net/aspose.words/pdfloadoptions/properties/pagecount) and [PageIndex](https://apireference.aspose.com/words/net/aspose.words/pdfloadoptions/properties/pageindex) properties to define the page range to be loaded from a PDF document, and the [SkipPdfImages](https://apireference.aspose.com/words/net/aspose.words/pdfloadoptions/properties/skippdfimages) properties to control whether images should be skipped when loading PDF. Another supported parameter is the [Password](https://apireference.aspose.com/words/net/aspose.words/loadoptions/properties/password), which must be provided for [password-protected documents](https://docs.aspose.com/words/net/document-protection/).

## Supported PDF Content

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

## Planned Features

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
| *FileLoadException*              | A PDF file cannot be processed for some reason.<br />{{% alert color="primary" %}}You can report the issue to the development team for a detailed investigation using the [technical support](/words/net/technical-support/).{{% /alert %}} |
| *DrmProtectedFileException*      | A PDF file is protected by Adobe DRM and cannot be decoded by Pdf2Word. |
| *PasswordProtectedFileException* | The correct password must be provided for a password-protected PDF. |

## See Also

* [Nuget reference to Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

