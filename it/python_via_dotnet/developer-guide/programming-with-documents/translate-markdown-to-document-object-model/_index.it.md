---
title: Traduci Markdown in DOM
second_title: Aspose.Words per Python via .NET
articleTitle: Traduci Markdown in Document Object Model (DOM)
linktitle: Traduci Markdown in Document Object Model (DOM)
type: docs
description: "Trasforma un documento Markdown in Document Object Model e viceversa utilizzando Python. Quindi puoi lavorare con Markdown esistenti complessi e creare a livello di codice un documento Markdown da zero."
weight: 20
url: /it/python-net/translate-markdown-to-document-object-model/
---

Per leggere, manipolare e modificare a livello di codice il contenuto e la formattazione di un documento, è necessario tradurlo in Aspose.Words Document Object Model (DOM).

A differenza dei documenti Word, Markdown non è conforme al DOM descritto nell'articolo [Aspose.Words Document Object Model (DOM)](/words/it/python-net/aspose-words-document-object-model/). Tuttavia, Aspose.Words fornisce il proprio meccanismo per tradurre i documenti Markdown in DOM e viceversa, in modo da poter lavorare con successo con i loro elementi come la formattazione del testo, tabelle, intestazioni e altri.

Questo articolo spiega come le varie funzionalità markdown possono essere tradotte in Aspose.Words DOM e nuovamente in formato Markdown.

## Complessità della Traduzione Markdown – DOM – Markdown

La difficoltà principale di questo meccanismo non è solo tradurre Markdown in DOM, ma anche fare la trasformazione inversa – salvare il documento nel formato Markdown con una perdita minima. Ci sono elementi, come le virgolette multilivello, per i quali la trasformazione inversa non è banale.

Il nostro motore di traduzione consente agli utenti non solo di lavorare con elementi complessi in un documento Markdown esistente, ma anche di creare da zero il proprio documento in formato Markdown con la struttura originale. Per creare vari elementi, è necessario utilizzare stili con nomi specifici secondo alcune regole descritte più avanti in questo articolo. Tali stili possono essere creati a livello di codice.

## Principi comuni di traduzione

Usiamo la formattazione [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) per i blocchi in linea. Quando non esiste una corrispondenza diretta per una caratteristica Markdown in Aspose.Words DOM, utilizziamo uno stile di carattere con un nome che inizia con alcune parole speciali.

Per i blocchi contenitore, utilizziamo l'ereditarietà dello stile per denotare le funzionalità Markdown nidificate. In questo caso, anche quando non sono presenti elementi nidificati, utilizziamo anche stili di paragrafo con un nome che inizia con alcune parole speciali.

Anche gli elenchi puntati e ordinati sono blocchi contenitori in Markdown. Il loro annidamento è rappresentato in DOM allo stesso modo di tutti gli altri blocchi contenitore utilizzando l'ereditarietà dello stile. Tuttavia, inoltre, gli elenchi in DOM hanno una formattazione numerica corrispondente sia nello stile elenco che nella formattazione paragrafo.

## Blocchi in linea

Utilizziamo la formattazione [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) durante la traduzione delle funzionalità markdown in linea **Bold**, *Italic* o ~~Strikethrough~~.

|  Funzionalità Markdown |   Aspose.Words        |
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

