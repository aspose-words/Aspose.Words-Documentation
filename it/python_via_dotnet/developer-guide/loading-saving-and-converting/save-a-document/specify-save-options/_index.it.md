---
title: Specificare le opzioni di salvataggio in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Specificare le opzioni di salvataggio
linktitle: Specificare le opzioni di salvataggio
description: "Controlla in modo più accurato il processo di salvataggio utilizzando Python."
type: docs
weight: 10
url: /it/python-net/specify-save-options/
---

Quando salvi un documento, puoi impostare alcune proprietà avanzate. Aspose.Words fornisce la classe [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), che consente un controllo più preciso del processo di salvataggio. Esistono sovraccarichi del metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) che accettano un oggetto [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/): dovrebbe essere un oggetto di una classe derivata dalla classe [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Ogni formato di salvataggio ha una classe corrispondente che contiene le opzioni di salvataggio per questo formato di salvataggio, ad esempio c'è [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) per il salvataggio in formato PDF o [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) per il salvataggio in un'immagine. Questo articolo fornisce esempi di utilizzo di alcune classi di opzioni derivate da [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Il seguente esempio di codice mostra come impostare le opzioni di salvataggio prima di salvare il documento in HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

L'articolo descrive alcune proprietà che puoi controllare quando salvi un documento.

## Crittografa un documento con una password

Utilizza la proprietà **parola d'ordine** per ottenere o impostare una password per un documento crittografato. Utilizza la proprietà **parola d'ordine** della classe corrispondente per lavorare con il formato del documento selezionato.

Ad esempio, quando si salva un documento in formato DOC o DOT, utilizzare la proprietà [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) della classe [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

Il seguente esempio di codice mostra come impostare una password per crittografare un documento utilizzando il metodo di crittografia RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Quando si salva un documento in formato [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/), utilizzare la proprietà [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) della classe [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

Il seguente esempio di codice mostra come caricare e salvare Docx crittografato con una password:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Non tutti i formati supportano la crittografia e l'uso della proprietà **parola d'ordine**.

## Aggiorna l'ora di creazione del documento

Aspose.Words offre la possibilità di utilizzare la proprietà [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) per ottenere o impostare la data di creazione del documento in UTC. Puoi anche aggiornare questo valore prima di salvare utilizzando l'opzione [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

L'esempio di codice seguente mostra come aggiornare l'ora di creazione del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Aggiorna l'ultima proprietà salvata

Aspose.Words offre la possibilità di utilizzare la proprietà [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) per ottenere o impostare un valore che determina se la proprietà [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) viene aggiornata prima del salvataggio.

L'esempio di codice seguente mostra come impostare questa proprietà e salvare il documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Salva immagine in bianco e nero con formato un bit per pixel

Per controllare le opzioni di salvataggio delle immagini, viene utilizzata la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/). Ad esempio, puoi utilizzare la proprietà [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) per impostare il formato pixel per le immagini generate. Tieni presente che il formato in pixel dell'immagine di output potrebbe differire dal valore impostato a causa del lavoro di Skia.

Il seguente esempio di codice mostra come salvare un'immagine in bianco e nero con il formato un bit per pixel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
