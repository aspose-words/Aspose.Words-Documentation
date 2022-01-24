---
title: Aspose.Words .Net 4.2.3.0 Hot Fix Release Notes
description: "Aspose.Words .Net 4.2.3.0 Hot Fix Release Notes – learn about the latest updates and fixes."
type: docs
weight: 240
url: /net/aspose-words-net-4-2-3-0-hot-fix-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words .Net 4.2.3.0 Hot Fix](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-.net-4.2.3.0-hot-fix/)

{{% /alert %}} 

This is a maintenance release, here is what's been done:

- API documentation now shows values of enumerations. This is helpful for customers who use Aspose.Words from classical ASP.
  Vertical text in table cells and textboxes is now exported to PDF. 
  Footnotes and endnotes are now exported to PDF. 
  The size of generated files is optimized - if the same image occurs multiple times in the document it is written to DOC, HTML and PDF files only once. 
  All CSS border properties (including shorthand) are now supported in HTML import. 
- 2072 - Generated PDF 16 times too large.
  1591 - Export vertical text to PDF. 
  1513 - Get rid of image duplication. 
  450 - Footnotes and endnotes are not supported in PDF. 
- 1590 - Paragraph "lines" spacing is calculated incorrectly during import.
  1583 - Stack empty exception when loading an MS WordML file. 
- 2071 - JPG image is twice as smaller when imported from HTML.
  1587 - Borders lost during HTML table import. 
  1573 - Reading of +.35 font size throws. 
- 3023 - ArgumentException on document load.
  2062, 2061, 2060, 2059 - Document throws on open. 
  1575 - Document throws during loading when a shape has zero size. 
  1569 - Cannot find an entry for the specified position in the PLCF. 
  1112 - Write same image only once into the document. 
- 1509 - Metafile scale is not preserved when importing from RTF and exporting to DOC.
