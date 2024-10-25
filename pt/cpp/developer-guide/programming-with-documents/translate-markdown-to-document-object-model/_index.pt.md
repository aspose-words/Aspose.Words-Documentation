---
title: Traduzir Markdown para Document Object Model (DOM)
second_title: Aspose.Words para C++
articleTitle: Traduzir Markdown para Document Object Model (DOM)
linktitle: Traduzir Markdown para Document Object Model (DOM)
type: docs
description: "Tarnslate a Markdown documento para documentar o modelo de objeto e voltar usando C++. Assim, você pode trabalhar com Markdown existente complexo e criar programaticamente um documento Markdown do zero."
weight: 20
url: /pt/cpp/translate-markdown-to-document-object-model/
---

Para ler, manipular e modificar programaticamente o conteúdo e a formatação de um documento, é necessário traduzi-lo para o modelo de objeto de documento Aspose.Words (DOM).

Em contraste com os documentos do Word, Markdown não está em conformidade com o DOM descrito no [Aspose.Words Modelo De Objecto Do Documento (DOM)](/words/cpp/aspose-words-document-object-model/) artigo. No entanto, Aspose.Words fornece seu próprio mecanismo para traduzir Markdown documentos para DOM e vice-versa, para que possamos trabalhar com sucesso com seus elementos, como formatação de texto, tabelas, cabeçalhos e outros.

Este artigo explica como as várias características markdown podem ser traduzidas para o formato Aspose.Words DOM e de volta para o formato Markdown.

## Complexidade da tradução Markdown – DOM – Markdown

A principal dificuldade deste mecanismo não é apenas traduzir Markdown para DOM, mas também fazer a transformação inversa – salvar o documento de volta ao formato Markdown com perda mínima. Existem elementos, como aspas multiníveis, para os quais a transformação inversa não é trivial.

Nosso mecanismo de Tradução permite que os usuários não apenas trabalhem com elementos complexos em um documento Markdown existente, mas também criem seu próprio documento no formato Markdown com a estrutura original do zero. Para criar vários elementos, você precisa usar estilos com nomes específicos de acordo com certas regras descritas posteriormente neste artigo. Esses estilos podem ser criados programaticamente.

## Princípios Comuns De Tradução

Usamos formatação [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) para blocos embutidos. Quando não há correspondência direta para um recurso Markdown em Aspose.Words DOM, usamos um estilo de caractere com um nome que começa com algumas palavras especiais.

Para blocos de contêiner, usamos herança de estilo para denotar recursos Markdown aninhados. Nesse caso, mesmo quando não há recursos aninhados, também usamos estilos de parágrafo com um nome que começa com algumas palavras especiais.

As listas com marcadores e ordenadas também são blocos de contentores em Markdown. Seu aninhamento é representado em DOM da mesma forma que para todos os outros blocos de contêiner usando herança de estilo. No entanto, além disso, as listas em DOM têm formatação numérica correspondente no estilo de lista ou formatação de parágrafo.

## Blocos Inline

Usamos a formatação [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) ao traduzir os recursos **Bold**, *Italic* ou ~~Strikethrough~~ inline markdown.

| Markdown recurso | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Usamos um estilo de caractere com um nome que começa a partir da palavra `InlineCode`, seguido por um ponto opcional `(.)` e um número de crases ```(`)``` para o recurso `InlineCode`. Se um número de crases for perdido, um crase será usado por padrão.

| Markdown recurso | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | A classe [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | A classe [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | A classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Blocos De Contentores

Um documento é uma sequência de blocos de contentores, tais como títulos, parágrafos, listas, citações e outros. Os blocos de contentores podem ser divididos em 2 classes: Blocos de folhas e contentores complexos. Os blocos folha só podem conter conteúdo embutido. Os contentores complexos, por sua vez, podem conter outros blocos de contentores, incluindo blocos de folhas.

### Blocos De Folhas

A tabela abaixo mostra exemplos de utilização de Markdown Blocos de folhas em Aspose.Words:

| Markdown recurso | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Este é um parágrafo simples com uma forma HorizontalRule correspondente:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, onde (1<= N <= 9).<br />Isso é traduzido em um estilo embutido e deve ser exatamente do padrão especificado (não são permitidos sufixos ou prefixos).<br />Caso contrário, será apenas um parágrafo regular com um estilo correspondente. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, com base no estilo `"Heading N"`.<br />Se (N > = 2), então `"Heading 2"` será usado, caso contrário `"Heading 1"`.<br />Qualquer sufixo é permitido, mas o importador Aspose.Words utiliza os números "1" e "2", respectivamente. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br />Os `[.]` e `[info string]` são opcionais. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Contentores Complexos

A tabela abaixo mostra exemplos de utilização de Markdown contentores complexos em Aspose.Words:

| Markdown recurso | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br />O sufixo no nome do estilo é opcional, mas Aspose.Words importador usa os números ordenados1, 2, 3, .... no caso de citações aninhadas.<br />O aninhamento é definido através dos estilos herdados. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | As listas com marcadores são representadas através da numeração de parágrafos:<br />`get_ListFormat()->ApplyBulletDefault()`<br />Pode haver 3 tipos de listas com marcadores. Eles são apenas diff em um formato de numeração do primeiro nível. Estes são: `‘-’`, `‘+’` ou `‘*’` respectivamente. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | As listas ordenadas são representadas através da numeração de parágrafos:<br />`get_ListFormat()->ApplyNumberDefault()`<br />Pode haver marcadores de formato numérico 2: ‘.’ e ‘)’. O marcador predefinido é ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Quadros

Aspose.Words também permite traduzir tabelas em DOM, Como mostrado abaixo:

| Markdown recurso | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) classes. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Ver Também

* [Trabalhando com Markdown Recursos](/words/cpp/working-with-markdown-features/)

