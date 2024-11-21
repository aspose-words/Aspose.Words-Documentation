---
title: Convertir documento a HTML
second_title: Aspose.Words para Python via .NET
articleTitle: Convertir un documento a HTML, MHTML o EPUB
linktitle: Convertir un documento a HTML, MHTML o EPUB
description: "Convierta un documento desde casi cualquier formato a HTML o MHTML, así como al formato EPUB usando Python. También puede especificar opciones de guardado para administrar el documento de salida."
type: docs
weight: 20
url: /es/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Los documentos en formatos de diseño de flujo HTML y MHTML también son muy populares y se pueden utilizar en cualquier plataforma web. Por ese motivo, convertir documentos a HTML y MHTML es una característica importante de Aspose.Words.

EPUB (abreviatura de "Publicación electrónica") es un formato basado en HTML comúnmente utilizado para la distribución de libros electrónicos. Este formato es totalmente compatible con Aspose.Words para exportar libros electrónicos que son compatibles con la mayoría de los dispositivos de lectura.

## Convertir un documento

Para una conversión simple a HTML, MHTML o EPUB, se utiliza una de las sobrecargas del método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Puede guardar el documento en un archivo o secuencia y establecer explícitamente el formato de guardado del documento de salida o definirlo a partir de la extensión del nombre del archivo.

El siguiente ejemplo muestra cómo convertir DOCX a HTML especificando un formato de guardado:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Para convertir un documento a MHTML o EPUB, utilice [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) o [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) respectivamente.

## Convertir un documento con información de ida y vuelta

El formato HTML no admite muchas funciones de Microsoft Word y, si necesitamos restaurar un modelo de documento lo más parecido posible al original, debemos guardar información adicional dentro del archivo HTML. Esta información también se denomina "información de ida y vuelta". Para este propósito, Aspose.Words brinda la capacidad de exportar información de ida y vuelta al guardarla en HTML, MHTML o EPUB utilizando la propiedad **exportar_información_ida y vuelta**. Guardar la información de ida y vuelta permite restaurar propiedades del documento como pestañas, comentarios, encabezados y pies de página durante la carga de documentos de los formatos enumerados nuevamente en un objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

El valor predeterminado es *True* para HTML y *False* para MHTML y EPUB:

- Cuando *True*, la información de ida y vuelta se exporta como - aw - * propiedades CSS de los elementos HTML correspondientes
- Cuando es *False*, no hay información de ida y vuelta para enviar a los archivos producidos.

El siguiente ejemplo de código muestra cómo exportar información de ida y vuelta al convertir un documento de DOCX a HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Especificar opciones de guardar al realizar la conversión a HTML

Aspose.Words permite convertir un documento de Word a HTML utilizando opciones de guardado predeterminadas o personalizadas. A continuación se describen algunos ejemplos de opciones de guardado personalizadas.

### Especificar una carpeta para guardar recursos

Usando Aspose.Words podemos especificar una carpeta física donde se guardan todos los recursos, como imágenes, fuentes y CSS externo, cuando un documento se convierte a HTML. De forma predeterminada, esta es una cadena vacía.

Especificar la propiedad [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) es la forma más sencilla de configurar la carpeta donde se deben escribir todos los recursos. Podemos usar propiedades individuales, como [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), que guarda las fuentes en la carpeta especificada, y [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), que guarda las imágenes en una carpeta especificada. Cuando se especifica una ruta relativa, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) y [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) se refieren a la carpeta donde se encuentra el código ensamblado, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) y [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) se refieren a la carpeta de salida donde se encuentra el documento HTML.

En este ejemplo, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) especifica la ruta relativa. Esta ruta se refiere a la carpeta de salida donde se guarda el documento HTML. El valor de la propiedad [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) se utiliza para crear URL para todos los recursos.

El siguiente ejemplo de código muestra cómo trabajar con estas propiedades:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Usando la propiedad [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), también podemos especificar el nombre de la carpeta utilizada para construir los URI de todos los recursos escritos en un documento HTML. Esta es la forma más sencilla de especificar cómo se deben generar los URI para todos los archivos de recursos. Se puede especificar la misma información para imágenes y fuentes por separado mediante propiedades [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) y [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), respectivamente.

Sin embargo, no existe una propiedad individual para CSS. El comportamiento de las propiedades [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) y [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) no cambia. Tenga en cuenta que la propiedad [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) se utiliza tanto para especificar el nombre de la carpeta como el nombre del archivo.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) tiene menor prioridad que las carpetas especificadas mediante [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) y [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Si la carpeta especificada en el [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) no existe, se creará automáticamente.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) tiene menor prioridad que [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) y [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Si [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) está vacío, el valor de la propiedad [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) se utilizará para crear URI de recursos. Si [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) está configurado en "." (punto), los URI de recursos solo contendrán nombres de archivos sin especificar una ruta.

### Exportar recursos de fuentes de codificación Base64

Aspose.Words ofrece la posibilidad de especificar si los recursos de fuentes deben incrustarse en HTML en codificaciones Base64. Para realizar esto, utilice la propiedad [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/); esta es una extensión de la propiedad [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). De forma predeterminada, su valor es *False* y las fuentes se escriben en archivos separados. Pero si esta opción está configurada en *True*, las fuentes se incrustarán en el CSS del documento en codificación Base64. La propiedad [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) sólo afecta al formato HTML y no afecta a EPUB ni MHTML.

El siguiente ejemplo de código muestra cómo exportar fuentes codificadas en Base64 a HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Especificar opciones de guardar al realizar la conversión a EPUB

Aspose.Words permite convertir un documento de Word a formato EPUB utilizando opciones de guardado predeterminadas o personalizadas. Puede especificar varias opciones pasando una instancia de [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) al método [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

El siguiente ejemplo de código muestra cómo convertir un documento de Word a EPUB especificando algunas opciones de guardado personalizadas:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Puede descargar el archivo de plantilla de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

