---
title: Trabajando con Markdown Características en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Markdown Características
linktitle: Trabajando con Markdown Características
description: "Cómo aplicar Markdown características usando Java. Todas las características están representadas como estilos correspondientes o formato directo."
type: docs
weight: 420
url: /es/java/working-with-markdown-features/
---

Este tema analiza cómo implementar Markdown características usando Aspose.Words. Markdown es una manera sencilla de formatear texto plano que se puede convertir fácilmente en HTML. Aspose.Words soporta los siguientes Markdown características:

- Cabezas
- Bloqueo
- Reglas horizontales
- El énfasis en los boldos
- Ponencia itálica

El Markdown sobre la base de la aplicación de las características principales `CommonMark` especificación en Aspose.Words API y todas las características están representadas como estilos correspondientes o formato directo. Lo que significa que

- Bold e Italic están representados como `Font.Bold` y `Font.Italic`
- Los encabezados son párrafos con Heading 1 - Heading 6 estilos
- Las citas son párrafos con "Quote" en el nombre del estilo
- HorizontalRule es un párrafo con un `HorizontalRule` forma.

{{% alert color="primary" %}}

Hay matices de traducir Markdown a la Aspose.Words Document Object Model (G)DOM), descrito en el artículo [Traducir Markdown a Document Object Model (G)DOM)](/words/es/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Documento con énfasis

Esta sección te muestra cómo producir un markdown documento con énfasis como se indica a continuación:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Documento con Headings

Esta sección te muestra cómo producir un markdown document with headings as given below:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el anterior markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Documento con citas de bloque

Esta sección te muestra cómo producir un markdown document with block quotes as given below:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el anterior markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Documento con Regla Horizontal

Esta sección te muestra cómo producir un markdown documento con Horizontal Regla que figura a continuación:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Leyendo una Markdown Documento

El siguiente fragmento de código le muestra cómo leer un markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Especificar Markdown Guardar opciones

Aspose.Words API Prestaciones [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) clase para especificar opciones adicionales al guardar un documento en Markdown formato.

El siguiente ejemplo de código demostró cómo especificar varios Markdown Guardar opciones.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Cómo alinear el contenido dentro de la tabla mientras se exporta Markdown

Aspose.Words API Prestaciones [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) enumeración que define las direcciones de alineación para alinear el contenido en tablas al exportar a la Markdown documento. El siguiente ejemplo de código muestra cómo alinear el contenido dentro de la tabla.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
