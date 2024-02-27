---
title: Trabajar con funciones Markdown en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con funciones Markdown
linktitle: Trabajar con funciones Markdown
description: "Cómo implementar funciones Markdown usando C#. Todas las funciones se representan como estilos correspondientes o formato directo."
type: docs
weight: 420
url: /es/net/working-with-markdown-features/
---

Este tema analiza cómo implementar funciones Markdown usando Aspose.Words. Markdown es una forma sencilla de formatear texto sin formato que se puede convertir fácilmente a HTML. Aspose.Words admite las siguientes funciones Markdown:

- Encabezados
- Citas en bloque
- Reglas horizontales
- énfasis en negrita
- énfasis en cursiva

La implementación de funciones Markdown sigue principalmente la especificación `CommonMark` en Aspose.Words API y todas las funciones se representan como estilos correspondientes o formato directo. Lo que significa que

- Negrita y cursiva se representan como `Font.Bold` y `Font.Italic`.
- Los títulos son párrafos con estilos de Título 1 - Título 6.
- Las comillas son párrafos con "Cita" en el nombre del estilo.
- HorizontalRule es un párrafo con forma HorizontalRule.

{{% alert color="primary" %}}

Hay matices en la traducción de Markdown al modelo de objetos de documento (DOM) Aspose.Words, que se describen en el artículo [Traducir Markdown a modelo de objetos de documento (DOM)](/words/es/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Documento Markdown con énfasis

Esta sección le muestra cómo producir un documento markdown con los énfasis que se indican a continuación:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Documento Markdown con regla horizontal

Esta sección le muestra cómo producir un documento markdown con regla horizontal como se indica a continuación:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Leer un documento Markdown

El siguiente fragmento de código le muestra cómo leer un documento markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Especificar opciones de guardado de Markdown

Aspose.Words API proporciona una clase [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) para especificar opciones adicionales al guardar un documento en formato Markdown.

El siguiente ejemplo de código demostró cómo especificar varias opciones de guardado de Markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Cómo alinear contenido dentro de la tabla mientras se exporta a Markdown

Aspose.Words API proporciona una enumeración [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) que define las direcciones de alineación para alinear el contenido de las tablas mientras se exporta al documento Markdown. El siguiente ejemplo de código demuestra cómo alinear el contenido dentro de la tabla.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
