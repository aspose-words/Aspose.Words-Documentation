---
title: Serializza il documento in un database
second_title: Aspose.Words per .NET
articleTitle: Serializza e lavora con un documento in un database
linktitle: Serializza e lavora con un documento in un database
description: "Converti un documento in un array di byte per lavorare con questo documento in un database utilizzando C#. È possibile archiviare e recuperare un documento da e verso il database."
type: docs
weight: 10
url: /it/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Una delle attività che potrebbe essere necessario svolgere quando si lavora con i documenti è l'archiviazione e il recupero di oggetti **Document** da e verso un database. Ad esempio, ciò sarebbe necessario se stessi implementando qualsiasi tipo di sistema di gestione dei contenuti. Tutte le versioni precedenti dei documenti devono essere archiviate nel sistema di database. La possibilità di archiviare documenti nel database è estremamente utile anche quando l'applicazione fornisce un servizio basato sul web.

Aspose.Words offre la possibilità di convertire un documento in un array di byte per il successivo lavoro con questo documento in un database.

## Converti un documento in un array di byte

Per archiviare un documento in un database o per preparare un documento per la trasmissione sul web, è spesso necessario serializzare il documento per ottenere un array di byte.

Per serializzare un oggetto [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) in Aspose.Words:

1. Salvarlo in un **MemoryStream** utilizzando l'overload del metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/) della classe **Document**.
1. Chiamare il metodo **ToArray**, che restituisce un array di byte che rappresenta il documento in formato byte.

I passaggi precedenti possono quindi essere invertiti per caricare nuovamente i byte in un oggetto **Document**.

{{% alert color="primary" %}}

Il formato di salvataggio selezionato è importante per garantire che venga mantenuta la massima fedeltà durante il salvataggio e il ricaricamento nell'oggetto **Document**. Per questo motivo si consiglia di utilizzare una serie di formati di file OOXML.

{{% /alert %}}

L'esempio seguente mostra come serializzare un oggetto **Document** per ottenere un array di byte e quindi come annullare la serializzazione dell'array di byte per ottenere nuovamente un oggetto **Document**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Archiviare, leggere ed eliminare un documento in un database

Questa sezione mostra come salvare un documento in un database e quindi caricarlo nuovamente in un oggetto `Document` per lavorarci. Per semplicità, il nome del file è la chiave utilizzata per archiviare e recuperare i documenti dal database. Il database contiene due colonne. La prima colonna "FileName" viene archiviata come stringa e viene utilizzata per identificare i documenti. La seconda colonna "FileContent" viene archiviata come oggetto `BLOB` che memorizza l'oggetto documento sotto forma di byte.

Il seguente esempio di codice mostra come impostare una connessione a un database ed eseguire comandi:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

In questo esempio, utilizziamo il database Microsoft Access .mdb per archiviare un documento Aspose.Words.

{{% /alert %}}

Il seguente esempio di codice mostra come salvare un documento nel database, quindi leggere nuovamente lo stesso documento e infine eliminare il record contenente il documento dal database:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Salvare un documento in un database

Per salvare un documento in un database convertire questo documento in un array di byte, come descritto all'inizio di questo articolo. Quindi, salva questo array di byte in un campo del database.

Il seguente esempio di codice mostra come salvare un documento nel database specificato:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Specifica commandString, che è un'espressione SQL che fa tutto il lavoro:

- Per salvare un documento nel database, viene utilizzato il comando "INSERT INTO" e viene specificata una tabella insieme ai valori di due campi record: FileName e FileContent. Per evitare parametri aggiuntivi, il nome del file viene preso dall'oggetto **Document** stesso. Al valore del campo `FileContent` vengono assegnati byte dal flusso di memoria, che contiene una rappresentazione binaria del documento archiviato.
- La restante riga di codice esegue il comando che memorizza il documento Aspose.Words nel database.

### Recuperare un documento da un database

Per recuperare un documento dal database, selezionare il record che contiene i dati del documento come array di byte. Quindi carica l'array di byte dal record in **MemoryStream** e crea un oggetto **Document** che caricherà il documento da **MemoryStream**.

Il seguente esempio di codice mostra come recuperare e restituire un documento dal database specificato utilizzando il nome file come chiave per recuperare questo documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Il comando SQL "SELECT * FROM" viene utilizzato per recuperare il record appropriato in base al nome del file.

{{% /alert %}}

### Eliminare un documento da un database

Per eliminare un documento dal database, utilizzare l'apposito comando SQL senza alcuna manipolazione sull'oggetto **Document**.

L'esempio di codice seguente mostra come eliminare un documento dal database, utilizzando il nome file per recuperare il record:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
