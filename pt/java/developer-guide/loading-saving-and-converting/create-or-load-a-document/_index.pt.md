---
title: Criar ou carregar um documento em Java
second_title: Aspose.Words para Java
articleTitle: Criar ou carregar um documento
linktitle: Criar ou carregar um documento
type: docs
weight: 10
url: /pt/java/create-or-load-a-document/
description: "Aspose.Words permite criar um documento em branco ou carregá-lo a partir de um ficheiro ou fluxo utilizando Java."
timestamp: 2024-01-27-14-07-04
---

Quase qualquer tarefa que você deseja executar com Aspose.Words envolve o carregamento de um documento. A classe `Document` representa um documento carregado na memória. O documento tem vários construtores sobrecarregados que lhe permitem criar um documento em branco ou carregá-lo a partir de um ficheiro ou fluxo. O documento pode ser carregado em qualquer formato de carregamento suportado por Aspose.Words. Para obter a lista de todos os formatos de carregamento suportados, consulte a enumeração [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/).

## Criar um novo documento {#create-a-new-document}

Chamaremos o construtor [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) sem parâmetros para criar um novo documento em branco. Se você deseja gerar um documento programaticamente, a maneira mais simples é usar a classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) para adicionar o conteúdo do documento.

O exemplo de código a seguir mostra como criar um documento usando o construtor de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Observe os valores padrão:

- Um documento em branco contém uma secção com parâmetros predefinidos, um parágrafo vazio, alguns estilos de Documento. Na verdade, este documento é o mesmo que o resultado da criação do "novo documento" em Microsoft Word.
- O tamanho do papel do documento é [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Carregar um documento

Para carregar um documento existente em qualquer um dos formatos [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/), passe o nome do arquivo ou o fluxo para um dos construtores do documento. O formato do documento carregado é automaticamente determinado pela sua extensão.

### Carregar de um ficheiro {#load-from-a-file}

Passe um nome de ficheiro como cadeia de caracteres para o construtor Document para abrir um documento existente a partir de um ficheiro.

O exemplo de código a seguir mostra como abrir um documento a partir de um arquivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Carga de um fluxo {#load-from-a-stream}

Para abrir um documento a partir de um fluxo, basta passar um objeto de fluxo que contém o documento para o construtor do documento.

O exemplo de código a seguir mostra como abrir um documento de um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
