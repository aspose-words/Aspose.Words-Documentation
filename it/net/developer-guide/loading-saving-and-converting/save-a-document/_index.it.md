---
title: Salva un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Salva un documento
linktitle: Salva un documento
type: docs
description: "Salva un documento in qualsiasi formato supportato utilizzando C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /it/net/save-a-document/
---

La maggior parte delle attività che devi eseguire con Aspose.Words riguardano il salvataggio di un documento. Per salvare un documento Aspose.Words mette a disposizione il metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/) della classe [Document](https://reference.aspose.com/words/it/net/aspose.words/document/). Sono disponibili sovraccarichi che consentono di salvare un documento in un file, flusso o oggetto ASP.NET HttpResponse per l'invio a un browser client. Il documento può essere salvato in qualsiasi formato di salvataggio supportato da Aspose.Words. Per l'elenco di tutti i formati di salvataggio supportati, vedere l'enumerazione [SaveFormat](https://reference.aspose.com/words/it/net/aspose.words/saveformat/).

## Salva in un file {#save-a-document-to-a-file}

Utilizza semplicemente il metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/) con un nome file. Aspose.Words determinerà il formato di salvataggio dall'estensione del file specificata.

Il seguente esempio di codice mostra come caricare e salvare un documento in un file:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Salva in un flusso {#save-a-document-to-a-stream}

Passa un oggetto stream al metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/). È necessario specificare esplicitamente il formato di salvataggio quando si salva in un flusso.

Il seguente esempio di codice mostra come caricare e salvare un documento in un flusso:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Invia un documento a un browser client {#sending-a-document-to-a-client-browser}

Per inviare un documento a un browser client, utilizzare un sovraccarico speciale che accetta quattro parametri: nome file, formato di salvataggio, tipo di salvataggio e un oggetto ASP.NET HttpResponse. Il modo in cui il documento verrà presentato all'utente è rappresentato dall'enumerazione [ContentDisposition](https://reference.aspose.com/words/it/net/aspose.words/contentdisposition/), che determina se il documento inviato al browser fornirà un'opzione per aprirsi direttamente nel browser o nell'applicazione associata all'estensione del file.

Il seguente esempio di codice mostra come inviare un documento al browser client da un codice ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Questo sovraccarico del metodo `Save` non è disponibile quando si utilizza la DLL del profilo client .NET. Questa DLL si trova nella cartella **net3.5_ClientProfile**. Il profilo client .NET esclude assiemi come **System.Web**, pertanto **HttpResponse** non è disponibile. Questo è interamente previsto dalla progettazione.

Ciò potrebbe manifestarsi come un errore:

**"Nessun sovraccarico per il metodo 'Salva' richiede '4' parametri."**

Se è necessario utilizzare Aspose.Words nell'applicazione ASP.NET, si consiglia di utilizzare la DLL .NET 2.0 dove è disponibile l'overload corretto, come descritto in questo articolo.

## Salva in PCL {#save-a-document-to-pcl}

Aspose.Words supporta il salvataggio di un documento in PCL (Printer Command Language). Aspose.Words può salvare i documenti nel formato PCL 6 (PCL 6 Enhanced o PCL XL). La classe `PclSaveOptions` può essere utilizzata per specificare opzioni aggiuntive quando si salva un documento nel formato PCL.

Il seguente esempio di codice mostra come salvare un documento su PCL utilizzando le opzioni di salvataggio:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Guarda anche

- Informazioni sull'oggetto ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
