---
title: Converting to Fixed-page Format in C++
second_title: Aspose.Words for C++
articleTitle: Converting to Fixed-page Format
linktitle: Converting to Fixed-page Format
description: "Save documents to PDF, XPS, HTML, XAML, PostScript, and PCL formats."
type: docs
weight: 10
url: /cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words implements its own page layout engine. Prior to delving into its specifications, it is worthwhile to first discuss document at a high level.

## What Is a Document?

When thinking about a document, users typically imagine a number of paper sheets containing words, images, tables, and charts. Documents can be of various types, such as text, spreadsheets, slides, CAD drawings, flowcharts, and, therefore, can have essentially different layouts. Most applications allow sending documents to a printer; this is when a user can actually view the document’s final intended appearance.

## Displaying a Document in Various Applications

Various document viewing or publishing applications allow users to open (Adobe Acrobat, XPS Viewer) and sometimes edit (Adobe InDesign) documents of specific formats. These applications typically produce so-called "fixed-page" format documents. Such a document format describes precisely where a document’s content is placed on every page. Internally, the PDF or XPS format contains a description of every page, as well as drawing instructions, specifying the layout of the content on the page. This is similar to image formats, describing where the content is shown either in raster or vector form.

In contrast, some text editing applications do not support the viewing of a document’s pages. For instance, Microsoft Notepad supports very few functions other than simply displaying, editing and printing text. The important observation here is that such applications can neither show pages of the document nor tell a user how many of them would be printed, only allowing to view the document content. The document can be saved in plain text format and can be opened by many other applications. Using an application that allows viewing binary content of an arbitrary file one can see what is stored in the document file – it is just plain text, there is nothing else in it.

Slightly more sophisticated text-editing applications, such as Microsoft WordPad, save the document in Rich Text Format (RTF), which supports more formatting functions, such as insertion of images, character formatting, paragraph margins, and spacing. However, the RTF format also contains only the document’s content, having no information about pages.

Microsoft Word is the most advanced text-editing application in Windows today. It formats files in the DOCX format, which describes the document’s content flexibly and extensively, allowing users to specify page size, orientation for a document section, and, being a WYSIWYG application even show document pages on the screen. Nevertheless, there is still no information regarding how the document’s content is displayed on pages available in the document file. The document file only describes the content itself, and the relationship of document objects to each other, along with some geometric constraints. As a result, before displaying a document, Microsoft Word computes that information itself. This is where a page layout comes into play.

## See Also

* [What Is a Page Layout](/words/cpp/what-is-a-page-layout/)
* [Creating a Page Layout](/words/cpp/creating-a-page-layout/)
* [Saving a Document to Fixed-page Format](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Specify Layout Options](/words/cpp/specify-layout-options/)
