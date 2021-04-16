---
title: What's new in Aspose.Words for C++
type: docs
description: "Aspose.Words for C++ expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 2
url: /cpp/what-s-new-in-aspose-words-for-cpp/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

{{% alert color="primary" %}}

Due to refactoring work on Aspose.Words namespaces, the Aspose.Words.DigitalSignatures, Aspose.Words.Vba, Aspose.Words.Comparing, and Aspose.Words.Notes namespaces were introduced and the Aspose.Words.Lists and Aspose.Words.Loading namespaces were modified.

In case of a compilation error, please add the appropriate line of code:

{{< highlight csharp >}}
#include <Aspose.Words.Cpp/Model/Model/Document/DigitalSignatures/CertificateHolder.h>
#include <Aspose.Words.Cpp/Model/Model/Document/Vba/CertificateHolder.h>
#include <Aspose.Words.Cpp/Model/Model/Document/Lists/CertificateHolder.h>
#include <Aspose.Words.Cpp/Model/Model/Document/Comparing/CertificateHolder.h>
#include <Aspose.Words.Cpp/Model/Model/Document/Notes/CertificateHolder.h>
#include <Aspose.Words.Cpp/Model/Model/Document/Loading/CertificateHolder.h>
{{< /highlight >}}

For more information on these changes, see the [Aspose.Words for C++ 21.3 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-3-release-notes/) and [Aspose.Words for C++ 21.4 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-4-release-notes/) pages.

{{% /alert %}}

## Aspose.Words for C++ 21.1, 21.2, 21.3, 21.4

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

Aspose.Words 21.3 expands rendering and reporting options, and improves interaction with styles and child nodes of the StructuredDocumentTag.

Aspose.Words 21.4 improves rendering and conversion features, and enhances the ability to work with a ranged structured document tag.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/cpp/class/aspose.words.table_style#a21aa2d4dad03f6a714713a524f417265) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

#### Setting Fill Formatting of Text

Font API has been extended with the [Fill](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill/) properties to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

#### Convert Any Fill to Solid

A new method [Solid](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill#a3c8a8ee9ee0cb2fb9b97a822cba24973) has been added to the [Fill](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill) class for processing solid fills.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.i_image_saving_callback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/cpp/class/aspose.words.html_load_options#ae2eb814d66e990aa09489620b7afafd7) has been added to ignore `<noscript>` HTML elements upon loading HTML.

#### Clean Up Unused Information from a Document

A new public property [UnusedBuiltinStyles](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#a9b18ace3a72ea17cd6e277853a899138) has been added to the [CleanupOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options) class to detect and remove built-in styles that are marked as "unused" to make the document stricter.

### Search and Compare

A new public property [SmartParagraphBreakReplacement](https://apireference.aspose.com/words/cpp/class/aspose.words.replacing.find_replace_options#adec3ebd1778bced310a00d5f2e50533a) has been added to the [FindReplaceOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.replacing.find_replace_options) object to indicate whether a paragraph break is allowed to be replaced when there is no next sibling paragraph.

### Other

* New public methods [StartColumnBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#af7ae7a0d97c7e488d83e5e7e65e7b2bc) and [EndColumnBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#a14344978906a2a9e8fc18e88a3f04962) have been introduced in the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder) class. This gives the ability to add a Bookmark control to one or more columns in a range of rows.
* A new public option [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options#aafd986a59939576b688baf70ae2982b9) has been added to update the [CreatedTime](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#aefb734a64d1f970f2b8c65a35e07ce89) property of a document upon saving.
* A new property **CustomTimeZoneInfo** has been added to set custom timezone when [SdtType.Date](https://apireference.aspose.com/words/cpp/namespace/aspose.words.markup#a857aa9a59398c85d6ad07f20c4123ae7ae4ef5c80fe94d0cad53a95d50691a0c7) structured document tag is updated from custom XML.
* A new public method [ClearQuickStyleGallery](https://apireference.aspose.com/words/cpp/class/aspose.words.style_collection#a17bfca9aaa5850621c7d226efc242ed8) has been added to the [StyleCollection](https://apireference.aspose.com/words/cpp/class/aspose.words.style_collection/) class. Now it is really easy to remove all styles from the Quick Style Gallery panel.
* An ability to work with child nodes of the [StructuredDocumentTag](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag/) range has been added. New behavior follows the [CompositeNode](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node/) pattern and returns a live collection.
* The ability to create instances of the [StructuredDocumentTagRangeStart](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag_range_start/) and [StructuredDocumentTagRangeEnd](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag_range_end/) classes manually has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 21.1 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-1-release-notes/).

Learn more about [Aspose.Words for C++ 21.2 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-2-release-notes/).

Learn more about [Aspose.Words for C++ 21.3 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-3-release-notes/).

Learn more about [Aspose.Words for C++ 21.3 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-4-release-notes/).

{{% /alert %}}
