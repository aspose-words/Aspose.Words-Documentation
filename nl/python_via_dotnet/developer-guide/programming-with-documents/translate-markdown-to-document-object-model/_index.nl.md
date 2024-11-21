---
title: Vertalen Markdown tot DOM
second_title: Aspose.Words voor Python via .NET
articleTitle: Vertalen Markdown tot Document Object Model (DOM)
linktitle: Vertalen Markdown tot Document Object Model (DOM)
type: docs
description: "Tarnslaat a Markdown document aan Document Object Model en terug gebruiken Python. Dus je kunt werken met complexe bestaande Markdown en programmatisch een Markdown document vanaf nul."
weight: 20
url: /nl/python-net/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Om de inhoud en opmaak van een document programmatisch te kunnen lezen, manipuleren en wijzigen, moet u het vertalen naar de Aspose.Words Document Object Model (DOM).

In tegenstelling tot Word-documenten, Markdown niet in overeenstemming is met de DOM beschreven in de [Aspose.Words Document Object Model (DOM)](/words/nl/python-net/aspose-words-document-object-model/) artikel. Echter, Aspose.Words biedt een eigen vertaalmechanisme Markdown documenten aan DOM en terug, zodat we succesvol kunnen werken met hun elementen zoals tekstopmaak, tabellen, headers en anderen.

Dit artikel legt uit hoe de verschillende markdown functies kunnen worden vertaald in Aspose.Words DOM en terug naar Markdown formaat.

## Complexiteit van de vertaling Markdown Wat? DOM Wat? Markdown

De belangrijkste moeilijkheid van dit mechanisme is niet alleen het vertalen van Markdown tot DOM, maar ook om de omgekeerde transformatie te doen om het document terug te slaan naar Markdown formaat met minimaal verlies. Er zijn elementen, zoals multilevel citaten, waarvoor de omgekeerde transformatie niet triviaal is.

Onze vertaalmachine laat gebruikers niet alleen werken met complexe elementen in een bestaande Markdown document, maar ook om hun eigen document aan te maken in Markdown formaat met de oorspronkelijke structuur vanaf nul. Om verschillende elementen te creëren, moet je stijlen met specifieke namen gebruiken volgens bepaalde regels die later in dit artikel worden beschreven. Dergelijke stijlen kunnen programmatisch worden gemaakt.

## Algemene vertaling Beginselen

We gebruiken [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formatteren voor inline blokken. Wanneer er geen directe correspondentie voor een Markdown functie in Aspose.Words DOM, We gebruiken een karakter stijl met een naam die begint met een aantal speciale woorden.

Voor containerblokken gebruiken we stijlovererving om geneste aan te duiden Markdown Eigenschappen. In dit geval, zelfs als er geen geneste functies, gebruiken we ook paragraafstijlen met een naam die begint met een aantal speciale woorden.

Gekochte en bestelde lijsten zijn containerblokken in Markdown Ook. Hun nest is vertegenwoordigd in DOM op dezelfde manier als voor alle andere container blokken met behulp van stijl erfenis. Bovendien worden de DOM hebben overeenstemmende nummeropmaak in lijststijl of alineaopmaak.

## Inline-blokken

We gebruiken [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formatteren bij vertalen **Bold**, *Italic* of ~~Strikethrough~~inline markdown Eigenschappen.

|  Markdown functie |   Aspose.Words        |
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

We gebruiken een karakterstijl met een naam die begint vanaf het woord <span notrans="<span notrans=" `InlineCode`"=""></span>,"> gevolgd door een optionele stip `(.)` en een aantal backticks ```(`)``` voor de `InlineCode` feature. Als een aantal backticks wordt gemist, wordt standaard één backtick gebruikt.

|  Markdown functie |   Aspose.Words        |
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
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  De [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) Klasse |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  De [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  De [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Klasse |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Containerblokken

Een document is een reeks containerblokken zoals rubrieken, paragrafen, lijsten, citaten en andere. Containerblokken kunnen in 2 klassen worden onderverdeeld: Bladblokken en complexe containers. Bladblokken kunnen alleen inline-inhoud bevatten. Complexe containers kunnen op hun beurt andere containerblokken bevatten, waaronder bladblokken.

### Bladblokken

De tabel hieronder toont voorbeelden van gebruik Markdown Bladblokken in Aspose.Words:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Dit is een eenvoudige paragraaf met een overeenkomstige horizontale regel vorm:<br/>[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, waarbij (1< = N <= 9).<br/>Dit wordt vertaald in een ingebouwde stijl en moet precies van het opgegeven patroon zijn (er zijn geen achtervoegsels of voorvoegsels toegestaan).<br/>Anders wordt het gewoon een gewone paragraaf met een overeenkomstige stijl |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (voor rubriek 1),<br/>`---` (als rubriek 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, gebaseerd op `"Heading N"` stijl.<br/>Indien (N >= 2), dan `"Heading 2"` zal worden gebruikt, anders `"Heading 1"`.<br/>Elk achtervoegsel is toegestaan, maar Aspose.Words De importeur gebruikt respectievelijk de nummers "1" en "2." |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br/>De `[.]` en `[info string]` zijn facultatief |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Complexe containers

De tabel hieronder toont voorbeelden van gebruik Markdown Complexe containers in Aspose.Words:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br/>Het achtervoegsel in stijlnaam is optioneel, maar Aspose.Words importeur gebruikt de bestelde nummers 1, 2, 3, .... in het geval van geneste citaten.<br/>Het nest wordt gedefinieerd via de geërfde stijlen |
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
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  De Bullet-lijsten worden weergegeven aan de hand van paragraafnummering:<br/>[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br/>Er kunnen drie soorten kogels zijn. Ze zijn alleen diff in een nummering formaat van het eerste niveau. Dit zijn: `'-'`, `'+'` of `'*'` respectievelijk |
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
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Geordende lijsten worden weergegeven aan de hand van paragraafnummering:<br/>[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br/>Er kunnen 2 nummer formaat markers zijn: `'.'` en `')'`. De standaardmarkering is `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Tabellen

Aspose.Words ook kunt vertalen tabellen in DOM, zoals hieronder aangegeven:

|  Markdown functie |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table` <br/>Vertaling: | b`<br />`-\ | -`<br />`c\ | d Wat? |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) lessen |
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

## Zie ook

* [Werken met Markdown Kenmerken](/words/nl/python-net/working-with-markdown-features/)

