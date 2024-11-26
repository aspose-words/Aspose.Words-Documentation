---
title: Specificare le opzioni di salvataggio in Java
second_title: Aspose.Words per Java
articleTitle: Specificare le opzioni di salvataggio
linktitle: Specificare le opzioni di salvataggio
description: "Impostare le proprietà avanzate quando si salva un documento utilizzando Java per fornire un controllo più preciso sul processo."
type: docs
weight: 20
url: /it/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Quando si salva un documento, è possibile impostare alcune proprietà avanzate. Aspose.Words fornisce la classe [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), che consente un controllo più preciso del processo di salvataggio. Ci sono sovraccarichi del metodo **Save** che accettano un oggetto **SaveOptions** – dovrebbe essere un oggetto di una classe derivata dalla classe **SaveOptions**. Ogni formato di salvataggio ha una classe corrispondente che contiene le opzioni di salvataggio per questo formato di salvataggio, ad esempio, c'è [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) per il salvataggio in formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) per il salvataggio in formato Markdown o [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) per il salvataggio in un'immagine. Questo articolo fornisce esempi di utilizzo di alcune classi di opzioni derivate da **SaveOptions**.

L'esempio di codice seguente mostra come impostare le opzioni di salvataggio prima di salvare il documento in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'articolo descrive alcune proprietà che è possibile controllare quando si salva un documento.

## Crittografare un documento con una password

Utilizzare la proprietà **Password** per ottenere o impostare una password per un documento crittografato. Utilizzare la proprietà **Password** della classe corrispondente per lavorare con il formato del documento selezionato.

Ad esempio, quando si salva un documento nel formato DOC o DOT, utilizzare la proprietà [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) della classe [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

L'esempio di codice seguente mostra come impostare una password per crittografare un documento utilizzando il metodo di crittografia RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Quando si salva un documento nel formato ODT, utilizzare la proprietà [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) della classe [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

Il seguente esempio di codice mostra come caricare e salvare OpenDocument crittografato con una password:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Non tutti i formati supportano la crittografia e l'uso della proprietà **Password**.

## Mostra le notifiche di avanzamento del salvataggio del documento

Aspose.Words offre la possibilità di utilizzare la proprietà [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) per ricevere notifiche sullo stato di avanzamento del salvataggio del documento.

È ora disponibile quando si salva a DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, o formati TXT.

## Aggiornare il tempo di creazione del documento

Aspose.Words fornisce la possibilità di utilizzare la proprietà [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) per ottenere o impostare la data di creazione del documento in UTC. È inoltre possibile aggiornare questo valore prima di salvarlo utilizzando l'opzione [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty).

Il seguente esempio di codice mostra come aggiornare il tempo di creazione del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Aggiorna l'ultima proprietà salvata

Aspose.Words fornisce la possibilità di utilizzare la proprietà [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) per ottenere o impostare un valore che determina se la proprietà [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) viene aggiornata prima del salvataggio.

L'esempio di codice seguente mostra come impostare questa proprietà e salvare il documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Salva l'immagine in bianco e nero con un bit per pixel

Per controllare le opzioni di salvataggio dell'immagine, viene utilizzata la classe **ImageSaveOptions**. Ad esempio, è possibile utilizzare la proprietà [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) per impostare il formato pixel per le immagini generate. Si prega di notare che il formato pixel dell'immagine di output potrebbe differire dal valore impostato a causa del lavoro di GDI+.

Il seguente esempio di codice mostra come salvare un'immagine in bianco e nero con un bit per pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
