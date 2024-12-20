---
title: Specify Save Options in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Specify Save Options
linktitle: Specify Save Options
description: "More accurately control the save process using Python."
type: docs
weight: 10
url: /python-net/specify-save-options/
aliases: [/python/specify-save-options/]
timestamp: 2024-01-27-14-07-04
---

When saving a document, you can set some advanced properties. Aspose.Words provides you with the [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) class, which allows more precise control of the save process. There are overloads of the [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) method that accept a [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) object – it should be an object of a class derived from the [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) class. Each save format has a corresponding class that holds save options for this save format, for example, there is [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) for saving to PDF format or [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) for saving to an image. This article provides examples of working with some options classes derived from [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

The following code example shows how to set the save options before saving the document into HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

You can download the template file of this example from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

The article describes a few properties you can control when saving a document.

## Encrypt a Document With a Password

Use the **password** property to get or set a password for an encrypted document. Use the **password** property of the corresponding class to work with the selected document format.

For example, when saving a document to DOC or DOT format, use the [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) property of the [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) class.

The following code example shows how to set a password to encrypt a document using the RC4 encryption method:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

When saving a document to Docx format, use the [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) property of the [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) class.

The following code example shows how to load and save Docx encrypted with a password:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Not all formats support encryption and the use of **password** property.

## Update the Document Creation Time

Aspose.Words provides an ability to use the [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) property to get or set the document creation date in UTC. You can also update this value before saving using the [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) option.

The following code example shows how to update the document creation time:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Update Last Saved Property

Aspose.Words provides an ability to use the [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) property to get or set a value determining whether the [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) property is updated before saving.

The following code example shows how to set this property and save the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Save Black and White Image with One Bit Per Pixel Format

To control image saving options, the [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) class is used. For example, you can use the [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) property to set the pixel format for the generated images. Please note that the pixel format of the output image may differ from the set value because of the work of skia.

The following code example shows how to save a black and white image with one bit per pixel format:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
