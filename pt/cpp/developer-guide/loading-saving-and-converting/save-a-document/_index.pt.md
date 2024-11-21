---
title: Salvar um documento em C++
second_title: Aspose.Words para C++
articleTitle: Guardar um documento
linktitle: Guardar um documento
type: docs
description: "Salve um documento em qualquer formato compatível usando C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /pt/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

A maioria das tarefas que você precisa executar com Aspose.Words envolve salvar um documento. Para salvar um documento, Aspose.Words fornece o método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) da classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). O documento pode ser guardado em qualquer formato de gravação suportado por Aspose.Words. Para obter a lista de todos os formatos de gravação suportados, consulte a enumeração [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Salvar em um arquivo {#save-a-document-to-a-file}

Basta usar o método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) com um nome de arquivo. Aspose.Words irá determinar o formato de gravação da extensão de ficheiro que especificar.

O exemplo de código a seguir mostra como carregar e salvar um documento em um arquivo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Salvar em um fluxo {#save-a-document-to-a-stream}

Passe um objeto stream para o método [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). É necessário especificar explicitamente o formato de salvamento ao salvar em um fluxo.

O exemplo de código a seguir mostra como carregar e salvar um documento em um fluxo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Salvar em PCL {#save-a-document-to-pcl}

Aspose.Words suporta a gravação de um documento em PCL (Linguagem de comando da Impressora). Aspose.Words pode salvar documentos em PCL 6 (PCL 6 Formato melhorado ou PCL XL). A classe `PclSaveOptions` pode ser usada para especificar opções adicionais ao salvar um documento no formato PCL.

O exemplo de código a seguir mostra como salvar um documento em PCL usando as opções salvar:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
