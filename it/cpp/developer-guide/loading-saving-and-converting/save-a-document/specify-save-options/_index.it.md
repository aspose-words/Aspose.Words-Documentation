---
title: Specificare le opzioni di salvataggio in C++
second_title: Aspose.Words per C++
articleTitle: Specificare le opzioni di salvataggio
linktitle: Specificare le opzioni di salvataggio
description: "Controllare più accuratamente il processo di salvataggio."
type: docs
weight: 10
url: /it/cpp/specify-save-options/
---

Quando si salva un documento, è possibile impostare alcune proprietà avanzate. Aspose.Words fornisce la classe [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), che consente un controllo più preciso del processo di salvataggio. Ci sono sovraccarichi del metodo **Save** che accettano un oggetto **SaveOptions** – dovrebbe essere un oggetto di una classe derivata dalla classe **SaveOptions**. Ogni formato di salvataggio ha una classe corrispondente che contiene le opzioni di salvataggio per questo formato di salvataggio, ad esempio, c'è [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) per il salvataggio in formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) per il salvataggio in formato Markdown o [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) per il salvataggio in un'immagine. Questo articolo fornisce esempi di utilizzo di alcune classi di opzioni derivate da **SaveOptions**.

Il seguente esempio di codice mostra come impostare le opzioni di salvataggio prima di salvare il documento in HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Caricamento-e-Salvataggio-SpecifySaveOption - SpecifySaveOption.cpp">}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

L'articolo descrive alcune proprietà che è possibile controllare quando si salva un documento.

## Crittografare un documento con una password

Utilizzare la proprietà **Password** per ottenere o impostare una password per un documento crittografato. Utilizzare la proprietà **Password** della classe corrispondente per lavorare con il formato del documento selezionato.

Ad esempio, quando si salva un documento nel formato DOC o DOT, utilizzare la proprietà [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) della classe [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Il seguente esempio di codice mostra come impostare una password per crittografare un documento utilizzando il metodo di crittografia RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving - WorkingWithDoc - EncryptDocumentWithPassword.cpp">}}

Quando si salva un documento nel formato ODT, utilizzare la proprietà [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) della classe [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Il seguente esempio di codice mostra come caricare e salvare OpenDocument crittografato con una password:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncrypted ODT.cpp">}}

Non tutti i formati supportano la crittografia e l'uso della proprietà **Password**.

## Mostra le notifiche di avanzamento del salvataggio del documento

Aspose.Words offre la possibilità di utilizzare la proprietà [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) per ricevere notifiche sullo stato di avanzamento del salvataggio del documento.

È ora disponibile quando si salva a DOCX, FlatOpc, DOCM, DOTM, DOTX, Formati HTML, MHTML, EPUB, XamlFlow, XamlFlowPack o TXT.

## Aggiornare il tempo di creazione del documento

Aspose.Words fornisce la possibilità di utilizzare la proprietà [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) per ottenere o impostare la data di creazione del documento in UTC. È inoltre possibile aggiornare questo valore prima di salvarlo utilizzando l'opzione [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Il seguente esempio di codice mostra come aggiornare il tempo di creazione del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Rendering-Stampa-WorkingWithPdfSaveOptions - UpdateIfLastPrinted.cpp">}}

## Aggiorna l'ultima proprietà salvata

Aspose.Words fornisce la possibilità di utilizzare la proprietà [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) per ottenere o impostare un valore che determina se la proprietà [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) viene aggiornata prima del salvataggio.

L'esempio di codice seguente mostra come impostare questa proprietà e salvare il documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" 
"cpp-Loading-and-Saving - WorkingWithOoxml - UpdateLastSavedTimeProperty.cpp">}}

## Salva l'immagine in bianco e nero con un bit per pixel

Per controllare le opzioni di salvataggio dell'immagine, viene utilizzata la classe **ImageSaveOptions**. Ad esempio, è possibile utilizzare la proprietà [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) per impostare il formato pixel per le immagini generate. Si prega di notare che il formato pixel dell'immagine di output potrebbe differire dal valore impostato a causa del lavoro di GDI+.

Il seguente esempio di codice mostra come salvare un'immagine in bianco e nero con un bit per pixel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
