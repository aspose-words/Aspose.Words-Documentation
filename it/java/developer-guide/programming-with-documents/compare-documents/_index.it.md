---
title: Confronta Documenti in Java
second_title: Aspose.Words per Java
articleTitle: Confronta i documenti
linktitle: Confronta i documenti
type: docs
description: "Confronta due documenti in qualsiasi formato supportato e mostra le modifiche dei contenuti. È possibile applicare opzioni avanzate quando si confronta utilizzando Java."
weight: 60
url: /it/java/compare-documents/
---

I documenti comparati sono un processo che identifica i cambiamenti tra due documenti e contiene le modifiche come revisioni. Questo processo confronta i due documenti, comprese le versioni di un documento specifico, quindi le modifiche tra entrambi i documenti saranno mostrate come revisioni nel primo documento.

Il metodo di confronto è raggiunto confrontando le parole a livello di carattere o a livello di parola. Se una parola contiene un cambiamento di almeno un carattere, nel risultato, la differenza verrà visualizzata come un cambiamento dell'intera parola, non un carattere. Questo processo di confronto è un compito abituale nelle industrie legali e finanziarie.

Invece di cercare manualmente le differenze tra i documenti o tra le diverse versioni di essi, è possibile utilizzare Aspose.Words per confrontare documenti e ottenere modifiche di contenuto nella formattazione, intestazione / piè di pagina, tabelle e altro ancora.

Questo articolo spiega come confrontare i documenti e come specificare le proprietà di confronto avanzate.

{{% alert color="primary" %}}

**Prova online**

È possibile confrontare due documenti online utilizzando [Confronto dei documenti online](https://products.aspose.app/words/comparison) strumento.

Si noti che il metodo di confronto, descritto di seguito, viene utilizzato in questo strumento per garantire ottenere risultati uguali. Così si ottengono gli stessi risultati anche utilizzando lo strumento di confronto online o utilizzando il metodo di confronto in Aspose.Words.

{{% /alert %}}

## Limitazioni e formati di file supportati {#limitations-and-supported-file-formats}

I documenti comparati sono una caratteristica molto complessa. Ci sono varie parti di combinazione di contenuti che devono essere analizzati per riconoscere tutte le differenze. La ragione di questa complessità è perché Aspose.Words mira a ottenere gli stessi risultati di confronto come Microsoft Word algoritmo di confronto.

La limitazione generale di due documenti è che essi non devono avere revisioni prima di chiamare il metodo di confronto in quanto tale limitazione esiste in Microsoft Word.

{{% alert color="primary" %}}

Si noti che è possibile confrontare qualsiasi due documenti all'interno [Formati di documento supportati](/words/it/java/supported-document-formats/). Fondamentalmente, è possibile confrontare oggetti di documento e anche è possibile creare quegli oggetti da zero senza avere alcun formato specifico.

{{% /alert %}}

## Confronta due documenti {#compare-two-documents}

Quando si confrontano i documenti, le differenze di quest'ultimo documento dal primo mostrano come le revisioni al primo. Quando si modifica un documento, ogni modifica avrà una propria revisione dopo aver eseguito il metodo di confronto.

Aspose.Words consente di identificare le differenze di documenti utilizzando [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) metodo – questo è simile al Microsoft Word documento confrontare caratteristica. Consente di controllare i documenti o le versioni dei documenti per trovare le differenze e le modifiche, comprese le modifiche di formattazione come le modifiche del carattere, le modifiche di spaziatura, l'aggiunta di parole e paragrafi.

Come risultato del confronto, i documenti possono essere determinati come uguali o non uguali. Il termine "equal" documenti significa che il metodo di confronto non è in grado di rappresentare i cambiamenti come revisioni. Ciò significa che sia il testo del documento che la formattazione del testo sono gli stessi. Ma ci possono essere altre differenze tra i documenti. Per esempio, Microsoft Word supporta solo le revisioni di formato per gli stili, e non puoi rappresentare l'inserimento/delezione di stile. Così i documenti possono avere un insieme diverso di stili, e **Compare** metodo ancora non produce revisioni.

Il seguente esempio di codice mostra come controllare se due documenti sono uguali o meno:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Il seguente esempio di codice mostra come applicare semplicemente il `Compare` metodo a due documenti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Specificare opzioni di confronto avanzate {#specify-advanced-comparing-properties}

Ci sono molte proprietà diverse della [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) classe che è possibile applicare quando si desidera confrontare i documenti.

Per esempio, Aspose.Words consente di ignorare le modifiche effettuate durante un'operazione di confronto per alcuni tipi di oggetti all'interno del documento originale. È possibile selezionare la proprietà appropriata per il tipo di oggetto, come [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), e altri impostandoli a "true".

Inoltre, Aspose.Words fornisce [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) proprietà con cui è possibile specificare se monitorare le modifiche per carattere o per parola.

Un'altra proprietà comune è una scelta in cui documento per mostrare le modifiche di confronto. Ad esempio, la "Confronta documenti finestra di dialogo" in Microsoft Word ha l’opzione "Mostra modifiche" – questo influisce anche sui risultati di confronto. Aspose.Words fornisce [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) proprietà che serve questo scopo.

Il seguente esempio di codice mostra come impostare le proprietà di confronto avanzate:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
