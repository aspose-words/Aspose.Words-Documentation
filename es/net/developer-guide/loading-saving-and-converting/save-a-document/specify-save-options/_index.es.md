---
title: Especificar opciones de guardado en C#
second_title: Aspose.Words para .NET
articleTitle: Especificar opciones de guardar
linktitle: Especificar opciones de guardar
description: "Controle con mayor precisión el proceso de guardado utilizando C#."
type: docs
weight: 10
url: /es/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

Al guardar un documento, puede configurar algunas propiedades avanzadas. Aspose.Words le proporciona la clase [SaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/saveoptions/), que permite un control más preciso del proceso de guardado. Hay sobrecargas del método **Save** que acepta un objeto **SaveOptions**; debería ser un objeto de una clase derivada de la clase **SaveOptions**. Cada formato de guardado tiene una clase correspondiente que contiene opciones de guardado para este formato de guardado, por ejemplo, hay [PdfSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/pdfsaveoptions/) para guardar en formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/markdownsaveoptions/) para guardar en formato Markdown u [ImageSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/) para guardar en una imagen. Este artículo proporciona ejemplos de cómo trabajar con algunas clases de opciones derivadas de **SaveOptions**.

El siguiente ejemplo de código muestra cómo configurar las opciones de guardar antes de guardar el documento en HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

El artículo describe algunas propiedades que puede controlar al guardar un documento.

## Cifrar un documento con una contraseña

Utilice la propiedad **Password** para obtener o establecer una contraseña para un documento cifrado. Utilice la propiedad **Password** de la clase correspondiente para trabajar con el formato de documento seleccionado.

Por ejemplo, al guardar un documento en formato DOC o DOT, utilice la propiedad [Password](https://reference.aspose.com/words/es/net/aspose.words.saving/docsaveoptions/password/) de la clase [DocSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/docsaveoptions/).

El siguiente ejemplo de código muestra cómo establecer una contraseña para cifrar un documento utilizando el método de cifrado RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Al guardar un documento en formato Odt, utilice la propiedad [Password](https://reference.aspose.com/words/es/net/aspose.words.saving/odtsaveoptions/password/) de la clase [OdtSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/odtsaveoptions/).

El siguiente ejemplo de código muestra cómo cargar y guardar OpenDocument cifrado con una contraseña:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

No todos los formatos admiten el cifrado y el uso de la propiedad **Password**.

## Mostrar notificaciones de progreso de guardado de documentos

Aspose.Words brinda la posibilidad de utilizar la propiedad [ProgressCallback](https://reference.aspose.com/words/es/net/aspose.words.saving/saveoptions/progresscallback/) para recibir notificaciones sobre el progreso del guardado del documento.

Ahora está disponible al guardar en formatos DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack o TXT.

## Actualizar la hora de creación del documento

Aspose.Words ofrece la posibilidad de utilizar la propiedad [CreatedTime](https://reference.aspose.com/words/es/net/aspose.words.properties/builtindocumentproperties/createdtime/) para obtener o establecer la fecha de creación del documento en UTC. También puede actualizar este valor antes de guardarlo usando la opción [UpdateCreatedTimeProperty](https://reference.aspose.com/words/es/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

El siguiente ejemplo de código muestra cómo actualizar la hora de creación del documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Actualizar la última propiedad guardada

Aspose.Words ofrece la posibilidad de utilizar la propiedad [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/es/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) para obtener o establecer un valor que determine si la propiedad [LastSavedTime](https://reference.aspose.com/words/es/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) se actualiza antes de guardar.

El siguiente ejemplo de código muestra cómo establecer esta propiedad y guardar el documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Controle los recursos externos al guardar un documento en HTML o SVG

Para convertir HTML o SVG a PDF, simplemente invoque el método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/#save/) y especifique un nombre de archivo con la extensión ".PDF". Si desea cargar imágenes, CSS, etc. desde fuentes externas, puede utilizar [IResourceSavingCallback](https://reference.aspose.com/words/es/net/aspose.words.saving/iresourcesavingcallback/).

El siguiente ejemplo de código muestra cómo convertir HTML a PDF y cargar imágenes de fuentes externas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Guarde una imagen en blanco y negro con formato de un bit por píxel

Para controlar las opciones de guardado de imágenes, se utiliza la clase **ImageSaveOptions**. Por ejemplo, puede utilizar la propiedad [PixelFormat](https://reference.aspose.com/words/es/net/aspose.words.saving/imagesaveoptions/pixelformat/) para establecer el formato de píxeles de las imágenes generadas. Tenga en cuenta que el formato de píxeles de la imagen de salida puede diferir del valor establecido debido al trabajo de GDI+.

El siguiente ejemplo de código muestra cómo guardar una imagen en blanco y negro con un formato de bit por píxel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
