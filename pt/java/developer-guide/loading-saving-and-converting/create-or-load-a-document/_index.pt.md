---
title: Criar ou carregar um documento em Java
second_title: Aspose.Words para Java
articleTitle: Criar ou carregar um documento
linktitle: Criar ou carregar um documento
type: docs
weight: 10
url: /pt/java/create-or-load-a-document/
description: "Aspose.Words permite criar um documento em branco ou carregá-lo de um arquivo ou fluxo usando Java."
timestamp: 2024-01-27-14-07-04
---

Quase qualquer tarefa que você deseja executar com Aspose.Words envolve carregar um documento. O `Document` classe representa um documento carregado na memória. O documento tem vários construtores sobrecarregados, permitindo que você crie um documento em branco ou carregá-lo de um arquivo ou fluxo. O documento pode ser carregado em qualquer formato de carga suportado por Aspose.Words. Para a lista de todos os formatos de carga suportados, consulte a [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) enumeração.

## Criar um novo documento {#create-a-new-document}

Nós vamos chamar [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) construtor sem parâmetros para criar um novo documento em branco. Se você quiser gerar um documento programaticamente, a maneira mais simples é usar o [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) classe para adicionar conteúdo de documentos.

O exemplo de código a seguir mostra como criar um documento usando o construtor de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Note os valores padrão:

- Um documento em branco contém uma seção com parâmetros padrão, um parágrafo vazio, alguns estilos de documento. Na verdade, este documento é o mesmo que o resultado da criação do "Novo documento" em Microsoft Word.
- Não. O tamanho do documento é [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Carregar um documento

Para carregar um documento existente em qualquer um dos [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) formatos, passar o nome do arquivo ou o fluxo em um dos construtores do documento. O formato do documento carregado é automaticamente determinado por sua extensão.

### Carga de um arquivo {#load-from-a-file}

Passe um nome de arquivo como uma string para o construtor de documentos para abrir um documento existente de um arquivo.

O exemplo de código a seguir mostra como abrir um documento de um arquivo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Carga de um fluxo {#load-from-a-stream}

Para abrir um documento de um fluxo, basta passar um objeto de fluxo que contém o documento no construtor do Documento.

O exemplo de código a seguir mostra como abrir um documento de um fluxo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
