---
title: Specify Save Options
description: "Aspose.Words for Python via .NET enables you to set advanced properties when saving a document. This allows you to more accurately control the save process."
type: docs
weight: 10
url: /python/specify-save-options/
---

When saving a document, you can set some advanced properties. Aspose.Words provides you with the **SaveOptions** class, which allows more precise control of the save process. There are overloads of the **save** method that accept a **SaveOptions** object – it should be an object of a class derived from the **SaveOptions** class. Each save format has a corresponding class that holds save options for this save format, for example, there is **PdfSaveOptions** for saving to PDF format or **ImageSaveOptions** for saving to an image. This article provides examples of working with some options classes derived from **SaveOptions**.

The following code example shows how to set the save options before saving the document into HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}} 

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}} 

The article describes a few properties you can control when saving a document.

## Encrypt a Document With a Password

Use the **password** property to get or set a password for an encrypted document. Use the **password** property of the corresponding class to work with the selected document format.

For example, when saving a document to DOC or DOT format, use the **password** property of the **DocSaveOptions** class.

The following code example shows how to set a password to encrypt a document using the RC4 encryption method:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

When saving a document to Docx format, use the **password** property of the **OoxmlSaveOptions** class.

The following code example shows how to load and save Docx encrypted with a password:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Not all formats support encryption and the use of **password** property.

## Update the Document Creation Time

Aspose.Words provides an ability to use the **created_time** property to get or set the document creation date in UTC. You can also update this value before saving using the **update_created_time_property** option.

The following code example shows how to update the document creation time:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Update Last Saved Property

Aspose.Words provides an ability to use the **update_last_saved_time_property** property to get or set a value determining whether the **last_saved_time** property is updated before saving.

The following code example shows how to set this property and save the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Save Black and White Image with One Bit Per Pixel Format

To control image saving options, the **ImageSaveOptions** class is used. For example, you can use the **pixel_format** property to set the pixel format for the generated images. Please note that the pixel format of the output image may differ from the set value because of the work of skia.

The following code example shows how to save a black and white image with one bit per pixel format:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
