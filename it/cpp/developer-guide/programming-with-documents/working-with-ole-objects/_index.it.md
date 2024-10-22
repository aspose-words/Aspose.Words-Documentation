---
title: Lavorare con oggetti OLE in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con gli oggetti OLE
linktitle: Lavorare con gli oggetti OLE
description: "Creare e modificare l'incorporamento OLE nel documento utilizzando C++."
type: docs
weight: 360
url: /it/cpp/working-with-ole-objects/
---

OLE (Object Linking and Embedding) è una tecnologia con cui gli utenti possono lavorare con documenti contenenti "oggetti" creati o modificati da applicazioni di terze parti. Cioè, OLE consente a un'applicazione di modifica di esportare questi "oggetti" in un'altra applicazione di modifica e quindi importarli con contenuti aggiuntivi.

In questo articolo, parleremo dell'inserimento di un oggetto OLE e dell'impostazione delle sue proprietà in un documento.

## Inserisci Oggetto OLE

Se si desidera un oggetto OLE, chiamare il metodo [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) e passarlo esplicitamente a **ProgId** con altri parametri.

Il seguente esempio di codice mostra come inserire l'oggetto OLE in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Impostare il nome del file e l'estensione quando si inserisce l'oggetto OLE

Il pacchetto OLE è un modo legacy e" non documentato " per archiviare oggetti incorporati se un gestore OLE è sconosciuto.

Le prime versioni di Windows come Windows 3.1, 95 e 98 avevano un Packager.applicazione exe che potrebbe essere utilizzata per incorporare qualsiasi tipo di dati nel documento. Questa applicazione è ora esclusa da Windows, ma Microsoft Word e altre applicazioni lo usano ancora per incorporare i dati se il gestore OLE è mancante o sconosciuto. La classe `OlePackage` consente agli utenti di accedere alle proprietà del pacchetto OLE.

L'esempio di codice seguente mostra come impostare il nome del file, l'estensione e il nome visualizzato per il pacchetto OLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Accesso ai dati grezzi dell'oggetto OLE

Gli utenti possono accedere ai dati dell'oggetto OLE utilizzando varie proprietà e metodi della classe `OleFormat`. Ad esempio, è possibile ottenere i dati grezzi dell'oggetto `OLE` o il percorso e il nome di un file di origine per l'oggetto OLE collegato.

L'esempio di codice seguente mostra come ottenere i dati grezzi dell'oggetto OLE utilizzando il metodo [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Inserisci l'Oggetto Ole come icona

Gli oggetti OLE possono anche essere inseriti nei documenti come immagini.

Il seguente esempio di codice mostra come inserire l'oggetto OLE come icona. A tale scopo, la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) espone il metodo [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

Il seguente esempio di codice mostra come inserire un oggetto OLE incorporato come icona da un flusso nel documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Inserisci Video online

Il video online può essere inserito nel documento Word dalla scheda *"Insert" > "Online Video"*. È possibile inserire un video online in un documento nella posizione corrente chiamando il metodo [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

La classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) introduce quattro sovraccarichi di questo metodo. Il primo funziona con le risorse video più popolari e prende il `URL` del video come parametro. Ad esempio, il primo sovraccarico supporta l'inserimento semplice di video online da [YouTube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/) resources.

L'esempio di codice seguente mostra come inserire un video online da *Vimeo* in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

Il secondo sovraccarico funziona con tutte le altre risorse video e prende il codice HTML incorporato come parametro. Il codice HTML per l'incorporamento di un video può variare a seconda del fornitore, quindi contattare il rispettivo fornitore per i dettagli.

{{% alert color="primary" %}}

Si prega di notare che il documento verrà automaticamente ottimizzato per MS Word 2013 per mostrare il video.

{{% /alert %}}

Il seguente esempio di codice mostra come inserire un video online in un documento utilizzando tale codice HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}