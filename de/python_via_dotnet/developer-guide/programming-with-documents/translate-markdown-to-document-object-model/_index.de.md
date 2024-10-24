---
title: Übersetzen Sie Markdown in DOM
second_title: Aspose.Words für Python via .NET
articleTitle: Übersetzen Sie Markdown in Document Object Model (DOM)
linktitle: Übersetzen Sie Markdown in Document Object Model (DOM)
type: docs
description: "Konvertieren Sie ein Markdown-Dokument mithilfe von Python in Document Object Model und zurück. So können Sie mit komplexen vorhandenen Markdown-Dateien arbeiten und programmgesteuert ein Markdown-Dokument von Grund auf erstellen."
weight: 20
url: /de/python-net/translate-markdown-to-document-object-model/
---

Um den Inhalt und die Formatierung eines Dokuments programmgesteuert zu lesen, zu bearbeiten und zu ändern, müssen Sie es in Aspose.Words Document Object Model (DOM) übersetzen.

Im Gegensatz zu Word-Dokumenten entspricht Markdown nicht dem im [Aspose.Words Document Object Model (DOM)](/words/de/python-net/aspose-words-document-object-model/)-Artikel beschriebenen DOM. Aspose.Words bietet jedoch einen eigenen Mechanismus zum Übersetzen von Markdown-Dokumenten in DOM und zurück, sodass wir erfolgreich mit ihren Elementen wie Textformatierung, Tabellen, Kopfzeilen und anderen arbeiten können.

In diesem Artikel wird erläutert, wie die verschiedenen markdown-Funktionen in das Aspose.Words-DOM- und zurück in das Markdown-Format übersetzt werden können.

## Komplexität der Übersetzung Markdown – DOM – Markdown

Die Hauptschwierigkeit dieses Mechanismus besteht nicht nur darin, Markdown in DOM zu übersetzen, sondern auch die umgekehrte Transformation durchzuführen – das Dokument mit minimalem Verlust wieder im Markdown-Format zu speichern. Es gibt Elemente, wie z. B. mehrstufige Anführungszeichen, für die die umgekehrte Transformation nicht trivial ist.

Mit unserer Übersetzungs-Engine können Benutzer nicht nur mit komplexen Elementen in einem vorhandenen Markdown-Dokument arbeiten, sondern auch ihr eigenes Dokument im Markdown-Format mit der Originalstruktur von Grund auf erstellen. Um verschiedene Elemente zu erstellen, müssen Sie Stile mit bestimmten Namen gemäß bestimmten Regeln verwenden, die später in diesem Artikel beschrieben werden. Solche Stile können programmgesteuert erstellt werden.

## Gemeinsame Übersetzungsprinzipien

