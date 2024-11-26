---
title: Criar ou carregar um documento em C++
second_title: Aspose.Words para C++
articleTitle: Criar ou carregar um documento
linktitle: Criar ou carregar um documento
type: docs
description: "Criar um documento em branco ou carregá-lo a partir de um arquivo ou fluxo usando C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /pt/cpp/create-or-load-a-document/
timestamp: 2024-01-27-14-07-04
---

Quase qualquer tarefa que você deseja executar com Aspose.Words envolve o carregamento de um documento. A classe `Document` representa um documento carregado na memória. O documento tem vários construtores sobrecarregados que lhe permitem criar um documento em branco ou carregá-lo a partir de um ficheiro ou fluxo. O documento pode ser carregado em qualquer formato de carregamento suportado por Aspose.Words. Para obter a lista de todos os formatos de carregamento suportados, consulte a enumeração [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Criar um novo documento {#create-a-new-document}

Chamaremos o construtor [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) sem parâmetros para criar um novo documento em branco. Se você deseja gerar um documento programaticamente, a maneira mais simples é usar a classe [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) para adicionar o conteúdo do documento.

O exemplo de código a seguir mostra como criar um documento usando o construtor de documentos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Observe os valores padrão:

- Um documento em branco contém uma secção com parâmetros predefinidos, um parágrafo vazio, alguns estilos de Documento. Na verdade, este documento é o mesmo que o resultado da criação do "novo documento" em Microsoft Word.
- O tamanho do papel do documento é [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Carregar um documento

Para carregar um documento existente em qualquer um dos formatos `LoadFormat`, passe o nome do arquivo ou o fluxo para um dos construtores do documento. O formato do documento carregado é automaticamente determinado pela sua extensão.

### Carregar de um ficheiro {#load-from-a-file}

Passe um nome de ficheiro como cadeia de caracteres para o construtor Document para abrir um documento existente a partir de um ficheiro.

O exemplo de código a seguir mostra como abrir um documento a partir de um arquivo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Carga de um fluxo {#load-from-a-stream}

Para abrir um documento a partir de um fluxo, basta passar um objeto de fluxo que contém o documento para o construtor do documento.

O exemplo de código a seguir mostra como abrir um documento de um fluxo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
