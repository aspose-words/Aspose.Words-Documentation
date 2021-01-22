---
title: Convert PDF to Other Document Formats
type: docs
description: "Aspose.Words for Java allows you to convert PDF to Word formats such as DOCX, DOC, image formats such as JPG or PNG, or any other formats supported by Aspose.Words."
keywords: "convert pdf to other formats Java"
weight: 45
url: /java/convert-pdf-to-other-document-formats/
---

Aspose.Words can load even such a complex format as PDF. This opens up new opportunities: it is possible to convert PDF to Word or other formats that bring users far ahead in solving many applied problems.

## Prerequisites

* Added reference to Aspose.Words package ***OR*** to Aspose.Words.Pdf2Word.dll.

## Convert PDF to Other Formats

The most popular conversion from PDF is conversion to Microsoft Word formats such as DOCX, DOC, as well as image formats such as JPG or PNG. With that said, converting a document from one format to another performs in a familiar way.

The following code example shows how to convert a document from PDF to DOCX:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToPDF-ConvertPDFtoOtherFormats.java" >}}


## Specify Load Options when Importing PDF

Aspose.Words provides you with the [PdfLoadOptions](https://apireference.aspose.com/words/java/com.aspose.words/pdfloadoptions) class, which allows more precise control over how PDF documents are loaded.

Most properties inherit or overload properties that already exist in the LoadOptions class. In addition to them, a number of properties are specified for PDF format. For example, you can use the [PageCount](https://apireference.aspose.com/words/java/com.aspose.words/pdfloadoptions#pagecount) and [PageIndex](https://apireference.aspose.com/words/java/com.aspose.words/pdfloadoptions#pageindex) properties to define the page range to be loaded from a PDF document, and the [SkipPdfImages](https://apireference.aspose.com/words/java/com.aspose.words/pdfloadoptions#skippdfimages) properties to control whether images should be skipped when loading PDF. Another supported parameter is the [Password](https://apireference.aspose.com/words/java/com.aspose.words/loadoptions#password), which must be provided for [password-protected documents](https://docs.aspose.com/words/java/document-protection/).

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
| *FileLoadException*              | A PDF file cannot be processed for some reason.<br />{{% alert color="primary" %}}You can report the issue to the development team for a detailed investigation using the [technical support](https://docs.aspose.com/words/net/product-overview/#technical-support).{{% /alert %}} |
| *DrmProtectedFileException*      | A PDF file is protected by Adobe DRM and cannot be decoded by Pdf2Word. |
| *PasswordProtectedFileException* | The correct password must be provided for a password-protected PDF. |

## See Also

* [Install Aspose.Words for Java from Maven Repository](https://docs.aspose.com/words/java/installation/)