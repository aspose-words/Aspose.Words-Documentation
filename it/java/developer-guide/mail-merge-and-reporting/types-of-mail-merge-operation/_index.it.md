---
title: Tipi di operazioni Mail Merge in Java
second_title: Aspose.Words per Java
articleTitle: Tipi di operazione Mail Merge
linktitle: Tipi di operazione Mail Merge
type: docs
description: "Eseguire due diversi tipi di operazioni Mail Merge: semplice Mail Merge e Mail Merge con regioni. Simple Mail Merge ripete l'intero documento per ogni record di origine dati, mentre Mail Merge con regions ripete solo le regioni designate per record usando Java."
keywords: "how to execute Mail Merge java, Mail Merge Java, Simple Mail Merge"
weight: 20
url: /it/java/types-of-mail-merge-operations/
timestamp: 2024-01-27-14-07-04
---

L'idea principale di Mail Merge è creare automaticamente un documento o più documenti in base al modello e ai dati recuperati dall'origine dati. Aspose.Words consente di eseguire due diversi tipi di operazioni Mail Merge: semplice Mail Merge e Mail Merge con regioni.

L'esempio più comune di utilizzo di simple Mail Merge è quando si desidera inviare un documento per diversi client includendo i loro nomi all'inizio del documento. A tale scopo, è necessario creare campi di unione come *First Name* e *Last Name* nel modello e quindi compilarli con i dati dell'origine dati. Mentre l'esempio più comune di utilizzo di Mail Merge con le regioni è quando si desidera inviare un documento che include ordini specifici con l'elenco di tutti gli articoli all'interno di ciascun ordine. Per fare ciò, è necessario creare regioni di unione all'interno della propria regione del modello per ogni ordine, in modo da riempirlo con tutti i dati richiesti per gli elementi.

La differenza principale tra entrambe le operazioni di unione è che semplice Mail Merge (senza regioni) ripete l'intero documento per ogni record di origine dati, mentre Mail Merge con regioni ripete solo le regioni designate per record. Si può pensare a una semplice operazione Mail Merge come un caso particolare di unione con regioni in cui l'unica regione è l'intero documento.

{{% alert color="primary" %}}

La classe [MailMerge](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/) rappresenta una funzionalità Mail Merge. Con le sue proprietà, è possibile personalizzare il comportamento richiesto prima di eseguire un'operazione Mail Merge.

{{% /alert %}}

## SempliceMail MergeOperazione {#simple-mail-merge-operation}

Un semplice Mail Merge viene utilizzato per riempire i campi Mail Merge all'interno del modello con i dati richiesti dall'origine dati (rappresentazione di tabella singola). Quindi è simile al classico Mail Merge in Microsoft Word.

È possibile aggiungere uno o più campi di unione nel modello e quindi eseguire la semplice operazione Mail Merge. Si consiglia di utilizzarlo se il modello non contiene regioni di unione.

La limitazione principale dell'utilizzo di questo tipo è che l'intero contenuto del documento verrà ripetuto per ogni record nell'origine dati.

### Come eseguire una semplice operazione Mail Merge {#how-to-execute-a-simple-mail-merge-operation}

Una volta che il modello è pronto, è possibile iniziare a eseguire la semplice operazione Mail Merge. Aspose.Words consente di eseguire una semplice operazione Mail Merge utilizzando diversi [Esegui metodi](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-com.aspose.words.IMailMergeDataSource) che accettano vari oggetti dati come origine dati.

Il seguente esempio di codice mostra come eseguire una semplice operazione Mail Merge utilizzando uno dei metodi [Execute](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#execute-java.lang.String---java.lang.Object):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-ExecuteSimpleMailMerge.java" >}}

È possibile notare la differenza tra il documento prima di eseguire simple mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-1.png" alt="simple_mail_merge_template_aspose_words_java" style="width:300px"/>

E dopo aver eseguito semplice mail merge:

<img src="/words/java/types-of-mail-merge-operations/execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge_aspose_words_java" style="width:300px"/>

### Come creare più documenti uniti

In Aspose.Words, l'operazione standard Mail Merge riempie solo un singolo documento con il contenuto dell'origine dati. Quindi, sarà necessario eseguire l'operazione Mail Merge più volte per creare più documenti uniti come output.

L'esempio di codice seguente mostra come generare più documenti uniti durante un'operazione Mail Merge:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-ProduceMultipleDocumentsDuringMailMerge-ProduceMultipleDocumentsDuringMailMerge.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/MailMerge).

{{% /alert %}}

## Mail Merge con Regioni

Puoi creare diverse regioni nel tuo modello per avere aree speciali che puoi semplicemente riempire con i tuoi dati. Utilizzare Mail Merge con regioni se si desidera inserire tabelle, righe con dati ripetuti per far crescere dinamicamente i documenti specificando tali regioni all'interno del modello.

È possibile creare regioni nidificate (figlio) e unire le regioni. Il vantaggio principale dell'utilizzo di questo tipo è quello di aumentare dinamicamente le parti all'interno di un documento. Vedere ulteriori dettagli nel prossimo articolo "Annidato Mail Merge con regioni".

{{% alert color="primary" %}}

Le informazioni su una regione Mail Merge possono essere ottenute usando la classe [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/).

{{% /alert %}}

### Come eseguire Mail Merge con le regioni

Una regione Mail Merge è una parte specifica all'interno di un documento che ha un punto iniziale e un punto finale. Entrambi i punti sono rappresentati come campi Mail Merge con nomi specifici *"TableStart:XXX"* e *"TableEnd:XXX"*. Tutto il contenuto incluso in un'area Mail Merge verrà automaticamente ripetuto per ogni record nell'origine dati.

Aspose.Words consente di eseguire Mail Merge con regioni che utilizzano diversi [Esegui metodi](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) che accettano vari oggetti dati come origine dati.

Come primo passo, dobbiamo creare il `DataSet` per passarlo in seguito come parametro di input al metodo `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-CreateDataSet.java" >}}

Il seguente esempio di codice mostra come eseguire Mail Merge con le regioni utilizzando il metodo [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#executeWithRegions-com.aspose.words.net.System.Data.DataSet):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e"  "Examples-src-main-java-com-aspose-words-examples-mail_merge-TypesofMailMergeOperations-MailMergeWithRegions.java" >}}

È possibile notare la differenza tra il documento prima di eseguire Mail Merge con le regioni:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template_aspose_words_java" style="width:850px"/>

E dopo aver eseguito Mail Merge con le regioni:

<img src="/words/java/types-of-mail-merge-operations/execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute_aspose_words_java" style="width:850px"/>

### Limitazioni di Mail Merge con le regioni

Ci sono alcuni punti importanti che è necessario considerare quando si esegue un Mail Merge con le regioni:

* Il punto iniziale *TableStart:Orders* e il punto finale *TableEnd:Orders* devono essere entrambi nella stessa riga o cella. Ad esempio, se si avvia un'area di unione in una cella di una tabella, è necessario terminare l'area di unione nella stessa riga della prima cella.
* Il nome del campo Unione deve corrispondere al nome della colonna in DataTable. A meno che non siano stati specificati campi mappati, Mail Merge con regioni non avrà successo per qualsiasi campo di unione con un nome diverso da quello della colonna.

Se una di queste regole viene infranta, si otterranno risultati imprevisti o potrebbe essere generata un'eccezione.

{{% alert color="primary" %}}

Se non si utilizzano aree Mail Merge, sarà simile a Microsoft Word mail merge e l'intero contenuto del documento verrà ripetuto per ogni record nell'origine dati.

{{% /alert %}}

