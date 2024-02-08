---
title: Crea o carica un documento in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Crea o carica un documento
linktitle: Crea o carica un documento
type: docs
url: /it/python-net/create-or-load-a-document/
description: "Crea un documento vuoto o caricalo da un file o stream utilizzando Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Quasi tutte le attività che desideri eseguire con Aspose.Words comportano il caricamento di un documento. La classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) rappresenta un documento caricato in memoria. Il documento ha diversi costruttori sovraccarichi che consentono di creare un documento vuoto o caricarlo da un file o flusso. Il documento può essere caricato in qualsiasi formato di caricamento supportato da Aspose.Words. Per l'elenco di tutti i formati di caricamento supportati, vedere l'enumerazione [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Crea un nuovo documento

Chiameremo il costruttore [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) senza parametri per creare un nuovo documento vuoto. Se desideri generare un documento a livello di codice, il modo più semplice è utilizzare la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) per aggiungere il contenuto del documento.

Il seguente esempio di codice mostra come creare un documento utilizzando il generatore di documenti:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Prendere nota dei valori predefiniti:

- Un documento vuoto contiene una sezione con parametri predefiniti, un paragrafo vuoto, alcuni stili di documento. In realtà questo documento è lo stesso risultato della creazione del "Nuovo documento" in Microsoft Word.
- Il formato carta del documento è [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Carica un documento

Per caricare un documento esistente in uno qualsiasi dei formati [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/), passare il nome del file o lo stream in uno dei costruttori [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Il formato del documento caricato è determinato automaticamente dalla sua estensione.

### Carica da un file

Passa un nome file come stringa al costruttore [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) per aprire un documento esistente da un file.

Il seguente esempio di codice mostra come aprire un documento da un file:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Carica da un flusso

Per aprire un documento da uno stream, è sufficiente passare un oggetto stream che contiene il documento nel costruttore [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Il seguente esempio di codice mostra come aprire un documento da un flusso:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
