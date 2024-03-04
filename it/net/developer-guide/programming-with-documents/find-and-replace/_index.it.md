---
title: Trova e sostituisci in C#
second_title: Aspose.Words per .NET
articleTitle: Trova e sostituisci
linktitle: Trova e sostituisci
type: docs
description: "Trova una stringa o un modello di espressione regolare nel tuo documento e sostituiscilo con il testo che desideri utilizzando C#."
weight: 100
url: /it/net/find-and-replace/
---

Puoi navigare facilmente all'interno del documento utilizzando tastiera e mouse, ma se hai molte pagine da scorrere, ci vorrà un po' di tempo per trovare il testo specifico in un documento lungo. Richiederà più tempo quando desideri sostituire determinati caratteri o parole che hai utilizzato nel tuo documento. La funzionalità "Trova e sostituisci" ti consente di trovare una sequenza di caratteri in un documento e sostituirla con un'altra sequenza di caratteri.

Aspose.Words ti consente di trovare una stringa specifica o un modello di espressione regolare nel tuo documento e sostituirlo con un'alternativa senza installare e utilizzare applicazioni aggiuntive come Microsoft Word. Ciò accelererà molte attività di digitazione e formattazione, risparmiando potenzialmente ore di lavoro.

Questo articolo spiega come applicare la sostituzione delle stringhe e le espressioni regolari con il supporto dei metacaratteri.

## Modi per trovare e sostituire {#ways-to-find-and-replace}

Aspose.Words fornisce due modi per applicare l'operazione di ricerca e sostituzione utilizzando quanto segue:

1. *Sostituzione stringa semplice* – per trovare e sostituire una stringa specifica con un'altra, è necessario specificare una stringa di ricerca (caratteri alfanumerici) che verrà sostituita in base a tutte le occorrenze con un'altra stringa di sostituzione specificata. Entrambe le stringhe non devono contenere simboli. Tieni presente che il confronto tra stringhe può fare distinzione tra maiuscole e minuscole, oppure potresti non essere sicuro dell'ortografia o avere diverse ortografie simili.
2. *Espressioni regolari* – per specificare un'espressione regolare per trovare le corrispondenze esatte della stringa e sostituirle in base all'espressione regolare. Tieni presente che una parola è definita come composta solo da caratteri alfanumerici. Se la sostituzione viene eseguita con la corrispondenza solo di parole intere e la stringa di input contiene simboli, non verrà trovata alcuna frase.

Inoltre, puoi utilizzare metacaratteri speciali con semplici sostituzioni di stringhe ed espressioni regolari per specificare interruzioni all'interno dell'operazione di ricerca e sostituzione.

