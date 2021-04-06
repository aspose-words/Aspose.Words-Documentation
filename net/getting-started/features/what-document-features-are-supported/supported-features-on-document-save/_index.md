---
title: Supported Features on Document Save
type: docs
weight: 30
url: /net/supported-features-on-document-save/
aliases: [/net/document-saving-overview/]
---

Aspose.Words has some of the most advanced conversion support of the common word processing formats.

All imported documents loaded into Aspose.Words can be exported to any other supported format. Features are preserved during conversion. Conversion between formats gives some of the best conversion results out there. 

To save a document simply use the [Document.Save](https://apireference.aspose.com/words/net/aspose.words.document/save/methods/2) method and specify the file extension or [SaveFormat](https://apireference.aspose.com/words/net/aspose.words/saveformat) type to convert the document to the specified format.

There are also many save options available to control how documents are exported to a format. For example, there is a save option to choose compliance when exporting to Open Office XML formats, or to choose the page range to export when rendering to fixed page formats such as PDF, XPS, Image etc. Each export format type has its own save option class, for instance PDF has the [PdfSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/PdfSaveOptions) class, and HTML has the [HtmlSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/HtmlSaveOptions) class and so forth.

Aspose.Words can convert a document of any size as long as there is sufficient working memory to complete the operation. Additionally, if available memory is low, you can choose a temporary folder during export to DOC or DOCX format. This allows resources during conversion to be stored temporarily to disk. These files are removed after conversion is complete. This allows large documents to be saved even when there is not much memory available.

The following pages describe how each Microsoft Word feature is handled and the current level of support during the saving of a document to the chosen format. 