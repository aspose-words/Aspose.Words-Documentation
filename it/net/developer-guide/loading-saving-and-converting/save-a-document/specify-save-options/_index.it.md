---
title: Specificare le opzioni di salvataggio in C#
second_title: Aspose.Words per .NET
articleTitle: Specificare le opzioni di salvataggio
linktitle: Specificare le opzioni di salvataggio
description: "Controlla in modo più accurato il processo di salvataggio utilizzando C#."
type: docs
weight: 10
url: /it/net/specify-save-options/
---

Quando salvi un documento, puoi impostare alcune proprietà avanzate. Aspose.Words fornisce la classe [SaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/saveoptions/), che consente un controllo più preciso del processo di salvataggio. Esistono sovraccarichi del metodo **Save** che accettano un oggetto **SaveOptions**: dovrebbe essere un oggetto di una classe derivata dalla classe **SaveOptions**. Ogni formato di salvataggio ha una classe corrispondente che contiene le opzioni di salvataggio per questo formato di salvataggio, ad esempio c'è [PdfSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/pdfsaveoptions/) per il salvataggio in formato PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/markdownsaveoptions/) per il salvataggio in formato Markdown o [ImageSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/) per il salvataggio in un'immagine. Questo articolo fornisce esempi di utilizzo di alcune classi di opzioni derivate da **SaveOptions**.

Il seguente esempio di codice mostra come impostare le opzioni di salvataggio prima di salvare il documento in HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'articolo descrive alcune proprietà che puoi controllare quando salvi un documento.

## Crittografa un documento con una password

Utilizza la proprietà **Password** per ottenere o impostare una password per un documento crittografato. Utilizza la proprietà **Password** della classe corrispondente per lavorare con il formato del documento selezionato.

Ad esempio, quando si salva un documento in formato DOC o DOT, utilizzare la proprietà [Password](https://reference.aspose.com/words/it/net/aspose.words.saving/docsaveoptions/password/) della classe [DocSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/docsaveoptions/).

Il seguente esempio di codice mostra come impostare una password per crittografare un documento utilizzando il metodo di crittografia RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Quando si salva un documento in formato Odt, utilizzare la proprietà [Password](https://reference.aspose.com/words/it/net/aspose.words.saving/odtsaveoptions/password/) della classe [OdtSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/odtsaveoptions/).

Il seguente esempio di codice mostra come caricare e salvare OpenDocument crittografato con una password:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Non tutti i formati supportano la crittografia e l'uso della proprietà **Password**.

## Mostra le notifiche di avanzamento del salvataggio del documento

Aspose.Words offre la possibilità di utilizzare la proprietà [ProgressCallback](https://reference.aspose.com/words/it/net/aspose.words.saving/saveoptions/progresscallback/) per ricevere notifiche sull'avanzamento del salvataggio del documento.

Ora è disponibile quando si salva nei formati DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack o TXT.

## Aggiorna l'ora di creazione del documento

Aspose.Words offre la possibilità di utilizzare la proprietà [CreatedTime](https://reference.aspose.com/words/it/net/aspose.words.properties/builtindocumentproperties/createdtime/) per ottenere o impostare la data di creazione del documento in UTC. Puoi anche aggiornare questo valore prima di salvare utilizzando l'opzione [UpdateCreatedTimeProperty](https://reference.aspose.com/words/it/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

L'esempio di codice seguente mostra come aggiornare l'ora di creazione del documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Aggiorna l'ultima proprietà salvata

Aspose.Words offre la possibilità di utilizzare la proprietà [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/it/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) per ottenere o impostare un valore che determina se la proprietà [LastSavedTime](https://reference.aspose.com/words/it/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) viene aggiornata prima del salvataggio.

L'esempio di codice seguente mostra come impostare questa proprietà e salvare il documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Controlla le risorse esterne durante il salvataggio di un documento in HTML o SVG

Per convertire HTML o SVG in PDF, richiama semplicemente il metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/#save/) e specifica un nome file con l'estensione ".PDF". Se desideri caricare immagini, CSS, ecc. Da fonti esterne, puoi utilizzare [IResourceSavingCallback](https://reference.aspose.com/words/it/net/aspose.words.saving/iresourcesavingcallback/).

Il seguente esempio di codice mostra come convertire HTML in PDF e caricare immagini da fonti esterne:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Salva immagine in bianco e nero con formato un bit per pixel

Per controllare le opzioni di salvataggio delle immagini, viene utilizzata la classe **ImageSaveOptions**. Ad esempio, puoi utilizzare la proprietà [PixelFormat](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/pixelformat/) per impostare il formato pixel per le immagini generate. Tieni presente che il formato in pixel dell'immagine di output potrebbe differire dal valore impostato a causa del lavoro di GDI+.

Il seguente esempio di codice mostra come salvare un'immagine in bianco e nero con il formato un bit per pixel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
