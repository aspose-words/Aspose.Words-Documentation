---
title: Trova e sostituisci in Java
second_title: Aspose.Words per Java
articleTitle: Trova e sostituisci
linktitle: Trova e sostituisci
type: docs
description: "Trova una stringa o un modello di espressione regolare nel documento e sostituiscilo con il testo desiderato usando Java."
weight: 100
url: /it/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Puoi navigare facilmente all'interno del tuo documento usando una tastiera e un mouse, ma se hai molte pagine da scorrere, ci vorrà un po ' di tempo per trovare testo specifico in un documento lungo. Sarà più dispendioso in termini di tempo quando si desidera sostituire determinati caratteri o parole che sono stati utilizzati nel documento. La funzionalità "Trova e sostituisci" consente di trovare una sequenza di caratteri in un documento e sostituirla con un'altra sequenza di caratteri.

Aspose.Words consente di trovare una stringa specifica o un modello di espressione regolare nel documento e sostituirlo con un'alternativa senza installare e utilizzare applicazioni aggiuntive come Microsoft Word. Ciò velocizzerà molte attività di digitazione e formattazione, risparmiando potenzialmente ore di lavoro.

Questo articolo spiega come applicare la sostituzione delle stringhe e le espressioni regolari con il supporto dei metacaratteri.

## Modi per trovare e sostituire {#ways-to-find-and-replace}

Aspose.Words fornisce due modi per applicare l'operazione Trova e sostituisci utilizzando quanto segue:

1. *Simple string replacement* - per trovare e sostituire una stringa specifica con un'altra, è necessario specificare una stringa di ricerca (caratteri alfanumerici) che verrà sostituita in base a tutte le occorrenze con un'altra stringa di sostituzione specificata. Entrambe le stringhe non devono contenere simboli. Prendi in considerazione che il confronto delle stringhe può essere case-sensitive o potresti non essere sicuro dell'ortografia o avere diverse ortografie simili.
2. *Regular expressions* - per specificare un'espressione regolare per trovare le corrispondenze esatte della stringa e sostituirle in base all'espressione regolare. Si noti che una parola è definita come composta solo da caratteri alfanumerici. Se una sostituzione viene eseguita con solo parole intere che vengono abbinate e la stringa di input contiene simboli, non verrà trovata alcuna frase.

Inoltre, è possibile utilizzare metacaratteri speciali con semplice sostituzione di stringhe ed espressioni regolari per specificare le interruzioni all'interno dell'operazione trova e sostituisci.

Aspose.Words presenta la funzionalità trova e sostituisci con [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). È possibile lavorare con molte opzioni durante il processo di ricerca e sostituzione utilizzando la classe [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/).

### Trova e sostituisci il testo usando la sostituzione semplice delle stringhe {#find-and-replace-text-using-simple-string-replacement}

È possibile utilizzare uno dei metodi [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) per trovare o sostituire una stringa particolare e restituire il numero di sostituzioni effettuate. In questo caso, è possibile specificare una stringa da sostituire, una stringa che sostituirà tutte le sue occorrenze, se la sostituzione è case-sensitive e se saranno interessate solo le parole stand-alone.

Il seguente esempio di codice mostra come trovare la stringa "_CustomerName_ " e sostituirla con la stringa *"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

È possibile notare la differenza tra il documento prima di applicare la sostituzione semplice della stringa:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

