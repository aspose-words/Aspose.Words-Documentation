---
title: Traduci Markdown in Document Object Model (DOM)
second_title: Aspose.Words per C++
articleTitle: Traduci Markdown in Document Object Model (DOM)
linktitle: Traduci Markdown in Document Object Model (DOM)
type: docs
description: "Tarnslate un documento Markdown per documentare il modello a oggetti e viceversa utilizzando C++. In questo modo è possibile lavorare con complessi Markdown esistenti e creare a livello di codice un documento Markdown da zero."
weight: 20
url: /it/cpp/translate-markdown-to-document-object-model/
timestamp: 2024-10-21-11-17-44
---

Per leggere, manipolare e modificare in modo programmatico il contenuto e la formattazione di un documento, è necessario tradurlo in Aspose.Words Document Object Model (DOM).

A differenza dei documenti Word, Markdown non è conforme al DOM descritto nel [Aspose.Words Modello a oggetti documento (DOM)](/words/cpp/aspose-words-document-object-model/) articolo. Tuttavia, Aspose.Words fornisce il proprio meccanismo per tradurre i documenti Markdown in DOM e viceversa, in modo da poter lavorare con successo con i loro elementi come la formattazione del testo, le tabelle, le intestazioni e altri.

Questo articolo spiega come le varie funzionalità di markdown possono essere tradotte in Aspose.Words DOM e di nuovo in formato Markdown.

## Complessità della traduzione Markdown – DOM – Markdown

La principale difficoltà di questo meccanismo non è solo quella di tradurre Markdown in DOM, ma anche di eseguire la trasformazione inversa – per salvare il documento nel formato Markdown con una perdita minima. Ci sono elementi, come le virgolette multilivello, per i quali la trasformazione inversa non è banale.

Il nostro motore di traduzione consente agli utenti non solo di lavorare con elementi complessi in un documento Markdown esistente, ma anche di creare il proprio documento in formato Markdown con la struttura originale da zero. Per creare vari elementi, è necessario utilizzare stili con nomi specifici in base a determinate regole descritte più avanti in questo articolo. Tali stili possono essere creati a livello di programmazione.

## Principi comuni di traduzione

Usiamo la formattazione [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) per i blocchi in linea. Quando non c'è corrispondenza diretta per una funzione Markdown in Aspose.Words DOM, usiamo uno stile di carattere con un nome che inizia da alcune parole speciali.

Per i blocchi contenitore, usiamo l'ereditarietà dello stile per indicare le funzionalità annidate Markdown. In questo caso, anche quando non ci sono caratteristiche nidificate, usiamo anche stili di paragrafo con un nome che inizia da alcune parole speciali.

Gli elenchi puntati e ordinati sono anche blocchi contenitore in Markdown. Il loro nesting è rappresentato in DOM allo stesso modo di tutti gli altri blocchi contenitore usando l'ereditarietà dello stile. Tuttavia, inoltre, gli elenchi in DOM hanno una formattazione numerica corrispondente in stile elenco o formattazione di paragrafo.

## Blocchi in linea

Usiamo la formattazione [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) quando traduciamo le funzionalità **Bold**, *Italic* o ~~Strikethrough~~ inline markdown.

