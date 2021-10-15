---
title: Specify Save Options
description: "Set advanced properties when saving a document using Aspose.Words for Java to provide more precise control over the process."
aliases:
    - /java/working-with-saveoptions/
    - /java/working-with-ooxml/
type: docs
weight: 20
url: /java/specify-save-options/
---
When saving a document, you can set some advanced properties. Aspose.Words provides you with the [SaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/SaveOptions) class, which allows more precise control of the save process. There are overloads of the **Save** method that accept a **SaveOptions** object – it should be an object of a class derived from the **SaveOptions** class. Each save format has a corresponding class that holds save options for this save format, for example, there is [PdfSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/PdfSaveOptions) for saving to PDF format or [ImageSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/ImageSaveOptions) for saving to an image. This article provides examples of working with some options classes derived from **SaveOptions**.

The following code example demonstrates how to set the save options before saving the document into HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/LoadingSavingAndConverting/TestFile%20RenderShape.docx).

{{% /alert %}} 

The article describes a few properties you can control when saving a document.

## Encrypt a Document With a Password

Use the **Password** property to get or set a password for an encrypted document. Use the **Password** property of the corresponding class to work with the selected document format.

For example, when saving a document to DOC or DOT format, use the [Password](https://apireference.aspose.com/words/java/com.aspose.words/docsaveoptions#Password) property of the [DocSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/docsaveoptions) class.

The following code example demonstrates how to set a password to encrypt a document using the RC4 encryption method:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

When saving a document to ODT format, use the [Password](https://apireference.aspose.com/words/java/com.aspose.words/odtsaveoptions#Password) property of the [OdtSaveOptions](https://apireference.aspose.com/words/java/com.aspose.words/odtsaveoptions) class.

The following code example shows how to load and save OpenDocument encrypted with a password:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Not all formats support encryption and the use of **Password** property.

## Update the Document Creation Time

Aspose.Words provides an ability to use the [CreatedTime](https://apireference.aspose.com/words/java/com.aspose.words/BuiltInDocumentProperties#CreatedTime) property to get or set the document creation date in UTC. You can also update this value before saving using the [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/java/com.aspose.words/saveoptions#UpdateCreatedTimeProperty) option.

The following code example demonstrates how to update the document creation time:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Update Last Saved Property

Aspose.Words provides an ability to use the [UpdateLastSavedTimeProperty](https://apireference.aspose.com/words/java/com.aspose.words/saveoptions#UpdateLastSavedTimeProperty) property to get or set a value determining whether the [LastSavedTime](https://apireference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#LastSavedTime) property is updated before saving.

The following code example demonstrates how to set this property and save the document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Save Black and White Image with One Bit Per Pixel Format

To control image saving options, the **ImageSaveOptions** class is used. For example, you can use the [PixelFormat](https://apireference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat) property to set the pixel format for the generated images. Please note that the pixel format of the output image may differ from the set value because of the work of GDI+.

The following code example demonstrates how to save a black and white image with one bit per pixel format:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
