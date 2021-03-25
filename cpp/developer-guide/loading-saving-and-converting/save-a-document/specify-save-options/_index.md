---
title: Specify Save Options
description: "Aspose.Words for C++ enables you to set advanced properties when saving a document. This allows you to more accurately control the save process."
type: docs
weight: 10
url: /cpp/specify-save-options/
---

When saving a document, you can set some advanced properties. Aspose.Words provides you with the [SaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options/) class, which allows more precise control of the save process. There are overloads of the **Save** method that accept a **SaveOptions** object – it should be an object of a class derived from the **SaveOptions** class. Each save format has a corresponding class that holds save options for this save format, for example, there is [PdfSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options/) for saving to PDF format or [ImageSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options/) for saving to an image. This article provides examples of working with some options classes derived from **SaveOptions**.

The following code example shows how to set the save options before saving the document into HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Data/Loading-and-Saving/TestFile%20RenderShape.docx).

{{% /alert %}} 

The article describes a few properties you can control when saving a document.

## Encrypt a Document With a Password

Use the **Password** property to get or set a password for an encrypted document. Use the **Password** property of the corresponding class to work with the selected document format.

For example, when saving a document to DOC or DOT format, use the [Password](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options#a3ac1e64f1ba10f697388b9539801ae82) property of the [DocSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options) class.

The following code example shows how to set a password to encrypt a document using the RC4 encryption method:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

When saving a document to ODT format, use the [Password](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options#af6c4e23ded0f36d00f63b1bddbaa643c) property of the [OdtSaveOptions](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options) class.

The following code example shows how to load and save OpenDocument encrypted with a password:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Not all formats support encryption and the use of **Password** property.

## Update the Document Creation Time

Aspose.Words provides an ability to use the [CreatedTime](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#aefb734a64d1f970f2b8c65a35e07ce89) property to get or set the document creation date in UTC. You can also update this value before saving using the [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options#aafd986a59939576b688baf70ae2982b9) option.

The following code example shows how to update the document creation time:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Update Last Saved Property

Aspose.Words provides an ability to use the [UpdateLastSavedTimeProperty](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.save_options#a3f8626f9e2fdd5ea38f656ecffea4433) property to gets or sets a value determining whether the [LastSavedTime](https://apireference.aspose.com/words/cpp/class/aspose.words.properties.built_in_document_properties#a5201173c24c8f03388c23acffee9263b) property is updated before saving.

The following code example shows how to set this property and save the document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Save Black and White Image with One Bit Per Pixel Format

To control image saving options, the **ImageSaveOptions** class is used. For example, you can use the [PixelFormat](https://apireference.aspose.com/words/cpp/class/aspose.words.saving.image_save_options#a54991a5668c804e4123ba4983cc9d1f7) property to set the pixel format for the generated images. Please note that the pixel format of the output image may differ from the set value because of the work of GDI+.

The following code example shows how to save a black and white image with one bit per pixel format:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
