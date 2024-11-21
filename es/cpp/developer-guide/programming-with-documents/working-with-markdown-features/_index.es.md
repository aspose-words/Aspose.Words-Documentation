---
title: Trabajar con Markdown características en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Markdown Funciones
linktitle: Trabajar con Markdown Funciones
description: "Cómo implementar características Markdown usando C++. Todas las características se representan como estilos correspondientes o formato directo."
type: docs
weight: 420
url: /es/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

En este tema se analiza cómo implementar las funciones Markdown utilizando Aspose.Words. Markdown es una forma sencilla de formatear texto sin formato que se puede convertir fácilmente a HTML. Aspose.Words admite las siguientes Markdown funciones:

- Rúbricas
- Citas en bloque
- Reglas horizontales
- Énfasis en negrita
- Énfasis en cursiva

La implementación de la característica Markdown sigue principalmente la especificación `CommonMark` en la API Aspose.Words y todas las características se representan como estilos correspondientes o formato directo. Lo que significa que

- Negrita y cursiva se representan como `Font.Bold` y `Font.Italic`.
- Los encabezados son párrafos con estilos de encabezado 1 - Encabezado 6.
- Las citas son párrafos con "Cita" en el nombre del estilo.
- HorizontalRule es un párrafo con forma HorizontalRule.

{{% alert color="primary" %}}

Hay matices de traducir Markdown al Aspose.Words Modelo de Objetos de Documento (DOM), descritos en el artículo [Traducir Markdown al Modelo de Objetos de Documento (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Documento con énfasis

Esta sección le muestra cómo producir un documento markdown con énfasis como se indica a continuación:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown Documento con Encabezados

Esta sección le muestra cómo producir un documento markdown con encabezados como se indica a continuación:

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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown Documento con Comillas en Bloque

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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown Documento con Regla Horizontal

Esta sección le muestra cómo producir un documento markdown con Regla horizontal como se indica a continuación:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

El siguiente fragmento de código se puede utilizar para producir el documento markdown indicado anteriormente.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Lectura de un documento Markdown

El siguiente fragmento de código le muestra cómo leer un documento markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Especifique Markdown Opciones de guardado

La API Aspose.Words proporciona la clase [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) para especificar opciones adicionales al guardar un documento en el formato Markdown.

El siguiente ejemplo de código demuestra cómo especificar varias opciones de guardado Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Cómo Alinear el Contenido Dentro de la Tabla mientras se Exporta a Markdown

La API Aspose.Words proporciona una enumeración TableContentAlignment que define las direcciones de alineación para alinear el contenido de las tablas mientras se exporta al documento Markdown. El siguiente ejemplo de código demuestra cómo alinear el contenido dentro de la tabla.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
