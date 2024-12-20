---
title: Trabajar con funciones Markdown
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con funciones Markdown
linktitle: Trabajar con funciones Markdown
description: "Cómo implementar funciones Markdown usando Python. Todas las funciones se representan como estilos correspondientes o formato directo."
type: docs
weight: 420
url: /es/python-net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Este tema analiza cómo implementar funciones Markdown usando Aspose.Words. Markdown es una forma sencilla de formatear texto sin formato que se puede convertir fácilmente a HTML. Aspose.Words admite las siguientes funciones Markdown:

- Encabezados
- Citas en bloque
- Reglas horizontales
- énfasis en negrita
- énfasis en cursiva

La implementación de funciones Markdown sigue principalmente la especificación `CommonMark` en Aspose.Words API y todas las funciones se representan como estilos correspondientes o formato directo. Lo que significa que

- Negrita y cursiva se representan como [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) y [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/).
- Los títulos son párrafos con estilos de Título 1 - Título 6.
- Las comillas son párrafos con "Cita" en el nombre del estilo.
- HorizontalRule es un párrafo con forma HorizontalRule.

{{% alert color="primary" %}}

Hay matices en la traducción de Markdown al modelo de objetos de documento (DOM) Aspose.Words, que se describen en el artículo [Traducir Markdown a modelo de objetos de documento (DOM)](/words/es/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Documento Markdown con énfasis

Esta sección le muestra cómo producir un documento markdown con los énfasis que se indican a continuación:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Documento Markdown con encabezados

Esta sección le muestra cómo producir un documento markdown con los encabezados que se indican a continuación:

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

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Documento Markdown con cotizaciones en bloque

Esta sección le muestra cómo producir un documento markdown con comillas en bloque como se indica a continuación:

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

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Documento Markdown con regla horizontal

Esta sección le muestra cómo producir un documento markdown con regla horizontal como se indica a continuación:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Leer un documento Markdown

El siguiente fragmento de código le muestra cómo leer un documento markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Especificar opciones de guardado de Markdown

Aspose.Words API proporciona una clase [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) para especificar opciones adicionales al guardar un documento en formato Markdown.

El siguiente ejemplo de código demostró cómo especificar varias opciones de guardado de Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Cómo alinear contenido dentro de la tabla mientras se exporta a Markdown

Aspose.Words API proporciona una enumeración [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) que define las direcciones de alineación para alinear el contenido de las tablas mientras se exporta al documento Markdown. El siguiente ejemplo de código demuestra cómo alinear el contenido dentro de la tabla.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
