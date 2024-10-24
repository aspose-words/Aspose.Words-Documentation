---
title: Traduttore Markdown a DOM
second_title: Aspose.Words per Java
articleTitle: Traduttore Markdown a Document Object Model (DOM)
linktitle: Traduttore Markdown a Document Object Model (DOM)
type: docs
description: "Tarnslate un Markdown documento a Document Object Model e indietro. Così si può lavorare con complesso esistente Markdown e creare programmaticamente Markdown documento da zero utilizzando Java."
weight: 20
url: /it/java/translate-markdown-to-document-object-model/
---

Per leggere, manipolare e modificare programmaticamente il contenuto e la formattazione di un documento, è necessario tradurlo al Aspose.Words Document Object Model (DOM).

In contrasto con i documenti di Word, Markdown non conforme a DOM descritto nel [Aspose.Words Document Object Model (DOM)](/words/it/java/aspose-words-document-object-model/) articolo. Tuttavia, Aspose.Words fornisce il proprio meccanismo per la traduzione Markdown documenti DOM e indietro, in modo che possiamo lavorare con successo con i loro elementi come la formattazione del testo, tabelle, intestazioni e altri.

Questo articolo spiega come i vari markdown caratteristiche possono essere tradotte in Aspose.Words DOM e torna a Markdown formato.

## Complessità della traduzione Markdown – DOM – Markdown

La principale difficoltà di questo meccanismo non è solo tradurre Markdown a DOM, ma anche per fare la trasformazione inversa – per salvare il documento a Markdown formato con perdita minima. Ci sono elementi, come citazioni multilivello, per cui la trasformazione inversa non è banale.

Il nostro motore di traduzione consente agli utenti non solo di lavorare con elementi complessi in un esistente Markdown documento, ma anche per creare il proprio documento Markdown formato con la struttura originale da zero. Per creare vari elementi, è necessario utilizzare stili con nomi specifici secondo alcune regole descritte in seguito in questo articolo. Tali stili possono essere creati programmaticamente.

## Traduzione comune Principi

