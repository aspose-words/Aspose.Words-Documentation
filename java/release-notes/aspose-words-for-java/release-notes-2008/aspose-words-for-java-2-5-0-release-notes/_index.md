---
title: Aspose.Words for Java 2.5.0 Release Notes
articleTitle: Aspose.Words for Java 2.5.0 Release Notes
linktitle: Aspose.Words for Java 2.5.0 Release Notes
description: "Aspose.Words for Java 2.5.0 Release Notes – the latest updates and fixes."
type: docs
weight: 10
url: /java/aspose-words-for-java-2-5-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 2.5.0](https://downloads.aspose.com/words/java/new-releases/aspose.words-for-java-2.5.0/)

{{% /alert %}}

We are proud to announce the long-awaited Aspose.Words for Java 2.5.0 release. The list of new features and fixed issues includes 124 items! 

As you know, our Aspose.Words for Java is a “closely ported” version of our Aspose.Words for .NET. Therefore, Aspose.Words for Java 2.5.0 includes a port of all changes and fixes we’ve made earlier on Aspose.Words for .NET versions 4.4.0 to 5.2.0 plus some Java-specific fixes. 

The following subsections are “copies” of earlier announcements that were applicable to Aspose.Words for .NET, but now they are applicable to Aspose.Words for Java. 

Have a look at the updated 

enum, it includes the following new formats:

- SaveFormat.DOCX - Saves the document as a Microsoft Office 2007 Open XML Document (macro-free).
  SaveFormat.DOCM - Saves the document as a Microsoft Office 2007 Open XML Macro-Enabled Document. 
  SaveFormat.DOTX - Saves the document as a Microsoft Office 2007 Open XML Template (macro-free). 
  SaveFormat.DOTM - Saves the document as a Microsoft Office 2007 Open XML Macro-Enabled Template. 

Note that the Office Open XML specification and Microsoft Word 2007 strictly distinguish between macro-enabled and macro-free documents. If you save a document with macros as DOCX, Microsoft Word 2007 will reject to open it (unfortunately with a misleading error message). Therefore, you need to make sure you are saving an Office Open XML document in the correct (macro-free or macro-enabled) format. By default, Aspose.Words fully preserves VBA projects in Office Open XML documents, but you can remove all macros from a document using the 

method.

We are fully committed to making Aspose.Words support the Office Open XML specification 100% in the shortest timeframe possible and we are well on track to achieving this.

Since the previous release we have added support for the following features:

- Smart Tags
  OLE embedded and linked objects 
  VBA projects 
  Digital signatures for VBA projects 
  Many others 

Although the degree of Aspose.Words conformance to OOXML is high, not all OOXML features are yet supported. For example ActiveX controls, Structured Document Tags (Content Controls) and Custom XML are not yet supported. These will be supported in the following months.

The changes are not likely to affect many users. Even if you cannot recompile your project because of a change, it is very easy to update your code because all changes are cosmetic, although they had to be done.

The breaking changes in Aspose.Words for Java 2.5.0 are:

- All collection classes, such as Paragraphs, Runs, Tables, Bookmarks etc have been renamed into ParagraphCollection, RunCollection, TableCollection, BookmarkCollection, CellCollection accordingly.
