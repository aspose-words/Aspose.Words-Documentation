---
title: Trova e sostituisci in Java
second_title: Aspose.Words per Java
articleTitle: Trova e sostituisci
linktitle: Trova e sostituisci
type: docs
description: "Trovare una stringa o un modello di espressione regolare nel documento e sostituirlo con il testo che si desidera utilizzare Java."
weight: 100
url: /it/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

È possibile navigare facilmente all'interno del documento utilizzando una tastiera e un mouse, ma se si dispone di molte pagine per scorrere attraverso, ci vorrà un po 'per trovare testo specifico in un lungo documento. Sarà più tempo consumando quando si desidera sostituire alcuni caratteri o parole che avete usato nel vostro documento. La funzionalità "Find and sostituire" consente di trovare una sequenza di caratteri in un documento e sostituirlo con un'altra sequenza di caratteri.

Aspose.Words consente di trovare una stringa specifica o un modello di espressione regolare nel documento e sostituirlo con un'alternativa senza installare e utilizzare applicazioni aggiuntive come Microsoft Word. Questo velocizzerà molte attività di digitazione e formattazione, potenzialmente risparmiando ore di lavoro.

Questo articolo spiega come applicare la sostituzione delle stringhe e le espressioni regolari con il supporto dei metacharacter.

## Modi per trovare e sostituire {#ways-to-find-and-replace}

Aspose.Words fornisce due modi per applicare la ricerca e sostituire l'operazione utilizzando i seguenti:

1. *Sostituzione semplice della stringa* – per trovare e sostituire una stringa specifica con un'altra, è necessario specificare una stringa di ricerca (caratteri alfanumerici) che verrà sostituita in base a tutte le occorrenze con un'altra stringa di sostituzione specificata. Entrambe le stringhe non devono contenere simboli. Tenere conto che il confronto delle stringhe può essere sensibile al caso, o si può essere incerti di ortografia o avere diverse ortografia simili.
2. *Espressioni regolari* – per specificare un'espressione regolare per trovare le partite esatte della stringa e sostituirle secondo la vostra espressione regolare. Si noti che una parola è definita come essere composta da soli caratteri alfanumerici. Se un sostituto viene eseguito con solo parole intere che vengono abbinate e la stringa di input avviene per contenere simboli, allora non si trovano frasi.

Inoltre, è possibile utilizzare metacaratteri speciali con sostituzioni di stringhe semplici e espressioni regolari per specificare le interruzioni all'interno dell'operazione di trovare e sostituire.

Aspose.Words presenta la funzionalità di ricerca e sostituzione con [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). È possibile lavorare con molte opzioni durante il processo di trovare e sostituire utilizzando [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) classe.

### Trova e sostituisci il testo utilizzando la sostituzione di stringa semplice {#find-and-replace-text-using-simple-string-replacement}

È possibile utilizzare uno dei [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) metodi per trovare o sostituire una stringa particolare e restituire il numero di sostituzioni che sono state fatte. In questo caso, è possibile specificare una stringa da sostituire, una stringa che sostituirà tutti i suoi eventi, se la sostituzione è caso-sensibile, e se solo parole stand-alone saranno interessate.

Il seguente esempio di codice mostra come trovare la stringa "_CustomerName_" e sostituirla con la stringa *"James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

È possibile notare la differenza tra il documento prima di applicare la sostituzione semplice della stringa:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

