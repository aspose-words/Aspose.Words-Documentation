---
title: Aspose.Words .Net 4.1.0.0 New Release Release Notes
description: "Aspose.Words .Net 4.1.0.0 New Release Release Notes – learn about the latest updates and fixes."
type: docs
weight: 190
url: /net/aspose-words-net-4-1-0-0-new-release-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words .Net 4.1.0.0 New Release](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-.net-4.1.0.0-new-release/)

{{% /alert %}} 

This release of contains a single important new feature:

- RTF Import

Support for RTF in Aspose.Words was requested by many customers and for very long time. We are proud to announce that RTF in Aspose.Words is now fully supported. We released RTF export a few months ago in Aspose.Words 4.0 and now we complete the job by adding RTF import.

Aspose.Words was initially developed to generate, open, modify, save and convert primarily Microsoft Word DOC documents, but it later grew to include support for other Microsoft Word and non-Microsoft Word formats.

Here is a brief summary of the file formats that Aspose.Words for .NET now supports:

- DOC read and write, Microsoft Word versions 97 to 2007.
- RTF read and write according to the Rich Text Format 1.8 specification.
- WordprocessingML write (read will soon be ready) as per Microsoft Word 2003.
- DOCX - Open XML, Word 2007, read and write planned for Q2 2007.
- HTML/XHTML read and write with inline CSS. XHTML is 1.0 Transitional.
- TXT plain text write (read will soon be ready).
- PDF (requires Aspose.Pdf).

The formats in above are Microsoft Word formats and Aspose.Words document model is explicitly designed to support Microsoft Word documents. Therefore, an unprecedented, high level of accuracy conversions between these formats is supported by Aspose.Words. We call it conversion and you probably will not find the same level of support for these file formats in any other software, except Microsoft Word itself.

Here is a summary of the file formats supported by Aspose.Words for Java:

All other formats that are supported by Aspose.Words for .NET will be available in Aspose.Words for Java too.

- 1452 - Add support for Roman page numbers per section. PDF export.
- 1442 - Aspose.Words throws NullReferenceException when saving a particular file in evaluation mode.
- 1420 - Sequential floating tables are put into one table in the model.
- 1319 - Add the possibility to turn tracking changes on and off. Added the Document.TrackRevisions property.
- Added a new exception class: UnsupportedFileFormatException is thrown by the Document constructor when a document format is not recognized or not supported.
- Added a new exception class: FileCorruptedException is thrown by the Document constructor when the document appears to be corrupted and cannot be loaded.
