---
title: Specificare Opzioni di salvataggio in Java
second_title: Aspose.Words per Java
articleTitle: Specificare Opzioni di salvataggio
linktitle: Specificare Opzioni di salvataggio
description: "Impostare le proprietà avanzate quando si salva un documento utilizzando Java fornire un controllo più preciso sul processo."
type: docs
weight: 20
url: /it/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Quando si salva un documento, è possibile impostare alcune proprietà avanzate. Aspose.Words fornisce con il [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/) classe, che consente un controllo più preciso del processo di salvataggio. Ci sono sovraccarichi dei **Save** metodo che accetta un **SaveOptions** oggetto – dovrebbe essere un oggetto di una classe derivata dal **SaveOptions** classe. Ogni formato di salvataggio ha una classe corrispondente che contiene opzioni di salvataggio per questo formato di salvataggio, per esempio, c'è [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) per il salvataggio in formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) per il salvataggio a Markdown formato, o [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) per salvare ad un'immagine. Questo articolo fornisce esempi di lavoro con alcune classi di opzioni derivate da **SaveOptions**.

Il seguente esempio di codice mostra come impostare le opzioni di salvataggio prima di salvare il documento in HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'articolo descrive alcune proprietà che è possibile controllare quando si salva un documento.

## Crittografia di un documento Con una password

Utilizzare **Password** proprietà per ottenere o impostare una password per un documento crittografato. Utilizzare **Password** proprietà della classe corrispondente a lavorare con il formato del documento selezionato.

Ad esempio, quando si salva un documento a DOC o DOT formato, utilizzare il [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) proprietà della [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) classe.

Il seguente esempio di codice mostra come impostare una password per crittografare un documento utilizzando il metodo di crittografia RC4:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Quando si salva un documento in formato ODT, utilizzare il [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) proprietà della [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/) classe.

Il seguente esempio di codice mostra come caricare e salvare OpenDocument crittografato con una password:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Non tutti i formati supportano la crittografia e l'uso di **Password** proprieta'.

## Mostra Documento Salvare le notifiche di Progresso

Aspose.Words fornisce la capacità di utilizzare [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) proprietà per ottenere notifiche sul progresso del salvataggio dei documenti.

Ora è disponibile quando si salva DOCX, FlatOpc, DOCM, DOTM. DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, o formati TXT.

## Aggiornare il tempo di creazione del documento

Aspose.Words fornisce una capacità di utilizzo [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) proprietà per ottenere o impostare la data di creazione del documento in UTC. È inoltre possibile aggiornare questo valore prima di salvare utilizzando [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) opzione.

Il seguente esempio di codice mostra come aggiornare il tempo di creazione del documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Aggiornamento Proprietà salvata

Aspose.Words fornisce una capacità di utilizzo [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) proprietà per ottenere o impostare un valore che determina se [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) la proprietà viene aggiornata prima di salvare.

Il seguente esempio di codice mostra come impostare questa proprietà e salvare il documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Salva immagine nera e bianca con un bit per formato pixel

Per controllare le opzioni di salvataggio delle immagini, il **ImageSaveOptions** la classe è usata. Per esempio, è possibile utilizzare il [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) proprietà per impostare il formato pixel per le immagini generate. Si prega di notare che il formato pixel dell'immagine di uscita può differire dal valore impostato a causa del lavoro di GDI+.

Il seguente esempio di codice mostra come salvare un'immagine bianca e nera con un bit per formato pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
