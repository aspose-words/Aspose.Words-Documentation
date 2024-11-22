---
title: Annidato Mail Merge con regioni in C++
second_title: Aspose.Words per C++
articleTitle: Annidato Mail Merge con regioni
linktitle: Annidato Mail Merge con regioni
type: docs
description: "Eseguire un'operazione Mail Merge con regioni nidificate utilizzando C++. L'unione nidificata è una funzionalità che consente di unire i dati gerarchici dall'origine dati al modello di unione."
keywords: "mail merge with nested regions c++"
weight: 30
url: /it/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

In alcuni scenari, potrebbe essere necessario utilizzare nidificato Mail Merge con le regioni. L'unione nidificata è una funzionalità che consente di unire i dati gerarchici dall'origine dati al modello di unione per popolare facilmente il documento. Fondamentalmente, i dati gerarchici sono rappresentati come un insieme di elementi di dati e le relazioni gerarchiche descrivono come gli elementi di dati sono correlati tra loro (un elemento di dati è il genitore di un altro).

Aspose.Words consente di eseguire un'operazione Mail Merge con regioni annidate. È possibile utilizzare questa funzione se si dispone di un'origine dati organizzata in una struttura ad albero e si desidera eseguire un'operazione Mail Merge per popolare un modello con dati gerarchici.

{{% alert color="primary" %}}

Nidificato Mail Merge è rilevante solo quando si esegue un Mail Merge con regioni.

{{% /alert %}}

## Che cos'è un Mail Mergenidificato

La regione Mail Merge viene chiamata nidificata se si hanno due o più regioni Mail Merge in cui una di esse si trova all'interno dell'altra in una forma gerarchica. Si noti che ogni regione contiene dati da una tabella.

L'esempio più comune di un Mail Merge annidato è un ordine che contiene alcuni elementi in cui è necessario collegare molte tabelle di dati e presentare le informazioni in un modello.

L'immagine seguente mostra due regioni nidificate in cui la regione *Order* Mail Merge è la genitore della regione *Item* mail merge.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Come elaborare Mail Merge con le regioni nidificate

I dati da unire in un modello possono provenire da varie fonti, principalmente database relazionali o documenti XML. Nel nostro esempio, useremo un [SQLite](https://www.sqlite.org/index.html) database per memorizzare i nostri dati e caricarli con implementazione di origine dati personalizzata.

L'immagine seguente mostra come i dati della tabella *Order* passati alle regioni di unione nidificate saranno collegati alla tabella *Item*, nonché l'output generato durante l'operazione di unione.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Come si può vedere dal documento di output, ogni ordine dalla tabella **Order** viene inserito nel modello di unione con tutti gli elementi correlati dell'ordine dalla tabella **Item**. Il prossimo ordine verrà inserito insieme ai loro articoli fino a quando tutti gli ordini e gli articoli saranno elencati. L'ordine di nidificazione Mail Merge con le regioni nel modello deve corrispondere alle relazioni di dati tra le tabelle nell'origine dati.

## Come creare relazioni dati da un'origine dati personalizzata

Implementare l'interfaccia [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) per creare relazioni nella struttura padre-figlio dell'origine dati personalizzata. Utilizzare il metodo [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) per restituire i dati figlio rilevanti di un record padre corrente.

Nell'esempio di codice seguente viene illustrato come generare una fattura utilizzando nidificato Mail Merge con regioni da [SQLite](https://www.sqlite.org/index.html) database con [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
