---
title: What is a Page Layout in C++
second_title: Aspose.Words for C++
articleTitle: What is a Page Layout
linktitle: What is a Page Layout
description: "Let's figure out what a page layout is. A page layout describes the geometry of the content contained in a document."
type: docs
weight: 5
url: /cpp/what-is-a-page-layout/
---

A **document page layout** is a data structure, describing where a particular object is located on pages for all document objects. In addition, since objects have properties that affect their appearances, such as font size, shading or drawing effects, you need to not only know where the object is, but also what area (s) of the page it occupies, and whether it will apply to multiple pages so that other objects do not overlap the same area (s).

## What Is a Page Layout For?

Aspose.Words implements page layout functionality internally enabling it to produce all of the fixed page formats, such as PDF, XPS, and various image formats. Without page layout, the information stored in the fixed page document file would not be available and all these formats would not be supported.

The relation between a document and a page layout is quite simple. Whereas a document describes the content, the corresponding page layout describes the geometry of that content. Note, that a page layout cannot exist without a document since there would be no content for computing the geometry, but a document can exist without a page layout. For example, when a DOCX document is converted into an RTF document, it is typically unnecessary to know the geometry, since neither format stores it.

## See Also

* [Creating a Page Layout](/words/cpp/creating-a-page-layout/)
* [Saving a Document to Fixed-page Format](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Specify Layout Options](/words/cpp/specify-layout-options/)