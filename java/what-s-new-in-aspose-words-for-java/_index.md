---
title: What's new in Aspose.Words for Java
type: docs
description: "Aspose.Words for Java expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 2
url: /java/what-s-new-in-aspose-words-for-java/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

{{% alert color="primary" %}}

Due to refactoring work on Aspose.Words namespaces, the Aspose.Words.DigitalSignatures, Aspose.Words.Vba, Aspose.Words.Comparing, and Aspose.Words.Notes namespaces were introduced and the Aspose.Words.Lists and Aspose.Words.Loading namespaces were modified.

In case of a compilation error, please add the appropriate line of code:

{{< highlight java >}}
import Aspose.Words.DigitalSignatures;
import Aspose.Words.Vba;
import Aspose.Words.Lists;
import Aspose.Words.Comparing;
import Aspose.Words.Notes;
import Aspose.Words.Loading;
{{< /highlight >}}

For more information on these changes, see the [Aspose.Words for Java 21.3 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-3-release-notes/) and [Aspose.Words for Java 21.4 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-4-release-notes/) pages.

{{% /alert %}}

## Aspose.Words for Java 21.5

Aspose.Words 21.5 improves Mail Merge and Structure Document Tag functionality, as well as working with fields.

The API is enhanced for more flexible and convenient development.

### Mail Merge and Reporting

A new property [RestartListsAtEachSection](https://apireference.aspose.com/words/java/com.aspose.words/mailmerge#RestartListsAtEachSection) has been added to control whether the list numbering at each section should be restarted after executing a mail merge.

### Other

- New methods [SetCheckedSymbol](https://apireference.aspose.com/words/java/com.aspose.words/structureddocumenttag#setCheckedSymbol(int,java.lang.String)) and [SetUncheckedSymbol](https://apireference.aspose.com/words/java/com.aspose.words/structureddocumenttag#setUncheckedSymbol(int,java.lang.String)) have been added to set checked and unchecked symbols for your favorite structured document tags.
- The equations created with EQ fields are now supported upon converting to all HTML-based formats.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.5 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-5-release-notes/).

{{% /alert %}}

## Aspose.Words for Java 21.1, 21.2, 21.3, 21.4

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

Aspose.Words 21.3 expands rendering and reporting options, and improves interaction with styles and child nodes of the StructuredDocumentTag.

Aspose.Words 21.4 improves rendering and conversion features, and enhances the ability to work with a ranged structured document tag.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/java/com.aspose.words/tablestyle#VerticalAlignment) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

#### Setting Fill Formatting of Text

Font API has been extended with the [Fill](https://apireference.aspose.com/words/java/com.aspose.words/Fill) properties to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

#### Convert Any Fill to Solid

A new method [Solid](https://apireference.aspose.com/words/java/com.aspose.words/fill#solid()) has been added to the [Fill](https://apireference.aspose.com/words/java/com.aspose.words/Fill) class for processing solid fills.

#### Support for Advanced Typography

Support for advanced typography when saving to image formats with GDI+ or SkiaSharp, for example, on all .NET platforms and .NET Standard, has been implemented.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/java/com.aspose.words/IImageSavingCallback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/java/com.aspose.words/htmlloadoptions#IgnoreNoscriptElements) has been added to ignore `<noscript>` HTML elements upon loading HTML.

#### Clean Up Unused Information from a Document

A new public property [UnusedBuiltinStyles](https://apireference.aspose.com/words/java/com.aspose.words/cleanupoptions#UnusedBuiltinStyles) has been added to the [CleanupOptions](https://apireference.aspose.com/words/java/com.aspose.words/CleanupOptions) class to detect and remove built-in styles that are marked as "unused" to make the document stricter.

### Reporting

New extension methods **Select** and **SelectMany** have been added for the LINQ Reporting Engine.

### Search and Compare

A new public property [SmartParagraphBreakReplacement](https://apireference.aspose.com/words/java/com.aspose.words/findreplaceoptions#SmartParagraphBreakReplacement) has been added to the [FindReplaceOptions](https://apireference.aspose.com/words/java/com.aspose.words/FindReplaceOptions) object to indicate whether a paragraph break is allowed to be replaced when there is no next sibling paragraph.

### Other

* New public methods [StartColumnBookmark](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#startColumnBookmark(java.lang.String)) and [EndColumnBookmark](https://apireference.aspose.com/words/java/com.aspose.words/documentbuilder#endColumnBookmark(java.lang.String)) have been introduced in the [DocumentBuilder](https://apireference.aspose.com/words/java/com.aspose.words/DocumentBuilder) class. This gives the ability to add a Bookmark control to one or more columns in a range of rows.
* A new public option [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/java/com.aspose.words/saveoptions#UpdateCreatedTimeProperty) has been added to update the [CreatedTime](https://apireference.aspose.com/words/java/com.aspose.words/BuiltInDocumentProperties#CreatedTime) property of a document upon saving.
* A new property **CustomTimeZoneInfo** has been added to set custom timezone when [SdtType.Date](https://apireference.aspose.com/words/java/com.aspose.words/SdtType) structured document tag is updated from custom XML.
* A new public method **OpenIStream** has been added to the **ComHelper** class to load documents from IStream objects in COM applications.
* A new public method [ClearQuickStyleGallery](https://apireference.aspose.com/words/java/com.aspose.words/stylecollection#clearQuickStyleGallery()) has been added to the [StyleCollection](https://apireference.aspose.com/words/java/com.aspose.words/StyleCollection) class. Now it is really easy to remove all styles from the Quick Style Gallery panel.
* An ability to work with child nodes of the [StructuredDocumentTag](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTag) range has been added. New behavior follows the [CompositeNode](https://apireference.aspose.com/words/java/com.aspose.words/CompositeNode) pattern and returns a live collection.
* The ability to create instances of the [StructuredDocumentTagRangeStart](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTagRangeStart) and [StructuredDocumentTagRangeEnd](https://apireference.aspose.com/words/java/com.aspose.words/StructuredDocumentTagRangeEnd) classes manually has been added.

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.1 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-1-release-notes/).

Learn more about [Aspose.Words for Java 21.2 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-2-release-notes/).

Learn more about [Aspose.Words for Java 21.3 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-3-release-notes/).

Learn more about [Aspose.Words for Java 21.4 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-4-release-notes/).

{{% /alert %}}