| Funzione Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **Bold**<br />`**bold text**` | `get_Font()->set_Bold(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BoldText.h" >}} |  |
| **Italic**<br />`*italic text*` | `get_Font()->set_Italic(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-ItalicText.h" >}} |  |
| **Strikethrough**<br />`~Strikethrough text~` | `get_Font()->set_StrikeThrough(true)` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Strikethrough.h" >}} |  |

Usiamo uno stile di carattere con un nome che inizia dalla parola `InlineCode`, seguito da un punto opzionale `(.)` e un numero di backticks ```(`)``` per la funzione `InlineCode`. Se un numero di backtick viene perso, verrà utilizzato un backtick per impostazione predefinita.

| Funzione Markdown | Aspose.Words |
| ----------------------------- | ------------------ |
| **InlineCode**<br />`**inline code**` | `get_Font()->set_StyleName(u"InlineCode[.][N]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-InlineCode.h" >}} |  |
| **Autolink**<br />`<scheme://domain.com>`<br />`<email@domain.com>` | La classe [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Autolink.h" >}} |  |
| **Link**<br />`[link text](url)`<br />`[link text](<url>"title")`<br />`[link text](url 'title')`<br />`[link text](url (title))` | La classe [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Link.h" >}} |  |
| **Image**<br />`![](url)`<br />`![alt text](<url>"title")`<br />`![alt text](url ‘title’)`<br />`![alt text](url (title))` | La classe [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Image.h" >}} |  |

## Blocchi contenitore

Un documento è una sequenza di blocchi contenitore come intestazioni, paragrafi, elenchi, virgolette e altri. I blocchi contenitore possono essere suddivisi in classi 2: blocchi foglia e Contenitori complessi. I blocchi foglia possono contenere solo contenuti in linea. I contenitori complessi, a loro volta, possono contenere altri blocchi contenitore, inclusi i blocchi foglia.

### Blocchi foglia

La tabella seguente mostra esempi di utilizzo dei blocchi foglia Markdown in Aspose.Words:

| Funzione Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **HorizontalRule**<br />`-----` | Questo è un paragrafo semplice con una forma corrispondente HorizontalRule:<br />`DocumentBuilder::InsertHorizontalRule()` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-HorizontalRule.h" >}} |  |
| **ATX Heading**<br />`# H1, ## H2, ### H3…` | `get_ParagraphFormat()->set_StyleName(u"Heading N")`, dove (1<= E <= 9).<br />Questo è tradotto in uno stile incorporato e dovrebbe essere esattamente del modello specificato (non sono consentiti suffissi o prefissi).<br />Altrimenti, sarà solo un paragrafo regolare con uno stile corrispondente. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Heading.h" >}} |  |
| **Setext Heading**<br />`===` (if Heading level 1),<br />`---` (if Heading level 2) | `get_ParagraphFormat->set_StyleName(u"SetextHeading[some suffix]")`, basato sullo stile `"Heading N"`.<br />Se (N > = 2), allora verrà usato `"Heading 2"`, altrimenti `"Heading 1"`.<br />Qualsiasi suffisso è consentito, ma l'importatore Aspose.Words utilizza rispettivamente i numeri "1" e" 2". |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-SetextHeading.h" >}} |  |
| **Indented Code** | `get_ParagraphFormat->set_StyleName(u"IndentedCode[some suffix]")` |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-IndentedCode.h" >}} |  |
| **Fenced Code**<br />{{< highlight csharp >}}``` c#
if ()
then
else
```{{< /highlight >}} | `get_ParagraphFormat()->set_StyleName(u"FencedCode[.][info string]")`<br /> `[.]` e `[info string]` sono facoltativi. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-FencedCode.h" >}} |  |

### Contenitori complessi

La tabella seguente mostra esempi di utilizzo di contenitori complessi Markdown in Aspose.Words:

| Funzione Markdown | Aspose.Words |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Quote**<br />`> quote,`<br />`>> nested quote` | `get_ParagraphFormat()->set_StyleName(u"Quote[some suffix]")`<br /> Il suffisso in nome stile è facoltativo ,ma Aspose.Words importatore utilizza i numeri ordinati1, 2, 3, .... in caso di citazioni annidate.<br />Il nesting è definito tramite gli stili ereditati. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Quote.h" >}} |  |
| **BulletedList**<br />`- Item 1`<br />`- Item 2`<br />	` - Item 2a`<br />	` - Item 2b` | Gli elenchi puntati sono rappresentati utilizzando la numerazione dei paragrafi:<br />`get_ListFormat()->ApplyBulletDefault()`<br /> Ci possono essere 3 tipi di elenchi puntati. Sono solo diff in un formato di numerazione del primo livello. Questi sono: `‘-’`, `‘+’` o `‘*’` rispettivamente. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-BulletedList.h" >}} |  |
| **OrderedList**<br />`1. Item 1`<br />`2. Item 2`<br />	`1) Item 2a`<br />	`2) Item 2b` | Gli elenchi ordinati sono rappresentati utilizzando la numerazione dei paragrafi:<br />`get_ListFormat()->ApplyNumberDefault()`<br /> Ci possono essere marcatori di formato numerico 2: ‘.’ e ‘)’. Il marcatore predefinito è ‘.’. |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-OrderedList.h" >}} |  |

### Tavolo

Aspose.Words permette anche di tradurre le tabelle in DOM, come mostrato di seguito:

| Funzione Markdown | Aspose.Words |
| ---------------------------------------- | ------------------------------------------------------------ |
| `Table`<br />`a|b`<br />`-|-`<br />`c|d` | classi [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). |
| {{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Markdown-Table.h" >}} |  |

## Vedi anche

* [Lavorare con Markdown Caratteristiche](/words/cpp/working-with-markdown-features/)

