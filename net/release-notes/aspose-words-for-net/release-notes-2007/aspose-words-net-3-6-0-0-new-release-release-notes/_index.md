---
title: Aspose.Words .Net 3.6.0.0 New Release Release Notes
description: "Aspose.Words .Net 3.6.0.0 New Release Release Notes – learn about the latest updates and fixes."
type: docs
weight: 90
url: /net/aspose-words-net-3-6-0-0-new-release-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words .Net 3.6.0.0 New Release](https://downloads.aspose.com/words/net/new-releases/aspose.words-.net-3.6.0.0-new-release/)

{{% /alert %}} 

- Added a lot of new code examples to the API. Both in C# and VB.NET. The work on code examples continues, we will eventually have examples for all members.
- Added IMailMergeDataSource interface. Now a mail merge is possible from any custom data source.
- Added more resiliency for opening documents that are not entirely valid.
- Added more resiliency against creating invalid documents (empty cells, first cell merged to previous, table at end of section).
- DocumentBuilder InsertXXX methods return the document nodes that they create.
- Imported table is treated by MS Word as 'corrupted' in the resulting document.
- A document with some textboxes crashes MS Word on open.
  A metafile throws value is too large for Int16.
- TextColumns.SetCount to a smaller than current value did not work.
- Error opening encrypted document with table with more than 9 collumns.
- Exception when saving a document as HTML with a scaled image of 1x1 pixel in it.
- Saving to PDF or HTML throws exception when a table contains no rows.
- An extra table row gets visible when saving as HTML and then loading back into Aspose.Words.
- Roman Numerals are not exported to PDF correctly.
- Heading numbering is incorrect when saved in PDF.
- Some links in table of contents did not work in PDF.
- InsertHtml sometimes does not stop marking paragraphs as list members.