Wir verwenden [Font](https://reference.aspose.com/words/python-net/aspose.words/font/)-Formatierung für Inline-Blöcke. Wenn es keine direkte Entsprechung für eine Markdown-Funktion in Aspose.Words-DOM gibt, verwenden wir einen Zeichenstil mit einem Namen, der mit einigen speziellen Wörtern beginnt.

Für Containerblöcke verwenden wir Stilvererbung, um verschachtelte Markdown-Funktionen zu kennzeichnen. In diesem Fall verwenden wir auch dann Absatzstile, deren Namen mit einigen speziellen Wörtern beginnen, selbst wenn keine verschachtelten Funktionen vorhanden sind.

Aufzählungslisten und geordnete Listen sind in Markdown ebenfalls Containerblöcke. Ihre Verschachtelung wird in DOM auf die gleiche Weise wie bei allen anderen Containerblöcken mithilfe der Stilvererbung dargestellt. Darüber hinaus verfügen Listen in DOM jedoch über eine entsprechende Zahlenformatierung entweder im Listenstil oder in der Absatzformatierung.

## Inline-Blöcke

Bei der Übersetzung von **Bold**-, *Italic*- oder ~~Durchgestrichenen~~-Inline-markdown-Funktionen verwenden wir die [Font](https://reference.aspose.com/words/python-net/aspose.words/font/)-Formatierung.

|  Markdown-Funktion |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.bold = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Bold.
builder.font.bold = True
builder.writeln("This text will be Bold")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.bold_text_example.md"){{< /highlight >}} |  |
|  **Italic**<br /> `*italic text*` |  `Font.italic = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Italic.
builder.font.italic = True
builder.writeln("This text will be Italic")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.italic_text_example.md"){{< /highlight >}} |  |
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.strike_through = True`  |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Make the text Strikethrough.
builder.font.strike_through = True
builder.writeln("This text will be Strikethrough")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.strikethrough_text_example.md"){{< /highlight >}} |  |

Wir verwenden einen Zeichenstil mit einem Namen, der mit dem Wort `InlineCode` beginnt, gefolgt von einem optionalen Punkt `(.)` und einer Reihe von Backticks ```(`)``` für die `InlineCode`-Funktion. Wenn mehrere Backticks fehlen, wird standardmäßig ein Backtick verwendet.

|  Markdown-Funktion |   Aspose.Words        |
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

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.inline_code_example.md"){{< /highlight >}} |  |
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  Die [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)-Klasse |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} |  |
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Das [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} |  |
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Die [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)-Klasse |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} |  |

## Containerblöcke

Ein Dokument ist eine Folge von Containerblöcken wie Überschriften, Absätzen, Listen, Zitaten und anderen. Containerblöcke können in zwei Klassen unterteilt werden: Leaf-Blöcke und komplexe Container. Blattblöcke können nur Inline-Inhalte enthalten. Komplexe Container wiederum können andere Containerblöcke enthalten, einschließlich Leaf-Blöcken.

### Blattblöcke

Die folgende Tabelle zeigt Beispiele für die Verwendung von Markdown-Leaf-Blöcken in Aspose.Words:

|  Markdown-Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Dies ist ein einfacher Absatz mit einer entsprechenden HorizontalRule-Form:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, wobei (1&lt;= N &lt;= 9).<br /> Dies wird in einen integrierten Stil übersetzt und sollte genau dem angegebenen Muster entsprechen (es sind keine Suffixe oder Präfixe zulässig).<br /> Andernfalls handelt es sich nur um einen normalen Absatz mit einem entsprechenden Stil |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (wenn Überschriftenebene 1),<br /> `---` (wenn Überschriftenebene 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, basierend auf dem `"Heading N"`-Stil.<br /> Wenn (N &gt;= 2), wird `"Heading 2"` verwendet, andernfalls `"Heading 1"`.<br /> Jedes Suffix ist zulässig, aber der Aspose.Words-Importer verwendet die Zahlen "1" bzw. "2" |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` und `[info string]` sind optional |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Komplexe Container

Die folgende Tabelle zeigt Beispiele für die Verwendung komplexer Markdown-Container in Aspose.Words:

|  Markdown-Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Das Suffix im Stilnamen ist optional, aber der Aspose.Words-Importer verwendet die geordneten Nummern 1, 2, 3, …. bei verschachtelten Anführungszeichen.<br /> Die Verschachtelung wird über die geerbten Stile definiert |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Listen mit Aufzählungszeichen werden durch Absatznummerierung dargestellt:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Es gibt drei Arten von Listen mit Aufzählungszeichen. Sie unterscheiden sich nur im Nummerierungsformat der allerersten Ebene. Dies sind: `'-'`, `'+'` bzw. `'*'` |
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
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Geordnete Listen werden durch Absatznummerierung dargestellt:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Es können zwei Zahlenformatmarkierungen vorhanden sein: `'.'` und `')'`. Der Standardmarker ist `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Tische

Aspose.Words ermöglicht auch die Übersetzung von Tabellen in DOM, wie unten gezeigt:

|  Markdown-Funktion |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a\ | b`<br />`-\ | -`<br />`c\ | d` |  [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)-, [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)- und [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)-Klassen |
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

## Siehe auch

* [Arbeiten mit Markdown-Funktionen](/words/de/python-net/working-with-markdown-features/)

