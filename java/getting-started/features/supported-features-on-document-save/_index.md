---
title: Supported Features on Document Save
type: docs
weight: 30
url: /java/supported-features-on-document-save/
aliases: [/java/document-saving-overview/]
---

Aspose.Words has some of the most advanced conversion support of the common word processing formats.

All imported documents loaded into Aspose.Words can be exported to any other supported format. Features are preserved during conversion. Conversion between formats gives some of the best conversion results out there.

Aspose.Words can convert a document of any size as long as there is sufficient working memory to complete the operation. Additionally, if available memory is low, you can choose a temporary folder during export to DOC or DOCX format. This allows resources during conversion to be stored temporarily to disk. These files are removed after conversion is complete. This allows large documents to be saved even when there is not much memory available.

The following pages describe how each Microsoft Word feature is handled and the current level of support during the saving of a document to the chosen format.

## Saving a Document

To save a document simply use the [Document.Save](https://apireference.aspose.com/words/java/com.aspose.words/Document) method and specify the file extension or [SaveFormat](https://apireference.aspose.com/words/java/com.aspose.words/SaveFormat) type to convert the document to the specified format.

There are also numerous save options available to control how documents are exported to a format. For example, there is a save option to choose compliance when exporting to Open Office XML formats or to choose the page range to export when rendering to fixed page formats such as PDF, XPS, Image etc. Each export format type has its own save option class, for instance, PDF has the [PdfSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/PdfSaveOptions) class, and HTML has the HtmlSaveOptions class and so forth.

## Section Guide

The tables in the following topics show which features of Microsoft Word documents are supported when you save a document using Aspose.Words in a particular format.

The Supported column contains the following values:

- **Yes** – The feature is supported. Content and formatting will be preserved. Comments provide further information about the feature and how it is implemented in Aspose.Words. If there are any limitations they will be also stated in that column.
- **Planned** – The feature will be supported in future versions of Aspose.Words. Content or formatting related to this feature will be lost in the current version.
- **N/A (Not Applicable)** – The feature is not supported because there is no corresponding feature in the output format. Some content or formatting will be lost. The feature is not likely to be supported in the future.
