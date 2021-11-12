---
title: Specify Save Options
description: "Aspose.Words for .NET {enables|allows} you to set advanced properties when saving a document. This {allows|enables} you to more accurately control the save process."
type: docs
weight: 10
url: /net/specify-save-options/
---

When saving a document, you can set some advanced properties. Aspose.Words provides you with the [SaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions) class, which {allows|enables} more precise control of the save process. There are overloads of the **Save** method that accept a **SaveOptions** object – it should be an object of a class derived from the **SaveOptions** class. Each save format has a corresponding class that holds save options for this save format, for example, there is [PdfSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions) for saving to PDF format, [MarkdownSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions) for saving to Markdown format, or [ImageSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions) for saving to an image. This article provides examples of working with some options classes derived from **SaveOptions**.

The following code example {shows|demonstrates} how to set the save options before saving the document into HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}} 

The article describes {a few|multiple|several|many|numerous} properties you can control when saving a document.

## Encrypt a Document With a Password

Use the **Password** property to get or set a password for an encrypted document. Use the **Password** property of the corresponding class to work with the selected document format.

For example, when saving a document to DOC or DOT format, use the [Password](https://apireference.aspose.com/words/net/aspose.words.saving/docsaveoptions/properties/password) property of the [DocSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/docsaveoptions) class.

The following code example {shows|demonstrates} how to set a password to encrypt a document using the RC4 encryption method:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

When saving a document to Odt format, use the [Password](https://apireference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/properties/password) property of the [OdtSaveOptions](https://apireference.aspose.com/words/net/aspose.words.saving/odtsaveoptions) class.

The following code example {shows|demonstrates} how to load and save OpenDocument encrypted with a password:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Not all formats support encryption and the use of **Password** property.

## Update the Document Creation Time

Aspose.Words provides an ability to use the [CreatedTime](https://apireference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/properties/createdtime) property to get or set the document creation date in UTC. You can also update this value before saving using the [UpdateCreatedTimeProperty](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/updatecreatedtimeproperty) option.

The following code example {shows|demonstrates} how to update the document creation time:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Update Last Saved Property

Aspose.Words provides an ability to use the [UpdateLastSavedTimeProperty](https://apireference.aspose.com/words/net/aspose.words.saving/saveoptions/properties/updatelastsavedtimeproperty) property to get or set a value determining whether the [LastSavedTime](https://apireference.aspose.com/net/words/aspose.words.properties/builtindocumentproperties/properties/lastsavedtime) property is updated before saving.

The following code example {shows|demonstrates} how to set this property and save the document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Control External Resources When Saving a Document into HTML or SWG

To convert HTML or SVG into PDF, simply invoke the [Save](https://apireference.aspose.com/words/net/aspose.words/document/methods/save/index) method and specify a file name with the “.PDF” extension. If you want to load images, CSS, etc. from external sources, you can use [IResourceSavingCallback](https://apireference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback).

The following code example {shows|demonstrates} how to convert HTML to PDF and loads images from external sources:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Save Black and White Image with One Bit Per Pixel Format

To control image saving options, the **ImageSaveOptions** class is used. For example, you can use the [PixelFormat](https://apireference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat) property to set the pixel format for the generated images. Please note that the pixel format of the output image may differ from the set value because of the work of GDI+.

The following code example {shows|demonstrates} how to save a black and white image with one bit per pixel format:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
