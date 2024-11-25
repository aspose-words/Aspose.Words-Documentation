---
title: Traduzir Markdown para DOM
second_title: Aspose.Words para Java
articleTitle: Traduzir Markdown para Document Object Model (DOM)
linktitle: Traduzir Markdown para Document Object Model (DOM)
type: docs
description: "Tarnslate um Markdown documento para documentar modelo de objeto e de volta. Assim, você pode trabalhar com Markdown existente complexo e criar programaticamente um documento Markdown do zero usando Java."
weight: 20
url: /pt/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Para ler, manipular e modificar programaticamente o conteúdo e a formatação de um documento, é necessário traduzi-lo para o modelo de objeto de documento Aspose.Words (DOM).

Em contraste com os documentos do Word, Markdown não está em conformidade com o DOM descrito no [Aspose.Words Modelo De Objecto Do Documento (DOM)](/words/java/aspose-words-document-object-model/) artigo. No entanto, Aspose.Words fornece seu próprio mecanismo para traduzir Markdown documentos para DOM e vice-versa, para que possamos trabalhar com sucesso com seus elementos, como formatação de texto, tabelas, cabeçalhos e outros.

Este artigo explica como as várias características markdown podem ser traduzidas para o formato Aspose.Words DOM e de volta para o formato Markdown.

## Complexidade da tradução Markdown – DOM – Markdown

A principal dificuldade deste mecanismo não é apenas traduzir Markdown para DOM, mas também fazer a transformação inversa – salvar o documento de volta ao formato Markdown com perda mínima. Existem elementos, como aspas multiníveis, para os quais a transformação inversa não é trivial.

Nosso mecanismo de Tradução permite que os usuários não apenas trabalhem com elementos complexos em um documento Markdown existente, mas também criem seu próprio documento no formato Markdown com a estrutura original do zero. Para criar vários elementos, você precisa usar estilos com nomes específicos de acordo com certas regras descritas posteriormente neste artigo. Esses estilos podem ser criados programaticamente.

## Princípios Comuns De Tradução

Usamos formatação [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) para blocos embutidos. Quando não há correspondência direta para um recurso Markdown em Aspose.Words DOM, usamos um estilo de caractere com um nome que começa com algumas palavras especiais.

Para blocos de contêiner, usamos herança de estilo para denotar recursos Markdown aninhados. Nesse caso, mesmo quando não há recursos aninhados, também usamos estilos de parágrafo com um nome que começa com algumas palavras especiais.

As listas com marcadores e ordenadas também são blocos de contentores em Markdown. Seu aninhamento é representado em DOM da mesma forma que para todos os outros blocos de contêiner usando herança de estilo. No entanto, além disso, as listas em DOM têm formatação numérica correspondente no estilo de lista ou formatação de parágrafo.

## Blocos Em Linha

Usamos a formatação [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) ao traduzir os recursos **Bold**, *Italic* ou ~~Strikethrough~~ inline markdown.

| Markdown recurso | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Usamos um estilo de caractere com um nome que começa a partir da palavra `InlineCode`, seguido por um ponto opcional `(.)` e um número de crases ```(`)``` para o recurso `InlineCode`. Se um número de crases for perdido, um crase será usado por padrão.

| Markdown recurso | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | A classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[texto da ligação](url)`<br />`[texto da ligação](<url>"title")`<br />`[texto da ligação](url 'title')`<br />`[texto da ligação](url (title))` | A classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![texto alternativo](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![texto alternativo](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![texto alternativo](/words/java/translate-markdown-to-document-object-model/url (title))` | A classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Blocos De Contentores

Um documento é uma sequência de blocos de contentores, tais como títulos, parágrafos, listas, citações e outros. Os blocos de contentores podem ser divididos em 2 classes: Blocos de folhas e contentores complexos. Os blocos folha só podem conter conteúdo embutido. Os contentores complexos, por sua vez, podem conter outros blocos de contentores, incluindo blocos de folhas.

### Blocos De Folhas

A tabela abaixo mostra exemplos de utilização de Markdown Blocos de folhas em Aspose.Words:

| Markdown recurso | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Este é um parágrafo simples com uma forma HorizontalRule correspondente:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, onde (1<= N <= 9).<br />Isso é traduzido em um estilo embutido e deve ser exatamente do padrão especificado (não são permitidos sufixos ou prefixos).<br />Caso contrário, será apenas um parágrafo regular com um estilo correspondente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, com base no estilo' título N'.<br />Se (N > = 2), então 'Heading 2' será usado, caso contrário 'Heading 1'.<br />Qualquer sufixo é permitido, mas o importador Aspose.Words utiliza os números "1" e "2" respectivamente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Contentores Complexos

A tabela abaixo mostra exemplos de utilização de Markdown contentores complexos em Aspose.Words:

| Markdown recurso | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br />o sufixo no nome do estilo é opcional, mas Aspose.Words importador usa os números ordenados 1, 2, 3, .... no caso de citações aninhadas.<br />O aninhamento é definido através dos estilos herdados. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | As listas com marcadores são representadas através da numeração de parágrafos:<br />`ListFormat.ApplyBulletDefault()`<br />podem existir 3 tipos de listas com marcadores. Eles são apenas diff em um formato de numeração do primeiro nível. Estes são: `‘-’`, `‘+’` ou `‘*’` respectivamente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | As listas ordenadas são representadas através da numeração de parágrafos:<br />`ListFormat.ApplyNumberDefault()`<br />pode haver 2 marcadores de formato numérico: ‘.’ e ‘)’. O marcador predefinido é ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Quadros

Aspose.Words também permite traduzir tabelas em DOM, Como mostrado abaixo:

| Markdown recurso | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) classes. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Ver Também

* [Trabalhando com Markdown Recursos](/words/java/working-with-markdown-features/)

