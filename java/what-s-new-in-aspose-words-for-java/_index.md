---
title: What's new in Aspose.Words for Java
type: docs
description: "Aspose.Words for Java expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 2
url: /java/what-s-new-in-aspose-words-for-java/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

## Aspose.Words for Java 21.1, 21.2

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/java/com.aspose.words/tablestyle#VerticalAlignment) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/java/com.aspose.words/IImageSavingCallback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/java/com.aspose.words/htmlloadoptions#IgnoreNoscriptElements) has been added to ignore `<noscript>` HTML elements upon loading HTML.

### Search and Compare

A new public property [SmartParagraphBreakReplacement](https://apireference.aspose.com/words/java/com.aspose.words/findreplaceoptions#SmartParagraphBreakReplacement) has been added to the [FindReplaceOptions](https://apireference.aspose.com/words/java/com.aspose.words/FindReplaceOptions) object to indicate whether a paragraph break is allowed to be replaced when there is no next sibling paragraph.

### Other

* New public methods [StartColumnBookmark](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#startColumnBookmark(java.lang.String)) and [EndColumnBookmark](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#endColumnBookmark(java.lang.String)) have been introduced in the [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) class. This gives the ability to add a Bookmark control to one or more columns in a range of rows.
* A new public option [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/java/com.aspose.words/saveoptions#UpdateCreatedTimeProperty) has been added to update the [CreatedTime](https://apireference.aspose.com/words/java/com.aspose.words/BuiltInDocumentProperties#CreatedTime) property of a document upon saving.
* A new property **CustomTimeZoneInfo** has been added to set custom timezone when [SdtType.Date](https://apireference.aspose.com/words/java/com.aspose.words/SdtType) structured document tag is updated from custom XML.
* A new public method **OpenIStream** has been added to the **ComHelper** class to load documents from IStream objects in COM applications.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.1 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-1-release-notes/).

Learn more about [Aspose.Words for Java 21.2 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-2-release-notes/).

{{% /alert %}}
