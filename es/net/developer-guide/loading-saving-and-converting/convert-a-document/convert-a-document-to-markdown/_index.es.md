---
title: Convertir un documento a Markdown en C#
second_title: Aspose.Words para .NET
articleTitle: Convertir un documento a Markdown
linktitle: Convertir un documento a Markdown
type: docs
description: "Convierta un documento en cualquier formato de carga admitido a Markdown y viceversa usando C#."
keywords: how to convert a document to markdown c#
weight: 40
url: /es/net/convert-a-document-to-markdown/
---

Markdown es un formato popular que se utiliza para marcar texto y su posterior conversión a HTML, PDF, DOCX u otros formatos. Muchos desarrolladores eligen este formato para escribir documentación, preparar artículos para su publicación en blogs, describir proyectos, etc.

Markdown es tan popular porque es fácil trabajar con este formato y también se puede convertir fácilmente a otros formatos. Por esta razón, Aspose.Words ofrece la posibilidad de convertir un documento de [cualquier formato de carga soportado](https://reference.aspose.com/words/net/aspose.words/loadformat/) a Markdown y viceversa; Aspose.Words también admite el formato [guardar formatos](https://reference.aspose.com/words/net/aspose.words/saveformat/) más popular.

Ahora se está desarrollando activamente la funcionalidad para trabajar con el formato Markdown para brindarle más oportunidades de trabajar con documentos de manera conveniente y cómoda.

## Convertir un documento

Para convertir un documento a Markdown, sólo necesita cargar un documento en cualquier formato compatible o crear uno nuevo mediante programación. Luego debe guardar el documento en formato Markdown.

El siguiente ejemplo de código muestra cómo convertir DOCX a Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

También puede especificar la carpeta física en la que desea guardar las imágenes al exportar un documento al formato Markdown. De forma predeterminada, Aspose.Words guarda las imágenes en la misma carpeta donde se guarda el archivo del documento, pero puede anular este comportamiento utilizando la propiedad [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/).

Especificar una carpeta a través de **ImagesFolder** también es útil si guarda un documento en una secuencia y Aspose.Words no tiene una carpeta para guardar imágenes.

Si el **ImagesFolder** especificado no existe, se creará automáticamente.

El siguiente ejemplo de código muestra cómo especificar una carpeta para imágenes al guardar un documento en una secuencia:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Especifique opciones de guardado al convertir a Markdown

Aspose.Words brinda la posibilidad de utilizar la clase [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) para trabajar con opciones avanzadas al guardar un documento en formato Markdown. La mayoría de las propiedades heredan o sobrecargan propiedades que ya existen dentro de otras clases de espacios de nombres [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/). Además de ellas, también se han añadido una serie de propiedades específicas del formato Markdown. Por ejemplo, la propiedad [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) para controlar la alineación del contenido en tablas, o [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) y [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) para controlar cómo se guardan las imágenes al convertir un documento al formato Markdown.

## Funciones Markdown compatibles

Aspose.Words actualmente admite las siguientes características Markdown, que en su mayoría siguen la especificación `CommonMark` en Aspose.Words API y se representan como estilos apropiados o formato directo:

* Los títulos son párrafos con estilos Título 1 – Título 6
* Las citas en bloque son párrafos con "Cita" en el nombre del estilo.
* IndentedCode son párrafos con "IndentedCode" en el nombre del estilo.
* FencedCode son párrafos con "FencedCode" en el nombre del estilo.
* InlineCode se ejecuta con "InlineCode" en el nombre del estilo `Font`
* Las reglas horizontales son párrafos con forma `HorizontalRule`.
* Énfasis en negrita
* Énfasis en cursiva
* Formato tachado
* Las listas son párrafos numerados o con viñetas
* Las tablas se representan con la clase `Table`
* Los enlaces se representan como la clase `FieldHyperlink`.

El siguiente ejemplo muestra cómo crear un documento con algunos estilos y guardarlo en Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

El resultado de este ejemplo de código se muestra a continuación.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Consejos útiles

Hay varios matices y casos interesantes, después de saber cuáles podrá trabajar con archivos Markdown de forma más flexible y cómoda. Por ejemplo, existe la posibilidad de utilizar:

* SetextHeading que le permite crear encabezados de varias líneas en Markdown, mientras que los encabezados normales en Markdown solo pueden ser de una sola línea. SetextHeading se basa en un estilo "Encabezado N" y su nivel solo puede ser 1 o 2. Si N en "Encabezado N" es mayor o igual a 2, entonces el SetextHeading correspondiente se basa en "Encabezado 2", de lo contrario, en "Título 1".
* Diferentes marcadores para el primer nivel de listas con viñetas ("-", "+" o "*", el marcador predeterminado es "-".) y diferentes tipos de numeración para listas ordenadas ("." o ")", el el marcador predeterminado es ".").
