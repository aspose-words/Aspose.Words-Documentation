---
title: Serializzare e lavorare con un documento in un database
second_title: Aspose.Words per Java
articleTitle: Serializzare e lavorare con un documento in un database
linktitle: Serializzare e lavorare con un documento in un database
description: "Convertire un documento in un array di byte per lavorare con questo documento in un database. È possibile archiviare e recuperare un documento da e verso il database utilizzando Java."
type: docs
weight: 40
url: /it/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Una delle attività che potrebbe essere necessario eseguire quando si lavora con i documenti è la memorizzazione e il recupero di oggetti **Document** da e verso un database. Ad esempio, ciò sarebbe necessario se si implementasse qualsiasi tipo di sistema di gestione dei contenuti. Tutte le versioni precedenti dei documenti devono essere memorizzate nel sistema di database. La possibilità di archiviare documenti nel database è anche estremamente utile quando l'applicazione fornisce un servizio basato sul Web.

Aspose.Words fornisce la possibilità di convertire un documento in un array di byte per il lavoro successivo con questo documento in un database.

## Convertire un documento in array di byte

Per memorizzare un documento in un database o per preparare un documento per la trasmissione attraverso il Web, è spesso necessario serializzare il documento per ottenere un array di byte.

Per serializzare un oggetto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) in Aspose.Words:

1. Salvalo su un **MemoryStream** usando il metodo [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) overload della classe **Document**.
1. Chiamare il metodo **ToArray**, che restituisce un array di byte che rappresentano il documento in forma di byte.

I passaggi precedenti possono quindi essere invertiti per caricare nuovamente i byte in un oggetto **Document**.

{{% alert color="primary" %}}

Il formato di salvataggio selezionato è importante per garantire la massima fedeltà durante il salvataggio e il ricaricamento nell'oggetto **Document**. Per questo motivo, si consiglia di utilizzare una serie di formati di file OOXML.

{{% /alert %}}

L'esempio seguente mostra come serializzare un oggetto **Document** per ottenere un array di byte e quindi come deserializzare l'array di byte per ottenere di nuovo un oggetto **Document**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Memorizzare, leggere ed eliminare un documento in un database

Questa sezione mostra come salvare un documento in un database e quindi caricarlo nuovamente in un oggetto `Document` per lavorare con esso. Per semplicità, il nome del file è la chiave utilizzata per archiviare e recuperare i documenti dal database. Il database contiene due colonne. La prima colonna "FileName " viene memorizzata come una Stringa e viene utilizzata per identificare i documenti. La seconda colonna "FileContent " viene memorizzata come oggetto `BLOB` che memorizza l'oggetto documento nel modulo byte.

Il seguente esempio di codice mostra come impostare una connessione a un database ed eseguire comandi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

In questo esempio, usiamo il database MySQL per memorizzare un documento Aspose.Words.

{{% /alert %}}

L'esempio di codice seguente mostra come salvare un documento nel database, quindi leggere nuovamente lo stesso documento e infine eliminare il record contenente il documento dal database:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Salvare un documento in un database

Per salvare un documento in un database convertire questo documento in una matrice di byte, come descritto all'inizio di questo articolo. Quindi, salvare questo array di byte in un campo di database.

L'esempio di codice seguente mostra come salvare un documento nel database specificato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Specificare commandString, che è un'espressione SQL che esegue tutto il lavoro:

- Per salvare un documento nel database, viene utilizzato il comando" INSERT INTO " e viene specificata una tabella insieme ai valori di due campi record: FileName e FileContent. Per evitare parametri aggiuntivi, il nome del file viene preso dall'oggetto **Document** stesso. Al valore del campo `FileContent` vengono assegnati byte dal flusso di memoria, che contiene una rappresentazione binaria del documento memorizzato.
- La riga di codice rimanente esegue il comando che memorizza il documento Aspose.Words nel database.

### Recuperare un documento da un database

Per recuperare un documento dal database, selezionare il record che contiene i dati del documento come matrice di byte. Quindi caricare l'array di byte dal record in **MemoryStream** e creare un oggetto **Document** che caricherà il documento dal **MemoryStream**.

Il seguente esempio di codice mostra come recuperare e restituire un documento dal database specificato utilizzando il nome file come chiave per recuperare questo documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Il comando SQL "SELECT * FROM" viene utilizzato per recuperare il record appropriato in base al nome del file.

{{% /alert %}}

### Eliminare un documento da un database

Per eliminare un documento dal database, utilizzare il comando SQL appropriato senza alcuna manipolazione sull'oggetto **Document**.

L'esempio di codice seguente mostra come eliminare un documento dal database, utilizzando il nome del file per recuperare il record:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
