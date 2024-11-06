---
title: Vertaal Markdown na DOM
second_title: Aspose.Words vir Python via .NET
articleTitle: Vertaal Markdown Na Dokument Objek Model (DOM)
linktitle: Vertaal Markdown Na Dokument Objek Model (DOM)
type: docs
description: "Tarnslate'n Markdown dokument Om Voorwerp Model En terug Te Dokumenteer met behulp van Python. So jy kan werk met komplekse bestaande Markdown en programmaties skep'n Markdown dokument van nuuts af."
weight: 20
url: /af/python-net/translate-markdown-to-document-object-model/
---

Om die inhoud en formatering van'n dokument programmaties te lees, te manipuleer en te verander, moet jy dit vertaal na die Aspose.Words Document Object Model (DOM).

In teenstelling met Word-dokumente, voldoen Markdown nie aan die DOM wat in Die [Aspose.Words Dokument Voorwerp Model (DOM)](/words/python-net/aspose-words-document-object-model/) artikel. Aspose.Words bied egter sy eie meganisme vir die vertaling van Markdown dokumente na DOM en terug, sodat ons suksesvol kan werk met hul elemente soos teks opmaak, tabelle, koptekste, en ander.

Hierdie artikel verduidelik hoe die verskillende markdown kenmerke vertaal kan word in Aspose.Words DOM en terug na Markdown formaat.

## Kompleksiteit Van Vertaling Markdown – DOM – Markdown

Die grootste probleem van hierdie meganisme is nie net om Markdown te vertaal na DOM nie, maar ook om die omgekeerde transformasie te doen om die dokument terug te stoor na Markdown formaat met minimale verlies. Daar is elemente, soos meervlak aanhalingstekens, waarvoor die omgekeerde transformasie nie triviaal is nie.

Ons vertaling enjin kan gebruikers nie net om te werk met komplekse elemente in'n bestaande Markdown dokument, maar ook om hul eie dokument te skep in Markdown formaat met die oorspronklike struktuur van nuuts af. Om verskeie elemente te skep, moet jy style met spesifieke name gebruik volgens sekere reëls wat later in hierdie artikel beskryf word. Sulke style kan programmaties geskep word.

## Algemene Vertaalbeginsels

Ons gebruik [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formatering vir inline blokke. Wanneer daar geen direkte ooreenstemming is vir'n Markdown kenmerk in Aspose.Words DOM nie, gebruik ons'n karakterstyl met'n naam wat begin met'n paar spesiale woorde.

Vir houerblokke gebruik ons styl oorerwing om geneste Markdown kenmerke aan te dui. In hierdie geval, selfs wanneer daar geen geneste kenmerke is nie, gebruik ons ook paragraafstyle met'n naam wat van'n paar spesiale woorde begin.

Bullet en bestel lyste is houer blokke in Markdown sowel. Hul nes is verteenwoordig in DOM op dieselfde manier as vir alle ander houer blokke met behulp van styl erfenis. Daarbenewens het lyste in DOM egter ooreenstemmende nommeropmaak in lysstyl of paragraafopmaak.

## Inlyn Blokke

Ons gebruik [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) formatering wanneer ons **Bold**, *Italic* of ~~Strikethrough~~ inline markdown funksies vertaal.

| Markdown kenmerk | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.bold = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
| **Italic**<br />`*italic text*` | `Font.italic = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.strike_through = True` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Ons gebruik'n karakter styl met'n naam wat begin van die woord `InlineCode`, gevolg deur'n opsionele punt `(.)` en'n aantal backticks ```(`)``` vir die `InlineCode` funksie. As'n aantal backticks gemis word, dan sal een backtick gebruik word by verstek.

| Markdown kenmerk | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.style_name = "InlineCode[.][N]"` |
| {{< highlight python >}}# Use a document builder to add content to the document.
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
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Die [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) klas. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | Die [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) klas. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Houerblokke

'n dokument is'n reeks houerblokke soos opskrifte, paragrawe, lyste, aanhalings en ander. Container blokke kan verdeel word in 2 klasse: Blaar blokke en Komplekse Houers. Blaarblokke kan slegs inline inhoud bevat. Komplekse houers kan op hul beurt ander houerblokke bevat, insluitend Blaarblokke.

### Blaarblokke

Die tabel hieronder toon voorbeelde van die gebruik van Markdown Blaarblokke in Aspose.Words:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Dit is'n eenvoudige paragraaf met'n ooreenstemmende HorizontalRule vorm:<br />[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.style_name = "Heading N"`, waar (1<= N <= 9).<br />Dit word in'n ingeboude styl vertaal en moet presies van die gespesifiseerde patroon wees (geen agtervoegsels of voorvoegsels word toegelaat nie).<br />Andersins sal dit net'n gewone paragraaf met'n ooreenstemmende styl wees. |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, gebaseer op `"Heading N"` styl.<br />As (n >= 2), dan sal `"Heading 2"` gebruik word, anders sal `"Heading 1"`.<br />Enige agtervoegsel word toegelaat, maar Aspose.Words invoerder gebruik getalle "1" en "2" onderskeidelik. |
| {{< highlight python >}}# Use a document builder to add content to the document.
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
| **Indented Code** | `ParagraphFormat.style_name = "IndentedCode[some suffix]"` |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

indentedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "IndentedCode")
builder.paragraph_format.style = indentedCode
builder.writeln("This is an indented code")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.indented_code_example.md"){{< /highlight >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br />die `[.]` en `[info string]` is opsioneel. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |  |

### Komplekse Houers

Die tabel hieronder toon voorbeelde van die gebruik van Markdown Komplekse Houers in Aspose.Words:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.style_name = "Quote[some suffix]"`<br />die agtervoegsel in styl naam is opsioneel, maar Aspose.Words invoerder gebruik die geordende getalle 1, 2, 3, .... in die geval van geneste aanhalings.<br />Die nes word gedefinieer deur die oorgeërfde style. |
| {{< highlight python >}}# Use a document builder to add content to the document.
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
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Bullet lyste word verteenwoordig met behulp van paragraaf nommering:<br />[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br />Daar kan 3 tipes van koeëllyste wees. Hulle is slegs diff in'n nommering formaat van die heel eerste vlak. Dit is: `'-'`, `'+'` of `'*'` onderskeidelik. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

builder.list_format.apply_bullet_default()
builder.list_format.list.list_levels[0].number_format = "-"

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.writeln("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bulleted_list_example.md"){{< /highlight >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Geordende lyste word verteenwoordig deur paragraafnommering te gebruik:<br />[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br />Daar kan 2 nommer formaat merkers wees: `'.'` en `')'`. Die standaard merker is `'.'`. |
| {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |  |

### Tabelle

Aspose.Words laat ook toe om tabelle te vertaal in DOM, soos hieronder getoon:

| Markdown kenmerk | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table` <br />'n\ | b`<br />`-\ | - `<br />`c\ | d' | [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) en [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) klasse. |
| {{< highlight python >}}# Use a document builder to add content to the document.
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

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_table.md"){{< /highlight >}} |  |

## Sien Ook

* [Werk met Markdown Funksies](/words/python-net/working-with-markdown-features/)

