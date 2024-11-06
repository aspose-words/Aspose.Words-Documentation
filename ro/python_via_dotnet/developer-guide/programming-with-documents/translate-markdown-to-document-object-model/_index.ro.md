---
title: Traduceți Markdown în DOM
second_title: Aspose.Words pentru Python via .NET
articleTitle: Traduceți Markdown în Document Object Model (DOM)
linktitle: Traduceți Markdown în Document Object Model (DOM)
type: docs
description: "Tarnslate un document Markdown pentru a documenta Modelul obiect și înapoi folosind Python. Deci, puteți lucra cu Markdown existent complex și puteți crea programatic un document Markdown de la zero."
weight: 20
url: /ro/python-net/translate-markdown-to-document-object-model/
---

Pentru a citi, manipula și modifica în mod programatic conținutul și formatarea unui document, trebuie să îl traduceți în Aspose.Words Document Object Model (DOM).

Spre deosebire de documentele Word, Markdown nu este conform cu DOM descris în [Aspose.Words Model Obiect Document (DOM)](/words/python-net/aspose-words-document-object-model/) articolul. Cu toate acestea, Aspose.Words oferă propriul mecanism pentru traducerea documentelor Markdown în DOM și înapoi, astfel încât să putem lucra cu succes cu elementele lor, cum ar fi formatarea textului, tabele, anteturi și altele.

Acest articol explică modul în care diferitele caracteristici markdown pot fi traduse în Aspose.Words DOM și înapoi la formatul Markdown.

## Complexitatea traducerii Markdown – DOM – Markdown

Principala dificultate a acestui mecanism nu este doar de a traduce Markdown în DOM, ci și de a face transformarea inversă – pentru a salva documentul înapoi în format Markdown cu pierderi minime. Există elemente, cum ar fi citatele pe mai multe niveluri, pentru care transformarea inversă nu este banală.

Motorul nostru de traducere permite utilizatorilor nu numai să lucreze cu elemente complexe într-un document Markdown existent, ci și să își creeze propriul document în format Markdown cu structura originală de la zero. Pentru a crea diverse elemente, trebuie să utilizați stiluri cu nume specifice conform anumitor reguli descrise mai târziu în acest articol. Astfel de stiluri pot fi create programatic.

## Principii Comune De Traducere

Folosim formatarea [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) pentru blocurile inline. Când nu există corespondență directă pentru o caracteristică Markdown în Aspose.Words DOM, folosim un stil de caractere cu un nume care începe de la câteva cuvinte speciale.

Pentru blocurile de containere, folosim moștenirea stilului pentru a denota caracteristicile imbricate Markdown. În acest caz, chiar și atunci când nu există caracteristici imbricate, folosim și stiluri de paragraf cu un nume care pornește de la câteva cuvinte speciale.

Listele cu marcatori și ordonate sunt și blocuri de containere în Markdown. Cuibul lor este reprezentat în DOM în același mod ca și pentru toate celelalte blocuri de containere care utilizează moștenirea stilului. Cu toate acestea, în plus, listele din DOM au corespuns formatării numerelor fie în stilul listei, fie în formatarea paragrafelor.

## Blocuri Inline

Folosim formatarea [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) atunci când traducem **Bold**, *Italic* sau ~~Strikethrough~~ în Linie markdown caracteristici.

| Markdown caracteristică | Aspose.Words |
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

Folosim un stil de caractere cu un nume care începe de la cuvântul `InlineCode`, urmat de un punct opțional `(.)` și un număr de backtick-uri ```(`)``` pentru caracteristica `InlineCode`. Dacă un număr de backtick-uri este ratat, atunci un backtick va fi utilizat în mod implicit.

| Markdown caracteristică | Aspose.Words |
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
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | Clasa [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/). |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | Clasa [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/). |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Blocuri De Containere

Un document este o secvență de blocuri de containere, cum ar fi titluri, paragrafe, liste, citate și altele. Blocurile de containere pot fi împărțite în clase 2: blocuri de frunze și containere complexe. Blocurile de frunze pot conține doar conținut în linie. Containerele complexe, la rândul lor, pot conține alte blocuri de containere, inclusiv blocuri de frunze.

### Blocuri De Frunze

Tabelul de mai jos prezintă exemple de utilizare a Markdown blocuri de frunze în Aspose.Words:

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Acesta este un paragraf simplu cu o formă corespunzătoare HorizontalRule:<br />[DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.style_name = "Heading N"`, unde (1<= N <= 9).<br />Acest lucru este tradus într-un stil încorporat și ar trebui să fie exact din modelul specificat (nu sunt permise sufixe sau prefixe).<br />În caz contrar, va fi doar un paragraf obișnuit cu un stil corespunzător. |
| {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, bazat pe stilul `"Heading N"`.<br />Dacă (N > = 2), atunci `"Heading 2"` va fi folosit, altfel `"Heading 1"`.<br />Orice sufix este permis, dar Aspose.Words importatorul folosește numerele "1" și "2" respectiv. |
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
```{{< /highlight >}} | `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` și `[info string]` sunt opționale. |
| {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |  |

### Containere Complexe

Tabelul de mai jos prezintă exemple de utilizare a containerelor complexe Markdown în Aspose.Words:

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.style_name = "Quote[some suffix]"`<br />sufixul din numele stilului este opțional, dar Aspose.Words importatorul folosește numerele ordonate1, 2, 3, .... în cazul cotațiilor imbricate.<br />Cuibul este definit prin stilurile moștenite. |
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
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Listele cu marcatori sunt reprezentate folosind numerotarea paragrafelor:<br />[ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br />Pot exista 3 tipuri de liste cu marcatori. Ele sunt diferite doar într-un format de numerotare de la primul nivel. Acestea sunt: `'-'`, `'+'` sau `'*'` respectiv. |
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
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Listele ordonate sunt reprezentate folosind numerotarea paragrafelor:<br />[ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br />Pot exista 2 markeri de format numeric: `'.'` și `')'`. Marcatorul implicit este `'.'`. |
| {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |  |

### Tabele

Aspose.Words permite, de asemenea, traducerea tabelelor în DOM, după cum se arată mai jos:

| Markdown caracteristică | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| `Table` <br />'a\ | b`<br />`-\ | - `<br />`c\ | d` | [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) și [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) clase. |
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

## Vezi Și

* [Lucrul cu Markdown Caracteristici](/words/python-net/working-with-markdown-features/)

