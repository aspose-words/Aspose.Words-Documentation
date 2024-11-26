---
title: Especifique las opciones de guardado en Java
second_title: Aspose.Words por Java
articleTitle: Especificar Opciones de Guardado
linktitle: Especificar Opciones de Guardado
description: "Establezca propiedades avanzadas al guardar un documento utilizando Java para proporcionar un control más preciso sobre el proceso."
type: docs
weight: 20
url: /es/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Al guardar un documento, puede establecer algunas propiedades avanzadas. Aspose.Words le proporciona la clase [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), que permite un control más preciso del proceso de guardado. Hay sobrecargas del método **Save** que aceptan un objeto **SaveOptions**; debe ser un objeto de una clase derivada de la clase **SaveOptions**. Cada formato de guardado tiene una clase correspondiente que contiene opciones de guardado para este formato de guardado; por ejemplo, hay [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) para guardar en formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) para guardar en formato Markdown o [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) para guardar en una imagen. Este artículo proporciona ejemplos de cómo trabajar con algunas clases de opciones derivadas de **SaveOptions**.

El siguiente ejemplo de código muestra cómo configurar las opciones de guardado antes de guardar el documento en HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

El artículo describe algunas propiedades que puede controlar al guardar un documento.

## Cifrar un Documento Con una Contraseña

Utilice la propiedad **Password** para obtener o establecer una contraseña para un documento cifrado. Utilice la propiedad **Password** de la clase correspondiente para trabajar con el formato de documento seleccionado.

Por ejemplo, al guardar un documento en formato DOC o DOT, use la propiedad [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) de la clase [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

El siguiente ejemplo de código muestra cómo establecer una contraseña para cifrar un documento utilizando el método de cifrado RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Al guardar un documento en formato ODT, use la propiedad [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) de la clase [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

El siguiente ejemplo de código muestra cómo cargar y guardar OpenDocument cifrado con una contraseña:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

No todos los formatos admiten el cifrado y el uso de la propiedad **Password**.

## Mostrar Notificaciones de Progreso de Guardado de Documentos

Aspose.Words ofrece la posibilidad de utilizar la propiedad [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) para recibir notificaciones sobre el progreso del guardado de documentos.

Ahora está disponible al guardar en DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, o formatos TXT.

## Actualizar la Hora de Creación del Documento

Aspose.Words proporciona la capacidad de usar la propiedad [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) para obtener o establecer la fecha de creación del documento en UTC. También puede actualizar este valor antes de guardarlo utilizando la opción [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

El siguiente ejemplo de código muestra cómo actualizar la hora de creación del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Actualizar La Última Propiedad Guardada

Aspose.Words proporciona la capacidad de usar la propiedad [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) para obtener o establecer un valor que determine si la propiedad [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) se actualiza antes de guardarla.

El siguiente ejemplo de código muestra cómo establecer esta propiedad y guardar el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Guarde la Imagen en Blanco y Negro con un Formato de Bit Por Píxel

Para controlar las opciones de guardado de imágenes, se utiliza la clase **ImageSaveOptions**. Por ejemplo, puede usar la propiedad [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) para establecer el formato de píxeles de las imágenes generadas. Tenga en cuenta que el formato de píxeles de la imagen de salida puede diferir del valor establecido debido al trabajo de GDI+.

El siguiente ejemplo de código muestra cómo guardar una imagen en blanco y negro con un formato de bit por píxel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
