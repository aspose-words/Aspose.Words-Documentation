---
title: Confronta i documenti in C++
second_title: Aspose.Words per C++
articleTitle: Confronta documenti
linktitle: Confronta documenti
type: docs
description: "Confronta due documenti in qualsiasi formato supportato e mostra le modifiche al contenuto utilizzando C++. È possibile applicare opzioni avanzate durante il confronto."
weight: 60
url: /it/cpp/compare-documents/
---

Il confronto dei documenti è un processo che identifica le modifiche tra due documenti e contiene le modifiche come revisioni. Questo processo confronta due documenti, incluse le versioni di un documento specifico, quindi le modifiche tra entrambi i documenti verranno visualizzate come revisioni nel primo documento.

Il metodo di confronto si ottiene confrontando le parole a livello di carattere o a livello di parola. Se una parola contiene una modifica di almeno un carattere, nel risultato, la differenza verrà visualizzata come una modifica dell'intera parola, non come un carattere. Questo processo di confronto è un compito abituale nel settore legale e finanziario.

Invece di cercare manualmente le differenze tra i documenti o tra le diverse versioni di essi, è possibile utilizzare Aspose.Words per confrontare i documenti e ottenere modifiche al contenuto in formattazione, intestazione/piè di pagina, tabelle e altro ancora.

Questo articolo spiega come confrontare i documenti e come specificare le proprietà di confronto avanzate.

{{% alert color="primary" %}}

**Prova online**

È possibile confrontare due documenti online utilizzando il [Confronto documenti online](https://products.aspose.app/words/comparison) strumento.

Si noti che il metodo di confronto, descritto di seguito, viene utilizzato in questo strumento per garantire risultati uguali. Quindi otterrai gli stessi risultati anche utilizzando lo strumento di confronto online o utilizzando il metodo di confronto in Aspose.Words.

{{% /alert %}}

## Limitazioni e formati di file supportati {#limitations-and-supported-file-formats}

Confrontare i documenti è una caratteristica molto complessa. Ci sono varie parti della combinazione di contenuti che devono essere analizzate per riconoscere tutte le differenze. La ragione di questa complessità è dovuta al fatto che Aspose.Words mira a ottenere gli stessi risultati di confronto dell'algoritmo di confronto Microsoft Word.

La limitazione generale per due documenti che vengono confrontati è che non devono avere revisioni prima di chiamare il metodo di confronto poiché questa limitazione esiste in Microsoft Word.

{{% alert color="primary" %}}

Si noti che è possibile confrontare due documenti qualsiasi all'interno del [formati di file supportati](/words/cpp/supported-document-formats/). È possibile confrontare gli oggetti del documento e anche è possibile creare tali oggetti da zero senza avere alcun formato specifico.

{{% /alert %}}

## Confronta due documenti {#compare-two-documents}

Quando si confrontano i documenti, le differenze di quest'ultimo documento rispetto al primo vengono visualizzate come revisioni al primo. Quando si modifica un documento, ogni modifica avrà una propria revisione dopo aver eseguito il metodo di confronto.

Aspose.Words consente di identificare le differenze dei documenti utilizzando il metodo [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/), simile alla funzione di confronto dei documenti Microsoft Word. Esso consente di controllare i documenti o le versioni dei documenti per trovare le differenze e le modifiche, comprese le modifiche di formattazione come le modifiche dei caratteri, le modifiche di spaziatura, l'aggiunta di parole e paragrafi.

Come risultato del confronto, i documenti possono essere determinati come uguali o non uguali. Il termine documenti" uguali " significa che il metodo di confronto non è in grado di rappresentare le modifiche come revisioni. Ciò significa che sia il testo del documento che la formattazione del testo sono uguali. Ma ci possono essere altre differenze tra i documenti. Ad esempio, Microsoft Word supporta solo le revisioni del formato per gli stili e non è possibile rappresentare l'inserimento/l'eliminazione degli stili. Quindi i documenti possono avere un diverso insieme di stili e il metodo **Compare** non produce ancora revisioni.

Il seguente esempio di codice mostra come verificare se due documenti sono uguali o meno:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Il seguente esempio di codice mostra come applicare semplicemente il metodo `Compare` a due documenti:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Specificare opzioni di confronto avanzate {#specify-advanced-comparing-properties}

Esistono molte proprietà diverse della classe [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) che è possibile applicare quando si desidera confrontare i documenti.

Ad esempio, Aspose.Words consente di ignorare le modifiche apportate durante un'operazione di confronto per determinati tipi di oggetti all'interno del documento originale. È possibile selezionare la proprietà appropriata per il tipo di oggetto, ad esempio [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), e altri impostandoli su "vero".

Inoltre, Aspose.Words fornisce la proprietà [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) con cui è possibile specificare se tenere traccia delle modifiche per carattere o per parola.

Un'altra proprietà comune è una scelta in quale documento mostrare le modifiche di confronto. Ad esempio, la" Finestra di dialogo Confronta documenti "in Microsoft Word ha l'opzione" Mostra modifiche in " - questo influisce anche sui risultati del confronto. Aspose.Words fornisce la proprietà [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) che serve a questo scopo.

L'esempio di codice seguente mostra come impostare le proprietà di confronto avanzate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
