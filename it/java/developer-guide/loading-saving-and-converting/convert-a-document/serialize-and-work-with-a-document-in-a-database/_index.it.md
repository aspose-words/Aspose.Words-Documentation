---
title: Serializzare e lavorare con un documento in un database
second_title: Aspose.Words per Java
articleTitle: Serializzare e lavorare con un documento in un database
linktitle: Serializzare e lavorare con un documento in un database
description: "Convertire un documento in un array byte per lavorare con questo documento in un database. È possibile memorizzare e recuperare un documento da e per il database utilizzando Java."
type: docs
weight: 40
url: /it/java/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-01-27-14-07-04
---

Uno dei compiti che potrebbe essere necessario fare quando si lavora con i documenti è memorizzare e recuperare **Document** oggetti da e per un database. Ad esempio, questo sarebbe necessario se si stesse implementando qualsiasi tipo di sistema di gestione dei contenuti. Tutte le versioni precedenti di documenti devono essere memorizzati nel sistema di database. La capacità di memorizzare i documenti nel database è anche estremamente utile quando la vostra applicazione fornisce un servizio web-based.

Aspose.Words fornisce la capacità di convertire un documento in un array byte per il lavoro successivo con questo documento in un database.

## Convertire un documento in Byte Array

Per memorizzare un documento in un database o per preparare un documento per la trasmissione attraverso il web, è spesso necessario serializzare il documento per ottenere un array byte.

Per serializzare un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) oggetto in Aspose.Words:

1. Risparmiatelo. **MemoryStream** usando [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) metodo sovraccarico del **Document** classe.
1. Chiama il **ToArray** metodo, che restituisce una serie di byte che rappresentano il documento in forma byte.

I passaggi sopra allora possono essere invertiti per caricare i byte indietro in un **Document** oggetto.

{{% alert color="primary" %}}

Il formato di salvataggio selezionato è importante per garantire la massima fedeltà viene mantenuta quando si salva e si ricarica **Document** oggetto. Per questo motivo, si suggerisce di utilizzare una serie di formati di file OOXML.

{{% /alert %}}

L'esempio seguente mostra come serializzare un **Document** oggetto per ottenere un array byte, e poi come non serializzare l'array byte per ottenere un **Document** oggetto di nuovo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Conservare, leggere e cancellare un documento in un database

Questa sezione mostra come salvare un documento in un database e poi caricarlo nuovamente in un `Document` oggetto per lavorare con esso. Per semplicità, il nome del file è la chiave utilizzata per memorizzare e recuperare i documenti dal database. Il database contiene due colonne. La prima colonna "FileName" viene memorizzata come String e viene utilizzata per identificare i documenti. La seconda colonna "FileContent" viene memorizzata come una `BLOB` oggetto che memorizza l'oggetto documento nel modulo byte.

Il seguente esempio di codice mostra come configurare una connessione a un database ed eseguire comandi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

In questo esempio, utilizziamo il database MySQL per memorizzare un Aspose.Words documento.

{{% /alert %}}

Il seguente esempio di codice mostra come salvare un documento nel database, poi leggere nuovamente lo stesso documento e infine eliminare il record contenente il documento dal database:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Salvare un documento in un database

Per salvare un documento in un database convertire questo documento in una serie di byte, come descritto all'inizio di questo articolo. Quindi, salvare questo array byte in un campo di database.

Il seguente esempio di codice mostra come salvare un documento nel database specificato:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Specifica comandoString, che è un'espressione SQL che fa tutto il lavoro:

- No. Per salvare un documento nel database, viene utilizzato il comando "INSERT INTO" e una tabella specificata insieme ai valori di due campi record – FileName e FileContent. Per evitare ulteriori parametri, il nome del file viene preso dal **Document** oggetto stesso. The `FileContent` valore di campo è assegnato dates dal flusso di memoria, che contiene una rappresentazione binaria del documento memorizzato.
- No. La riga rimanente del codice esegue il comando che memorizza la Aspose.Words documento nel database.

### Recuperare un documento da un database

Per recuperare un documento dal database, selezionare il record che contiene i dati del documento come una serie di byte. Quindi caricare l'array byte dal record in **MemoryStream** e creare un **Document** oggetto che carichi il documento dal **MemoryStream**.

Il seguente esempio di codice mostra come recuperare e restituire un documento dal database specificato utilizzando il nome del file come chiave per recuperare questo documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Il comando SQL "SELECT * FROM" viene utilizzato per recuperare il record appropriato in base al nome del file.

{{% /alert %}}

### Eliminare un documento da un database

Per eliminare un documento dal database, utilizzare il comando SQL appropriato senza alcuna manipolazione sul **Document** oggetto.

Il seguente esempio di codice mostra come eliminare un documento dal database, utilizzando il nome del file per recuperare il record:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
