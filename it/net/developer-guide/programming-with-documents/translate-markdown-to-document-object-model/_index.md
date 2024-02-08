---
title: Traduci Markdown in DOM
second_title: Aspose.Words per .NET
articleTitle: Traduci Markdown in Document Object Model (DOM)
linktitle: Traduci Markdown in Document Object Model (DOM)
type: docs
description: "Traduci un documento Markdown in Document Object Model e viceversa utilizzando C#. Quindi puoi lavorare con Markdown esistenti complessi e creare a livello di codice un documento Markdown da zero."
weight: 20
url: /it/net/translate-markdown-to-document-object-model/
---

Per leggere, manipolare e modificare a livello di codice il contenuto e la formattazione di un documento, è necessario tradurlo in Aspose.Words Document Object Model (DOM).

A differenza dei documenti Word, Markdown non è conforme al DOM descritto nell'articolo [Aspose.Words Document Object Model (DOM)](/words/it/net/aspose-words-document-object-model/). Tuttavia, Aspose.Words fornisce il proprio meccanismo per tradurre i documenti Markdown in DOM e viceversa, in modo da poter lavorare con successo con i loro elementi come la formattazione del testo, tabelle, intestazioni e altri.

Questo articolo spiega come le varie funzionalità markdown possono essere tradotte in Aspose.Words DOM e nuovamente in formato Markdown.

## Complessità della Traduzione Markdown – DOM – Markdown

La difficoltà principale di questo meccanismo non è solo tradurre Markdown in DOM, ma anche fare la trasformazione inversa – salvare il documento nel formato Markdown con una perdita minima. Ci sono elementi, come le virgolette multilivello, per i quali la trasformazione inversa non è banale.

Il nostro motore di traduzione consente agli utenti non solo di lavorare con elementi complessi in un documento Markdown esistente, ma anche di creare da zero il proprio documento in formato Markdown con la struttura originale. Per creare vari elementi, è necessario utilizzare stili con nomi specifici secondo alcune regole descritte più avanti in questo articolo. Tali stili possono essere creati a livello di codice.

## Principi comuni di traduzione

