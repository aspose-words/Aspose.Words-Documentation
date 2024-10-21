---
title: Convertir un documento a Markdown en C++
second_title: Aspose.Words para C++
articleTitle: Convertir un documento a Markdown
linktitle: Convertir un documento a Markdown
type: docs
description: "Convierta un documento en cualquier formato de carga admitido a Markdown y viceversa usando C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /es/cpp/convert-a-document-to-markdown/
---

Markdown es un formato popular que se usa para marcar texto y luego se convierte a HTML, PDF, DOCX u otros formatos. Muchos desarrolladores eligen este formato para escribir documentación, preparar artículos para su publicación en blogs, describir proyectos,etc.

Markdown es tan popular porque es fácil trabajar con este formato, además de que se puede convertir simplemente a otros formatos. Por esta razón, Aspose.Words brinda la capacidad de convertir un documento en [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) a Markdown y viceversa; Aspose.Words también admite el [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) más popular.

Ahora, la funcionalidad para trabajar con el formato Markdown se está desarrollando activamente para brindarle más oportunidades de trabajar de manera conveniente y cómoda con documentos.

## Convertir un Documento

Para convertir un documento a Markdown, solo necesita cargar un documento en cualquier formato compatible o crear uno nuevo mediante programación. Luego debe guardar el documento en formato Markdown.

El siguiente ejemplo de código muestra cómo convertir DOCX a Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

También puede especificar la carpeta física en la que desea guardar las imágenes al exportar un documento al formato Markdown. De forma predeterminada, Aspose.Words guarda las imágenes en la misma carpeta donde se guarda el archivo de documento, pero puede anular este comportamiento utilizando la propiedad [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Especificar una carpeta mediante **ImagesFolder** también es útil si guarda un documento en una secuencia y Aspose.Words no tiene una carpeta para guardar imágenes.

Si el **ImagesFolder** especificado no existe, se creará automáticamente.

El siguiente ejemplo de código muestra cómo especificar una carpeta para las imágenes al guardar un documento en una secuencia:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Especifique las Opciones de guardado al Convertir a Markdown

Aspose.Words brinda la capacidad de usar la clase [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) para trabajar con opciones avanzadas al guardar un documento en formato Markdown. La mayoría de las propiedades heredan o sobrecargan propiedades que ya existen dentro de otras [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) Clases de espacio de nombres. Además de ellos, también se han agregado una serie de propiedades específicas para el formato Markdown. Por ejemplo, la propiedad [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) para controlar la alineación del contenido en las tablas, o [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) y [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) para controlar cómo se guardan las imágenes al convertir un documento al formato Markdown./

## Funciones Markdown compatibles

Aspose.Words actualmente admite las siguientes características de Markdown, que en su mayoría siguen la especificación `CommonMark` en la API de Aspose.Words y se representan como estilos apropiados o formato directo:

* Los encabezados son párrafos con estilos de encabezado 1 - Encabezado 6
* Las citas en bloque son párrafos con "Cita" en el nombre del estilo
* IndentedCode son párrafos con "IndentedCode " en el nombre del estilo
* FencedCode son párrafos con "FencedCode " en el nombre del estilo
* InlineCode se ejecuta con "InlineCode " en el nombre del estilo `Font`
* Las reglas horizontales son párrafos con la forma `HorizontalRule`
* Énfasis en negrita
* Énfasis en cursiva
* StrikeThrough formato
* Las listas son párrafos numerados o con viñetas
* Las tablas se representan con la clase `Table`
* Los enlaces se representan como la clase `FieldHyperlink`

El siguiente ejemplo muestra cómo crear un documento con algunos estilos y guardarlo en Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

El resultado de este ejemplo de código se muestra a continuación.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Consejos Útiles

Hay varios matices y casos interesantes, habiendo aprendido que puede trabajar con archivos Markdown de manera más flexible y conveniente. Por ejemplo, existe la posibilidad de utilizar:

* SetextHeading que le permite crear encabezados multilínea en Markdown, mientras que los encabezados normales en Markdown solo pueden ser de una sola línea. SetextHeading se basa en un estilo de "Encabezado N", y su nivel solo puede ser 1 o 2. Si N en "Encabezado N" es mayor o igual que 2, entonces el SetextHeading correspondiente se basa en " Encabezado 2", de lo contrario, en " Encabezado 1".
* Marcadores diferentes para el primer nivel de listas con viñetas ("-", "+" o "*", el marcador predeterminado es "-".) y diferentes tipos de numeración para listas ordenadas ("." o ")", el marcador predeterminado es ".").
