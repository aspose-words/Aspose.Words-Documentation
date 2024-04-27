---
title: Lavorare con Ole Objects
second_title: Aspose.Words per Java
articleTitle: Lavorare con Ole Objects
linktitle: Lavorare con Ole Objects
description: "Creare e modificare l'integrazione OLE nel documento utilizzando Java."
type: docs
weight: 360
url: /it/java/working-with-ole-objects/
---

OLE sta per "Object Linking and Embedding". Questa è la tecnologia con cui gli utenti possono lavorare con documenti contenenti "oggetti" creati o modificati da applicazioni di terze parti. Cioè, OLE permette a un'applicazione di esportare questi "oggetti" in un'altra applicazione per la modifica, e poi importarli di nuovo con alcuni contenuti aggiuntivi.

In questo articolo, parleremo di inserire un oggetto OLE e impostare le sue proprietà in un documento.

## Inserisci l'oggetto Ole

Se vuoi OLE Object, chiama il [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) metodo e passarlo il **ProgId** esplicitamente con altri parametri.

Il seguente esempio di codice mostra come inserire OLE Oggetto in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Impostare il nome e l'estensione del file quando si inserisce OLE Object

Il pacchetto OLE è un modo legacy e "non documentato" per memorizzare oggetti incorporati se un handler OLE è sconosciuto.

In anticipo Windows versioni come Windows 3.1, 95 e 98 avevano un Packager. exe applicazione che potrebbe essere utilizzato per incorporare qualsiasi tipo di dati nel documento. Questa domanda è ora esclusa WindowsMa... Microsoft Word e altre applicazioni lo utilizzano ancora per incorporare i dati se il gestore OLE è mancante o sconosciuto. The `OlePackage` classe consente agli utenti di accedere alle proprietà OLE Package.

Il seguente esempio di codice mostra come impostare il nome del file, l'estensione e il nome della visualizzazione per OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Accedi a OLE Object Raw Data

Gli utenti possono accedere ai dati degli oggetti OLE utilizzando varie proprietà e metodi `OleFormat` classe. Per esempio, è possibile ottenere il `OLE` oggetti dati grezzi o il percorso e il nome di un file sorgente per l'oggetto OLE collegato.

Il seguente esempio di codice mostra come ottenere OLE Dati grezzi oggetto utilizzando [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) metodo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Inserisci OLE Oggetto come icona

Gli oggetti OLE possono anche essere inseriti in documenti come immagini.

Il seguente esempio di codice mostra come inserire OLE Object come icona. Con questo scopo, il **DocumentBuilder** la classe espone [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) metodo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

Il seguente esempio di codice mostra come inserire un oggetto OLE incorporato come icona da un flusso nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Inserisci video online

Il video online può essere inserito nel documento di Word dalla scheda *"Insert" > "Online Video". È possibile inserire un video online in un documento nella posizione corrente chiamando il [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) metodo:

The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe introduce quattro sovraccarichi di questo metodo. Il primo funziona con le risorse video più popolari e prende il `URL` del video come parametro. Ad esempio, il primo sovraccarico supporta l'inserimento semplice di video online da [YouTube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/) risorse.

Il seguente esempio di codice mostra come inserire un video online da *Vimeo* in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Il secondo sovraccarico funziona con tutte le altre risorse video e prende il codice HTML incorporato come parametro. Il codice HTML per incorporare un video può variare a seconda del fornitore, quindi contattare il rispettivo fornitore per i dettagli.

{{% alert color="primary" %}}

Si prega di notare che il documento sarà automaticamente ottimizzato per MS Word 2013 per mostrare il video.

{{% /alert %}}

Il seguente esempio di codice mostra come inserire un video online in un documento utilizzando un codice HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