Usiamo la formattazione [Font](https://reference.aspose.com/words/net/aspose.words/font/) per i blocchi in linea. Quando non esiste una corrispondenza diretta per una caratteristica Markdown in Aspose.Words DOM, utilizziamo uno stile di carattere con un nome che inizia con alcune parole speciali.

Per i blocchi contenitore, utilizziamo l'ereditarietà dello stile per denotare le funzionalità Markdown nidificate. In questo caso, anche quando non sono presenti elementi nidificati, utilizziamo anche stili di paragrafo con un nome che inizia con alcune parole speciali.

Anche gli elenchi puntati e ordinati sono blocchi contenitori in Markdown. Il loro annidamento è rappresentato in DOM allo stesso modo di tutti gli altri blocchi contenitori utilizzando l'ereditarietà dello stile. Tuttavia, inoltre, gli elenchi in DOM hanno una formattazione numerica corrispondente sia nello stile elenco che nella formattazione paragrafo.

## Blocchi in linea

Utilizziamo la formattazione [Font](https://reference.aspose.com/words/net/aspose.words/font/) durante la traduzione delle funzionalità markdown in linea **Bold**, *Italic* o ~~Strikethrough~~.

|  Funzionalità Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br /> `{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BoldText.cs" >}}  ||
|  **Italic**<br /> `*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-ItalicText.cs" >}}  ||
|  **Strikethrough**<br /> `~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Make the text Strikethrough.
builder.Font.Strikethrough = true;
builder.Writeln("This text will be Strikethrough");{{< /highlight >}} ||

Utilizziamo uno stile di carattere con un nome che inizia con la parola `InlineCode`, seguito da un punto `(.)` opzionale e da un numero di apici inversi ```(`)``` per la funzionalità `InlineCode`. Se viene mancato un certo numero di backtick, per impostazione predefinita verrà utilizzato un backtick.

|  Funzionalità Markdown |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br /> `{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-InlineCode.cs" >}}  ||
|  **Autolink**<br /> `<scheme://domain.com>`<br /> `<email@domain.com>` |  La classe [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Autolink.cs" >}}  ||
|  **Link**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  La classe [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Link.cs" >}}  ||
|  **Image**<br /> `{1}`<br /> `{2}`<br /> `{3}`<br /> `{4})` |  La classe [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Image.cs" >}}  ||

## Blocchi contenitore

Un documento è una sequenza di blocchi contenitori come intestazioni, paragrafi, elenchi, virgolette e altri. I blocchi contenitore possono essere suddivisi in 2 classi: blocchi foglia e contenitori complessi. I blocchi foglia possono contenere solo contenuto in linea. I contenitori complessi, a loro volta, possono contenere altri blocchi contenitore, inclusi i blocchi Foglia.

### Blocchi di foglie

La tabella seguente mostra esempi di utilizzo dei blocchi Leaf Markdown in Aspose.Words:

|  Funzionalità Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br /> `-----` |  Questo è un semplice paragrafo con una forma di Regola Orizzontale corrispondente:<br /> `DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-HorizontalRule.cs" >}}  |                                                                |
|  **ATX Heading**<br /> `# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, dove (1&lt;= N &lt;= 9).<br /> Questo viene tradotto in uno stile integrato e dovrebbe essere esattamente del modello specificato (non sono ammessi suffissi o prefissi).<br /> Altrimenti sarà solo un normale paragrafo con uno stile corrispondente |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-Heading.cs" >}}  |                                                                |
|  **Setext Heading**<br /> `===` (se Titolo di livello 1),<br /> `---` (se intestazione di livello 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, basato sullo stile `“Heading N”`.<br /> Se (N &gt;= 2), verrà utilizzato `“Heading 2”`, altrimenti `“Heading 1”`.<br /> È consentito qualsiasi suffisso, ma l'importatore Aspose.Words utilizza rispettivamente i numeri "1" e "2" |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

builder.ParagraphFormat.StyleName = "Heading 1";
builder.Writeln("This is an H1 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading1 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading1");
builder.ParagraphFormat.Style = setexHeading1;
builder.Document.Styles["SetextHeading1"].BaseStyleName = "Heading 1";
builder.Writeln("Setext Heading level 1");

builder.ParagraphFormat.Style = builder.Document.Styles["Heading 3"];
builder.Writeln("This is an H3 tag");

// Reset styles from the previous paragraph to not combine styles between paragraphs.
builder.Font.Bold = false;
builder.Font.Italic = false;

Style setexHeading2 = builder.Document.Styles.Add(StyleType.Paragraph, "SetextHeading2");
builder.ParagraphFormat.Style = setexHeading2;
builder.Document.Styles["SetextHeading2"].BaseStyleName = "Heading 3";

// Setex heading level will be reset to 2 if the base paragraph has a Heading level greater than 2.
builder.Writeln("Setext Heading level 2");{{< /highlight >}} |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-IndentedCode.cs" >}}  |                                                                |
|  **Fenced Code**<br /> {{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br /> `[.]` e `[info string]` sono facoltativi |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-FencedCode.cs" >}}   |                                                                |

### Contenitori complessi

La tabella seguente mostra esempi di utilizzo dei contenitori complessi Markdown in Aspose.Words:

|  Funzionalità Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br /> `> quote,`<br /> `>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br /> Il suffisso nel nome dello stile è facoltativo, ma l'importatore Aspose.Words utilizza i numeri ordinati 1, 2, 3, …. in caso di virgolette annidate.<br /> L'annidamento è definito tramite gli stili ereditati |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// By default a document stores blockquote style for the first level.
builder.ParagraphFormat.StyleName = "Quote";
builder.Writeln("Blockquote");

// Create styles for nested levels through style inheritance.
Style quoteLevel2 = builder.Document.Styles.Add(StyleType.Paragraph, "Quote1");
builder.ParagraphFormat.Style = quoteLevel2;
builder.Document.Styles["Quote1"].BaseStyleName = "Quote";
builder.Writeln("1. Nested blockquote");{{< /highlight >}} |
|  **BulletedList**<br /> `- Item 1`<br /> `- Item 2`<br /> `   - Item 2a`<br /> `   - Item 2b` |  Gli elenchi puntati sono rappresentati utilizzando la numerazione dei paragrafi:<br /> `ListFormat.ApplyBulletDefault()`<br /> Possono essere presenti 3 tipi di elenchi puntati. Differiscono solo nel formato di numerazione di primissimo livello. Questi sono rispettivamente: `‘-’`, `‘+’` o `‘*’` |
|   {{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Markdown-BulletedList.cs" >}}  |                                                                |
|  **OrderedList**<br /> `1. Item 1`<br /> `2. Item 2`<br /> `1) Item 2a`<br /> `2) Item 2b` |  Gli elenchi ordinati sono rappresentati utilizzando la numerazione dei paragrafi:<br /> `ListFormat.ApplyNumberDefault()`<br /> Possono essere presenti 2 indicatori di formato numerico: '.' E ')'. L'indicatore predefinito è "." |
|  {{< highlight csharp >}}Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.ListFormat.ApplyBulletDefault();
builder.ListFormat.List.ListLevels[0].NumberFormat = $"{(char) 0}.";
builder.ListFormat.List.ListLevels[1].NumberFormat = $"{(char) 1}.";

builder.Writeln("Item 1");
builder.Writeln("Item 2");

builder.ListFormat.ListIndent();

builder.Writeln("Item 2a");
builder.Writeln("Item 2b");{{< /highlight >}} |                                                                |

### Tabelle

Aspose.Words consente anche di tradurre le tabelle in DOM, come mostrato di seguito:

|  Funzionalità Markdown |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br /> `a | b`<br />`- | -`<br />`c | d` |  Classi [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) |
|  {{< highlight csharp >}}// Use a document builder to add content to the document.
DocumentBuilder builder = new DocumentBuilder();

// Add the first row.
builder.InsertCell();
builder.Writeln("a");
builder.InsertCell();
builder.Writeln("b");

// Add the second row.
builder.InsertCell();
builder.Writeln("c");
builder.InsertCell();
builder.Writeln("d");{{< /highlight >}} |                                                                |

## Guarda anche

* [Lavorare con le funzionalità Markdown](/words/it/net/working-with-markdown-features/)