Aspose.Words presenta la funzionalità di ricerca e sostituzione con lo spazio dei nomi [Aspose.Words.Replacing](https://reference.aspose.com/words/it/net/aspose.words.replacing/). Puoi lavorare con molte opzioni durante il processo di ricerca e sostituzione utilizzando la classe [FindReplaceOptions](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/).

### Trova e sostituisci testo utilizzando la semplice sostituzione di stringhe {#find-and-replace-text-using-simple-string-replacement}

È possibile utilizzare uno dei metodi [Replace](https://reference.aspose.com/words/it/net/aspose.words/range/replace/#replace/) per trovare o sostituire una stringa particolare e restituire il numero di sostituzioni effettuate. In questo caso, è possibile specificare una stringa da sostituire, una stringa che sostituirà tutte le sue occorrenze, se la sostituzione fa distinzione tra maiuscole e minuscole e se verranno influenzate solo le parole autonome.

L'esempio di codice seguente mostra come trovare la stringa "_CustomerName_" e sostituirla con la stringa *"James Bond"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Puoi notare la differenza tra il documento prima di applicare la semplice sostituzione della stringa:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="prima della semplice sostituzione della stringa" style="width:600px"/>

E dopo aver applicato la semplice sostituzione della stringa:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="dopo la semplice sostituzione della stringa" style="width:600px"/>

### Trova e sostituisci testo utilizzando le espressioni regolari {#find-and-replace-text-using-regular-expressions}

Un'espressione regolare (regex) è un modello che descrive una determinata sequenza di testo. Supponiamo di voler sostituire tutte le doppie occorrenze di una parola con un'occorrenza di parola singola. Quindi puoi applicare la seguente espressione regolare per specificare il modello a doppia parola: `([a-zA-Z]+) \1`.

Utilizza l'altro metodo [Replace](https://reference.aspose.com/words/it/net/aspose.words/range/replace/) per cercare e sostituire particolari combinazioni di caratteri impostando il parametro `Regex` come modello di espressione regolare per trovare corrispondenze.

L'esempio di codice seguente mostra come sostituire le stringhe che corrispondono a un modello di espressione regolare con una stringa di sostituzione specificata:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Puoi notare la differenza tra il documento prima di applicare la sostituzione della stringa con le espressioni regolari:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="prima della sostituzione con espressioni regolari" style="width:600px"/>

E dopo aver applicato la sostituzione delle stringhe con le espressioni regolari:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="dopo la sostituzione con espressioni regolari" style="width:600px"/>

### Trova e sostituisci la stringa utilizzando i metacaratteri {#find-and-replace-text-using-metacharacters}

È possibile utilizzare i metacaratteri nella stringa di ricerca o nella stringa di sostituzione se un particolare testo o frase è composto da più paragrafi, sezioni o pagine. Alcuni metacaratteri includono **&amp;P** per un'interruzione di paragrafo, **&amp;B** per un'interruzione di sezione, **&amp;M** per un'interruzione di pagina e **&amp;l** per un'interruzione di riga.

{{% alert color="primary" %}}

Tieni presente che il metacarattere **&&** è uguale a **&**. Ad esempio, se devi trovare testo per **&amp;P** che non sia un'interruzione di paragrafo, puoi utilizzare **&amp;&amp;P**.

{{% /alert %}}

L'esempio di codice seguente mostra come sostituire il testo con paragrafi e interruzioni di pagina:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Trova e sostituisci la stringa nell'intestazione/piè di pagina di un documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Puoi trovare e sostituire il testo nella sezione intestazione/piè di pagina di un documento Word utilizzando la classe [HeaderFooter](https://reference.aspose.com/words/it/net/aspose.words/headerfooter/).

Il seguente esempio di codice mostra come sostituire il testo della sezione di intestazione nel documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Puoi notare la differenza tra il documento prima di applicare la sostituzione della stringa di intestazione:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="prima di applicare la sostituzione della stringa di intestazione" style="width:600px"/>

E dopo aver applicato la sostituzione della stringa di intestazione:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="dopo l'applicazione della sostituzione della stringa di intestazione" style="width:600px"/>

L'esempio di codice per sostituire il testo della sezione piè di pagina nel documento è molto simile all'esempio di codice di intestazione precedente. Tutto quello che devi fare è sostituire le seguenti due righe:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Con quanto segue:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Puoi notare la differenza tra il documento prima di applicare la sostituzione della stringa del piè di pagina:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="prima di applicare la sostituzione della stringa del piè di pagina" style="width:600px"/>

E dopo aver applicato la sostituzione della stringa del piè di pagina:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="dopo l'applicazione della sostituzione della stringa del piè di pagina" style="width:600px"/>

## Ignora testo durante Trova e sostituisci {#ignore-text-during-find-and-replace}

Durante l'applicazione dell'operazione di ricerca e sostituzione, puoi ignorare alcuni segmenti del testo. Pertanto, alcune parti del testo possono essere escluse dalla ricerca e la ricerca e sostituzione può essere applicata solo alle parti rimanenti.

Aspose.Words fornisce molte proprietà di ricerca e sostituzione per ignorare testo come [IgnoreDeleted](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) e [IgnoreInserted](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

L'esempio di codice seguente mostra come ignorare il testo all'interno delle revisioni di eliminazione:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Personalizza l'operazione Trova e sostituisci {#customize-find-and-replace-operation}

Aspose.Words fornisce molti [properties](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/) diversi per trovare e sostituire testo, ad esempio applicando un formato specifico con proprietà [ApplyFont](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/applyfont/) e [ApplyParagraphFormats](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), utilizzando sostituzioni in modelli di sostituzione con proprietà [UseSubstitutions](https://reference.aspose.com/words/it/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) e altro.

Il seguente esempio di codice mostra come evidenziare una parola specifica nel documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words consente di utilizzare l'interfaccia [IReplacingCallback](https://reference.aspose.com/words/it/net/aspose.words.replacing/ireplacingcallback/) per creare e chiamare un metodo personalizzato durante un'operazione di sostituzione. Potresti avere alcuni casi d'uso in cui è necessario personalizzare l'operazione di ricerca e sostituzione, ad esempio sostituire il testo specificato con un'espressione regolare con tag HTML, quindi in pratica applicherai la sostituzione inserendo HTML.

Se devi sostituire una stringa con un tag HTML, applica l'interfaccia **IReplacingCallback** per personalizzare l'operazione di ricerca e sostituzione in modo che la corrispondenza inizi all'inizio di un'esecuzione con il nodo di corrispondenza del documento. Forniamo diversi esempi di utilizzo di **IReplacingCallback**.

L'esempio di codice seguente mostra come sostituire il testo specificato con HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Il seguente esempio di codice mostra come evidenziare i numeri positivi con il colore verde e i numeri negativi con il colore rosso:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

L'esempio di codice seguente mostra come anteporre un numero di riga a ciascuna riga:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