Utilizziamo uno stile di carattere con un nome che inizia con la parola `InlineCode`, seguito da un punto `(.)` opzionale e da un numero di apici inversi ```(`)``` per la funzionalità `InlineCode`. Se viene mancato un certo numero di backtick, per impostazione predefinita verrà utilizzato un backtick.

|  Funzionalità Markdown |   Aspose.Words        |
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
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  La classe [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("https://www.aspose.com", "https://www.aspose.com", False);
builder.insert_hyperlink("email@aspose.com", "mailto:email@aspose.com", False);

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.autolink_example.md"){{< /highlight >}} ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  Il [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert hyperlink.
builder.insert_hyperlink("Aspose", "https://www.aspose.com", False)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.link_example.md"){{< /highlight >}} ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  La classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

# Insert image.
shape = aw.drawing.Shape(builder.document, aw.drawing.ShapeType.IMAGE)
shape.wrap_type = aw.drawing.WrapType.INLINE
shape.image_data.source_full_name = "/attachment/1456/pic001.png"
shape.image_data.title = "title"
builder.insert_node(shape)

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.image_example.md"){{< /highlight >}} ||

## Blocchi contenitore

Un documento è una sequenza di blocchi contenitori come intestazioni, paragrafi, elenchi, virgolette e altri. I blocchi contenitore possono essere suddivisi in 2 classi: blocchi foglia e contenitori complessi. I blocchi foglia possono contenere solo contenuto in linea. I contenitori complessi, a loro volta, possono contenere altri blocchi contenitore, inclusi i blocchi Foglia.

### Blocchi di foglie

La tabella seguente mostra esempi di utilizzo dei blocchi Leaf Markdown in Aspose.Words:

|  Funzionalità Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Questo è un semplice paragrafo con una forma di Regola Orizzontale corrispondente:<br /> [DocumentBuilder.insert_horizontal_rule()](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.style_name = "Heading N"`, dove (1&lt;= N &lt;= 9).<br /> Questo viene tradotto in uno stile integrato e dovrebbe essere esattamente del modello specificato (non sono ammessi suffissi o prefissi).<br /> Altrimenti sarà solo un normale paragrafo con uno stile corrispondente |
|   {{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (se Titolo di livello 1),<br /> `---` (se intestazione di livello 2) |  `ParagraphFormat.style_name = "SetextHeading[some suffix]"`, basato sullo stile `"Heading N"`.<br /> Se (N &gt;= 2), verrà utilizzato `"Heading 2"`, altrimenti `"Heading 1"`.<br /> È consentito qualsiasi suffisso, ma l'importatore Aspose.Words utilizza rispettivamente i numeri "1" e "2" |
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
```{{< /highlight >}} |  `ParagraphFormat.style_name = "FencedCode[.][info string]"`<br /> `[.]` e `[info string]` sono facoltativi |
|  {{< highlight python >}}# Use a document builder to add content to the document.
builder = aw.DocumentBuilder()

fencedCode = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode")
builder.paragraph_format.style = fencedCode
builder.writeln("This is an fenced code")

fencedCodeWithInfo = builder.document.styles.add(aw.StyleType.PARAGRAPH, "FencedCode.C#")
builder.paragraph_format.style = fencedCodeWithInfo
builder.writeln("This is a fenced code with info string")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.fenced_code_example.md"){{< /highlight >}} |                                                                |

### Contenitori complessi

La tabella seguente mostra esempi di utilizzo dei contenitori complessi Markdown in Aspose.Words:

|  Funzionalità Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.style_name = "Quote[some suffix]"`<br /> Il suffisso nel nome dello stile è facoltativo, ma l'importatore Aspose.Words utilizza i numeri ordinati 1, 2, 3, …. in caso di virgolette annidate.<br /> L'annidamento è definito tramite gli stili ereditati |
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
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Gli elenchi puntati sono rappresentati utilizzando la numerazione dei paragrafi:<br /> [ListFormat.apply_bullet_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/)<br /> Possono essere presenti 3 tipi di elenchi puntati. Differiscono solo nel formato di numerazione di primissimo livello. Questi sono rispettivamente: `'-'`, `'+'` o `'*'` |
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
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Gli elenchi ordinati sono rappresentati utilizzando la numerazione dei paragrafi:<br /> [ListFormat.apply_number_default()](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/)<br /> Possono essere presenti 2 indicatori di formato numerico: `'.'` e `')'`. L'indicatore predefinito è `'.'` |
|  {{< highlight python >}}doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.list_format.apply_number_default()

builder.writeln("Item 1")
builder.writeln("Item 2")

builder.list_format.list_indent()

builder.writeln("Item 2a")
builder.write("Item 2b")

builder.document.save(docs_base.artifacts_dir + "WorkingWithMarkdown.ordered_list_example.md"){{< /highlight >}} |                                                                |

### Tabelle

Aspose.Words consente anche di tradurre le tabelle in DOM, come mostrato di seguito:

|  Funzionalità Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a\ | b`<br />`-\ | -`<br />`c\ | d` |  Classi [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) |
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

## Guarda anche

* [Lavorare con le funzionalità Markdown](/words/it/python-net/working-with-markdown-features/)

