---
title: Utilizzo di oggetti Ole
second_title: Aspose.Words per Java
articleTitle: Utilizzo di oggetti Ole
linktitle: Utilizzo di oggetti Ole
description: "Creare e modificare l'incorporamento di OLE nel documento utilizzando Java."
type: docs
weight: 360
url: /it/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE è l'acronimo di "Object Linking and Embedding". Questa è la tecnologia con cui gli utenti possono lavorare con documenti contenenti "oggetti" creati o modificati da applicazioni di terze parti. Cioè, OLE consente a un'applicazione di esportare questi "oggetti" in un'altra applicazione per la modifica e quindi importarli con alcuni contenuti aggiuntivi.

In questo articolo, parleremo dell'inserimento di un oggetto OLE e dell'impostazione delle sue proprietà in un documento.

## Inserisci Ole Oggetto

Se si desidera un oggetto OLE, chiamare il metodo [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) e passarlo esplicitamente a **ProgId** con altri parametri.

Il seguente esempio di codice mostra come inserire OLE Oggetto in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Impostare il nome del file e l'estensione quando si inserisce l'oggetto OLE

Il pacchetto OLE è un modo legacy e "non documentato" per archiviare oggetti incorporati se un gestore OLE è sconosciuto.

Le prime versioni di Windows come Windows 3.1, 95 e 98 avevano un'applicazione Packager.exe che poteva essere utilizzata per incorporare qualsiasi tipo di dati nel documento. Questa applicazione è ora esclusa da Windows, ma Microsoft Word e altre applicazioni lo usano ancora per incorporare i dati se il gestore OLE è mancante o sconosciuto. La classe `OlePackage` consente agli utenti di accedere alle proprietà OLE Package.

Nell'esempio di codice riportato di seguito viene illustrato come impostare il nome del file, l'estensione e il nome visualizzato per OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Ottieni l'accesso ai dati grezzi dell'oggetto OLE

Gli utenti possono accedere ai dati dell'oggetto OLE utilizzando varie proprietà e metodi della classe `OleFormat`. Ad esempio, è possibile ottenere i dati grezzi dell'oggetto `OLE` o il percorso e il nome di un file di origine per l'oggetto OLE collegato.

L'esempio di codice seguente mostra come ottenere dati grezzi oggetto OLE utilizzando il metodo [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Inserisci OLE Oggetto come icona

Gli oggetti OLE possono anche essere inseriti nei documenti come immagini.

Il seguente esempio di codice mostra come inserire OLE Oggetto come icona. A tale scopo, la classe **DocumentBuilder** espone il metodo [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

L'esempio di codice seguente mostra come inserire un oggetto incorporato OLE come icona da un flusso nel documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Inserisci Video online

Il video online può essere inserito nel documento Word dalla scheda *"Insert" > "Online Video"*. È possibile inserire un video online in un documento nella posizione corrente chiamando il metodo [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

La classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) introduce quattro sovraccarichi di questo metodo. Il primo funziona con le risorse video più popolari e prende il `URL` del video come parametro. Ad esempio, il primo sovraccarico supporta l'inserimento semplice di video online da [YouTube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/) resources.

L'esempio di codice seguente mostra come inserire un video online da *Vimeo* in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

Il secondo sovraccarico funziona con tutte le altre risorse video e prende il codice HTML incorporato come parametro. Il codice HTML per l'incorporamento di un video può variare a seconda del provider, quindi contattare il rispettivo provider per i dettagli.

{{% alert color="primary" %}}

Si noti che il documento verrà automaticamente ottimizzato per MS Word 2013 per mostrare video.

{{% /alert %}}

L'esempio di codice seguente mostra come inserire un video online in un documento utilizzando tale codice HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