Usiamo [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formattazione per blocchi in linea. Quando non c'è corrispondenza diretta per una Markdown funzione in Aspose.Words DOM, usiamo uno stile di carattere con un nome che parte da alcune parole speciali.

Per i blocchi di container, usiamo eredità di stile per denotare nidificato Markdown caratteristiche. In questo caso, anche quando non ci sono caratteristiche nidificate, utilizziamo anche stili di paragrafo con un nome che parte da alcune parole speciali.

Le liste Bulleted e ordinate sono blocchi di container in Markdown E anche. La loro nidificazione è rappresentata in DOM lo stesso modo di tutti gli altri blocchi di container utilizzando eredità di stile. Tuttavia, inoltre, le liste in DOM hanno corrisposto la formattazione del numero in uno stile di elenco o nella formattazione del paragrafo.

## Blocchi in linea

Usiamo [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) formattazione quando si traduce **Bold**, *Italic* o ~ ~ ~ ~ ~ ~ Inline ~ markdown caratteristiche.

|  Markdown caratteristica |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **Bold**<br/>`{1}` |  `Font.Bold = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BoldText.java" >}}  |  |
|  **Italic**<br/>`*italic text*` |  `Font.Italic = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-ItalicText.java" >}}  |  |
|  **Strikethrough**<br/>`~Strikethrough text~` |  `Font.StrikeThrough = true`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Strikethrough.java" >}}  |  |

Usiamo uno stile di carattere con un nome che parte dalla parola <span notrans="<span notrans=" `InlineCode`"=""></span>> seguito da un punto opzionale `(.)` e un certo numero di backticks ```(`)``` per il `InlineCode` caratteristica. Se un certo numero di backticks è mancato, un backtick verrà utilizzato per impostazione predefinita.

|  Markdown caratteristica |   Aspose.Words        |
|  -----------------------------  |  ------------------  |
|  **InlineCode**<br/>`{1}` |  `Font.StyleName = “InlineCode[.][N]”`  |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-InlineCode.java" >}}  |  |
|  **Autolink**<br/>`<scheme://domain.com>`<br/>`<email@domain.com>` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) classe |
|     {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Autolink.java" >}}  |  |
|  **Link**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) classe |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Link.java" >}}  |  |
|  **Image**<br/>`{1}`<br/>`{2}`<br/>`{3}`<br/>`{4})` |  The [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Image.java" >}}  |  |

## Blocchi contenitore

Un documento è una sequenza di blocchi di container come voci, paragrafi, liste, citazioni e altri. I blocchi del contenitore possono essere suddivisi in 2 classi: Blocchi di foglie e contenitori complessi. I blocchi di foglie possono contenere solo contenuti in linea. I contenitori complessi, a loro volta, possono contenere altri blocchi di container, compresi i blocchi Leaf.

### Blocchi fogliari

La tabella seguente mostra esempi di utilizzo Markdown Blocchi di foglie in Aspose.Words:

|  Markdown caratteristica |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **HorizontalRule**<br/>`-----` |  Questo è un semplice paragrafo con una corrispondente forma orizzontaleRule:<br/>`DocumentBuilder.InsertHorizontalRule()` |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-HorizontalRule.java" >}}  |                                                                |
|  **ATX Heading**<br/>`# H1, ## H2, ### H3…` |  `ParagraphFormat.StyleName = “Heading N”`, dove (1 <= N <= 9).<br/>Questo è tradotto in uno stile incorporato e dovrebbe essere esattamente del modello specificato (non sono ammessi suffissi o prefissi).<br/>In caso contrario, sarà solo un paragrafo regolare con uno stile corrispondente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Heading.java" >}}  |                                                                |
|  **Setext Heading**<br/>`===` (se Livello di testa 1),<br/>`---` (se Livello di testa 2) |  `ParagraphFormat.StyleName = “SetextHeading[some suffix]”`, sulla base `“Heading N”` stile.<br/>Se (N >= 2), allora `“Heading 2”` sarà usato, altrimenti `“Heading 1”`.<br/>Qualsiasi suffisso è consentito, ma Aspose.Words importatore utilizza i numeri "1" e "2" rispettivamente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SetextHeading.java" >}}  |                                                                |
|   **Indented Code**                                             |  `ParagraphFormat.StyleName = “IndentedCode[some suffix]”`     |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-IndentedCode.java" >}}  |                                                                |
|  **Fenced Code**<br/>{{< highlight java >}}``` java
if ()
then
else
```{{< /highlight >}} |  `ParagraphFormat.StyleName = “FencedCode[.][info string]”`<br/>The `[.]` e `[info string]` sono facoltativi |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-FencedCode.java" >}}   |                                                                |

### Contenitori complessi

La tabella seguente mostra esempi di utilizzo Markdown Contenitori complessi in Aspose.Words:

|  Markdown caratteristica |   Aspose.Words                                                  |
|  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  **Quote**<br/>`> quote,`<br/>`>> nested quote` |  `ParagraphFormat.StyleName = “Quote[some suffix]”`<br/>Il suffisso in nome di stile è facoltativo, ma Aspose.Words importatore utilizza i numeri ordinati 1, 2, 3, .... in caso di preventivi nidi.<br/>La nidificazione è definita attraverso gli stili ereditati |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Quote.java" >}}  |                                                                |
|  **BulletedList**<br/>`- Item 1`<br/>`- Item 2`<br/> `   - Item 2a`<br/> `   - Item 2b` |  Le liste provviste sono rappresentate utilizzando la numerazione del paragrafo:<br/>`ListFormat.ApplyBulletDefault()`<br/>Ci possono essere 3 tipi di elenchi puntati. Sono solo diff in un formato di numerazione del primo livello. Questi sono: `‘-’`, `‘+’` o `‘*’` rispettivamente |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-BulletedList.java" >}}  |                                                                |
|  **OrderedList**<br/>`1. Item 1`<br/>`2. Item 2`<br/> `1) Item 2a`<br/> `2) Item 2b` |  Gli elenchi ordinati sono rappresentati utilizzando la numerazione del paragrafo:<br/>`ListFormat.ApplyNumberDefault()`<br/>Ci possono essere 2 marcatori di formato numeri: ‘.’ e ‘)’. Il marcatore predefinito è ‘.’ |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-OrderedList.java" >}}  |                                                                |

### Tavole

Aspose.Words permette anche di tradurre i tavoli in DOM, come mostrato di seguito:

|  Markdown caratteristica |   Aspose.Words                                                  |
|  ----------------------------------------  |  ------------------------------------------------------------  |
|  `Table`<br/># | B`<br />`- No | - No.`<br />`C|D # |  [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) classi |
|   {{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-Table.java" >}}  |                                                                |

## Vedi anche

* [Lavorare Markdown Condividi su Twitter](/words/it/java/working-with-markdown-features/)

