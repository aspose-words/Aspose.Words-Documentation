---
title: Convertir un documento a Markdown
second_title: Aspose.Words para Python via .NET
articleTitle: Convertir un documento a Markdown
linktitle: Convertir un documento a Markdown
type: docs
description: "Convierta un documento en cualquier formato de carga admitido a Markdown y viceversa usando Python."
keywords: how to convert a document to markdown python
weight: 40
url: /es/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown es un formato popular que se utiliza para marcar texto y su posterior conversión a HTML, PDF, DOCX u otros formatos. Muchos desarrolladores eligen este formato para escribir documentación, preparar artículos para su publicación en blogs, describir proyectos, etc.

Markdown es tan popular porque es fácil trabajar con este formato y también se puede convertir fácilmente a otros formatos. Por esta razón, Aspose.Words ofrece la posibilidad de convertir un documento de [cualquier formato de carga soportado](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) a Markdown y viceversa; Aspose.Words también admite el formato [guardar formatos](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) más popular.

Ahora se está desarrollando activamente la funcionalidad para trabajar con el formato Markdown para brindarle más oportunidades de trabajar con documentos de manera conveniente y cómoda.

## Convertir un documento

Para convertir un documento a Markdown, sólo necesita cargar un documento en cualquier formato compatible o crear uno nuevo mediante programación. Luego debe guardar el documento en formato Markdown.

El siguiente ejemplo de código muestra cómo convertir DOCX a Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

También puede especificar la carpeta física en la que desea guardar las imágenes al exportar un documento al formato Markdown. De forma predeterminada, Aspose.Words guarda las imágenes en la misma carpeta donde se guarda el archivo del documento, pero puede anular este comportamiento utilizando la propiedad [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Especificar una carpeta a través de [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) también es útil si guarda un documento en una secuencia y Aspose.Words no tiene una carpeta para guardar imágenes.

Si el [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) especificado no existe, se creará automáticamente.

El siguiente ejemplo de código muestra cómo especificar una carpeta para imágenes al guardar un documento en una secuencia:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Especifique opciones de guardado al convertir a Markdown

Aspose.Words brinda la posibilidad de utilizar la clase [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) para trabajar con opciones avanzadas al guardar un documento en formato Markdown. La mayoría de las propiedades heredan o sobrecargan propiedades que ya existen en otras clases [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/). Además de ellas, también se han añadido una serie de propiedades específicas del formato Markdown. Por ejemplo, la propiedad [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) para controlar la alineación del contenido en las tablas, o [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) para controlar dónde se guardan las imágenes al convertir un documento al formato Markdown.

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
* Las tablas se representan con la clase [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* Los enlaces se representan como la clase [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

El siguiente ejemplo muestra cómo crear un documento con algunos estilos y guardarlo en Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

El resultado de este ejemplo de código se muestra a continuación.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Consejos útiles

Hay varios matices y casos interesantes, después de saber cuáles podrá trabajar con archivos Markdown de forma más flexible y cómoda. Por ejemplo, existe la posibilidad de utilizar:

* SetextHeading que le permite crear encabezados de varias líneas en Markdown, mientras que los encabezados normales en Markdown solo pueden ser de una sola línea. SetextHeading se basa en un estilo "Encabezado N" y su nivel solo puede ser 1 o 2. Si N en "Encabezado N" es mayor o igual a 2, entonces el SetextHeading correspondiente se basa en "Encabezado 2", de lo contrario, en "Título 1".
* Diferentes marcadores para el primer nivel de listas con viñetas ("-", "+" o "*", el marcador predeterminado es "-".) y diferentes tipos de numeración para listas ordenadas ("." o ")", el el marcador predeterminado es ".").
