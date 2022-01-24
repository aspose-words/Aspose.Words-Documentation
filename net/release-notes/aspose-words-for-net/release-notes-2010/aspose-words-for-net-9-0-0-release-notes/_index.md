---
title: Aspose.Words for .NET 9.0.0 Release Notes
description: "Aspose.Words for .NET 9.0.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 60
url: /net/aspose-words-for-net-9-0-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 9.0.0](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-for-.net-9.0.0/)

{{% /alert %}} 

The important improvements are:

- Table of Contents (TOC) fields are now updated/rebuilt.
  Load and save Word 2010 OOXML documents (ISO 29500 Transitional) is supported. 
  Embedded OOXML packages are supported. 
  TrueType fonts are subsetted and embedded into output EPUB.
  Footnotes are partially supported when rendering/saving to PDF. 



It is my big pleasure to announce Aspose.Words can finally build a complete and up-to-date table of contents in Microsoft Word documents.

The use case is pretty obvious: programmatically build your document up (possibly by combining parts from different documents) and then convert it to PDF or print.

If you want a table of contents in such a document, you want it to be filled with the correct entries and page numbers. Aspose.Words now supports the Microsoft Word TOC field completely with all of its formatting switches and builds a table of contents that you will not be able to distinguish from the one built by Microsoft Word itself. I do not think there is any other viable solution except Aspose.Words that can do this (the alternative is automating Microsoft Word on the server of course).

Make sure you call before you convert the document to PDF. This will update the TOC field and all other fields in the document.



Microsoft Word 2010 saves DOCX documents in the format that is officially known as ISO/IEC 29500:2008 Transitional.

Aspose.Words now supports saving and loading OOXML documents in ISO/IEC 29500:2008 Transitional in addition to the existing ECMA-376 1st Edition. Loading of both DOCX "flavours" is performed seamlessly. Saving to DOCX defaults to saving as ECMA-376 to maintain backward compatibility.

To save in the new ISO 29500 format use the property and the enumeration.



OOXML documents can contain embedded objects in the form of OLE objects or embedded OOXML packages. Earlier versions of Aspose.Words supported only OLE objects. Embedded OOXML packages were lost during open/save.

Now embedded OOXML packages are preserved during DOCX open/save. Note that embedded OOXML packages are still lost if you convert a DOCX document to a non-OOXML format such as DOC or RTF. This will be supported in the next version.

There are also improvements in Aspose.Words that make extracting embedded objects easier. You can now use the property to get the file extension of the embedded object. You can use this extension to constuct a suitable file name when extracting an embedded object. Several issues regarding extracted objects were not "unwrapped" properly have been addressed.



Footnotes at the moment are only partially supported. Yet we decided it is better to release now because some footnotes is better than no footnotes at all. 

Some of the limitations are:

More complete support hopefully in the next version.



EPUB is a popular format for eBooks and mobile reading devices and applications. To preserve the original look of the document on any reading device EPUB allows font embedding. 

Aspose.Words now provides options for subsetting and embedding TrueType fonts used by a document when you convert a document to EPUB. Since EPUB is based on HTML, the same font embedding is available in Aspose.Words when saving to HTML or MHTML. For more information see .



There are some breaking changes in the Aspose.Words API. All saving and conversion related enums, events and classes have been moved to the new namespace.

If you have a compile error when upgrading to Aspose.Words for .NET 9.0.0, do not worry. Just add to your code.



Here is the complete list of fixes and new features.
