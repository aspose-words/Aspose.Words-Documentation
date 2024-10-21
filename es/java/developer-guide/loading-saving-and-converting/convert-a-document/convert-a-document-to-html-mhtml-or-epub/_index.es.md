---
title: Convertir un documento en HTML, MHTML o EPUB
second_title: Aspose.Words para Java
articleTitle: Convertir un documento en HTML, MHTML o EPUB
linktitle: Convertir un documento en HTML, MHTML o EPUB
description: "Uso Aspose.Words para Java convertir documentos de Word o cualquier otro formato compatible a HTML, MHTML o EPUB."
type: docs
weight: 20
url: /es/java/convert-a-document-to-html-mhtml-or-epub/
---

Los documentos en formato HTML y MHTML son también muy populares y se pueden utilizar en cualquier plataforma web. Por eso, convertir documentos en HTML y MHTML es una característica importante Aspose.Words.

EPUB (short for "Electronic Publication") es un formato basado en HTML comúnmente utilizado para la distribución electrónica de libros. Este formato está totalmente soportado Aspose.Words para exportar libros electrónicos compatibles con la mayoría de los dispositivos de lectura.

## Convertir un documento

Para una simple conversión a HTML, MHTML o EPUB, uno de los [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) método sobrecargas se utiliza. Puede guardar el documento a un archivo o secuencia y establecer explícitamente el documento de salida guardar formato o definirlo desde la extensión de nombre del archivo.

El siguiente ejemplo muestra cómo convertir DOCX en HTML con especificar un formato guardado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Para convertir un documento a MHTML o EPUB, utilice `SaveFormat.MHTML` o `SaveFormat.EPUB` respectivamente.

## Convertir un documento con información de ida y vuelta

El formato HTML no admite muchos Microsoft Word características, y si necesitamos restaurar un modelo de documento tan cerca del original como sea posible, necesitamos guardar alguna información adicional dentro del archivo HTML. Tal información también se llama "información de la ida y vuelta". Para ello, Aspose.Words proporciona una capacidad para exportar información de ida y vuelta al guardar HTML, MHTML o EPUB utilizando el [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) propiedad. Ahorrar información de ida y vuelta permite restaurar propiedades de documentos como pestañas, comentarios, encabezados y calzados durante los documentos de carga de los formatos listados de nuevo en un **Document** objeto.

El valor predeterminado es **true** para HTML y **false** para MHTML y EPUB:

- Cuando **true**, la información de ida y vuelta se exporta como - aw - * propiedades CSS de los elementos HTML correspondientes
- Cuando **false**, no hay información de ida y vuelta para ser la salida en archivos producidos

El siguiente ejemplo de código muestra cómo exportar información de ida y vuelta al convertir un documento de DOCX en HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especificar Opciones de Guardar cuando Conversión a HTML

Aspose.Words permite convertir un documento de Word a HTML usando opciones de ahorro predeterminadas o personalizadas. Pocos ejemplos de opciones de ahorro personalizado se describen a continuación.

### Especifique una carpeta para ahorrar recursos

Uso Aspose.Words podemos especificar una carpeta física donde todos los recursos, como imágenes, fuentes y CSS externo, se guardan cuando un documento se convierte en HTML. Por defecto, esta es una cadena vacía.

Especificar el [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) propiedad es la manera más simple de establecer la carpeta donde todos los recursos deben ser escritos. Podemos utilizar propiedades individuales, como [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) que guarda fuentes a la carpeta especificada y [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) que guarda imágenes a una carpeta especificada. Cuando se especifica un camino relativo, **FontsFolder** y **ImagesFolder** consulte la carpeta donde se encuentra el ensamblaje de código, **ResourceFolder** y [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) consulte la carpeta de salida donde se encuentra el documento HTML.

En este ejemplo, **ResourceFolder** especifica el camino relativo. Esta ruta se refiere a la carpeta de salida donde se guarda el documento HTML. El valor del **ResourceFolderAlias** propiedad se utiliza para crear URLs para todos los recursos.

El siguiente ejemplo de código muestra cómo trabajar con estas propiedades:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Usando el [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) propiedad, también podemos especificar el nombre de la carpeta utilizada para construir URIs de todos los recursos escritos en un documento HTML. Esta es la manera más simple de especificar cómo se deben generar URI para todos los archivos de recursos. La misma información se puede especificar para imágenes y fuentes por separado a través de [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) y [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) propiedades, respectivamente.

Sin embargo, no hay ninguna propiedad individual para CSS. El comportamiento del **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** y **CssStyleSheetFileName** las propiedades no se cambian. Note que **CssStyleSheetFileName** propiedad se utiliza tanto para especificar nombre de carpeta y nombre de archivo.

- **ResourceFolder** tiene menor prioridad que las carpetas especificadas a través de **FontsFolder**, **ImagesFolder**, y **CssStyleSheetFileName**. Si la carpeta especificada en el **ResourceFolder** no existe, se creará automáticamente.
- **ResourceFolderAlias** tiene una prioridad inferior a la **FontsFolderAlias** y **ImagesFolderAlias**. Si **ResourceFolderAlias** está vacío, el valor del **ResourceFolder** propiedad se utilizará para crear recursos URIs. Si **ResourceFolderAlias** se establece a ". (dot), recursos URIs sólo contener nombres de archivos sin especificar una ruta.

### Recursos de las fuentes de codificación Export Base64

Aspose.Words proporciona una capacidad para especificar si los recursos de fuentes deben incrustarse en HTML en las codificacións Base64. Para realizar esto, utilice el [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) propiedad – esta es una extensión de la [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) propiedad. Por defecto, su valor es **false**, y las fuentes se escriben en archivos separados. Pero si esta opción está establecida **true**, las fuentes se incorporarán en el CSS del documento en la codificación Base64. El **ExportFontsAsBase64** propiedad sólo afecta el formato HTML y no afecta a EPUB y MHTML.

El siguiente ejemplo de código muestra cómo exportar fuentes con código Base64 a HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Especifique las opciones de Guardar cuando Conversión a EPUB

Aspose.Words permite convertir un documento de Word en formato EPUB usando opciones de ahorro predeterminadas o personalizadas. Puede especificar una serie de opciones al pasar una instancia de [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) a la [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) método.

El siguiente ejemplo de código muestra cómo convertir un documento de Word a EPUB con la especificación de algunas opciones de ahorro personalizado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Vea también

- [Cómo exportar información de ida y vuelta al guardar en HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
