---
title: Convertir un documento a HTML, MHTML o EPUB
second_title: Aspose.Words por Java
articleTitle: Convertir un documento a HTML, MHTML o EPUB
linktitle: Convertir un documento a HTML, MHTML o EPUB
description: "Use Aspose.Words para Java para convertir documentos de Word o cualquier otro formato compatible a HTML, MHTML o EPUB."
type: docs
weight: 20
url: /es/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Los documentos en formatos de diseño de flujo HTML y MHTML también son muy populares y se pueden utilizar en cualquier plataforma web. Por esa razón, convertir documentos a HTML y MHTML es una característica importante de Aspose.Words.

EPUB (abreviatura de" Publicación electrónica") es un formato basado en HTML que se usa comúnmente para la distribución electrónica de libros. Este formato es totalmente compatible con Aspose.Words para exportar libros electrónicos que son compatibles con la mayoría de los dispositivos de lectura.

## Convertir un Documento

Para una conversión simple a HTML, MHTML o EPUB, se utiliza una de las sobrecargas del método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int). Puede guardar el documento en un archivo o secuencia y establecer explícitamente el formato de guardado del documento de salida o definirlo a partir de la extensión del nombre del archivo.

El siguiente ejemplo muestra cómo convertir DOCX a HTML especificando un formato de guardado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Para convertir un documento a MHTML o EPUB, use `SaveFormat.MHTML` o `SaveFormat.EPUB` respectivamente.

## Convierta un Documento con Información de ida y vuelta

El formato HTML no admite muchas funciones de Microsoft Word, y si necesitamos restaurar un modelo de documento lo más parecido posible al original, debemos guardar información adicional dentro del archivo HTML. Dicha información también se denomina"información de ida y vuelta". Para este propósito, Aspose.Words proporciona la capacidad de exportar información de ida y vuelta al guardar en HTML, MHTML o EPUB usando la propiedad [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). Guardar la información de ida y vuelta permite restaurar las propiedades del documento, como pestañas, comentarios, encabezados y pies de página, durante la carga de documentos de los formatos enumerados nuevamente en un objeto **Document**.

El valor predeterminado es **true** para HTML y **false** para MHTML y EPUB:

- Cuando **true**, la información de ida y vuelta se exporta como - aw - * CSS propiedades de los HTML elementos correspondientes
- Cuando **false**, no hay información de ida y vuelta para generar en los archivos producidos

El siguiente ejemplo de código muestra cómo exportar información de ida y vuelta al convertir un documento de DOCX a HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especifique las opciones de guardado al convertir a HTML

Aspose.Words permite convertir un documento de Word en HTML utilizando las opciones de guardado predeterminadas o personalizadas. A continuación se describen algunos ejemplos de opciones de guardado personalizadas.

### Especifique una Carpeta para Guardar Recursos

Usando Aspose.Words podemos especificar una carpeta física donde se guardan todos los recursos, como imágenes, fuentes y CSS externos, cuando un documento se convierte a HTML. Por defecto, esta es una cadena vacía.

Especificar la propiedad [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) es la forma más sencilla de establecer la carpeta donde se deben escribir todos los recursos. Podemos usar propiedades individuales, como [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) que guarda las fuentes en la carpeta especificada y [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) que guarda las imágenes en una carpeta específica. Cuando se especifica una ruta relativa, **FontsFolder** y **ImagesFolder** hacen referencia a la carpeta donde se encuentra el ensamblado de código, **ResourceFolder** y [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) hacen referencia a la carpeta de salida donde se encuentra el documento HTML.

En este ejemplo, **ResourceFolder** especifica la ruta relativa. Esta ruta se refiere a la carpeta de salida donde se guarda el documento HTML. El valor de la propiedad **ResourceFolderAlias** se usa para crear URLs para todos los recursos.

El siguiente ejemplo de código muestra cómo trabajar con estas propiedades:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Usando la propiedad [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias), también podemos especificar el nombre de la carpeta utilizada para construir URIs de todos los recursos escritos en un documento HTML. Esta es la forma más sencilla de especificar cómo se debe generar URIs para todos los archivos de recursos. Se puede especificar la misma información para las imágenes y las fuentes por separado a través de las propiedades [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) y [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias), respectivamente.

Sin embargo, no hay propiedad individual para CSS. El comportamiento del **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** y las propiedades **CssStyleSheetFileName** no se modifican. Tenga en cuenta que la propiedad **CssStyleSheetFileName** se usa tanto para especificar el nombre de la carpeta como el nombre del archivo.

- **ResourceFolder** tiene menor prioridad que las carpetas especificadas en **FontsFolder**, **ImagesFolder** y **CssStyleSheetFileName**. Si la carpeta especificada en **ResourceFolder** no existe, se creará automáticamente.
- **ResourceFolderAlias** tiene una prioridad menor que **FontsFolderAlias** y **ImagesFolderAlias**. Si **ResourceFolderAlias** está vacío, el valor de la propiedad **ResourceFolder** se usará para crear el recurso URIs. Si **ResourceFolderAlias** se establece en "." (punto), el recurso URIs solo contendrá nombres de archivo sin especificar una ruta.

### Exportar Fuentes de Codificación Base64 Recursos

Aspose.Words proporciona la capacidad de especificar si los recursos de fuentes deben integrarse en HTML en codificaciones Base64. Para realizar esto, use la propiedad [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64); esta es una extensión de la propiedad [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). De forma predeterminada, su valor es **false** y las fuentes se escriben en archivos separados. Pero si esta opción se establece en **true**, las fuentes se incrustarán en el CSS del documento en codificación Base64. La propiedad **ExportFontsAsBase64** solo afecta al formato HTML y no a EPUB y MHTML.

El siguiente ejemplo de código muestra cómo exportar fuentes codificadas en Base64 a HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Especifique las opciones de guardado al convertir a EPUB

Aspose.Words permite convertir un documento de Word en formato EPUB utilizando las opciones de guardado predeterminadas o personalizadas. Puede especificar una serie de opciones pasando una instancia de [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) al método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

El siguiente ejemplo de código muestra cómo convertir un documento de Word a EPUB especificando algunas opciones de guardado personalizadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Véase También

- [Cómo exportar información de ida y vuelta al guardar en HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