E dopo aver applicato una semplice sostituzione delle corde:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Trovare e sostituire il testo usando le espressioni regolari {#find-and-replace-text-using-regular-expressions}

Un'espressione regolare (regex) è un modello che descrive una determinata sequenza di testo. Supponiamo di voler sostituire tutte le occorrenze doppie di una parola con una singola occorrenza di parola. Quindi è possibile applicare la seguente espressione regolare per specificare il modello a doppia parola: `([a-zA-Z]+) \1`.

Utilizzare l'altro metodo [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) per cercare e sostituire particolari combinazioni di caratteri impostando il parametro `Regex` come modello di espressione regolare per trovare corrispondenze.

L'esempio di codice seguente mostra come sostituire le stringhe che corrispondono a un modello di espressione regolare con una stringa di sostituzione specificata:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


È possibile notare la differenza tra il documento prima di applicare la sostituzione delle stringhe con le espressioni regolari:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

E dopo aver applicato la sostituzione delle stringhe con espressioni regolari:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Trova e sostituisci stringa usando metacaratteri {#find-and-replace-text-using-metacharacters}

È possibile utilizzare i metacaratteri nella stringa di ricerca o nella stringa di sostituzione se un determinato testo o frase è composto da più paragrafi, sezioni o pagine. Alcuni metacaratteri includono **&p** per un'interruzione di paragrafo, **&b** per un'interruzione di sezione, **&m** per un'interruzione di pagina e **&l** per un'interruzione di riga.

{{% alert color="primary" %}}

Si noti che il metacarattero **&&** è uguale a **&**. Ad esempio, se è necessario trovare il testo per **&p** che non è un'interruzione di paragrafo, è possibile utilizzare **&&p**.

{{% /alert %}}

Il seguente esempio di codice mostra come sostituire il testo con paragrafo e interruzione di pagina:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Trovare e sostituire la stringa nell'intestazione / piè di pagina di un documento {#find-and-replace-string-in-header-or-footer-of-a-document}

È possibile trovare e sostituire il testo nella sezione intestazione/piè di pagina di un documento Word utilizzando la classe [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/).

Il seguente esempio di codice mostra come sostituire il testo della sezione di intestazione nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


È possibile notare la differenza tra il documento prima di applicare la sostituzione della stringa di intestazione:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

E dopo aver applicato la sostituzione della stringa di intestazione:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

L'esempio di codice per sostituire il testo della sezione piè di pagina nel documento è molto simile al precedente esempio di codice di intestazione. Tutto quello che devi fare è sostituire le seguenti due righe:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Con il seguente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


È possibile notare la differenza tra il documento prima di applicare la sostituzione della stringa del piè di pagina:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

E dopo aver applicato la sostituzione della stringa del piè di pagina:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignora il testo durante Trova e sostituisci {#ignore-text-during-find-and-replace}

Durante l'applicazione dell'operazione Trova e sostituisci, è possibile ignorare determinati segmenti del testo. Quindi, alcune parti del testo possono essere escluse dalla ricerca e la ricerca e la sostituzione possono essere applicate solo alle parti rimanenti.

Aspose.Words fornisce molte proprietà trova e sostituisci per ignorare il testo come [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), e [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

L'esempio di codice seguente mostra come ignorare il testo all'interno di Elimina revisioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Personalizza l'operazione Trova e sostituisci {#customize-find-and-replace-operation}

Aspose.Words fornisce molti [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) diversi per trovare e sostituire il testo, ad esempio l'applicazione di un formato specifico con proprietà [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) e [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat), l'utilizzo di sostituzioni nei modelli di sostituzione con proprietà [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) e altri.

L'esempio di codice seguente mostra come evidenziare una parola specifica nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words consente di utilizzare l'interfaccia [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) per creare e chiamare un metodo personalizzato durante un'operazione di sostituzione. Potresti avere alcuni casi d'uso in cui è necessario personalizzare l'operazione trova e sostituisci come la sostituzione del testo specificato con un'espressione regolare con tag HTML, quindi in pratica applicherai replace con l'inserimento di HTML.

Se è necessario sostituire una stringa con un tag HTML, applicare l'interfaccia **IReplacingCallback** per personalizzare l'operazione trova e sostituisci in modo che la corrispondenza inizi all'inizio di un'esecuzione con il nodo di corrispondenza del documento. Forniamo alcuni esempi di utilizzo di **IReplacingCallback**.

Il seguente esempio di codice mostra come sostituire il testo specificato con HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Il seguente esempio di codice mostra come evidenziare numeri positivi con colore verde e numeri negativi con colore rosso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Il seguente esempio di codice mostra come anteporre un numero di riga a ciascuna riga:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
