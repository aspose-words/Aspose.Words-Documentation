---
title: Especificar opciones de guardado en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Especificar opciones de guardar
linktitle: Especificar opciones de guardar
description: "Controle con mayor precisión el proceso de guardado utilizando Python."
type: docs
weight: 10
url: /es/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Al guardar un documento, puede configurar algunas propiedades avanzadas. Aspose.Words le proporciona la clase [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), que permite un control más preciso del proceso de guardado. Hay sobrecargas del método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) que acepta un objeto [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/); debería ser un objeto de una clase derivada de la clase [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Cada formato de guardado tiene una clase correspondiente que contiene opciones de guardado para este formato de guardado, por ejemplo, hay [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) para guardar en formato PDF o [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) para guardar en una imagen. Este artículo proporciona ejemplos de cómo trabajar con algunas clases de opciones derivadas de [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

El siguiente ejemplo de código muestra cómo configurar las opciones de guardar antes de guardar el documento en HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

El artículo describe algunas propiedades que puede controlar al guardar un documento.

## Cifrar un documento con una contraseña

Utilice la propiedad **contraseña** para obtener o establecer una contraseña para un documento cifrado. Utilice la propiedad **contraseña** de la clase correspondiente para trabajar con el formato de documento seleccionado.

Por ejemplo, al guardar un documento en formato DOC o DOT, utilice la propiedad [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) de la clase [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

El siguiente ejemplo de código muestra cómo establecer una contraseña para cifrar un documento utilizando el método de cifrado RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Al guardar un documento en formato [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/), utilice la propiedad [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) de la clase [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

El siguiente ejemplo de código muestra cómo cargar y guardar Docx cifrado con una contraseña:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

No todos los formatos admiten el cifrado y el uso de la propiedad **contraseña**.

## Actualizar la hora de creación del documento

Aspose.Words ofrece la posibilidad de utilizar la propiedad [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) para obtener o establecer la fecha de creación del documento en UTC. También puede actualizar este valor antes de guardarlo usando la opción [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

El siguiente ejemplo de código muestra cómo actualizar la hora de creación del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Actualizar la última propiedad guardada

Aspose.Words proporciona la posibilidad de utilizar la propiedad [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) para obtener o establecer un valor que determine si la propiedad [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) se actualiza antes de guardar.

El siguiente ejemplo de código muestra cómo establecer esta propiedad y guardar el documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Guarde una imagen en blanco y negro con formato de un bit por píxel

Para controlar las opciones de guardado de imágenes, se utiliza la clase [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/). Por ejemplo, puede utilizar la propiedad [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) para establecer el formato de píxeles de las imágenes generadas. Tenga en cuenta que el formato de píxeles de la imagen de salida puede diferir del valor establecido debido al trabajo de skia.

El siguiente ejemplo de código muestra cómo guardar una imagen en blanco y negro con un formato de bit por píxel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
