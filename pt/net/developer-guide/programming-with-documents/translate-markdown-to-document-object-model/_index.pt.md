---
title: Traduzir Markdown para DOM
second_title: Aspose.Words para .NET
articleTitle: Traduzir Markdown para Document Object Model (DOM)
linktitle: Traduzir Markdown para Document Object Model (DOM)
type: docs
description: "Traduza um documento Markdown para Document Object Model e vice-versa usando C#. Assim, você pode trabalhar com Markdown existente complexo e criar programaticamente um documento Markdown do zero."
weight: 20
url: /pt/net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Para ler, manipular e modificar programaticamente o conteúdo e a formatação de um documento, você precisa traduzi-lo para Aspose.Words Document Object Model (DOM).

Ao contrário dos documentos do Word, o Markdown não está em conformidade com o DOM descrito no artigo [Aspose.Words Document Object Model (DOM)](/words/pt/net/aspose-words-document-object-model/). No entanto, Aspose.Words fornece seu próprio mecanismo para traduzir documentos Markdown para DOM e vice-versa, para que possamos trabalhar com sucesso com seus elementos como formatação de texto, tabelas, cabeçalhos e outros.

Este artigo explica como os vários recursos markdown podem ser traduzidos para Aspose.Words DOM e de volta para o formato Markdown.

## Complexidade da tradução Markdown – DOM – Markdown

A principal dificuldade desse mecanismo não é apenas traduzir Markdown para DOM, mas também fazer a transformação reversa – salvar o documento de volta no formato Markdown com perda mínima. Existem elementos, como cotações multiníveis, para os quais a transformação reversa não é trivial.

Nosso mecanismo de tradução permite aos usuários não apenas trabalhar com elementos complexos em um documento Markdown existente, mas também criar seu próprio documento no formato Markdown com a estrutura original do zero. Para criar vários elementos, você precisa usar estilos com nomes específicos de acordo com certas regras descritas posteriormente neste artigo. Esses estilos podem ser criados programaticamente.

## Princípios Comuns de Tradução

Usamos formatação [Font](https://reference.aspose.com/words/net/aspose.words/font/) para blocos embutidos. Quando não há correspondência direta para um recurso Markdown no Aspose.Words DOM, usamos um estilo de caractere com um nome que começa com algumas palavras especiais.

Para blocos de contêiner, usamos herança de estilo para denotar recursos Markdown aninhados. Neste caso, mesmo quando não há recursos aninhados, também usamos estilos de parágrafo com um nome que começa com algumas palavras especiais.

Listas com marcadores e ordenadas também são blocos de contêineres no Markdown. Seu aninhamento é representado em DOM da mesma forma que para todos os outros blocos contêineres usando herança de estilo. No entanto, além disso, as listas em DOM têm formatação de número correspondente no estilo de lista ou na formatação de parágrafo.

## Blocos embutidos

Usamos a formatação [Font](https://reference.aspose.com/words/net/aspose.words/font/) ao traduzir recursos **Bold**, *Italic* ou ~~Strikethrough~~ markdown inline.

|  Recurso Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  |  |
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} |  |

Usamos um estilo de caractere com um nome que começa com a palavra `InlineCode`, seguido por um ponto opcional `(.)` e um número de crases ```(`)``` para o recurso `InlineCode`. Se vários crases forem perdidos, um crase será usado por padrão.

|  Recurso Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  A classe [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  A classe [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  A classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  |  |

## Blocos de contêiner

Um documento é uma sequência de blocos contêineres, como títulos, parágrafos, listas, citações e outros. Os blocos de contêineres podem ser divididos em 2 classes: blocos de folhas e contêineres complexos. Os blocos folha só podem conter conteúdo embutido. Contêineres complexos, por sua vez, podem conter outros blocos de contêineres, incluindo blocos Leaf.

### Blocos de folhas

A tabela abaixo mostra exemplos de uso de blocos Markdown Leaf em Aspose.Words:

|  Recurso Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Este é um parágrafo simples com uma forma HorizontalRule correspondente:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, onde (1&lt;= N &lt;= 9).<br /> Isso é traduzido em um estilo integrado e deve seguir exatamente o padrão especificado (sem sufixos ou prefixos são permitidos).<br /> Caso contrário, será apenas um parágrafo normal com um estilo correspondente |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (se o título for nível 1),<br /> `---` (se título nível 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, baseado no estilo `“Heading N”`.<br /> Se (N &gt;= 2), então será usado `“Heading 2”`, caso contrário, `“Heading 1”`.<br /> Qualquer sufixo é permitido, mas o importador Aspose.Words usa os números "1" e "2", respectivamente |
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
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> O `[.]` e o `[info string]` são opcionais |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Contêineres Complexos

A tabela abaixo mostra exemplos de uso de contêineres complexos Markdown em Aspose.Words:

|  Recurso Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> O sufixo no nome do estilo é opcional, mas o importador Aspose.Words usa os números ordenados 1, 2, 3,…. no caso de aspas aninhadas.<br /> O aninhamento é definido através dos estilos herdados |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  As listas com marcadores são representadas usando numeração de parágrafos:<br /> `ListFormat.ApplyBulletDefault()`<br /> Pode haver 3 tipos de listas com marcadores. Eles são diferenciados apenas em um formato de numeração de primeiro nível. São eles: `‘-’`, `‘+’` ou `‘*’` respectivamente |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  As listas ordenadas são representadas usando numeração de parágrafo:<br /> `ListFormat.ApplyNumberDefault()`<br /> Pode haver 2 marcadores de formato de número: '.' e ')'. O marcador padrão é '.' |
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

### Tabelas

Aspose.Words também permite traduzir tabelas para DOM, conforme mostrado abaixo:

|  Recurso Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `um | b`<br />`-|-`<br />`c|d` |  Classes [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
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

## Veja também

* [Trabalhando com recursos Markdown](/words/pt/net/working-with-markdown-features/)

