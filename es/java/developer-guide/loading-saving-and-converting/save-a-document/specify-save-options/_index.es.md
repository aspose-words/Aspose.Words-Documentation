---
title: Especifique las opciones de ahorro en Java
second_title: Aspose.Words para Java
articleTitle: Especifique las opciones de ahorro
linktitle: Especifique las opciones de ahorro
description: "Establecer propiedades avanzadas al guardar un documento utilizando Java para proporcionar un control más preciso sobre el proceso."
type: docs
weight: 20
url: /es/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Al guardar un documento, puede establecer algunas propiedades avanzadas. Aspose.Words le proporciona el [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) clase, que permite un control más preciso del proceso de ahorro. Hay sobrecargas de los **Save** método que acepta un **SaveOptions** objeto – debe ser un objeto de una clase derivada del **SaveOptions** clase. Cada formato de ahorro tiene una clase correspondiente que tiene opciones de ahorro para este formato de ahorro, por ejemplo, hay [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) para guardar en formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) para ahorrar Markdown formato, o [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) para guardar una imagen. Este artículo ofrece ejemplos de trabajo con algunas clases de opciones derivadas de **SaveOptions**.

El siguiente ejemplo de código muestra cómo configurar las opciones de ahorro antes de guardar el documento en HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

El artículo describe algunas propiedades que puede controlar al guardar un documento.

## Encriptar un documento Con una contraseña

Usar el **Password** propiedad para obtener o establecer una contraseña para un documento cifrado. Usar el **Password** propiedad de la clase correspondiente para trabajar con el formato de documento seleccionado.

Por ejemplo, al guardar un documento a DOC o DOT formato, utilizar el [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) propiedad de la [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) clase.

El siguiente ejemplo de código muestra cómo configurar una contraseña para cifrar un documento usando el método de cifrado RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Al guardar un documento en formato ODT, utilice el [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) propiedad de la [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) clase.

El siguiente ejemplo de código muestra cómo cargar y guardar OpenDocument cifrado con una contraseña:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

No todos los formatos soportan el cifrado y el uso de **Password** propiedad.

## Mostrar las notificaciones de progreso de ahorro de documentos

Aspose.Words proporciona la capacidad de utilizar el [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) propiedad para obtener notificaciones sobre el progreso del ahorro de documentos.

Ahora está disponible al guardar a DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack o formatos TXT.

## Actualizar el tiempo de creación de documentos

Aspose.Words proporciona una capacidad de utilizar el [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) propiedad para obtener o establecer la fecha de creación de documentos en UTC. También puede actualizar este valor antes de ahorrar usando el [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) Opción.

El siguiente ejemplo de código muestra cómo actualizar el tiempo de creación de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Actualización Última propiedad guardada

Aspose.Words proporciona una capacidad de utilizar el [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) propiedad para obtener o establecer un valor determinando si [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) propiedad se actualiza antes de guardar.

El siguiente ejemplo de código muestra cómo establecer esta propiedad y guardar el documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Guardar imagen negra y blanca con un poco de formato de píxel

Para controlar las opciones de ahorro de imágenes, **ImageSaveOptions** La clase se utiliza. Por ejemplo, puede utilizar el [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) propiedad para establecer el formato pixel para las imágenes generadas. Tenga en cuenta que el formato pixel de la imagen de salida puede diferir del valor de conjunto debido al trabajo de GDI+.

El siguiente ejemplo de código muestra cómo guardar una imagen en blanco y negro con un bit por formato pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