E dopo aver applicato la semplice sostituzione della stringa:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Trovare e sostituire il testo utilizzando espressioni regolari {#find-and-replace-text-using-regular-expressions}

Un'espressione regolare (regex) è un modello che descrive una certa sequenza di testo. Supponiamo che si desidera sostituire tutte le doppie occorrenze di una parola con un singolo evento parola. Quindi è possibile applicare la seguente espressione regolare per specificare il modello di doppia parola: `([a-zA-Z]+) \1`.

Utilizzare l'altro [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) metodo per cercare e sostituire particolari combinazioni di caratteri impostando il `Regex` parametro come modello di espressione regolare per trovare le partite.

Il seguente esempio di codice mostra come sostituire le stringhe che corrispondono a un modello di espressione regolare con una stringa di sostituzione specificata:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


È possibile notare la differenza tra il documento prima di applicare la sostituzione della stringa con espressioni regolari:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

E dopo aver applicato la sostituzione della stringa con espressioni regolari:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Trovare e sostituire lo stress utilizzando Metacharacters {#find-and-replace-text-using-metacharacters}

È possibile utilizzare metacaratteri nella stringa di ricerca o nella stringa di sostituzione se un testo o una frase particolare è composto da più paragrafi, sezioni o pagine. Alcuni dei metacaratteri includono **&p** per una pausa di paragrafo, **&b** per una pausa di sezione, **&m** per una pausa pagina, e **&l** per una pausa di linea.

{{% alert color="primary" %}}

Si noti che il metacharacter **&&** pari a **&**. Per esempio, se è necessario trovare il testo per **&p** che non è una pausa di paragrafo, allora è possibile **&&p**.

{{% /alert %}}

Il seguente esempio di codice mostra come sostituire il testo con il paragrafo e l'interruzione della pagina:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Trova e sostituisci lo stress intestazione/foto di un documento {#find-and-replace-string-in-header-or-footer-of-a-document}

È possibile trovare e sostituire il testo nella sezione intestazione/footer di un documento di Word utilizzando il [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) classe.

Il seguente esempio di codice mostra come sostituire il testo della sezione intestazione nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


È possibile notare la differenza tra il documento prima di applicare la sostituzione della stringa di intestazione:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

E dopo aver applicato la sostituzione della stringa di intestazione:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

L'esempio di codice per sostituire il testo della sezione del piè di pagina nel documento è molto simile al precedente esempio di codice dell'intestazione. Tutto quello che dovete fare è sostituire le seguenti due linee:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Con quanto segue:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


È possibile notare la differenza tra il documento prima di applicare la sostituzione della stringa di piè di pagina:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

E dopo aver applicato la sostituzione della stringa di piè di pagina:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignora il testo durante la ricerca e sostituzione {#ignore-text-during-find-and-replace}

Durante l'applicazione dell'operazione trovare e sostituire, è possibile ignorare alcuni segmenti del testo. Così, alcune parti del testo possono essere escluse dalla ricerca, e il trovare e sostituire può essere applicato solo alle parti rimanenti.

Aspose.Words fornisce molte proprietà di trovare e sostituire per ignorare il testo come [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), e [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Il seguente esempio di codice mostra come ignorare il testo all'interno cancella le revisioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Personalizza Trova e sostituisci l'operazione {#customize-find-and-replace-operation}

Aspose.Words fornisce molti diversi [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) per trovare e sostituire il testo come l'applicazione di formato specifico con [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) e [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) proprietà, utilizzando sostituzioni in modelli di sostituzione con [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) proprietà, e altri.

Il seguente esempio di codice mostra come evidenziare una parola specifica nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words consente di utilizzare il [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) interfaccia per creare e chiamare un metodo personalizzato durante un'operazione di sostituzione. Si possono avere alcuni casi di utilizzo in cui è necessario personalizzare l'operazione di trovare e sostituire, come la sostituzione del testo specificato con un'espressione regolare con i tag HTML, in modo da fondamentalmente si applicherà sostituire con l'inserimento di HTML.

Se è necessario sostituire una stringa con un tag HTML, applicare il **IReplacingCallback** interfaccia per personalizzare l'operazione trovare e sostituire in modo che la partita inizia all'inizio di una corsa con il nodo match del documento. Forniamo diversi esempi di utilizzo **IReplacingCallback**.

Il seguente esempio di codice mostra come sostituire il testo specificato con HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Il seguente esempio di codice mostra come evidenziare numeri positivi con colore verde e numeri negativi con colore rosso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Il seguente esempio di codice mostra come prependere un numero di linea ad ogni riga:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
