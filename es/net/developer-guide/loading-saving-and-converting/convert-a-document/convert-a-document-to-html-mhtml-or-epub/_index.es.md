---
title: Convertir un documento a HTML, MHTML o EPUB en C#
second_title: Aspose.Words para .NET
articleTitle: Convertir un documento a HTML, MHTML o EPUB
linktitle: Convertir un documento a HTML, MHTML o EPUB
description: "Convierta un documento de casi cualquier formato a HTML o MHTML, así como al formato EPUB usando C#. También puede especificar opciones de guardado para administrar el documento de salida."
type: docs
weight: 20
url: /es/net/convert-a-document-to-html-mhtml-or-epub/
---

Los documentos en formatos de diseño de flujo HTML y MHTML también son muy populares y se pueden utilizar en cualquier plataforma web. Por ese motivo, convertir documentos a HTML y MHTML es una característica importante de Aspose.Words.

EPUB (abreviatura de "Publicación electrónica") es un formato basado en HTML comúnmente utilizado para la distribución de libros electrónicos. Este formato es totalmente compatible con Aspose.Words para exportar libros electrónicos que son compatibles con la mayoría de los dispositivos de lectura.

## Convertir un documento

Para una conversión simple a HTML, MHTML o EPUB, se utiliza una de las sobrecargas del método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/#save/). Puede guardar el documento en un archivo o secuencia y establecer explícitamente el formato de guardado del documento de salida o definirlo a partir de la extensión del nombre del archivo.

El siguiente ejemplo muestra cómo convertir DOCX a HTML especificando un formato de guardado:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Para convertir un documento a MHTML o EPUB, utilice `SaveFormat.Mhtml` o `SaveFormat.Epub` respectivamente.

## Convertir un documento con información de ida y vuelta

El formato HTML no admite muchas funciones de Microsoft Word y, si necesitamos restaurar un modelo de documento lo más parecido posible al original, debemos guardar información adicional dentro del archivo HTML. Esta información también se denomina "información de ida y vuelta". Para este propósito, Aspose.Words brinda la capacidad de exportar información de ida y vuelta al guardarla en HTML, MHTML o EPUB utilizando la propiedad [ExportRoundtripInformation](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). Guardar la información de ida y vuelta permite restaurar propiedades del documento como pestañas, comentarios, encabezados y pies de página durante la carga de documentos de los formatos enumerados nuevamente en un objeto **Document**.

El valor predeterminado es **verdadero** para HTML y **FALSO** para MHTML y EPUB:

- Cuando **verdadero**, la información de ida y vuelta se exporta como - aw - * propiedades CSS de los elementos HTML correspondientes
- Cuando es **FALSO**, no hay información de ida y vuelta para enviar a los archivos producidos.

El siguiente ejemplo de código muestra cómo exportar información de ida y vuelta al convertir un documento de DOCX a HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especificar opciones de guardar al realizar la conversión a HTML

Aspose.Words permite convertir un documento de Word a HTML utilizando opciones de guardado predeterminadas o personalizadas. A continuación se describen algunos ejemplos de opciones de guardado personalizadas.

### Especificar una carpeta para guardar recursos

Usando Aspose.Words podemos especificar una carpeta física donde se guardan todos los recursos, como imágenes, fuentes y CSS externo, cuando un documento se convierte a HTML. De forma predeterminada, esta es una cadena vacía.

Especificar la propiedad [ResourceFolder](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) es la forma más sencilla de configurar la carpeta donde se deben escribir todos los recursos. Podemos usar propiedades individuales, como [FontsFolder](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/fontsfolder/), que guarda las fuentes en la carpeta especificada, y [ImagesFolder](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/imagesfolder/), que guarda las imágenes en una carpeta especificada. Cuando se especifica una ruta relativa, **FontsFolder** y **ImagesFolder** se refieren a la carpeta donde se encuentra el código ensamblado, **ResourceFolder** y [CssStyleSheetFileName](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) se refieren a la carpeta de salida donde se encuentra el documento HTML.

En este ejemplo, **ResourceFolder** especifica la ruta relativa. Esta ruta se refiere a la carpeta de salida donde se guarda el documento HTML. El valor de la propiedad **ResourceFolderAlias** se utiliza para crear URL para todos los recursos.

El siguiente ejemplo de código muestra cómo trabajar con estas propiedades:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Usando la propiedad [ResourceFolderAlias](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), también podemos especificar el nombre de la carpeta utilizada para construir los URI de todos los recursos escritos en un documento HTML. Esta es la forma más sencilla de especificar cómo se deben generar los URI para todos los archivos de recursos. Se puede especificar la misma información para imágenes y fuentes por separado mediante propiedades [ImagesFolderAlias](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) y [FontsFolderAlias](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/), respectivamente.

Sin embargo, no existe una propiedad individual para CSS. El comportamiento de las propiedades **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** y **CssStyleSheetFileName** no cambia. Tenga en cuenta que la propiedad **CssStyleSheetFileName** se utiliza tanto para especificar el nombre de la carpeta como el nombre del archivo.

- **ResourceFolder** tiene menor prioridad que las carpetas especificadas mediante **FontsFolder**, **ImagesFolder** y **CssStyleSheetFileName**. Si la carpeta especificada en el **ResourceFolder** no existe, se creará automáticamente.
- **ResourceFolderAlias** tiene menor prioridad que **FontsFolderAlias** y **ImagesFolderAlias**. Si **ResourceFolderAlias** está vacío, el valor de la propiedad **ResourceFolder** se utilizará para crear URI de recursos. Si **ResourceFolderAlias** está configurado en "." (punto), los URI de recursos solo contendrán nombres de archivos sin especificar una ruta.

### Exportar recursos de fuentes de codificación Base64

Aspose.Words ofrece la posibilidad de especificar si los recursos de fuentes deben incrustarse en HTML en codificaciones Base64. Para realizar esto, utilice la propiedad [ExportFontsAsBase64](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/); esta es una extensión de la propiedad [ExportFontResources](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). De forma predeterminada, su valor es **FALSO** y las fuentes se escriben en archivos separados. Pero si esta opción está configurada en **verdadero**, las fuentes se incrustarán en el CSS del documento en codificación Base64. La propiedad **Exportar fuentes como base64** sólo afecta al formato HTML y no afecta a EPUB ni MHTML.

El siguiente ejemplo de código muestra cómo exportar fuentes codificadas en Base64 a HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Especificar opciones de guardado al realizar la conversión a EPUB

Aspose.Words permite convertir un documento de Word a formato EPUB utilizando opciones de guardado predeterminadas o personalizadas. Puede especificar varias opciones pasando una instancia de [HtmlSaveOptions](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/) al método [Save](https://reference.aspose.com/words/es/net/aspose.words/document/save/#save/).

El siguiente ejemplo de código muestra cómo convertir un documento de Word a EPUB especificando algunas opciones de guardado personalizadas:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Ver también

- [Cómo exportar información de ida y vuelta al guardar en HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
