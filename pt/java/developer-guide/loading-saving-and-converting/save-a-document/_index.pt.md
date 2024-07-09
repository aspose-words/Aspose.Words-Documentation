---
title: Salvar um documento em Java
second_title: Aspose.Words para Java
articleTitle: Salvar um documento
linktitle: Salvar um documento
type: docs
description: "Salvar um documento em qualquer formato suportado usando Java."
weight: 20
url: /pt/java/save-a-document/
---

A maioria das tarefas que você precisa executar com Aspose.Words envolve salvar um documento. Para salvar um documento Aspose.Words fornece o [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) método do [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe. O documento pode ser salvo em qualquer formato de salvamento suportado por Aspose.Words. Para a lista de todos os formatos de salvamento suportados, consulte a [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumeração.

## Salvar em um arquivo {#save-a-document-to-a-file}

Basta usar o [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) método com um nome de arquivo. Aspose.Words irá determinar o formato de salvamento da extensão de arquivo que você especificar.

O exemplo de código a seguir mostra como carregar e salvar um documento em um arquivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Salvar em um Stream {#save-a-document-to-a-stream}

Passe um objeto de fluxo para o [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) método. É necessário especificar o formato de salvamento explicitamente ao salvar em um fluxo.

O exemplo de código a seguir mostra como carregar e salvar um documento em um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Salvar no PCL {#save-a-document-to-pcl}

Aspose.Words suporta salvar um documento em PCL (Printer Command Language). Aspose.Words pode salvar documentos no formato PCL 6 (PCL 6 Enhanced ou PCL XL). O `PclSaveOptions` classe pode ser usado para especificar opções adicionais ao salvar um documento no formato PCL.

O exemplo de código a seguir mostra como salvar um documento para PCL usando opções de salvamento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
