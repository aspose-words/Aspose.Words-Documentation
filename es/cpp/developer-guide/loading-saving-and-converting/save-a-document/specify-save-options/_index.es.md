---
title: Especificar Opciones de guardado en C++
second_title: Aspose.Words para C++
articleTitle: Especificar Opciones de Guardado
linktitle: Especificar Opciones de Guardado
description: "Controle con mayor precisión el proceso de guardado."
type: docs
weight: 10
url: /es/cpp/specify-save-options/
---

Al guardar un documento, puede establecer algunas propiedades avanzadas. Aspose.Words le proporciona la clase [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), que permite un control más preciso del proceso de guardado. Hay sobrecargas del método **Save** que aceptan un objeto **SaveOptions**; debe ser un objeto de una clase derivada de la clase **SaveOptions**. Cada formato de guardado tiene una clase correspondiente que contiene opciones de guardado para este formato de guardado; por ejemplo, hay [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) para guardar en formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) para guardar en formato Markdown o [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) para guardar en una imagen. Este artículo proporciona ejemplos de cómo trabajar con algunas clases de opciones derivadas de **SaveOptions**.

El siguiente ejemplo de código muestra cómo configurar las opciones de guardado antes de guardar el documento en HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Cargando-y-Guardando-SpecifySaveOption-SpecifySaveOption.cpp">}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

El artículo describe algunas propiedades que puede controlar al guardar un documento.

## Cifrar un Documento Con una Contraseña

Utilice la propiedad **Password** para obtener o establecer una contraseña para un documento cifrado. Utilice la propiedad **Password** de la clase correspondiente para trabajar con el formato de documento seleccionado.

Por ejemplo, al guardar un documento en formato DOC o DOT, use la propiedad [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) de la clase [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

El siguiente ejemplo de código muestra cómo establecer una contraseña para cifrar un documento utilizando el método de cifrado RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Cargando-y-Guardando-WorkingWithDoc-EncryptDocumentWithPassword.cpp">}}

Al guardar un documento en formato ODT, use la propiedad [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) de la clase [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

El siguiente ejemplo de código muestra cómo cargar y guardar OpenDocument cifrado con una contraseña:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"opciones-De-carga-y-guardado-de-carga-cpp - LoadAndSaveEncrypted ODT.cpp">}}

No todos los formatos admiten el cifrado y el uso de la propiedad **Password**.

## Mostrar Notificaciones de Progreso de Guardado de Documentos

Aspose.Words ofrece la posibilidad de utilizar la propiedad [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) para recibir notificaciones sobre el progreso del guardado de documentos.

Ahora está disponible al guardar en DOCX, FlatOpc, DOCM, DOTM, DOTX, Formatos HTML, MHTML, EPUB, XamlFlow, XamlFlowPack o TXT.

## Actualizar la Hora de Creación del Documento

Aspose.Words proporciona la capacidad de usar la propiedad [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) para obtener o establecer la fecha de creación del documento en UTC. También puede actualizar este valor antes de guardarlo utilizando la opción [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

El siguiente ejemplo de código muestra cómo actualizar la hora de creación del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Renderizado-Impresión - WorkingWithPdfSaveOptions - UpdateIfLastPrinted.cpp">}}

## Actualizar La Última Propiedad Guardada

Aspose.Words proporciona la capacidad de usar la propiedad [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) para obtener o establecer un valor que determine si la propiedad [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) se actualiza antes de guardarla.

El siguiente ejemplo de código muestra cómo establecer esta propiedad y guardar el documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Cargando-y-Guardando-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp">}}

## Guarde la Imagen en Blanco y Negro con un Formato de Bit Por Píxel

Para controlar las opciones de guardado de imágenes, se utiliza la clase **ImageSaveOptions**. Por ejemplo, puede usar la propiedad [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) para establecer el formato de píxeles de las imágenes generadas. Tenga en cuenta que el formato de píxeles de la imagen de salida puede diferir del valor establecido debido al trabajo de GDI+.

El siguiente ejemplo de código muestra cómo guardar una imagen en blanco y negro con un formato de bit por píxel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
