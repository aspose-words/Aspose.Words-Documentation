---
title: Salvare un documento in C++
second_title: Aspose.Words per C++
articleTitle: Salvare un documento
linktitle: Salvare un documento
type: docs
description: "Salvare un documento in qualsiasi formato supportato utilizzando C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /it/cpp/save-a-document/
---

La maggior parte delle attività che è necessario eseguire con Aspose.Words comporta il salvataggio di un documento. Per salvare un documento Aspose.Words fornisce il metodo [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) della classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Il documento può essere salvato in qualsiasi formato di salvataggio supportato da Aspose.Words. Per l'elenco di tutti i formati di salvataggio supportati, vedere l'enumerazione [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Salva in un file {#save-a-document-to-a-file}

Basta usare il metodo [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) con un nome di file. Aspose.Words determinerà il formato di salvataggio dall'estensione del file specificata.

Il seguente esempio di codice mostra come caricare e salvare un documento in un file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Salva in un flusso {#save-a-document-to-a-stream}

Passare un oggetto stream al metodo [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). È necessario specificare esplicitamente il formato di salvataggio quando si salva in un flusso.

Il seguente esempio di codice mostra come caricare e salvare un documento in un flusso:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

È possibile scaricare il file modello di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Salva in PCL {#save-a-document-to-pcl}

Aspose.Words supporta il salvataggio di un documento in PCL (Printer Command Language). Aspose.Words può salvare i documenti in formato PCL 6 (PCL 6 Enhanced o PCL XL). La classe `PclSaveOptions` può essere utilizzata per specificare opzioni aggiuntive quando si salva un documento nel formato PCL.

Il seguente esempio di codice mostra come salvare un documento in PCL utilizzando le opzioni di salvataggio:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
