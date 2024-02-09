---
title: Lavorare con oggetti OLE e video online in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con oggetti OLE e video online
linktitle: Lavorare con oggetti OLE e video online
description: "Crea e modifica l'incorporamento OLE nel tuo documento utilizzando C#."
type: docs
weight: 360
url: /it/net/working-with-ole-objects/
---

OLE (Object Linking and Embedding) è una tecnologia mediante la quale gli utenti possono lavorare con documenti contenenti "oggetti" creati o modificati da applicazioni di terze parti. Cioè, OLE consente a un'applicazione di modifica di esportare questi "oggetti" in un'altra applicazione di modifica e quindi di importarli con contenuto aggiuntivo.

In questo articolo parleremo dell'inserimento di un oggetto OLE e dell'impostazione delle sue proprietà, nonché dell'inserimento di un video online in un documento.

## Inserisci oggetto OLE

Se desideri un oggetto OLE, chiama il metodo [InsertOleObject](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobject/) e passagli esplicitamente il **ProgId** con altri parametri.

L'esempio di codice seguente mostra come inserire un oggetto OLE in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### Imposta il nome e l'estensione del file durante l'inserimento dell'oggetto OLE

Il pacchetto OLE è un modo legacy e "non documentato" per archiviare oggetti incorporati se un gestore OLE è sconosciuto.

Le prime versioni di Windows come Windows 3.1, 95 e 98 avevano un'applicazione Packager.exe che poteva essere utilizzata per incorporare qualsiasi tipo di dati nel documento. Questa applicazione è ora esclusa da Windows, ma Microsoft Word e altre applicazioni la utilizzano ancora per incorporare dati se il gestore OLE manca o è sconosciuto. La classe `OlePackage` consente agli utenti di accedere alle proprietà del pacchetto OLE.

Nell'esempio di codice seguente viene illustrato come impostare il nome file, l'estensione e il nome visualizzato per il pacchetto OLE:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### Ottieni l'accesso ai dati grezzi dell'oggetto OLE

Gli utenti possono accedere ai dati degli oggetti OLE utilizzando varie proprietà e metodi della classe `OleFormat`. Ad esempio, è possibile ottenere i dati grezzi dell'oggetto `OLE` o il percorso e il nome di un file sorgente per l'oggetto OLE collegato.

L'esempio di codice seguente mostra come ottenere i dati grezzi dell'oggetto OLE utilizzando il metodo [GetRawData](https://reference.aspose.com/words/net/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### Inserisci oggetto OLE come icona

Gli oggetti OLE possono anche essere inseriti nei documenti come immagini.

Nell'esempio di codice seguente viene illustrato come inserire oggetto OLE come icona. A questo scopo la classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) espone il metodo [InsertOleObjectAsIcon](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

L'esempio di codice seguente mostra come inserire un oggetto OLE incorporato come icona da un flusso nel documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

La dimensione massima dell'icona deve essere 32x32 per la corretta visualizzazione.

{{% /alert %}}

## Inserisci video in linea

Il video online può essere inserito nel documento Word dalla scheda *"Inserisci" &gt; "Video online"*. Puoi inserire un video online in un documento nella posizione corrente chiamando il metodo [InsertOnlineVideo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertonlinevideo/).

La classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) introduce quattro sovraccarichi di questo metodo. Il primo funziona con le risorse video più popolari e prende come parametro il `URL` del video. Ad esempio, il primo sovraccarico supporta il semplice inserimento di video online da risorse [Youtube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/).

Il seguente esempio di codice mostra come inserire un video online da *Vimeo* in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

Il secondo sovraccarico funziona con tutte le altre risorse video e accetta il codice HTML incorporato come parametro. Il codice HTML per incorporare un video può variare a seconda del fornitore, quindi contatta il rispettivo fornitore per i dettagli.

{{% alert color="primary" %}}

Tieni presente che il documento verrà automaticamente ottimizzato per MS Word 2013 per mostrare video.

{{% /alert %}}

Il seguente esempio di codice mostra come inserire un video online in un documento utilizzando tale codice HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}