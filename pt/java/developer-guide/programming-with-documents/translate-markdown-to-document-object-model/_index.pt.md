---
title: Traduzir Markdown para DOM
second_title: Aspose.Words para Java
articleTitle: Traduzir Markdown para Document Object Model (DOM)
linktitle: Traduzir Markdown para Document Object Model (DOM)
type: docs
description: "Tarnslate a um Markdown documento para Document Object Model e para trás. Então você pode trabalhar com o complexo existente Markdown e criar programaticamente um Markdown documento do zero usando Java."
weight: 20
url: /pt/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Para ler, manipular e modificar programaticamente o conteúdo e formatação de um documento, você precisa traduzi-lo para o Aspose.Words Document Object Model (DOM).

Em contraste com documentos do Word, Markdown não está em conformidade com o DOM descrito no [Aspose.Words Document Object Model (DOM)](/words/pt/java/aspose-words-document-object-model/) artigo. No entanto, Aspose.Words fornece seu próprio mecanismo para a tradução Markdown documentos para DOM e de volta, para que possamos trabalhar com sucesso com seus elementos, como formatação de texto, tabelas, cabeçalhos e outros.

Este artigo explica como os vários markdown recursos podem ser traduzidos Aspose.Words DOM e de volta para Markdown formato.

## Complexidade de Tradução Markdown – DOM – Markdown

A principal dificuldade deste mecanismo não é apenas traduzir Markdown para DOM, mas também para fazer a transformação reversa – para salvar o documento de volta para Markdown formato com perda mínima. Há elementos, como citações multiníveis, para os quais a transformação inversa não é trivial.

Nosso motor de tradução permite aos usuários não só trabalhar com elementos complexos em um existente Markdown documento, mas também para criar seu próprio documento em Markdown formato com a estrutura original do zero. Para criar vários elementos, você precisa usar estilos com nomes específicos de acordo com certas regras descritas mais tarde neste artigo. Tais estilos podem ser criados programaticamente.

## Tradução comum Princípios

Nós usamos [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatação para blocos em linha. Quando não há correspondência direta para um Markdown recurso em Aspose.Words DOM, usamos um estilo de personagem com um nome que começa a partir de algumas palavras especiais.

Para blocos de contêineres, usamos herança de estilo para denotar aninhado Markdown características. Neste caso, mesmo quando não há recursos aninhados, também usamos estilos de parágrafo com um nome que começa a partir de algumas palavras especiais.

Listas embutidas e ordenadas são blocos de contêineres em Markdown também. Seu aninhamento é representado em DOM da mesma maneira que para todos os outros blocos de recipiente usando herança de estilo. No entanto, adicionalmente, listas em DOM ter formatação de número correspondente em estilo de lista ou formatação de parágrafo.

## Blocos de Inline

Nós usamos [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formatação ao traduzir **Bold**, *Italic* Ou "Atravessou" markdown características.

|  Markdown recurso |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Usamos um estilo de personagem com um nome que começa a partir da palavra `InlineCode`, seguido por um ponto opcional `(.)` e um número de backticks ```(`)``` para o `InlineCode` recurso. Se um número de backticks for perdido, então um backtick será usado por padrão.

|  Markdown recurso |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  O [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) classe |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  O [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) classe |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  O [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Blocos de recipiente

Um documento é uma sequência de blocos de contêineres, como títulos, parágrafos, listas, citações e outros. Os blocos de contêineres podem ser divididos em 2 classes: Blocos de folhas e contêineres complexos. Os blocos de folhas só podem conter conteúdo inline. Contêineres complexos, por sua vez, podem conter outros blocos de contêineres, incluindo blocos de folhas.

### Blocos de folha

A tabela abaixo mostra exemplos de uso Markdown Blocos de folhas em Aspose.Words:

|  Markdown recurso |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Este é um parágrafo simples com uma forma HorizontalRule correspondente:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, onde (1<= N <= 9).<br/>Isso é traduzido em um estilo embutido e deve ser exatamente do padrão especificado (nenhum sufixo ou prefixo é permitido).<br/>Caso contrário, será apenas um parágrafo regular com um estilo correspondente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (se nível de cabeçalho 1),<br/>`---` (se nível de cabeçalho 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, baseado em `“Heading N”` estilo.<br/>Se (N >= 2), então `“Heading 2”` será usado, caso contrário `“Heading 1”`.<br/>Qualquer sufixo é permitido, mas Aspose.Words importador usa números "1" e "2" respectivamente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>O `[.]` e `[info string]` são opcionais |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Recipientes complexos

A tabela abaixo mostra exemplos de uso Markdown Contêineres complexos em Aspose.Words:

|  Markdown recurso |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>O sufixo em nome de estilo é opcional, mas Aspose.Words importador usa os números ordenados 1, 2, 3, .... em caso de citações aninhadas.<br/>O agrupamento é definido através dos estilos herdados |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  As listas Bulleted são representadas utilizando o número de parágrafos:<br/>`ListFormat.ApplyBulletDefault()`<br/>Pode haver 3 tipos de listas. Eles são apenas diff em um formato de numeração do primeiro nível. Estes são: `‘-’`, `‘+’` ou `‘*’` respectivamente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Listas ordenadas são representadas usando numeração de parágrafo:<br/>`ListFormat.ApplyNumberDefault()`<br/>Pode haver 2 marcadores de formato de número: ‘.’ e ‘)’. O marcador padrão é ‘.’ |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Quadros

Aspose.Words também permite traduzir tabelas para DOM, como mostrado abaixo:

|  Markdown recurso |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/>" | b)`<br />`- Não | - Não.`<br />`c|D " |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) aulas |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Ver também

* [Trabalhar Markdown Características](/words/pt/java/working-with-markdown-features/)

