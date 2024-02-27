---
title: Confronta i documenti in C#
second_title: Aspose.Words per .NET
articleTitle: Confronta documenti
linktitle: Confronta documenti
description: "Confronta due documenti in qualsiasi formato supportato e mostra le modifiche al contenuto utilizzando C#. Puoi applicare opzioni avanzate durante il confronto."
type: docs
weight: 60
url: /it/net/compare-documents/
---

Il confronto dei documenti è un processo che identifica le modifiche tra due documenti e contiene le modifiche come revisioni. Questo processo confronta due documenti qualsiasi, comprese le versioni di un documento specifico, quindi le modifiche tra entrambi i documenti verranno visualizzate come revisioni nel primo documento.

Il metodo di confronto si ottiene confrontando le parole a livello di carattere o a livello di parola. Se una parola contiene una modifica di almeno un carattere, nel risultato la differenza verrà visualizzata come una modifica dell'intera parola e non di un carattere. Questo processo di confronto è un compito abituale nei settori legale e finanziario.

Invece di cercare manualmente le differenze tra documenti o tra diverse versioni degli stessi, puoi utilizzare Aspose.Words per confrontare documenti e ottenere modifiche al contenuto nella formattazione, intestazione/piè di pagina, tabelle e altro.

Questo articolo spiega come confrontare i documenti e come specificare le proprietà di confronto avanzate.

{{% alert color="primary" %}}

**Prova on-line**

Puoi confrontare due documenti online utilizzando lo strumento [Confronto di documenti online](https://products.aspose.app/words/comparison).

Tieni presente che il metodo di confronto, descritto di seguito, viene utilizzato in questo strumento per garantire l'ottenimento di risultati uguali. Quindi otterrai gli stessi risultati anche utilizzando lo strumento di confronto online o utilizzando il metodo di confronto in Aspose.Words.

{{% /alert %}}

## Limitazioni e formati di file supportati {#limitations-and-supported-file-formats}

Il confronto dei documenti è una funzionalità molto complessa. Esistono varie parti della combinazione di contenuti che devono essere analizzate per riconoscere tutte le differenze. Il motivo di questa complessità è dovuto al fatto che Aspose.Words mira a ottenere gli stessi risultati di confronto dell'algoritmo di confronto Microsoft Word.

La limitazione generale per due documenti da confrontare è che non devono avere revisioni prima di chiamare il metodo di confronto poiché questa limitazione esiste in Microsoft Word.

{{% alert color="primary" %}}

Tieni presente che puoi confrontare due documenti qualsiasi all'interno del [Formati di documenti supportati](/words/it/net/supported-document-formats/). Fondamentalmente, puoi confrontare gli oggetti del documento e persino creare quegli oggetti da zero senza avere alcun formato specifico.

{{% /alert %}}

## Confronta due documenti {#compare-two-documents}

Quando si confrontano i documenti, le differenze tra il secondo e il primo vengono visualizzate come revisioni del primo. Quando modifichi un documento, ogni modifica avrà la propria revisione dopo aver eseguito il metodo di confronto.

Aspose.Words ti consente di identificare le differenze tra i documenti utilizzando il metodo [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/): è simile alla funzione di confronto dei documenti Microsoft Word. Ti consente di controllare documenti o versioni di documenti per trovare differenze e modifiche, comprese modifiche alla formattazione come modifiche ai caratteri, modifiche alla spaziatura, aggiunta di parole e paragrafi.

Come risultato del confronto, i documenti possono essere determinati come uguali o non uguali. Il termine documenti "uguali" significa che il metodo di confronto non è in grado di rappresentare le modifiche come revisioni. Ciò significa che sia il testo del documento che la formattazione del testo sono gli stessi. Ma possono esserci altre differenze tra i documenti. Ad esempio, Microsoft Word supporta solo le revisioni del formato per gli stili e non è possibile rappresentare l'inserimento/eliminazione degli stili. Pertanto i documenti possono avere un diverso set di stili e il metodo **Compare** non produce ancora revisioni.

Il seguente esempio di codice mostra come verificare se due documenti sono uguali o meno:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Il seguente esempio di codice mostra come applicare semplicemente il metodo `Compare` a due documenti:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Specificare le opzioni di confronto avanzate {#specify-advanced-comparing-properties}

Esistono molte proprietà diverse della classe [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) che puoi applicare quando desideri confrontare documenti.

Ad esempio, Aspose.Words consente di ignorare le modifiche apportate durante un'operazione di confronto per determinati tipi di oggetti all'interno del documento originale. È possibile selezionare la proprietà appropriata per il tipo di oggetto, ad esempio [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/) e altre, impostandole su "true".

Inoltre Aspose.Words mette a disposizione la proprietà [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) con la quale è possibile specificare se tenere traccia delle modifiche per carattere o per parola.

Un'altra proprietà comune è la scelta del documento in cui mostrare i cambiamenti di confronto. Ad esempio, nella finestra di dialogo "Confronta documenti" in Microsoft Word è presente l'opzione "Mostra modifiche in" che influisce anche sui risultati del confronto. Aspose.Words fornisce la proprietà [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) che serve a questo scopo.

L'esempio di codice seguente mostra come impostare le proprietà di confronto avanzate:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
