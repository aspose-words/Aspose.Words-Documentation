---
title: Convierta un documento a HTML, MHTML o EPUB
second_title: Aspose.Words para C++
articleTitle: Convierta un documento a HTML, MHTML o EPUB
linktitle: Convierta un documento a HTML, MHTML o EPUB
description: "Convierta un documento de casi cualquier formato a HTML o MHTML, así como a formato EPUB usando C++. También puede especificar opciones de guardado para administrar el documento de salida."
type: docs
weight: 20
url: /es/cpp/convert-a-document-to-html-mhtml-or-epub/
---

Los documentos en formatos de diseño de flujo HTML y MHTML también son muy populares y se pueden utilizar en cualquier plataforma web. Por esa razón, convertir documentos a HTML y MHTML es una característica importante de Aspose.Words.

EPUB (abreviatura de" Publicación electrónica") es un formato basado en HTML que se usa comúnmente para la distribución electrónica de libros. Este formato es totalmente compatible con Aspose.Words para exportar libros electrónicos que son compatibles con la mayoría de los dispositivos de lectura.

## Convertir un Documento

Para una conversión simple a HTML, MHTML o EPUB, se utiliza una de las sobrecargas del método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Puede guardar el documento en un archivo o secuencia y establecer explícitamente el formato de guardado del documento de salida o definirlo a partir de la extensión del nombre del archivo.

El siguiente ejemplo muestra cómo convertir DOCX a HTML especificando un formato de guardado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Para convertir un documento a MHTML o EPUB, use `SaveFormat.Mhtml` o `SaveFormat.Epub` respectivamente.

## Convierta un Documento con Información de ida y vuelta

El formato HTML no admite muchas funciones de Microsoft Word, y si necesitamos restaurar un modelo de documento lo más parecido posible al original, debemos guardar información adicional dentro del archivo HTML. Dicha información también se denomina"información de ida y vuelta". Para este propósito, Aspose.Words proporciona la capacidad de exportar información de ida y vuelta al guardar en HTML, MHTML o EPUB utilizando la propiedad [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Guardar la información de ida y vuelta permite restaurar las propiedades del documento, como pestañas, comentarios, encabezados y pies de página, durante la carga de documentos de los formatos enumerados nuevamente en un objeto **Document**.

El valor predeterminado es **true** para HTML y **false** para MHTML y EPUB:

- Cuando **true**, la información de ida y vuelta se exporta como propiedades CSS - aw - * de los elementos HTML correspondientes
- Cuando **false**, no hay información de ida y vuelta para generar en los archivos producidos

El siguiente ejemplo de código muestra cómo exportar información de ida y vuelta al convertir un documento de DOCX a HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples.doc).

{{% /alert %}}

## Especifique las Opciones de guardado al Convertir a HTML

Aspose.Words permite convertir un documento de Word a HTML utilizando las opciones de guardado predeterminadas o personalizadas. A continuación se describen algunos ejemplos de opciones de guardado personalizadas.

### Especifique una Carpeta para Guardar Recursos

Usando Aspose.Words podemos especificar una carpeta física donde se guardan todos los recursos, como imágenes, fuentes y CSS externo, cuando un documento se convierte a HTML. Por defecto, esta es una cadena vacía.

Especificar la propiedad [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) es la forma más sencilla de establecer la carpeta donde se deben escribir todos los recursos. Podemos usar propiedades individuales, como [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) que guarda las fuentes en la carpeta especificada y [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) que guarda las imágenes en una carpeta específica. Cuando se especifica una ruta relativa, **FontsFolder** y **ImagesFolder** hacen referencia a la carpeta donde se encuentra el ensamblado de código, **ResourceFolder** y [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) hacen referencia a la carpeta de salida donde se encuentra el documento HTML.

En este ejemplo, **ResourceFolder** especifica la ruta relativa. Esta ruta se refiere a la carpeta de salida donde se guarda el documento HTML. El valor de la propiedad **ResourceFolderAlias** se usa para crear URLs para todos los recursos.

El siguiente ejemplo de código muestra cómo trabajar con estas propiedades:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Usando la propiedad [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), también podemos especificar el nombre de la carpeta utilizada para construir URIs de todos los recursos escritos en un documento HTML. Esta es la forma más sencilla de especificar cómo se debe generar URIs para todos los archivos de recursos. Se puede especificar la misma información para las imágenes y las fuentes por separado a través de las propiedades [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) y [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/), respectivamente.

Sin embargo, no hay una propiedad individual para CSS. El comportamiento del **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** y **CssStyleSheetFileName** las propiedades no se modifican. Tenga en cuenta que la propiedad **CssStyleSheetFileName** se usa tanto para especificar el nombre de la carpeta como el nombre del archivo.

- **ResourceFolder** tiene menor prioridad que las carpetas especificadas en **FontsFolder**, **ImagesFolder** y **CssStyleSheetFileName**. Si la carpeta especificada en el **ResourceFolder** no existe, se creará automáticamente.
- **ResourceFolderAlias** tiene una prioridad menor que **FontsFolderAlias** y **ImagesFolderAlias**. Si **ResourceFolderAlias** está vacío, el valor de la propiedad **ResourceFolder** se usará para crear el recurso URIs. Si **ResourceFolderAlias** se establece en "." (punto), el recurso URIs solo contendrá nombres de archivo sin especificar una ruta.

### Exportar Fuentes de Codificación Base64 Recursos

Aspose.Words proporciona la capacidad de especificar si los recursos de fuentes deben incrustarse en HTML en codificaciones Base64. Para realizar esto, use la propiedad [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/); esta es una extensión de la propiedad [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). De forma predeterminada, su valor es **false** y las fuentes se escriben en archivos separados. Pero si esta opción se establece en **true**, las fuentes se incrustarán en el CSS del documento en codificación Base64. La propiedad **ExportFontsAsBase64** solo afecta al formato HTML y no afecta a EPUB y MHTML.

El siguiente ejemplo de código muestra cómo exportar fuentes codificadas en Base64 a HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Especifique las Opciones de guardado al Convertir a EPUB

Aspose.Words permite convertir un documento de Word a formato EPUB utilizando las opciones de guardado predeterminadas o personalizadas. Puede especificar una serie de opciones pasando una instancia de [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) al método `Save`.

El siguiente ejemplo de código muestra cómo convertir un documento de Word a EPUB especificando algunas opciones de guardado personalizadas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
