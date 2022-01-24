---
title: Aspose.Words 8.1.0 Release Notes
description: "Aspose.Words 8.1.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 90
url: /net/aspose-words-8-1-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words 8.1.0](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-8.1.0/)

{{% /alert %}} 

- Many document layout and rendering to PDF and XPS improvements.
  Important improvements to the field update engine. 
  About 80 other fixes. 

In this release we have managed to address some of the hot issues and improve the accuracy of Word documents to PDF and XPS conversion. 

Some of the layout and rendering improvements are:

- Added PdfOptions.IsPreserveFormFields that controls whether to export Word document form fields as PDF form fields or as text. All form fields were exported to PDF only as text previously.
  Supported mirror margins in the page setup. 
  Repeat table heading row is supported now. 
  Text direction in table cells is supported. 
  Rendering of text frames is partially supported. Text frames are often used in Word documents for page numbers, these will now render correctly. 
  TrueType Font Collections (TTC) are now supported. 
  Table Of Contents entries are now displayed correctly, like in MS Word. 

Aspose.Words' unique feature is the ability to recalculate Microsoft Word fields in a document and update field results. The previous version of Aspose.Words was able to update formula and mail merge related fields. This version ships with an even more sophisticated field update engine. 

Some of the field update engine improvements are:

- Complex document elements and formatting inside fields (e.g. tables, shapes etc) is completely preserved during field update.
  Table cell references in formulas are supported. You can use formulas like =SUM(ABOVE) and Aspose.Words will correctly calculate field results. 
  Bookmark references in formulas are supported. You can use formulas like "= a + b" where "a"and "b" are bookmark names. 
