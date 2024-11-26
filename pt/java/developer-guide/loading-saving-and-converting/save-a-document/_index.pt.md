---
title: Guardar um documento em Java
second_title: Aspose.Words para Java
articleTitle: Guardar um documento
linktitle: Guardar um documento
type: docs
description: "Salve um documento em qualquer formato compatível usando Java."
weight: 20
url: /pt/java/save-a-document/
timestamp: 2024-01-27-14-07-04
---

A maioria das tarefas que você precisa executar com Aspose.Words envolve salvar um documento. Para salvar um documento, Aspose.Words fornece o método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String)) da classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). O documento pode ser guardado em qualquer formato de gravação suportado por Aspose.Words. Para obter a lista de todos os formatos de gravação suportados, consulte a enumeração [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Salvar em um arquivo {#save-a-document-to-a-file}

Basta usar o método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) com um nome de arquivo. Aspose.Words irá determinar o formato de gravação da extensão de ficheiro que especificar.

O exemplo de código a seguir mostra como carregar e salvar um documento em um arquivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Salvar em um fluxo {#save-a-document-to-a-stream}

Passe um objeto stream para o método [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). É necessário especificar explicitamente o formato de salvamento ao salvar em um fluxo.

O exemplo de código a seguir mostra como carregar e salvar um documento em um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Salvar em PCL {#save-a-document-to-pcl}

Aspose.Words suporta a gravação de um documento em PCL (Linguagem de comando da Impressora). Aspose.Words pode guardar documentos no formato PCL 6 (PCL 6 Enhanced ou PCL XL). A classe `PclSaveOptions` pode ser usada para especificar opções adicionais ao salvar um documento no formato PCL.

O exemplo de código a seguir mostra como salvar um documento em PCL usando as opções salvar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
