---
title: Traduzir Markdown para DOM
second_title: Aspose.Words para Python via .NET
articleTitle: Traduzir Markdown para Document Object Model (DOM)
linktitle: Traduzir Markdown para Document Object Model (DOM)
type: docs
description: "Translate um documento Markdown para Document Object Model e vice-versa usando Python. Assim, você pode trabalhar com Markdown existente complexo e criar programaticamente um documento Markdown do zero."
weight: 20
url: /pt/python-net/translate-markdown-to-document-object-model/
---

Para ler, manipular e modificar programaticamente o conteúdo e a formatação de um documento, você precisa traduzi-lo para Aspose.Words Document Object Model (DOM).

Ao contrário dos documentos do Word, o Markdown não está em conformidade com o DOM descrito no artigo [Aspose.Words Document Object Model (DOM)](/words/pt/python-net/aspose-words-document-object-model/). No entanto, Aspose.Words fornece seu próprio mecanismo para traduzir documentos Markdown para DOM e vice-versa, para que possamos trabalhar com sucesso com seus elementos como formatação de texto, tabelas, cabeçalhos e outros.

Este artigo explica como os vários recursos markdown podem ser traduzidos para Aspose.Words DOM e de volta para o formato Markdown.

## Complexidade da tradução Markdown – DOM – Markdown

A principal dificuldade desse mecanismo não é apenas traduzir Markdown para DOM, mas também fazer a transformação reversa – salvar o documento de volta no formato Markdown com perda mínima. Existem elementos, como cotações multiníveis, para os quais a transformação reversa não é trivial.

Nosso mecanismo de tradução permite aos usuários não apenas trabalhar com elementos complexos em um documento Markdown existente, mas também criar seu próprio documento no formato Markdown com a estrutura original do zero. Para criar vários elementos, você precisa usar estilos com nomes específicos de acordo com certas regras descritas posteriormente neste artigo. Esses estilos podem ser criados programaticamente.

## Princípios Comuns de Tradução

Usamos formatação [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) para blocos embutidos. Quando não há correspondência direta para um recurso Markdown no Aspose.Words DOM, usamos um estilo de caractere com um nome que começa com algumas palavras especiais.

Para blocos de contêiner, usamos herança de estilo para denotar recursos Markdown aninhados. Neste caso, mesmo quando não há recursos aninhados, também usamos estilos de parágrafo com um nome que começa com algumas palavras especiais.

Listas com marcadores e ordenadas também são blocos de contêineres no Markdown. Seu aninhamento é representado em DOM da mesma forma que para todos os outros blocos contêineres usando herança de estilo. No entanto, além disso, as listas em DOM têm formatação de número correspondente no estilo de lista ou na formatação de parágrafo.

## Blocos embutidos

Usamos a formatação [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) ao traduzir recursos **Bold**, *Italic* ou ~~Strikethrough~~ markdown inline.

|  Recurso Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} ||
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} ||

