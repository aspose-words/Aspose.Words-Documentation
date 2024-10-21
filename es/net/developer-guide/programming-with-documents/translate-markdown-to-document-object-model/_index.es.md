---
title: Traducir Markdown a DOM
second_title: Aspose.Words para .NET
articleTitle: Traducir Markdown a modelo de objetos de documento (DOM)
linktitle: Traducir Markdown a modelo de objetos de documento (DOM)
type: docs
description: "Traduzca un documento Markdown al modelo de objetos de documento y viceversa usando C#. Por lo tanto, puede trabajar con Markdown complejos existentes y crear mediante programación un documento Markdown desde cero."
weight: 20
url: /es/net/translate-markdown-to-document-object-model/
---

Para leer, manipular y modificar mediante programación el contenido y el formato de un documento, debe traducirlo al modelo de objetos de documento (DOM) Aspose.Words.

A diferencia de los documentos de Word, Markdown no se ajusta al DOM descrito en el artículo [Modelo de objetos de documento Aspose.Words (DOM)](/words/es/net/aspose-words-document-object-model/). Sin embargo, Aspose.Words proporciona su propio mecanismo para traducir documentos Markdown a DOM y viceversa, de modo que podamos trabajar exitosamente con sus elementos como formato de texto, tablas, encabezados y otros.

Este artículo explica cómo las diversas funciones markdown se pueden traducir a Aspose.Words DOM y volver al formato Markdown.

## Complejidad de la traducción Markdown – DOM – Markdown

La principal dificultad de este mecanismo no es sólo traducir Markdown a DOM, sino también realizar la transformación inversa: guardar el documento nuevamente en formato Markdown con una pérdida mínima. Hay elementos, como las comillas multinivel, para los que la transformación inversa no es trivial.

Nuestro motor de traducción permite a los usuarios no sólo trabajar con elementos complejos en un documento Markdown existente, sino también crear su propio documento en formato Markdown con la estructura original desde cero. Para crear varios elementos, debe utilizar estilos con nombres específicos de acuerdo con ciertas reglas que se describen más adelante en este artículo. Estos estilos se pueden crear mediante programación.

## Principios comunes de traducción

Usamos formato [Font](https://reference.aspose.com/words/es/net/aspose.words/font/) para bloques en línea. Cuando no existe una correspondencia directa para una característica Markdown en Aspose.Words DOM, utilizamos un estilo de carácter con un nombre que comienza con algunas palabras especiales.

Para los bloques contenedores, utilizamos la herencia de estilo para indicar características Markdown anidadas. En este caso, incluso cuando no hay funciones anidadas, también utilizamos estilos de párrafo con un nombre que comienza con algunas palabras especiales.

Las listas con viñetas y ordenadas también son bloques contenedores en Markdown. Su anidamiento se representa en DOM de la misma manera que para todos los demás bloques contenedores mediante herencia de estilos. Sin embargo, además, las listas en DOM tienen el formato de número correspondiente, ya sea en estilo de lista o en formato de párrafo.

## Bloques en línea

Usamos el formato [Font](https://reference.aspose.com/words/es/net/aspose.words/font/) al traducir funciones **Bold**, *Italic* o ~~Tachado~~ markdown en línea.

|  Función Markdown |  Aspose.Words |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

Usamos un estilo de carácter con un nombre que comienza con la palabra `InlineCode`, seguido de un punto `(.)` opcional y varias comillas invertidas ```(`)``` para la función `InlineCode`. Si se omiten varias comillas graves, se utilizará una de forma predeterminada.

|  característica Markdown |  Aspose.Words |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  La clase [FieldHyperlink](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldhyperlink/). |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> PELEA<br /> `{4})` |  La clase [FieldHyperlink](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldhyperlink/). |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> PELEA<br /> `{4})` |  La clase [Shape](https://reference.aspose.com/words/es/net/aspose.words.drawing/shape/). |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}} |  |

## Bloques de contenedores

Un documento es una secuencia de bloques contenedores como encabezados, párrafos, listas, citas y otros. Los bloques de contenedores se pueden dividir en 2 clases: bloques de hojas y contenedores complejos. Los bloques de hojas solo pueden contener contenido en línea. Los contenedores complejos, a su vez, pueden contener otros bloques de contenedores, incluidos los bloques Leaf.

### Bloques de hojas

La siguiente tabla muestra ejemplos del uso de bloques Markdown Leaf en Aspose.Words:

|  Función Markdown |  Aspose.Words |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Este es un párrafo simple con una forma de Regla Horizontal correspondiente:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}} |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, donde (1&lt;= N &lt;= 9).<br /> Esto se traduce en un estilo incorporado y debe seguir exactamente el patrón especificado (no se permiten sufijos ni prefijos).<br /> De lo contrario, será sólo un párrafo normal con el estilo correspondiente. |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}} |                                                                |
|  **Setext Heading**<br /> `===` (si el nivel de título es 1),<br /> `---` (si el nivel de encabezado es 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, basado en el estilo `“Heading N”`.<br /> Si (N &gt;= 2), se utilizará `“Heading 2”`; en caso contrario, `“Heading 1”`.<br /> Se permite cualquier sufijo, pero el importador Aspose.Words utiliza los números "1" y "2" respectivamente. |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|  **Indented Code** |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> El `[.]` y el `[info string]` son opcionales. |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}} |                                                                |

### Contenedores complejos

La siguiente tabla muestra ejemplos del uso de contenedores complejos Markdown en Aspose.Words:

|  característica Markdown |  Aspose.Words |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> El sufijo en el nombre del estilo es opcional, pero el importador Aspose.Words utiliza los números ordenados 1, 2, 3,…. en caso de comillas anidadas.<br /> El anidamiento se define mediante los estilos heredados. |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> PELEA<br /> `   - Item 2b` |  Las listas con viñetas se representan mediante numeración de párrafos:<br /> `ListFormat.ApplyBulletDefault()`<br /> Puede haber 3 tipos de listas con viñetas. Sólo son diferencias en un formato de numeración del primer nivel. Estos son: `‘-’`, `‘+’` o `‘*’` respectivamente. |
|  {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> PELEA<br /> `2) Item 2b` |  Las listas ordenadas se representan mediante numeración de párrafos:<br /> `ListFormat.ApplyNumberDefault()`<br /> Puede haber 2 marcadores de formato numérico: '.' y ')'. El marcador predeterminado es '.'. |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### Mesas

Aspose.Words también permite traducir tablas a DOM, como se muestra a continuación:

|  característica Markdown |  Aspose.Words |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `un | b`<br />`-|-`<br />`c|d` |  Clases [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/es/net/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/es/net/aspose.words.tables/cell/). |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## Ver también

* [Trabajar con funciones Markdown](/words/es/net/working-with-markdown-features/)

