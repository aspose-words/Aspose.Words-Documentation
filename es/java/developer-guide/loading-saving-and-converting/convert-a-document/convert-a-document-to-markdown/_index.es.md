---
title: Convertir un documento en Markdown dentro Java
second_title: Aspose.Words para Java
articleTitle: Convertir un documento en Markdown
linktitle: Convertir un documento en Markdown
type: docs
description: "Convertir un documento en cualquier formato de carga compatible Markdown y viceversa usando Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /es/java/convert-a-document-to-markdown/
---

Markdown es un formato popular utilizado para marcar texto y se está convirtiendo aún más en HTML, PDF, DOCX, u otros formatos. Muchos desarrolladores eligen este formato para escribir documentación, preparando artículos para publicación en blogs, describiendo proyectos, etc.

Markdown es tan popular porque es fácil trabajar con este formato, así como puede ser simplemente convertido a otros formatos. Por esta razón, Aspose.Words proporciona la capacidad de convertir un documento en [cualquier formato de carga compatible](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) a Markdown y viceversa – Aspose.Words también apoya a los más populares [guardar formatos](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Ahora la funcionalidad para trabajar con la Markdown formato se está desarrollando activamente para proporcionarle más oportunidades para un trabajo cómodo y cómodo con documentos.

## Convertir un documento en Markdown

Para convertir un documento a <span notrans="<span notrans=" Markdown"=""></span>," sólo tiene que cargar un documento en cualquier formato compatible o crear uno nuevo programáticamente. Entonces usted necesita guardar el documento para Markdown formato.

El siguiente ejemplo de código muestra cómo convertir DOCX a Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Especifique las opciones de guardar cuando se convierta en Markdown

Aspose.Words proporciona la capacidad de utilizar el [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) clase para trabajar con opciones avanzadas al guardar un documento Markdown formato. Además de otras propiedades hereditarias o sobrecargas, una serie de propiedades específicas para Markdown el formato también se ha añadido. Por ejemplo, el [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) propiedad para controlar la alineación del contenido en tablas, o [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) y [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) para controlar cómo se guardan las imágenes al convertir un documento a Markdown formato.

## Apoyo Markdown Características

Aspose.Words actualmente apoya lo siguiente Markdown características, que en su mayoría siguen `CommonMark` especificación en la Aspose.Words API y están representados como estilos apropiados o formato directo:

* Los encabezados son párrafos con Heading 1 – Heading 6 estilos
* Los bloques son párrafos con "Quote" en el nombre de estilo
* IndentedCode son párrafos con "IndentedCode" en el nombre del estilo
* Fenced Código son párrafos con "FencedCode" en el nombre de estilo
* InlineCode se ejecuta con "InlineCode" en el `Font` nombre de estilo
* Las reglas horizontales son párrafos con `HorizontalRule` forma
* Prioridad bold
* Ponencia itálica
* StrikeThrough formatting
* Las listas son numeradas o numeradas
* Las tablas están representadas con `Table` clase
* Los enlaces están representados como `FieldHyperlink` clase

El siguiente ejemplo muestra cómo crear un documento con algunos estilos y guardarlo para Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

El resultado de este ejemplo de código se muestra a continuación.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Consejos útiles

Hay varios matones y casos interesantes, habiendo aprendido con los que puedes trabajar Markdown archivos más flexible y convenientemente. Por ejemplo, existe la capacidad de utilizar:

* SetextHeading que permite crear encabezados multilíneas en <span notrans="<span notrans=" Markdown"=""></span>," mientras que las partidas ordinarias entran Markdown sólo puede ser una sola línea. SetextHeading se basa en un estilo "Heading N", y su nivel sólo puede ser 1 o 2. Si N en "Heading N" es mayor o igual a 2, entonces el correspondiente SetextHeading se basa en "Heading 2", de lo contrario en "Heading 1".
* Diferentes marcadores para el primer nivel de listas de balas ("-", "+" o "*", el marcador predeterminado es "-") y diferentes tipos de numeración para listas ordenadas ("." o ")", el marcador predeterminado es ".
