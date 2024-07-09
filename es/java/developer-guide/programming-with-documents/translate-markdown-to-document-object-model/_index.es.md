---
title: Traducir Markdown a DOM
second_title: Aspose.Words para Java
articleTitle: Traducir Markdown a Document Object Model (G)DOM)
linktitle: Traducir Markdown a Document Object Model (G)DOM)
type: docs
description: "Tarnslate a Markdown documento a Document Object Model y atrás. Así que puede trabajar con complejo existente Markdown y programáticamente crear un Markdown documento desde cero usando Java."
weight: 20
url: /es/java/translate-markdown-to-document-object-model/
---

Para leer, manipular y modificar programáticamente el contenido y formato de un documento, necesita traducirlo al documento Aspose.Words Document Object Model (G)DOM).

En contraste con los documentos de Word, Markdown no se ajusta a DOM descrito en el [Aspose.Words Document Object Model (DOM)](/words/es/java/aspose-words-document-object-model/) artículo. Sin embargo, Aspose.Words proporciona su propio mecanismo para traducir Markdown documentos a DOM y atrás, para que podamos trabajar con éxito con sus elementos como el formato de texto, tablas, encabezados y otros.

Este artículo explica cómo los diversos markdown características se pueden traducir Aspose.Words DOM y volver a Markdown formato.

## Complejidad de la traducción Markdown – DOM – Markdown

La principal dificultad de este mecanismo no es sólo traducir Markdown a DOM, pero también para hacer la transformación inversa – para guardar el documento de nuevo a Markdown formato con mínima pérdida. Hay elementos, como las citas multinivel, para los cuales la transformación inversa no es trivial.

Nuestro motor de traducción permite a los usuarios no sólo trabajar con elementos complejos en un Markdown documento, pero también para crear su propio documento en Markdown formato con la estructura original desde cero. Para crear varios elementos, es necesario utilizar estilos con nombres específicos según ciertas reglas descritas más adelante en este artículo. Tales estilos se pueden crear programáticamente.

## Traducción común Principios

Usamos [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formato para bloques de línea. Cuando no hay correspondencia directa para una Markdown característica en Aspose.Words DOM, usamos un estilo de carácter con un nombre que comienza de algunas palabras especiales.

Para bloques de contenedores, utilizamos herencia estilo para denotar anidado Markdown características. En este caso, incluso cuando no hay características anidadas, también utilizamos estilos de párrafo con un nombre que comienza de algunas palabras especiales.

Listas embotadas y ordenadas son bloques de contenedores en Markdown también. Su anidación está representada en DOM de la misma manera que para todos los demás bloques de contenedores usando la herencia estilo. Sin embargo, además, en las listas DOM han correspondido el formato número en el estilo de lista o el formato del párrafo.

## Bloqueos de línea

Usamos [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formato al traducir **Bold**, *Italic* ################################################################################################################################################################################################################################################################ markdown características.

|  Markdown función |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  ||
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  ||
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  ||

Usamos un estilo de carácter con un nombre que comienza desde la palabra <span notrans="<span notrans=" `InlineCode`"=""></span>," seguido de un punto opcional `(.)` y una serie de backticks ```(`)``` para el `InlineCode` función. Si un número de backticks se pierde, entonces un backtick se utilizará por defecto.

|  Markdown función |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  ||
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  El [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) clase |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  ||
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  El [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) clase |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  ||
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  El [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) clase |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  ||

## Bloques de contenedores

Un documento es una secuencia de bloques de contenedores tales como encabezados, párrafos, listas, citas y otros. Los bloques de contenedores se pueden dividir en 2 clases: Bloques de hoja y contenedores complejos. Los bloques de hoja sólo pueden contener contenido en línea. Los contenedores complejos, a su vez, pueden contener otros bloques de contenedores, incluidos los bloques de hoja.

### Bloques de hoja

El cuadro que figura a continuación muestra ejemplos de utilización Markdown Bloques de hoja en Aspose.Words:

|  Markdown función |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Este es un párrafo simple con una forma HorizontalRule correspondiente:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, donde (1 0 = 0 0 = 9).<br/>Esto se traduce en un estilo incorporado y debe ser exactamente del patrón especificado (no se permiten sufijos o prefijos).<br/>De lo contrario, será sólo un párrafo regular con un estilo correspondiente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (si nivel de dirección 1),<br/>`---` (si nivel de dirección 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, basado en `“Heading N”` estilo.<br/>Si (N >= 2), entonces `“Heading 2”` se utilizará, de lo contrario `“Heading 1”`.<br/>Cualquier sufijo está permitido, pero Aspose.Words importador utiliza números "1" y "2" respectivamente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>El `[.]` y `[info string]` son opcionales |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Contenedores complejos

El cuadro que figura a continuación muestra ejemplos de utilización Markdown Contenedores complejos en Aspose.Words:

|  Markdown función |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>El sufijo en nombre de estilo es opcional, pero Aspose.Words importador utiliza los números ordenados 1, 2, 3, .... en caso de cotizaciones anidadas.<br/>El anidaje se define a través de los estilos heredados |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Las listas torcidas están representadas utilizando el número de párrafo:<br/>`ListFormat.ApplyBulletDefault()`<br/>Puede haber 3 tipos de listas de balas. Son sólo diff en un formato numeral del primer nivel. Estos son: `‘-’`, `‘+’` o `‘*’` respectivamente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Las listas ordenadas están representadas mediante numeración del párrafo:<br/>`ListFormat.ApplyNumberDefault()`<br/>Puede haber 2 marcadores de formato número: ‘.’ y ‘)’. El marcador predeterminado es ‘.’ |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Cuadros

Aspose.Words también permite traducir tablas en DOM, como se muestra a continuación:

|  Markdown función |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>`a | b`<br />`- | -`<br />`c | d ` |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) y [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) clases |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Vea también

* [Trabajando con Markdown Características](/words/es/java/working-with-markdown-features/)

