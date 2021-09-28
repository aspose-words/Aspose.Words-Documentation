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

## Aspose.Words for C++ 21.9

Aspose.Words 21.9 expands the list-level formatting control.

The API is enhanced for more flexible and convenient development:

- An ability to get the [CustomNumberStyleFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.lists.list_level#get_customnumberstyleformat) property of the [ListLevel](https://apireference.aspose.com/words/cpp/class/aspose.words.lists.list_level) object has been added.
- A possibility to get the string representation of the [ListLevel](https://apireference.aspose.com/words/cpp/class/aspose.words.lists.list_level) object for a specified index using the [GetEffectiveValue](https://apireference.aspose.com/words/cpp/class/aspose.words.lists.list_level#geteffectivevalue_int_numberstyle_string) method has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 21.9 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-9-release-notes/).

{{% /alert %}}

## Aspose.Words for C++ 21.5, 21.6, 21.7, 21.8

Aspose.Words 21.5 improves Mail Merge and Structure Document Tag functionality, as well as working with fields.

Aspose.Words 21.6 enhances formatting and filling options and also improves document display capabilities.

Aspose.Words 21.7 expands rendering and conversion options, as well as provides an ability to work with framesets.

Aspose.Words 21.8 improves rendering and language export features, and enhances the ability to work with field update callback.

The API is enhanced for more flexible and convenient development.

### Rendering

#### Setting Charts Fill and Stroke Formatting

An ability to set fill and stroke formatting for chart series, data points, and markers has been implemented. Using the provided options, you can easily customize any of the charts as you wish.

#### Control the Fill Texture of Any Object

A new public method [PresetTextured](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill#get_presettexture) has been added to the [Fill](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill) class to work with textures. Now it is very easy to get and apply a texture to the fill of any object. Now it is very easy to get and apply a texture to the fill of any object.

#### Rendering of OOXML Ink

Rendering of OOXML Ink (InkML subset) has been implemented. A new public property [ImlRenderingMode](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options#get_imlrenderingmode_const) and a new enumeration [ImlRenderingMode](https://apireference.aspose.com/words/cpp/namespace/aspose.words.saving#imlrenderingmode) have been added to control the mode of Ink rendering.

Prior to this version, Aspose.Words could only render fallback shapes for OOXML Ink objects, i.e. InkML was not actually processed and a simple pre-rendered image was used instead. And now OOXML Ink content part can be rendered directly.

#### Control the Maximum Number of Characters per Line

A new public property [MaxCharactersPerLine](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.txt_save_options#get_maxcharactersperline_const) has been introduced to control the maximum number of characters per line in the output document of TXT format.

#### Rendering to PDF/A-2

Rendering to PDF/A-2 format has been implemented by adding new values to the [PdfCompliance](https://apireference.aspose.com/words/cpp/namespace/aspose.words.saving#pdfcompliance) enumeration. PDF/A-2 is based on the PDF-1.7 format and removes significant limitations of PDF/A-1 like prohibited transparency and prohibited object compression.

#### Work with Patterns

A simple way to get and apply a pattern to the fill of any fillable objects in a document has been presented. For this purpose, the [Patterned](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill#patterned_patterntype) method with two overloads and the [Pattern](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill#get_pattern) property have been added to the [Fill](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill) class and the [PatternType](https://apireference.aspose.com/words/cpp/namespace/aspose.words.drawing#patterntype) enumeration has been added to the [Drawing](https://apireference.aspose.com/words/cpp/namespace/aspose.words.drawing) namespace.

#### Insert GIF into the Document Model

The ability to insert a GIF image into the document model using the [InsertImage](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#insertimage_ubytearray) method has been introduced. Please note that saving a document to a format different from DOCX, DOTX, DOCM, DOTM, FOPC causes the conversion of GIF images to PNG.

### Conversion

A new overload of the [InsertHtml](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#inserthtml_string_htmlinsertoptions) method with extended options has been implemented to make this operation more flexible.

### Mail Merge and Reporting

A new property [RestartListsAtEachSection](https://apireference.aspose.com/words/cpp/class/aspose.words.mail_merging.mail_merge#get_restartlistsateachsection_const) has been added to control whether the list numbering at each section should be restarted after executing a mail merge.

### Other

- New methods [SetCheckedSymbol](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag#setcheckedsymbol_int_string) and [SetUncheckedSymbol](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag#setuncheckedsymbol_int_string) have been added to set checked and unchecked symbols for your favorite structured document tags.
- The equations created with EQ fields are now supported upon converting to all HTML-based formats.
- A new public property [ContinuousSectionPageNumberingRestart](https://apireference.aspose.com/words/cpp/class/aspose.words.layout.layout_options#get_continuoussectionpagenumberingrestart_const) has been added to control the behavior for computing page numbers when a continuous section restarts page numbering.
- An ability to work with Framesets has been added. This is the first simple API which is going to be extended upon your requests. Just tell us what you need.
- A new PDF save option [ExportLanguageToSpanTag](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options#get_exportlanguagetospantag_const) has been added. This option enables users to customize how the `/Lang` entry should be exported. It can be useful for compatibility with some screen readers.
- A new public field updating callback has been implemented. This enables you to have your own custom methods called during field update.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 21.5 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-5-release-notes/).

Learn more about [Aspose.Words for C++ 21.6 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-6-release-notes/).

Learn more about [Aspose.Words for C++ 21.7 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-7-release-notes/).

Learn more about [Aspose.Words for C++ 21.8 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-8-release-notes/).

{{% /alert %}}

## Aspose.Words for C++ 21.1, 21.2, 21.3, 21.4

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

Aspose.Words 21.3 expands rendering and reporting options, and improves interaction with styles and child nodes of the StructuredDocumentTag.

Aspose.Words 21.4 improves rendering and conversion features, and enhances the ability to work with a ranged structured document tag.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/cpp/class/aspose.words.table_style#get_verticalalignment) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

#### Setting Fill Formatting of Text

Font API has been extended with the [Fill](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill/) properties to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

#### Convert Any Fill to Solid

A new method [Solid](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill#solid) has been added to the [Fill](https://apireference.aspose.com/words/cpp/class/aspose.words.drawing.fill) class for processing solid fills.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.i_image_saving_callback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/cpp/class/aspose.words.loading.html_load_options#get_ignorenoscriptelements_const) has been added to ignore `<noscript>` HTML elements upon loading HTML.

#### Clean Up Unused Information from a Document

A new public property [UnusedBuiltinStyles](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options#get_unusedbuiltinstyles_const) has been added to the [CleanupOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.cleanup_options) class to detect and remove built-in styles that are marked as "unused" to make the document stricter.

### Search and Compare

A new public property [SmartParagraphBreakReplacement](https://apireference.aspose.com/words/cpp/class/aspose.words.replacing.find_replace_options#get_smartparagraphbreakreplacement_const) has been added to the [FindReplaceOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.replacing.find_replace_options) object to indicate whether a paragraph break is allowed to be replaced when there is no next sibling paragraph.

### Other

* New public methods [StartColumnBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#startcolumnbookmark_string) and [EndColumnBookmark](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder#endcolumnbookmark_string) have been introduced in the [DocumentBuilder](https://apireference.aspose.com/words/cpp/class/aspose.words.document_builder) class. This gives the ability to add a Bookmark control to one or more columns in a range of rows.
* A new public option [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options#get_updatecreatedtimeproperty_const) has been added to update the [CreatedTime](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#get_createdtime) property of a document upon saving.
* A new property **CustomTimeZoneInfo** has been added to set custom timezone when [SdtType.Date](https://apireference.aspose.com/words/cpp/namespace/aspose.words.markup#sdttype95dropdownlist) structured document tag is updated from custom XML.
* A new public method [ClearQuickStyleGallery](https://apireference.aspose.com/words/cpp/class/aspose.words.style_collection#clearquickstylegallery) has been added to the [StyleCollection](https://apireference.aspose.com/words/cpp/class/aspose.words.style_collection/) class. Now it is really easy to remove all styles from the Quick Style Gallery panel.
* An ability to work with child nodes of the [StructuredDocumentTag](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag/) range has been added. New behavior follows the [CompositeNode](https://apireference.aspose.com/words/cpp/class/aspose.words.composite_node/) pattern and returns a live collection.
* The ability to create instances of the [StructuredDocumentTagRangeStart](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag_range_start/) and [StructuredDocumentTagRangeEnd](https://apireference.aspose.com/words/cpp/class/aspose.words.markup.structured_document_tag_range_end/) classes manually has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for C++ 21.1 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-1-release-notes/).

Learn more about [Aspose.Words for C++ 21.2 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-2-release-notes/).

Learn more about [Aspose.Words for C++ 21.3 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-3-release-notes/).

Learn more about [Aspose.Words for C++ 21.3 Release Notes](https://docs.aspose.com/words/cpp/aspose-words-for-cpp-21-4-release-notes/).

{{% /alert %}}
