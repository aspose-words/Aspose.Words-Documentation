---
title: Mail Merge con regioni in C++
second_title: Aspose.Words per C++
articleTitle: Mail Merge con Regioni
linktitle: Mail Merge con Regioni
type: docs
description: "Crea diverse regioni nel tuo modello per avere aree speciali che puoi semplicemente riempire con i tuoi dati. Utilizzare mail merge con regioni se si desidera inserire tabelle, righe con dati ripetuti per far crescere dinamicamente i documenti."
keywords: "how to execute mail merge c++"
weight: 20
url: /it/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Puoi creare diverse regioni nel tuo modello per avere aree speciali che puoi semplicemente riempire con i tuoi dati. Utilizzare mail merge con regioni se si desidera inserire tabelle, righe con dati ripetuti per far crescere dinamicamente i documenti specificando tali regioni all'interno del modello.

È possibile creare regioni nidificate (figlio) e unire le regioni. Il vantaggio principale dell'utilizzo di questo tipo è quello di aumentare dinamicamente le parti all'interno di un documento. Vedere ulteriori dettagli nel prossimo articolo "Annidato Mail Merge con regioni".

{{% alert color="primary" %}}

Le informazioni su una regione mail merge possono essere ottenute usando la classe [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

## Come eseguire Mail Merge con le regioni

Una regione mail merge è una parte specifica all'interno di un documento che ha un punto iniziale e un punto finale. Entrambi i punti sono rappresentati come campi mail merge con nomi specifici *"TableStart:XXX"* e *"TableEnd:XXX"*. Tutto il contenuto incluso in un'area mail merge verrà automaticamente ripetuto per ogni record nell'origine dati.

Aspose.Words consente di eseguire mail merge con regioni utilizzando uno dei metodi [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) che accettano l'origine dati personalizzata [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/).

Il seguente esempio di codice mostra come eseguire mail merge con regioni dal database sqlite con [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

È possibile notare la differenza tra il documento prima di eseguire mail merge con le regioni:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

E dopo aver eseguito mail merge con le regioni:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Limitazioni di Mail Merge con le regioni

Ci sono alcuni punti importanti che è necessario considerare quando si esegue un mail merge con le regioni:

* Il punto iniziale *TableStart:Orders* e il punto finale *TableEnd:Orders* devono essere entrambi nella stessa riga o cella. Ad esempio, se si avvia un'area di unione in una cella di una tabella, è necessario terminare l'area di unione nella stessa riga della prima cella.
  Il nome del campo Unione deve corrispondere al nome della colonna in DataTable. A meno che non si specifichino campi mappati, mail merge con regioni non avrà successo per qualsiasi campo di unione con un nome diverso dal nome della colonna.
* Aspose.Words per C++ supporta solo origini dati basate su [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) e [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/). A differenza di .NET e Java, C++ non ha una piattaforma multipiattaforma generalmente accettata API per lavorare con i database (come ADODB, ODBC o JDBC). Per lavorare con un'origine dati specifica, è necessario implementare l'interfaccia [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) o [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/).

Se una di queste regole viene infranta, si otterranno risultati imprevisti o potrebbe essere generata un'eccezione.

{{% alert color="primary" %}}

Se non si utilizzano aree mail merge, sarà simile a Microsoft Word mail merge e l'intero contenuto del documento verrà ripetuto per ogni record nell'origine dati.

{{% /alert %}}

