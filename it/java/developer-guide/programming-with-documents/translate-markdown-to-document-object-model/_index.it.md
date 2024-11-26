---
title: Traduci Markdown in DOM
second_title: Aspose.Words per Java
articleTitle: Traduci Markdown in Document Object Model (DOM)
linktitle: Traduci Markdown in Document Object Model (DOM)
type: docs
description: "Tarnslate un documento Markdown per Documentare il modello a oggetti e viceversa. In questo modo è possibile lavorare con Markdown complessi esistenti e creare a livello di codice un documento Markdown da zero utilizzando Java."
weight: 20
url: /it/java/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Per leggere, manipolare e modificare in modo programmatico il contenuto e la formattazione di un documento, è necessario tradurlo nel modello a oggetti del documento Aspose.Words (DOM).

A differenza dei documenti Word, Markdown non è conforme al DOM descritto nel [Aspose.Words Modello oggetto documento (DOM)](/words/java/aspose-words-document-object-model/) articolo. Tuttavia, Aspose.Words fornisce il proprio meccanismo per tradurre i documenti Markdown in DOM e viceversa, in modo da poter lavorare con successo con i loro elementi come la formattazione del testo, le tabelle, le intestazioni e altri.

Questo articolo spiega come le varie funzionalità di markdown possono essere tradotte in formato Aspose.Words DOM e di nuovo in formato Markdown.

## Complessità della traduzione Markdown – DOM – Markdown

La principale difficoltà di questo meccanismo non è solo quella di tradurre Markdown in DOM, ma anche di eseguire la trasformazione inversa – per salvare il documento nel formato Markdown con una perdita minima. Ci sono elementi, come le virgolette multilivello, per i quali la trasformazione inversa non è banale.

Il nostro motore di traduzione consente agli utenti non solo di lavorare con elementi complessi in un documento Markdown esistente, ma anche di creare il proprio documento in formato Markdown con la struttura originale da zero. Per creare vari elementi, è necessario utilizzare stili con nomi specifici in base a determinate regole descritte più avanti in questo articolo. Tali stili possono essere creati a livello di programmazione.

## Principi comuni di traduzione

Usiamo la formattazione [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) per i blocchi in linea. Quando non c'è corrispondenza diretta per una funzione Markdown in Aspose.Words DOM, usiamo uno stile di carattere con un nome che inizia da alcune parole speciali.

Per i blocchi contenitore, usiamo l'ereditarietà dello stile per indicare le funzionalità annidate Markdown. In questo caso, anche quando non ci sono caratteristiche nidificate, usiamo anche stili di paragrafo con un nome che inizia da alcune parole speciali.

Gli elenchi puntati e ordinati sono anche blocchi contenitore in Markdown. Il loro nesting è rappresentato in DOM allo stesso modo di tutti gli altri blocchi contenitore usando l'ereditarietà dello stile. Tuttavia, inoltre, gli elenchi in DOM hanno una formattazione numerica corrispondente in stile elenco o formattazione paragrafo.

## Blocchi in linea

Usiamo la formattazione [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) quando traduciamo le funzionalità **Bold**, *Italic* o ~~Strikethrough~~ inline markdown.

| Funzione Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `Font.Bold = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}} |  |
| **Italic**<br />`*italic text*` | `Font.Italic = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `Font.StrikeThrough = true` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}} |  |

Usiamo uno stile di carattere con un nome che inizia dalla parola `InlineCode`, seguito da un punto opzionale `(.)` e un numero di backticks ```(`)``` per la funzione `InlineCode`. Se un numero di backtick viene perso, verrà utilizzato un backtick per impostazione predefinita.

| Funzione Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `Font.StyleName = "InlineCode[.][N]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | La classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}} |  |
| **Link**<br />`[testo del collegamento](url)`<br />`[testo del collegamento](<url>"title")`<br />`[testo del collegamento](url 'title')`<br />`[testo del collegamento](url (title))` | La classe [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}} |  |
| **Image**<br />`![](/words/java/translate-markdown-to-document-object-model/url)`<br />`![testo alternativo](/words/java/translate-markdown-to-document-object-model/<url>"title")`<br />`![testo alternativo](/words/java/translate-markdown-to-document-object-model/url ‘title’)`<br />`![testo alternativo](/words/java/translate-markdown-to-document-object-model/url (title))` | La classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}} |  |

## Blocchi contenitore

Un documento è una sequenza di blocchi contenitore come intestazioni, paragrafi, elenchi, virgolette e altri. I blocchi contenitore possono essere suddivisi in 2 classi: blocchi foglia e contenitori complessi. I blocchi foglia possono contenere solo contenuti in linea. I contenitori complessi, a loro volta, possono contenere altri blocchi contenitore, inclusi i blocchi foglia.

### Blocchi foglia

La tabella seguente mostra esempi di utilizzo dei blocchi foglia Markdown in Aspose.Words:

| Funzione Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Questo è un paragrafo semplice con una forma corrispondente HorizontalRule:<br />`DocumentBuilder.InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `ParagraphFormat.StyleName = "Heading N"`, dove (1<= E <= 9).<br />Questo è tradotto in uno stile incorporato e dovrebbe essere esattamente del modello specificato (non sono consentiti suffissi o prefissi).<br />Altrimenti, sarà solo un paragrafo regolare con uno stile corrispondente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `ParagraphFormat.StyleName = "SetextHeading[some suffix]"`, basato sullo stile "Intestazione N".<br />Se (N > = 2), allora 'Heading 2' sarà usato, altrimenti 'Heading 1'.<br />Qualsiasi suffisso è consentito, ma Aspose.Words importatore utilizza i numeri "1" e "2" rispettivamente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}} |  |
| **Indented Code**<br>{{< highlight java >}}<br/>if ()<br/>then<br/>else<br/>```{{< /highlight >}} | `ParagraphFormat.StyleName = "IndentedCode[some suffix]"` |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}} |  |
### Contenitori complessi

La tabella seguente mostra esempi di utilizzo di contenitori complessi Markdown in Aspose.Words:

| Funzione Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `ParagraphFormat.StyleName = "Quote[some suffix]"`<br /> Il suffisso nel nome stile è facoltativo, ma l'importatore Aspose.Words utilizza i numeri ordinati 1, 2, 3, .... in caso di citazioni annidate.<br />Il nesting è definito tramite gli stili ereditati. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Gli elenchi puntati sono rappresentati utilizzando la numerazione dei paragrafi:<br />`ListFormat.ApplyBulletDefault()`<br /> Ci possono essere 3 tipi di elenchi puntati. Sono solo diff in un formato di numerazione del primo livello. Questi sono: `‘-’`, `‘+’` o `‘*’` rispettivamente. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Gli elenchi ordinati sono rappresentati utilizzando la numerazione dei paragrafi:<br />`ListFormat.ApplyNumberDefault()`<br /> Ci possono essere 2 marcatori di formato numerico: ‘.’ e ‘)’. Il marcatore predefinito è ‘.’. |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}} |  |

### Tavolo

Aspose.Words permette anche di tradurre le tabelle in DOM, come mostrato di seguito:

| Funzione Markdown | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | classi [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). |
| {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}} |  |

## Vedi anche

* [Lavorare con Markdown Caratteristiche](/words/java/working-with-markdown-features/)

