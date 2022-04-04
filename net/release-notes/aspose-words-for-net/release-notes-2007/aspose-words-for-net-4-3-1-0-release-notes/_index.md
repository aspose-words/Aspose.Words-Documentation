---
title: 4.3.1.0 Release Notes
second_title: Aspose.Words for .NET
articleTitle: Aspose.Words for .NET 4.3.1.0 Release Notes
linktitle: Aspose.Words for .NET 4.3.1.0 Release Notes
description: "Aspose.Words for .NET 4.3.1.0 Release Notes – the latest updates and fixes."
type: docs
weight: 40
url: /net/aspose-words-for-net-4-3-1-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 4.3.1.0](https://downloads.aspose.com/words/net)

{{% /alert %}}

This hot fix mainly improves reading of inconsistent/corrupted DOC files such as resumes. For more info on this see end of the post.

Although this release includes a lot of fixes, most of them are actually for a single customer of ours, who uses Aspose.Words heavily in processing of resumes.

- 3490 - Added ShapeBase.AllowOverlap property.
- 3212 - Added PageSetup.BorderSurroundsHeader and PageSetup.BorderSurroundsFooter properties.
- 3191 - Added public Document.FootnoteOptions and Document.EndnoteOptions with properties to control numbering and position of footnotes and endnotes.
- 3497 - Invalid cast exception on document open.
- 3496 - 'End of body is out of sync' exception on documen open.
- 3481 - InvalidCastException occurs during opening .doc.
- 3466 - “System.NullReferenceException” occurs during converting or saving .doc.
- 3465 - "Aspose.Words.FileCorruptedException" occurs during converting or saving .doc.
- 3464 - Incorrect converting .rtf to .doc file.
- 3451 - "This inline picture type is not yet supported" exeption during opening .doc.
- 3450 - "Unknown hyperlink format" occurs during opening .doc.
- 3422 - "Unknown boolex value" exception occurs during saving .doc as .rtf.
- 3409 - System.ArgumentOutOfRangeException occurs during saving doc.
- 3399 - System.ArgumentOutOfRangeException occurs during saving doc to rtf file.
- 3397 - Unknown complex shape property id:937 with data.
- 3393 - Programmatically added custom properties are invisible in MSWord but visible in file\right click menu\properties\custom.
- 3382 - “Unknown BoolEx value” exception during saving .doc to AsposePdf format.
- 3381 - Nested table corrupts DOC document.
- 3368 - System.InvalidCastException during opening word document.
- 3348 - 'Unknown escher record type' exception on document load.
- 3347 - "Object reference not set" exception during SectPr writing.
- 3346 - 'Unknown complex shape property id:1792 with data' exception on document load. 
- 3345 - 'Read wrong number of bytes from Escher record' exception on document load.
- 3341 - Image is resized after open/save.
- 3331 - 'Unknown structure of an INCLUDEPICTURE field' exception on document load.
- 3301 - 'Unknown escher record type' exception on document open.
- 3262 - 'End of textbox is out of sync' exception on document open.
- 3186 - Table imported as two tables.
- 3079 - Fix number format revisions in RTF import and export.
- 3055 - NullReferenceException on document open.

Some categories of DOC files (for example resumes) tend to contain a lot internal format inconsistencies, such as references to non-existant lists, malformed tables and so on. It is hard for me to explain why, but resumes are notoriously bad DOC files. Probably people create them in all sorts of obscure applications that claim to produce Microsoft Word documents.

When Aspose.Words DOC reader was first designed almost four years ago, it was built as a "strict" reader. This means that if Aspose.Words detected an inconsistency, it would throw an exception to fail quickly and loudly. The message given would be along the lines of "please send this file to us for research". This was a necessity because the DOC format is not completely documented.

We observed that Microsoft Word 2003 opening internally inconsistent DOC file was very forgiving. We wanted to allow the same in Aspose.Words. Gradually, as we learned more about the DOC format, we started to make the DOC reader in Aspose.Words smarter. We started adding "resiliency" code that was able to automatically correct for some inconsistencies in the DOC files and read the document successfully. 

This hot fix adds a great deal more of resiliency in the import of DOC files in Aspose.Words.


