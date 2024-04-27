---
title: Salvare un documento Java
second_title: Aspose.Words per Java
articleTitle: Salvare un documento
linktitle: Salvare un documento
type: docs
description: "Salvare un documento in qualsiasi formato supportato utilizzando Java."
weight: 20
url: /it/java/save-a-document/
---

La maggior parte dei compiti che devi svolgere con Aspose.Words coinvolgere il salvataggio di un documento. Per salvare un documento Aspose.Words fornisce [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) metodo del [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe. Il documento può essere salvato in qualsiasi formato di salvataggio supportato da Aspose.Words. Per l'elenco di tutti i formati di salvataggio supportati, vedere il [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumerazione.

## Salva in un file {#save-a-document-to-a-file}

Basta usare il [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) metodo con un nome di file. Aspose.Words determinerà il formato di salvataggio dall'estensione del file che si specifica.

Il seguente esempio di codice mostra come caricare e salvare un documento in un file:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Salva in un flusso {#save-a-document-to-a-stream}

Passare un oggetto di flusso al [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metodo. È necessario specificare esplicitamente il formato di salvataggio quando si salva un flusso.

Il seguente esempio di codice mostra come caricare e salvare un documento in un flusso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

È possibile scaricare il file template di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Salva a PCL {#save-a-document-to-pcl}

Aspose.Words supporta il salvataggio di un documento in PCL (Printer Command Language). Aspose.Words può salvare i documenti in formato PCL 6 (PCL 6 Enhanced o PCL XL). The `PclSaveOptions` classe può essere utilizzata per specificare opzioni aggiuntive quando si salva un documento nel formato PCL.

Il seguente esempio di codice mostra come salvare un documento a PCL utilizzando opzioni di salvataggio:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
