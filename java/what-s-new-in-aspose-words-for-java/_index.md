---
title: What's new in Aspose.Words for Java
type: docs
description: "Aspose.Words for Java expands and enhances daily. On this page, you can learn about the huge and most interesting features of the product."
weight: 2
url: /java/what-s-new-in-aspose-words-for-java/
---

This page describes the most interesting new Aspose.Words features introduced in recent releases.

{{% alert color="primary" %}}

Due to refactoring work on Aspose.Words namespaces, the Aspose.Words.DigitalSignatures and Aspose.Words.Vba namespaces were introduced and the Aspose.Words.Lists namespace was modified.

In case of a compilation error, please add the appropriate line of code:

{{< highlight java >}}
import Aspose.Words.DigitalSignatures;
import Aspose.Words.Vba;
import Aspose.Words.Lists;
{{< /highlight >}}

For more information on these changes, see the [Aspose.Words for Java 21.3 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-3-release-notes/) page.

{{% /alert %}}

## Aspose.Words for Java 21.1, 21.2, 21.3

Aspose.Words 21.1 expands loading and saving options and improves document display capabilities.

Aspose.Words 21.2 enhances font properties, improves find and replace options, and expands possibilities when converting documents.

Aspose.Words 21.3 expands rendering and reporting options, and improves interaction with styles and child nodes of the StructuredDocumentTag.

### Rendering

#### Vertical Alignment of Table Cells

A new public option [VerticalAlignment](https://apireference.aspose.com/words/java/com.aspose.words/tablestyle#VerticalAlignment) to set table style vertical alignment of cells has been added.

#### Manipulating Themed Properties of Font Objects

A new public API, allowing to manipulate themed properties of Font objects, has been implemented.

#### Setting Fill Formatting of Text

Font API has been extended with the [Fill](https://apireference.aspose.com/words/java/com.aspose.words/Fill) properties to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

### Conversion

#### Markdown Document Export

A new public property [ImageSavingCallback](https://apireference.aspose.com/words/java/com.aspose.words/IImageSavingCallback) has been added to control how images are saved upon converting to Markdown format.

#### HTML Document Import

A new public property [IgnoreNoscriptElements](https://apireference.aspose.com/words/java/com.aspose.words/htmlloadoptions#IgnoreNoscriptElements) has been added to ignore `<noscript>` HTML elements upon loading HTML.

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

{{% alert color="primary" %}}

Learn more about [Aspose.Words for Java 21.1 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-1-release-notes/).

Learn more about [Aspose.Words for Java 21.2 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-2-release-notes/).

Learn more about [Aspose.Words for Java 21.3 Release Notes](https://docs.aspose.com/words/java/aspose-words-for-java-21-3-release-notes/).

{{% /alert %}}
