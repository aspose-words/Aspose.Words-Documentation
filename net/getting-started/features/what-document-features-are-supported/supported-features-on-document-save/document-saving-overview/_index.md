---
title: Document Saving Overview
type: docs
weight: 10
url: /net/document-saving-overview/
---

{{% alert color="primary" %}} 

Aspose.Words has some of the most advanced conversion support of the common word processing formats.

All imported documents loaded into Aspose.Words can be exported to any other supported format. Features are preserved during conversion. Conversion between formats gives some of the best conversion results out there. 

To save a document simply use the [Document.Save](/pages/createpage.action?spaceKey=wordsnet&title=Save+overloads&linkCreation=true&fromPageId=2595785) method and specify the file extension or [SaveFormat](/pages/createpage.action?spaceKey=wordsnet&title=SaveFormat+Class&linkCreation=true&fromPageId=2595785) type to convert the document to the specified format.

There are also many save options available to control how documents are exported to a format. For example, there is a save option to choose compliance when exporting to Open Office XML formats, or to choose the page range to export when rendering to fixed page formats such as PDF, XPS, Image etc. Each export format type has its own save option class, for instance PDF has the [PdfSaveOptions](/pages/createpage.action?spaceKey=wordsnet&title=PdfSaveOptions+Class&linkCreation=true&fromPageId=2595785) class, and HTML has the [HtmlSaveOptions](/pages/createpage.action?spaceKey=wordsnet&title=HtmlSaveOptions+Class&linkCreation=true&fromPageId=2595785) class and so forth.

Aspose.Words can convert a document of any size as long as there is sufficient working memory to complete the operation. Additionally, if available memory is low, you can choose a temporary folder during export to DOC or DOCX format. This allows resources during conversion to be stored temporarily to disk. These files are removed after conversion is complete. This allows large documents to be saved even when there is not much memory available.

The following pages describe how each Microsoft Word feature is handled and the current level of support during saving of a document to the chosen format. 

{{% /alert %}}
