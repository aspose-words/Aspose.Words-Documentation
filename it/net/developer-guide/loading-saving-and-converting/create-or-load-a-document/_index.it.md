---
title: Crea o carica un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Crea o carica un documento
linktitle: Crea o carica un documento
type: docs
url: /it/net/create-or-load-a-document/
description: "Crea un documento vuoto o caricalo da un file o stream utilizzando C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Quasi tutte le attività che desideri eseguire con Aspose.Words comportano il caricamento di un documento. La classe `Document` rappresenta un documento caricato in memoria. Il documento ha diversi costruttori sovraccarichi che consentono di creare un documento vuoto o caricarlo da un file o flusso. Il documento può essere caricato in qualsiasi formato di caricamento supportato da Aspose.Words. Per l'elenco di tutti i formati di caricamento supportati, vedere l'enumerazione [LoadFormat](https://reference.aspose.com/words/it/net/aspose.words/loadformat/).

## Crea un nuovo documento {#create-a-new-document}

Chiameremo il costruttore [Document](https://reference.aspose.com/words/it/net/aspose.words/document/document/) senza parametri per creare un nuovo documento vuoto. Se desideri generare un documento a livello di codice, il modo più semplice è utilizzare la classe [DocumentBuilder](https://reference.aspose.com/words/it/net/aspose.words/documentbuilder/) per aggiungere il contenuto del documento.

Il seguente esempio di codice mostra come creare un documento utilizzando il generatore di documenti:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Prendere nota dei valori predefiniti:

- Un documento vuoto contiene una sezione con parametri predefiniti, un paragrafo vuoto, alcuni stili di documento. In realtà questo documento è lo stesso risultato della creazione del "Nuovo documento" in Microsoft Word.
- Il formato carta del documento è [PaperSize](https://reference.aspose.com/words/it/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Carica un documento {#load-a-document}

Per caricare un documento esistente in uno qualsiasi dei formati [LoadFormat](https://reference.aspose.com/words/it/net/aspose.words/loadformat/), passare il nome del file o lo stream in uno dei costruttori di documenti. Il formato del documento caricato è determinato automaticamente dalla sua estensione.

### Carica da un file {#load-from-a-file}

Passa un nome file come stringa al costruttore Document per aprire un documento esistente da un file.

Il seguente esempio di codice mostra come aprire un documento da un file:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Carica da un flusso {#load-from-a-stream}

Per aprire un documento da uno stream, è sufficiente passare un oggetto stream che contiene il documento nel costruttore Document.

Il seguente esempio di codice mostra come aprire un documento da un flusso:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