Usamos um estilo de caractere com um nome que começa com a palavra `InlineCode`, seguido por um ponto opcional `(.)` e um número de crases ```(`)``` para o recurso `InlineCode`. Se vários crases forem perdidos, um crase será usado por padrão.

|  Recurso Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Number of backticks is missed, one backtick will be used by default.
inlineCode1BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode")
builder.font.style = inlineCode1BackTicks
builder.writeln("Text with InlineCode style with 1 backtick")

# There will be 3 backticks.
inlineCode3BackTicks = builder.document.styles.add(aw.StyleType.CHARACTER, "InlineCode.3")
builder.font.style = inlineCode3BackTicks
builder.writeln("Text with InlineCode style with 3 backtick")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  A classe [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  O [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  A classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} ||

## Blocos de contêiner

Um documento é uma sequência de blocos contêineres, como títulos, parágrafos, listas, citações e outros. Os blocos de contêineres podem ser divididos em 2 classes: blocos de folhas e contêineres complexos. Os blocos folha só podem conter conteúdo embutido. Contêineres complexos, por sua vez, podem conter outros blocos de contêineres, incluindo blocos Leaf.

### Blocos de folhas

A tabela abaixo mostra exemplos de uso de blocos Markdown Leaf em Aspose.Words:

|  Recurso Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Este é um parágrafo simples com uma forma HorizontalRule correspondente:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, onde (1&lt;= N &lt;= 9).<br /> Isso é traduzido em um estilo integrado e deve seguir exatamente o padrão especificado (sem sufixos ou prefixos são permitidos).<br /> Caso contrário, será apenas um parágrafo normal com um estilo correspondente |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (se o título for nível 1),<br /> `---` (se título nível 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, baseado no estilo `"Heading N"`.<br /> Se (N &gt;= 2), então será usado `"Heading 2"`, caso contrário, `"Heading 1"`.<br /> Qualquer sufixo é permitido, mas o importador Aspose.Words usa os números "1" e "2", respectivamente |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.paragraph_format.style_name = "Heading 1"
builder.writeln("This is an H1 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading1 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading1")
builder.paragraph_format.style = setexHeading1
doc.styles.get_by_name("SetexHeading1").base_style_name = "Heading 1"
builder.writeln("Setex Heading level 1")

builder.paragraph_format.style = doc.styles.get_by_name("Heading 3")
builder.writeln("This is an H3 tag")

# Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.font.bold = False
builder.font.italic = False

setexHeading2 = doc.styles.add(aw.StyleType.PARAGRAPH, "SetexHeading2")
builder.paragraph_format.style = setexHeading2
doc.styles.get_by_name("SetexHeading2").base_style_name = "Heading 3"

# Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.writeln("Setex Heading level 2")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.setext_heading_example.md"){{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.style_name = "IndentedCode[some suffix]"`     |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> O `[.]` e o `[info string]` são opcionais |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Contêineres Complexos

A tabela abaixo mostra exemplos de uso de contêineres complexos Markdown em Aspose.Words:

|  Recurso Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> O sufixo no nome do estilo é opcional, mas o importador Aspose.Words usa os números ordenados 1, 2, 3,…. no caso de aspas aninhadas.<br /> O aninhamento é definido através dos estilos herdados |
|  {{< highlight python >}}# Use a document builder to add content to the document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# By default a document stores blockquote style for the first level.
builder.paragraph_format.style_name = "Quote"
builder.writeln("Blockquote")

# Create styles for nested levels through style inheritance.
quoteLevel2 = doc.styles.add(aw.StyleType.PARAGRAPH, "Quote1")
builder.paragraph_format.style = quoteLevel2
doc.styles.get_by_name("Quote1").base_style_name = "Quote"
builder.writeln("1. Nested blockquote")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.quote_example.md"){{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  As listas com marcadores são representadas usando numeração de parágrafo:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Pode haver 3 tipos de listas com marcadores. Eles são diferenciados apenas em um formato de numeração de primeiro nível. São eles: `'-'`, `'+'` ou `'*'` respectivamente |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  As listas ordenadas são representadas usando numeração de parágrafo:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Pode haver 2 marcadores de formato numérico: `'.'` e `')'`. O marcador padrão é `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Tabelas

Aspose.Words também permite traduzir tabelas para DOM, conforme mostrado abaixo:

|  Recurso Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `uma\ | b`<br />`-\ | -`<br />`c\ | d` |  Classes [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Add the first row.
builder.insert_cell()
builder.writeln("a")
builder.insert_cell()
builder.writeln("b")
builder.end_row()

# Add the second row.
builder.insert_cell()
builder.writeln("c")
builder.insert_cell()
builder.writeln("d")
builder.end_table()

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |                                                                |

## Veja também

* [Trabalhando com recursos Markdown](/words/pt/python-net/working-with-markdown-features/)

