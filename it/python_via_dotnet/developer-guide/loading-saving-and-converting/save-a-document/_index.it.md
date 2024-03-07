---
title: Salva un documento in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Salva un documento
linktitle: Salva un documento
type: docs
description: "Salva un documento in qualsiasi formato supportato utilizzando Python."
keywords: "save a document python, save a document to file python, save a document to stream python, save a document Aspose python, save formats supported by Aspose.Words python"
weight: 20
url: /it/python-net/save-a-document/
---

La maggior parte delle attività che devi eseguire con Aspose.Words riguardano il salvataggio di un documento. Per salvare un documento Aspose.Words mette a disposizione il metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) della classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Esistono sovraccarichi che consentono di salvare un documento in un file o in un flusso. Il documento può essere salvato in qualsiasi formato di salvataggio supportato da Aspose.Words. Per l'elenco di tutti i formati di salvataggio supportati, vedere l'enumerazione [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Salvare un documento in un file {#save-a-document-to-a-file}

Utilizza semplicemente il metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) con un nome file. Aspose.Words determinerà il formato di salvataggio dall'estensione del file specificata.

Il seguente esempio di codice mostra come caricare e salvare un documento in un file:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSave.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Salva un documento in un flusso {#save-a-document-to-a-stream}

Passa un oggetto stream al metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). È necessario specificare esplicitamente il formato di salvataggio quando si salva in un flusso.

Il seguente esempio di codice mostra come caricare e salvare un documento in un flusso:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-LoadAndSaveToStream.py" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

## Salvare un documento in PCL {#save-a-document-to-pcl}

Aspose.Words supporta il salvataggio di un documento in PCL (Printer Command Language). Aspose.Words può salvare i documenti nel formato PCL 6 (PCL 6 Enhanced o PCL XL). La classe [PclSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pclsaveoptions/) può essere utilizzata per specificare opzioni aggiuntive quando si salva un documento nel formato PCL.

Il seguente esempio di codice mostra come salvare un documento su PCL utilizzando le opzioni di salvataggio:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pcl_save_options-RasterizeTransformedElements.py" >}}

