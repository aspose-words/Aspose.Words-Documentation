---
title: Přeložit Markdown až DOM
second_title: Aspose.Words místo Python via .NET
articleTitle: Přeložit Markdown až Document Object Model (DOM)
linktitle: Přeložit Markdown až Document Object Model (DOM)
type: docs
description: "Tarnslát a Markdown doklad k Document Object Model a zpětné použití Python. Takže můžete pracovat se složitými existujícími Markdown a programově vytvořit Markdown Dokument od začátku."
weight: 20
url: /cs/python-net/translate-markdown-to-document-object-model/
---

Chcete-li programově číst, manipulovat a upravovat obsah a formátování dokumentu, musíte jej přeložit do Aspose.Words Document Object Model (DOM).

Na rozdíl od dokumentů Word, Markdown neodpovídá DOM popsané v [Aspose.Words Document Object Model (DOM)](/words/cs/python-net/aspose-words-document-object-model/) článek. Nicméně, Aspose.Words poskytuje svůj vlastní mechanismus pro překlad Markdown doklady k DOM a zpět, abychom mohli úspěšně pracovat s jejich prvky, jako je formátování textu, tabulky, hlavičky, a další.

Tento článek vysvětluje, jak různé markdown funkce mohou být přeloženy do Aspose.Words DOM a zpět k Markdown formát.

## Složitost překladu Markdown - Co? DOM - Co? Markdown

Hlavním problémem tohoto mechanismu je nejen překládat Markdown až DOM, ale také k provedení reverzní transformace, aby byl dokument uložen zpět na Markdown formát s minimální ztrátou. Existují prvky, jako jsou multilevel citace, pro které reverzní transformace není triviální.

Náš překladatelský motor umožňuje uživatelům nejen pracovat se složitými prvky ve stávající Markdown dokument, ale také vytvořit svůj vlastní dokument v Markdown formát s původní strukturou od nuly. Chcete-li vytvořit různé prvky, musíte použít styly s konkrétními názvy podle některých pravidel popsaných později v tomto článku. Takové styly lze vytvořit programově.

## Společný překlad Zásady

Používáme [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formátování pro inline bloky. Pokud neexistuje přímá korespondence pro Markdown funkce v Aspose.Words DOM, používáme charakterový styl se jménem, který začíná z některých speciálních slov.

Pro kontejnerové bloky používáme styl dědictví k označení hnízda Markdown funkce. V tomto případě, i když nejsou žádné vnořené rysy, používáme také odstíny s názvem, který začíná z některých zvláštních slov.

Kulky a objednané seznamy jsou kontejnerové bloky v Markdown Taky. Jejich hnízdění je zastoupeno v DOM stejně jako u všech ostatních kontejnerových bloků za použití stylu dědictví. Avšak kromě toho seznam DOM odpovídají formátování čísel buď ve stylu seznamu, nebo ve formátu odstavce.

## Inline bloky

Používáme [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formátování při překladu **Bold**, *Italic* nebo ~~Strikethrough~~ inline markdown funkce.

|  Markdown funkce |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br/>`*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Používáme charakterový styl se jménem, který začíná slovem <span notrans="<span notrans=" `InlineCode`"=""></span>,? následuje volitelná tečka `(.)` a řada odplat ```(`)``` pro `InlineCode` bonus. Je-li chybět několik backticks, pak jeden backtick bude použit ve výchozím nastavení.

|  Markdown funkce |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.style_name = "InlineCode[.][N]"`  |
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

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  • [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) třída |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  • [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  • [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) třída |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Bloky kontejnerů

Dokument je posloupnost kontejnerových bloků, jako jsou nadpisy, odstavce, seznamy, citace a další. Kontejnerové bloky lze rozdělit do dvou tříd: Listové bloky a komplexní kontejnery. Listové bloky mohou obsahovat pouze inline obsah. Komplexní kontejnery zase mohou obsahovat jiné kontejnerové bloky, včetně Leaf bloků.

### Listové bloky

Níže uvedená tabulka uvádí příklady použití Markdown Listové bloky v Aspose.Words:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Jedná se o jednoduchý odstavec s odpovídajícím tvarem horizontálního pravidla:<br/>[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, kde (1 <= N ≤ 9).<br/>To je přeloženo do vestavěného stylu a mělo by být přesně zadaného vzoru (nejsou povoleny žádné přípony nebo předpony).<br/>Jinak to bude jen pravidelný odstavec s odpovídajícím stylem |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (pokud úroveň čísla 1),<br/>`---` (jestliže číslo 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, na základě `"Heading N"` Styl.<br/>Pokud: `"Heading 2"` bude použito jinak `"Heading 1"`.<br/>Každá přípona je povolena, ale Aspose.Words dovozce používá čísla "1" a "2." |
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
|  **Fenced Code**<br/>{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br/>• `[.]` a `[info string]` jsou nepovinné |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Komplexní kontejnery

Níže uvedená tabulka uvádí příklady použití Markdown Komplexní kontejnery v Aspose.Words:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br/>Přípona ve stylu je volitelná, ale Aspose.Words dovozce používá objednaná čísla 1, 2, 3, .... v případě hnízdě kotací.<br/>Hnízdo je definováno prostřednictvím dědičných stylů |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Výbušné seznamy jsou zastoupeny číslováním odstavce:<br/>[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br/>Můžou být tři typy zastřelených seznamů. Jsou jen rozdíl v číslování formátu úplně první úrovně. Jedná se o: `'-'`, `'+'` nebo `'*'` resp |
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
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Objednané seznamy jsou zastoupeny podle číslování odstavce:<br/>[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br/>Mohou být 2 znaky formátu čísel: `'.'` a `')'`. Výchozí marker je `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Tabulky

Aspose.Words také umožňuje přeložit tabulky do DOM, jak je uvedeno níže:

|  Markdown funkce |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table` <br/>?a\ | b`<br />`-\ | -`<br />`c\ | d - Co? |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) a [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) třídy |
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

## Viz také

* [Práce s Markdown Vlastnosti](/words/cs/python-net/working-with-markdown-features/)

