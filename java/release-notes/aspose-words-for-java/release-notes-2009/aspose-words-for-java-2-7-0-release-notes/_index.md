---
title: Aspose.Words for Java 2.7.0 Release Notes
articleTitle: Aspose.Words for Java 2.7.0 Release Notes
linktitle: Aspose.Words for Java 2.7.0 Release Notes
description: "Aspose.Words for Java 2.7.0 Release Notes – the latest updates and fixes."
type: docs
weight: 90
url: /java/aspose-words-for-java-2-7-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 2.7.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-2.7.0/)

{{% /alert %}}

We are happy to announce Aspose.Words for Java 2.7.0 MEGA FIX release! New Features and Fixed Issues total 91 items!

- Full DrawingML support
- HTML Image Export Customizations
- Smart tags are now supported in DOC and OOXML.
- Access to Font Information and Panose
- The documentation now includes a topic on using Aspose.Words from PHP, Perl, Python and other languages.
- 91 fixes and enhancements.

DrawingML is a part of the Office Open XML standard and describes the XML used to store drawing objects in Microsoft Office 2007 documents. Microsoft Word 2007 uses either DrawingML or VML (Vector Markup Language) to store images in documents.

Starting with this release, Aspose.Words for Java 2.7.0 supports the full set of DrawingML used by Microsoft Word 2007. It is now possible to use Aspose.Words to load and save OOXML documents with VML as well as with DrawingML. In earlier versions of Aspose.Words support for DrawingML was limited to inline images only.

When Aspose.Words saves a document to HTML format it writes each image contained in the document as a separate file to disk. Aspose.Words also uses its own scheme for generating unique image files names. Many customers have requested that we allow customizations to both saving and naming.

and SaveOptions.HtmlExportImagesFolderAlias properties allow to control where the images are saved and how URIs that are written to HTML are constructed. These properties were revised and documentation updated.

There is now a new event SaveOptions.HtmlExportImageSaving that is fired just before an image is saved. You have an option of either returning your own file name for the image or completely circumventing the image saving process by returning a stream object for writing the image. 

For using this feature, you have to implement an event listener ExportImageSavingEventHandler.

and register it by SaveOptions.addHtmlExportImageSavingEventHandler(ExportImageSavingEventHandler newHandler).

Smart tags in Microsoft Word documents are fragments of text that are marked to have "special meaning" and can have custom data and actions associated with them. A simple example of a smart tag is an address or a stock ticker. When smart tags are enabled in Microsoft Word, you can see them underlined with a pink dotted underline.

While we consider smart tags a rarely used feature (we had no requests from customers to support them), we believe supporting smart tags is an important step towards supporting all custom markup in Microsoft Word documents. There are three distinct forms of custom markup in Microsoft Word documents:

- Smart tags - now fully supported
- Custom XML
- Structured document tags (content controls)

Earlier versions of Aspose.Words ignored smart tags (e.g. if you open/save a document in Aspose.Words then any smart tags existing in the document would be lost), but since this version all smart tags and their properties are preserved. Also, there are new public classes 

and 

avaialble in the Aspose.Words object model to represent smart tags.

Aspose.Words is the only word processing document library on the market that supports smart tags.

We plan to support custom XML and structured document tags in the next versions of Aspose.Words.

We have made font information loaded from the document publically accessible. Use the Document.FontInfos property and FontInfoCollection, FontInfo,

and FontPitch classes.

Aspose.Words is available only in two versions: Aspose.Words for .NET and Aspose.Words for Java, but nevertheless, you can use it from many other programming languages. We have reworked the section in our documentation and included more examples in different languages.
