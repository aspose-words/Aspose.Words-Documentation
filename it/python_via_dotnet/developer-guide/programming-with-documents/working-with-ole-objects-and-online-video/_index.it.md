---
title: Oggetti OLE e video online
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con oggetti OLE e video online
linktitle: Lavorare con oggetti OLE e video online
description: "Inserisci oggetti ole o vodeo online in un documento utilizzando Python."
type: docs
weight: 360
url: /it/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) è una tecnologia mediante la quale gli utenti possono lavorare con documenti contenenti "oggetti" creati o modificati da applicazioni di terze parti. Cioè, OLE consente a un'applicazione di modifica di esportare questi "oggetti" in un'altra applicazione di modifica e quindi di importarli con contenuto aggiuntivo.

In questo articolo parleremo dell'inserimento di un oggetto OLE e dell'impostazione delle sue proprietà, nonché dell'inserimento di un video online in un documento.

## Inserisci oggetto OLE

Se desideri un oggetto OLE, chiama il metodo [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) e passagli esplicitamente il **ProgId** con altri parametri.

L'esempio di codice seguente mostra come inserire un oggetto OLE in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### Imposta il nome e l'estensione del file durante l'inserimento dell'oggetto OLE

Il pacchetto OLE è un modo legacy e "non documentato" per archiviare oggetti incorporati se un gestore OLE è sconosciuto.

Le prime versioni di Windows come Windows 3.1, 95 e 98 avevano un'applicazione Packager.exe che poteva essere utilizzata per incorporare qualsiasi tipo di dati nel documento. Questa applicazione è ora esclusa da Windows, ma Microsoft Word e altre applicazioni la utilizzano ancora per incorporare dati se il gestore OLE manca o è sconosciuto. La classe `OlePackage` consente agli utenti di accedere alle proprietà del pacchetto OLE.

Nell'esempio di codice seguente viene illustrato come impostare il nome file, l'estensione e il nome visualizzato per il pacchetto OLE:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### Ottieni l'accesso ai dati grezzi dell'oggetto OLE

Gli utenti possono accedere ai dati degli oggetti OLE utilizzando varie proprietà e metodi della classe `OleFormat`. Ad esempio, è possibile ottenere i dati grezzi dell'oggetto `OLE` o il percorso e il nome di un file sorgente per l'oggetto OLE collegato.

L'esempio di codice seguente mostra come ottenere i dati grezzi dell'oggetto OLE utilizzando il metodo [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### Inserisci oggetto OLE come icona

Gli oggetti OLE possono anche essere inseriti nei documenti come immagini.

Nell'esempio di codice seguente viene illustrato come inserire oggetto OLE come icona. A questo scopo la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) espone il metodo [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

L'esempio di codice seguente mostra come inserire un oggetto OLE incorporato come icona da un flusso nel documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## Inserisci video in linea

Il video online può essere inserito nel documento Word dalla scheda *"Inserisci" &gt; "Video online"*. Puoi inserire un video online in un documento nella posizione corrente chiamando il metodo [insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/).

La classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) introduce quattro sovraccarichi di questo metodo. Il primo funziona con le risorse video più popolari e prende come parametro il `URL` del video. Ad esempio, il primo sovraccarico supporta il semplice inserimento di video online da risorse [Youtube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/).

Il seguente esempio di codice mostra come inserire un video online da *Vimeo* in un documento:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

Il secondo sovraccarico funziona con tutte le altre risorse video e accetta il codice HTML incorporato come parametro. Il codice HTML per incorporare un video può variare a seconda del fornitore, quindi contatta il rispettivo fornitore per i dettagli.

{{% alert color="primary" %}}

Tieni presente che il documento verrà automaticamente ottimizzato per MS Word 2013 per mostrare video.

{{% /alert %}}

Il seguente esempio di codice mostra come inserire un video online in un documento utilizzando tale codice HTML:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}
