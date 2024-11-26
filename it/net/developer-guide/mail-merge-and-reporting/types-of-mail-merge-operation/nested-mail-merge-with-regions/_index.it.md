---
title: Annidato Mail Merge con regioni in C#
second_title: Aspose.Words per .NET
articleTitle: Annidato Mail Merge con regioni
linktitle: Annidato Mail Merge con regioni
type: docs
description: "Eseguire un'operazione Mail Merge con regioni nidificate usando C#. L'unione nidificata è una funzionalità che consente di unire i dati gerarchici dall'origine dati al modello di unione."
keywords: "mail merge with nested regions c#"
weight: 10
url: /it/net/nested-mail-merge-with-regions/
timestamp: 2024-07-11-08-07-06
---

In alcuni scenari, potrebbe essere necessario utilizzare nidificato Mail Merge con le regioni. L'unione nidificata è una funzionalità che consente di unire i dati gerarchici dall'origine dati al modello di unione per popolare facilmente il documento. Fondamentalmente, i dati gerarchici sono rappresentati come un insieme di elementi di dati e le relazioni gerarchiche descrivono come gli elementi di dati sono correlati tra loro (un elemento di dati è il genitore di un altro).

Aspose.Words consente di eseguire un'operazione Mail Merge con regioni annidate. È possibile utilizzare questa funzione se si dispone di un'origine dati organizzata in una struttura ad albero e si desidera eseguire un'operazione Mail Merge per popolare un modello con dati gerarchici.

{{% alert color="primary" %}}

Nidificato Mail Merge è rilevante solo quando si esegue un Mail Merge con regioni.

{{% /alert %}}

## Che cos'è un Mail Mergenidificato

La regione Mail Merge viene chiamata nidificata se si hanno due o più regioni Mail Merge in cui una di esse si trova all'interno dell'altra in una forma gerarchica. Si noti che ogni regione contiene dati da una tabella.

L'esempio più comune di un Mail Merge annidato è un ordine che contiene più elementi in cui è necessario collegare più tabelle di dati e presentare le informazioni in un modello.

L'immagine seguente mostra due regioni nidificate in cui la regione *Order* Mail Merge è la genitore della regione *Item* Mail Merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Come elaborare Mail Merge con le regioni nidificate

I dati da unire in un modello possono provenire da varie fonti, principalmente database relazionali o documenti XML. Nel nostro esempio, useremo un file XML per memorizzare i nostri dati e caricarli direttamente nel **DataSet**.

Aspose.Words consente di elaborare Mail Merge con regioni nidificate utilizzando le relazioni dati specificate in **DataSet**. Quando l'oggetto **DataSet** carica XML, utilizza lo schema fornito o lo deduce dalla struttura del XML stesso per farlo. Da questa struttura, crea relazioni tra tabelle dove necessario.

L'immagine seguente mostra come i dati della tabella *Order* passati alle regioni di unione nidificate saranno collegati alla tabella *Item*, nonché l'output generato durante l'operazione di unione.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Come si può vedere dal documento di output, ogni ordine dalla tabella **Order** viene inserito nel modello di unione con tutti gli elementi correlati dell'ordine dalla tabella **Item**. Il prossimo ordine verrà inserito insieme ai loro articoli fino a quando tutti gli ordini e gli articoli saranno elencati. L'ordine di nidificazione Mail Merge con le regioni nel modello deve corrispondere alle relazioni di dati tra le tabelle nell'origine dati.

L'esempio di codice seguente mostra come generare una fattura utilizzando nidificato Mail Merge con regioni:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "nested-mail-merge.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Orders.xml).

È possibile verificare l'implementazione della configurazione manuale delle relazioni dati da [Aspose.Words Github](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Mail%20Merge%20and%20Reporting/Complex%20examples%20and%20helpers/Nested%20MailMerge%20custom.cs).

{{% /alert %}}

## Come impostare le relazioni dati in annidato Mail Merge con le regioni

È necessario impostare tutte le relazioni dati nella struttura padre-figlio per eseguire correttamente il Mail Merge nidificato con le regioni. Saltare questo passaggio importante può portare a un errore nell'esecuzione di Mail Merge nidificato con regioni.

Quando si recuperano dati per un Mail Merge nidificato da un file XML utilizzando il metodo **ReadXml**, le relazioni vengono create automaticamente in base alla struttura del documento XML. Tuttavia, è necessario assicurarsi che siano state create relazioni corrette.

Se Mail Merge non funziona come previsto, potrebbe essere necessario ristrutturare il file XML o creare esplicitamente relazioni tra gli oggetti DataTable nel DataSet.

Un `DataSet` con tabelle di dati correlate utilizzerà l'oggetto **DataRelation** per rappresentare la relazione padre-figlio tra le tabelle.

L'esempio di codice seguente mostra come stabilire un `DataRelation` tra la tabella di un cliente e la tabella di un ordine utilizzando un oggetto `DataRelation`:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "disable-foreign-key-constraints.cs" >}}

## Come creare relazioni dati da un'origine dati personalizzata

Implementare l'interfaccia [IMailMergeDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/) per creare relazioni nella struttura padre-figlio dell'origine dati personalizzata. Utilizzare il metodo [GetChildDataSource](https://reference.aspose.com/words/net/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) per restituire i dati figlio rilevanti di un record padre corrente.

L'esempio seguente mostra come creare relazioni dati utilizzando **GetChildDataSource**:

{{< gist "aspose-words-gists" "c68048adceb3bda6a1511c7d6f5ebf7b" "get-child-data-source.cs" >}}
