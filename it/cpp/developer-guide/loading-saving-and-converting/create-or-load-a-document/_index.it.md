---
title: Creare o caricare un documento in C++
second_title: Aspose.Words per C++
articleTitle: Creare o caricare un documento
linktitle: Creare o caricare un documento
type: docs
description: "Creare un documento vuoto o caricarlo da un file o flusso utilizzando C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /it/cpp/create-or-load-a-document/
---

Quasi tutte le attività che si desidera eseguire con Aspose.Words comportano il caricamento di un documento. La classe `Document` rappresenta un documento caricato in memoria. Il documento ha diversi costruttori sovraccaricati che consentono di creare un documento vuoto o di caricarlo da un file o un flusso. Il documento può essere caricato in qualsiasi formato di caricamento supportato da Aspose.Words. Per l'elenco di tutti i formati di caricamento supportati, vedere l'enumerazione [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Creare un nuovo documento {#create-a-new-document}

Chiameremo il costruttore [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) senza parametri per creare un nuovo documento vuoto. Se si desidera generare un documento a livello di codice, il modo più semplice è utilizzare la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) per aggiungere il contenuto del documento.

Il seguente esempio di codice mostra come creare un documento utilizzando il generatore di documenti:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Nota i valori predefiniti:

- Un documento vuoto contiene una sezione con parametri predefiniti, un paragrafo vuoto, alcuni stili di documento. In realtà questo documento è lo stesso del risultato della creazione del "Nuovo documento" in Microsoft Word.
- Il formato carta del documento è [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Carica un documento

Per caricare un documento esistente in uno qualsiasi dei formati `LoadFormat`, passare il nome del file o il flusso in uno dei costruttori del documento. Il formato del documento caricato viene determinato automaticamente dalla sua estensione.

### Carica da un file {#load-from-a-file}

Passare un nome di file come stringa al costruttore del documento per aprire un documento esistente da un file.

Il seguente esempio di codice mostra come aprire un documento da un file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Carica da un flusso {#load-from-a-stream}

Per aprire un documento da un flusso, è sufficiente passare un oggetto stream che contiene il documento nel costruttore del documento.

L'esempio di codice seguente mostra come aprire un documento da un flusso:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
