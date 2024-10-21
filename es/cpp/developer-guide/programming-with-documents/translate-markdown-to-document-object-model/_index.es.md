---
title: Traducir Markdown al Modelo de Objetos de Documento (DOM)
second_title: Aspose.Words para C++
articleTitle: Traducir Markdown al Modelo de Objetos de Documento (DOM)
linktitle: Traducir Markdown al Modelo de Objetos de Documento (DOM)
type: docs
description: "Tarnslate un documento Markdown al Modelo de objetos de documento y viceversa usando C++. Por lo tanto, puede trabajar con Markdown complejos existentes y crear programáticamente un documento Markdown desde cero."
weight: 20
url: /es/cpp/translate-markdown-to-document-object-model/
---

Para leer, manipular y modificar mediante programación el contenido y el formato de un documento, debe traducirlo al Modelo de Objetos de Documento (DOM) Aspose.Words.

A diferencia de los documentos de Word, Markdown no se ajusta al DOM descrito en el [Aspose.Words Modelo de Objetos de documento (DOM)](/words/cpp/aspose-words-document-object-model/) artículo. Sin embargo, Aspose.Words proporciona su propio mecanismo para traducir documentos Markdown a DOM y viceversa, de modo que podamos trabajar con éxito con sus elementos, como formato de texto, tablas, encabezados y otros.

Este artículo explica cómo las diversas características de markdown se pueden traducir al DOM Aspose.Words y volver al formato Markdown.

## Complejidad de la traducción Markdown – DOM - Markdown

La principal dificultad de este mecanismo no es solo traducir Markdown a DOM, sino también realizar la transformación inversa: guardar el documento nuevamente en formato Markdown con una pérdida mínima. Hay elementos, como las cotizaciones multinivel, para los que la transformación inversa no es trivial.

Nuestro motor de traducción permite a los usuarios no solo trabajar con elementos complejos en un documento Markdown existente, sino también crear su propio documento en formato Markdown con la estructura original desde cero. Para crear varios elementos, debe usar estilos con nombres específicos de acuerdo con ciertas reglas que se describen más adelante en este artículo. Dichos estilos se pueden crear mediante programación.

## Principios Comunes de Traducción

Usamos formato [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) para bloques en línea. Cuando no hay correspondencia directa para una característica Markdown en Aspose.Words DOM, usamos un estilo de carácter con un nombre que comienza con algunas palabras especiales.

Para los bloques contenedores, usamos herencia de estilo para denotar características Markdown anidadas. En este caso, incluso cuando no hay entidades anidadas, también usamos estilos de párrafo con un nombre que comienza con algunas palabras especiales.

Las listas ordenadas y con viñetas también son bloques contenedores en Markdown. Su anidamiento se representa en DOM de la misma manera que para todos los demás bloques contenedores que usan herencia de estilo. Sin embargo, además, las listas en DOM tienen un formato de número correspondiente en estilo de lista o formato de párrafo.

## Bloques en Línea

Usamos el formato [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) al traducir **Bold**, *Italic* o ~~Strikethrough~~ funciones markdown en línea.

| Markdown característica | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |

Usamos un estilo de carácter con un nombre que comienza con la palabra `InlineCode`, seguido de un punto opcional `(.)` y una serie de comillas invertidas ```(`)``` para la función `InlineCode`. Si se omite un número de comillas invertidas, se utilizará una comilla invertida de forma predeterminada.

| Markdown característica | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | La clase [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | La clase [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | La clase [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |

## Bloques de Contenedores

Un documento es una secuencia de bloques contenedores como encabezados, párrafos, listas, citas y otros. Los bloques contenedores se pueden dividir en 2 clases: Bloques hoja y Contenedores complejos. Los bloques hoja solo pueden contener contenido en línea. Los recipientes complejos, a su vez, pueden contener otros bloques de recipientes, incluidos bloques de hojas.

### Bloques de Hojas

La siguiente tabla muestra ejemplos del uso de Markdown Bloques hoja en Aspose.Words:

| Markdown característica | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Este es un párrafo simple con la forma HorizontalRule correspondiente:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} ||
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, donde (1<= N <= 9).<br />Esto se traduce en un estilo incorporado y debe ser exactamente del patrón especificado (no se permiten sufijos ni prefijos).<br />De lo contrario, será solo un párrafo normal con el estilo correspondiente. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} ||
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, basado en el estilo `"Heading N"`.<br />Si (N > = 2), entonces se usará `"Heading 2"`, de lo contrario `"Heading 1"`.<br />Se permite cualquier sufijo, pero el importador Aspose.Words usa los números "1" y "2 " respectivamente.. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} ||
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} ||
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> `[.]` y `[info string]` son opcionales. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} ||

### Contenedores Complejos

La siguiente tabla muestra ejemplos del uso de Markdown Contenedores complejos en Aspose.Words:

| Markdown característica | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />El sufijo en el nombre del estilo es opcional, pero el importador Aspose.Words usa los números ordenados1, 2, 3, .... en caso de citas anidadas.<br />El anidamiento se define a través de los estilos heredados. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} ||
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Las listas con viñetas se representan mediante numeración de párrafos:<br />`get_ListFormat()->ApplyBulletDefault()`<br />Puede haber 3 tipos de listas con viñetas. Solo difieren en un formato de numeración del primer nivel. Estos son: `‘-’`, `‘+’` o `‘*’` respectivamente. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} ||
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Las listas ordenadas se representan mediante numeración de párrafos:<br />`get_ListFormat()->ApplyNumberDefault()`<br />Puede haber 2 marcadores de formato numérico: ‘.’ y ‘)’. El marcador predeterminado es ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} ||

### Tablas

Aspose.Words también permite traducir tablas a DOM, como se muestra a continuación:

| Markdown característica | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) clases. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} ||

## Véase También

* [Trabajar con Markdown Funciones](/words/cpp/working-with-markdown-features/)

