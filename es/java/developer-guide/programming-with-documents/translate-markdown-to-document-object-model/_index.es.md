---
title: Traducir Markdown a DOM
second_title: Aspose.Words por Java
articleTitle: Traducir Markdown a Modelo de Objetos de Documento (DOM)
linktitle: Traducir Markdown a Modelo de Objetos de Documento (DOM)
type: docs
description: "Tarnslate un documento Markdown al Modelo de objetos de documento y viceversa. Por lo tanto, puede trabajar con Markdown complejos existentes y crear programáticamente un documento Markdown desde cero usando Java."
weight: 20
url: /es/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Para leer, manipular y modificar mediante programación el contenido y el formato de un documento, debe traducirlo al Modelo de objetos de documento Aspose.Words (DOM).

A diferencia de los documentos de Word, Markdown no se ajusta a DOM descrito en el [Aspose.Words Modelo de objetos de documento (DOM)](/words/java/aspose-words-document-object-model/) artículo. Sin embargo, Aspose.Words proporciona su propio mecanismo para traducir Markdown documentos a DOM y viceversa, de modo que podamos trabajar con éxito con sus elementos, como formato de texto, tablas, encabezados y otros.

Este artículo explica cómo las diversas funciones markdown se pueden traducir al formato Aspose.Words DOM y de regreso al Markdown.

## Complejidad de la Traducción Markdown – DOM – Markdown

La principal dificultad de este mecanismo no es solo traducir Markdown a DOM, sino también realizar la transformación inversa: guardar el documento nuevamente en formato Markdown con una pérdida mínima. Hay elementos, como las cotizaciones multinivel, para los que la transformación inversa no es trivial.

Nuestro motor de traducción permite a los usuarios no solo trabajar con elementos complejos en un documento Markdown existente, sino también crear su propio documento en formato Markdown con la estructura original desde cero. Para crear varios elementos, debe usar estilos con nombres específicos de acuerdo con ciertas reglas que se describen más adelante en este artículo. Dichos estilos se pueden crear mediante programación.

## Principios Comunes de Traducción

Usamos formato [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) para bloques en línea. Cuando no hay correspondencia directa para una característica Markdown en Aspose.Words DOM, usamos un estilo de carácter con un nombre que comienza con algunas palabras especiales.

Para los bloques contenedores, usamos herencia de estilo para denotar características Markdown anidadas. En este caso, incluso cuando no hay entidades anidadas, también usamos estilos de párrafo con un nombre que comienza con algunas palabras especiales.

Las listas ordenadas y con viñetas también son bloques contenedores en Markdown. Su anidamiento se representa en DOM de la misma manera que para todos los demás bloques contenedores que usan herencia de estilo. Sin embargo, además, las listas en DOM tienen un formato de número correspondiente en estilo de lista o formato de párrafo.

## Bloques en Línea

Usamos el formato [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) al traducir **Bold**, *Italic* o ~~Strikethrough~~ funciones markdown en línea.

| Markdown característica | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Usamos un estilo de carácter con un nombre que comienza con la palabra `InlineCode`, seguido de un punto opcional `(.)` y una serie de comillas invertidas ```(`)``` para la función `InlineCode`. Si se omite un número de comillas invertidas, se utilizará una comilla invertida de forma predeterminada.

| Markdown característica | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | La clase [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[texto del enlace](url)`<br />`[texto del enlace](<url>"title")`<br />`[texto del enlace](url 'title')`<br />`[texto del enlace](url (title))` | La clase [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![texto alternativo](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![texto alternativo](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![texto alternativo](/words/java/translate-markdown-to-document-object-model/url (title))` | La clase [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Bloques de Contenedores

Un documento es una secuencia de bloques contenedores como encabezados, párrafos, listas, citas y otros. Los bloques contenedores se pueden dividir en 2 clases: Bloques de hojas y Contenedores complejos. Los bloques hoja solo pueden contener contenido en línea. Los recipientes complejos, a su vez, pueden contener otros bloques de recipientes, incluidos bloques de hojas.

### Bloques de Hojas

La siguiente tabla muestra ejemplos del uso de Markdown Bloques hoja en Aspose.Words:

| Markdown característica | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Este es un párrafo simple con la forma HorizontalRule correspondiente:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, donde (1<= N <= 9).<br />Esto se traduce en un estilo incorporado y debe ser exactamente del patrón especificado (no se permiten sufijos ni prefijos).<br />De lo contrario, será solo un párrafo normal con el estilo correspondiente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, basado en el estilo' Encabezado N'.<br />Si (N > = 2), entonces se usará 'Heading 2', de lo contrario 'Heading 1'.<br />Se permite cualquier sufijo, pero el importador Aspose.Words usa los números "1" y "2" respectivamente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Contenedores Complejos

La siguiente tabla muestra ejemplos del uso de Markdown Contenedores complejos en Aspose.Words:

| Markdown característica | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />El sufijo en el nombre del estilo es opcional, pero el importador Aspose.Words usa los números ordenados 1, 2, 3, .... en caso de citas anidadas.<br />El anidamiento se define a través de los estilos heredados. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Las listas con viñetas se representan mediante numeración de párrafos:<br />`ListFormat.ApplyBulletDefault()`<br />Puede haber 3 tipos de listas con viñetas. Solo difieren en un formato de numeración del primer nivel. Estos son: `‘-’`, `‘+’` o `‘*’` respectivamente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Las listas ordenadas se representan mediante numeración de párrafos:<br />`ListFormat.ApplyNumberDefault()`<br />Puede haber 2 marcadores de formato numérico: ‘.’ y ‘)’. El marcador predeterminado es ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Tablas

Aspose.Words también permite traducir tablas a DOM, como se muestra a continuación:

| Markdown característica | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) y [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) clases. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Véase También

* [Trabajar con Markdown Funciones](/words/java/working-with-markdown-features/)

