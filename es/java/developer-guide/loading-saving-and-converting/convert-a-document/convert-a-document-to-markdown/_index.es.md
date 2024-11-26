---
title: Convertir un documento a Markdown en Java
second_title: Aspose.Words por Java
articleTitle: Convertir un documento a Markdown
linktitle: Convertir un documento a Markdown
type: docs
description: "Convierta un documento en cualquier formato de carga admitido a Markdown y viceversa usando Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /es/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown es un formato popular utilizado para marcar texto y se está convirtiendo aún más en HTML, PDF, DOCX, u otros formatos. Muchos desarrolladores eligen este formato para escribir documentación, preparar artículos para su publicación en blogs, describir proyectos,etc.

Markdown es tan popular porque es fácil trabajar con este formato, además de que se puede convertir simplemente a otros formatos. Por esta razón, Aspose.Words brinda la capacidad de convertir un documento en [cualquier formato de carga admitido](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) a Markdown y viceversa; Aspose.Words también admite el [guardar formatos](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) más popular.

Ahora, la funcionalidad para trabajar con el formato Markdown se está desarrollando activamente para brindarle más oportunidades de trabajar de manera conveniente y cómoda con documentos.

## Convertir un documento a Markdown

Para convertir un documento a Markdown, solo necesita cargar un documento en cualquier formato compatible o crear uno nuevo mediante programación. Luego debe guardar el documento en formato Markdown.

El siguiente ejemplo de código muestra cómo convertir DOCX a Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Especifique las Opciones de guardado al Convertir a Markdown

Aspose.Words brinda la capacidad de usar la clase [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) para trabajar con opciones avanzadas al guardar un documento en formato Markdown. Además de otras propiedades de herencia o sobrecarga, también se han agregado varias propiedades específicas para el formato Markdown. Por ejemplo, la propiedad [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) para controlar la alineación del contenido en las tablas, o [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) y [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) para controlar cómo se guardan las imágenes al convertir un documento al formato Markdown.

## Funciones Markdown compatibles

Aspose.Words actualmente admite las siguientes características de Markdown, que en su mayoría siguen la especificación `CommonMark` en Aspose.Words API y se representan como estilos apropiados o formato directo:

* Los encabezados son párrafos con estilos Heading 1 – Heading 6
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

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

El resultado de este ejemplo de código se muestra a continuación.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Consejos Útiles

Hay varios matices y casos interesantes, habiendo aprendido que puede trabajar con archivos Markdown de manera más flexible y conveniente. Por ejemplo, existe la posibilidad de utilizar:

* SetextHeading que le permite crear encabezados multilínea en Markdown, mientras que los encabezados normales en Markdown solo pueden ser de una sola línea. SetextHeading se basa en un estilo de "Encabezado N", y su nivel solo puede ser 1 o 2. Si N en el "Encabezado N" es mayor o igual a 2, entonces el SetextHeading correspondiente se basa en "Heading 2", de lo contrario en "Heading 1".
* Marcadores diferentes para el primer nivel de listas con viñetas ("-", "+" o "*", el marcador predeterminado es "-".) y diferentes tipos de numeración para listas ordenadas ("." o ")", el marcador predeterminado es ".").
