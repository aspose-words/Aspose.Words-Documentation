---
title: What's new in Aspose.Words for C++
type: docs
description: "Aspose.Words for C++ expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 2
url: /cpp/what-s-new-in-aspose-words-for-cpp/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

## Aspose.Words for C++ 21.1, 21.2

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/cpp/class/aspose.words.table_style#a21aa2d4dad03f6a714713a524f417265) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.i_image_saving_callback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/cpp/class/aspose.words.html_load_options#ae2eb814d66e990aa09489620b7afafd7) has been added to ignore `<noscript>` HTML elements upon loading HTML.

### Search and Compare

A new public property [SmartParagraphBreakReplacement](https://apireference.aspose.com/words/cpp/class/aspose.words.replacing.find_replace_options#adec3ebd1778bced310a00d5f2e50533a) has been added to the [FindReplaceOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.replacing.find_replace_options) object to indicate whether a paragraph break is allowed to be replaced when there is no next sibling paragraph.

### Other

* New public methods [StartColumnBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#af7ae7a0d97c7e488d83e5e7e65e7b2bc) and [EndColumnBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a14344978906a2a9e8fc18e88a3f04962) have been introduced in the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder) class. This gives the ability to add a Bookmark control to one or more columns in a range of rows.
* A new public option [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options#aafd986a59939576b688baf70ae2982b9) has been added to update the [CreatedTime](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#aefb734a64d1f970f2b8c65a35e07ce89) property of a document upon saving.
* A new property **CustomTimeZoneInfo** has been added to set custom timezone when [SdtType.Date](https://apireference.aspose.com/words/cpp/namespace/aspose.words.markup#a857aa9a59398c85d6ad07f20c4123ae7ae4ef5c80fe94d0cad53a95d50691a0c7) structured document tag is updated from custom XML.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 21.1 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-1-release-notes/).

Learn more about [Aspose.Words for C++ 21.2 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-2-release-notes/).

{{% /alert %}}
