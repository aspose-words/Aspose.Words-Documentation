---
title: Creare o caricare un documento in Java
second_title: Aspose.Words per Java
articleTitle: Creare o caricare un documento
linktitle: Creare o caricare un documento
type: docs
weight: 10
url: /it/java/create-or-load-a-document/
description: "Aspose.Words consente di creare un documento vuoto o di caricarlo da un file o un flusso utilizzando Java."
timestamp: 2024-01-27-14-07-04
---

Quasi qualsiasi compito che si desidera eseguire con Aspose.Words coinvolge il caricamento di un documento. The `Document` classe rappresenta un documento caricato in memoria. Il documento ha diversi costruttori sovraccaricati che permettono di creare un documento vuoto o di caricarlo da un file o un flusso. Il documento può essere caricato in qualsiasi formato di carico supportato da Aspose.Words. Per l'elenco di tutti i formati di carico supportati, vedere il [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) enumerazione.

## Creare un nuovo documento {#create-a-new-document}

Chiameremo [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) costruttore senza parametri per creare un nuovo documento vuoto. Se si desidera generare un documento programmaticamente, il modo più semplice è quello di utilizzare [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) classe per aggiungere contenuti di documento.

Il seguente esempio di codice mostra come creare un documento utilizzando il costruttore di documenti:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Notare i valori predefiniti:

- Un documento vuoto contiene una sezione con parametri di default, un paragrafo vuoto, alcuni stili di documento. In realtà questo documento è lo stesso del risultato della creazione del "nuovo documento" in Microsoft Word.
- No. La dimensione della carta del documento è [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Caricare un documento

Caricare un documento esistente in uno qualsiasi dei [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formati, passare il nome del file o il flusso in uno dei costruttori del documento. Il formato del documento caricato viene automaticamente determinato dalla sua estensione.

### Carica da un File {#load-from-a-file}

Passare un nome di file come stringa al costruttore di documenti per aprire un documento esistente da un file.

Il seguente esempio di codice mostra come aprire un documento da un file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Carica da un flusso {#load-from-a-stream}

Per aprire un documento da un flusso, passa semplicemente un oggetto di flusso che contiene il documento nel costruttore del documento.

Il seguente esempio di codice mostra come aprire un documento da un flusso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
