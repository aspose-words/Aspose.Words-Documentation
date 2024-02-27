---
title: Crie ou carregue um documento em C#
second_title: Aspose.Words para .NET
articleTitle: Criar ou carregar um documento
linktitle: Criar ou carregar um documento
type: docs
url: /pt/net/create-or-load-a-document/
description: "Crie um documento em branco ou carregue-o de um arquivo ou fluxo usando C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Quase todas as tarefas que você deseja realizar com Aspose.Words envolvem carregar um documento. A classe `Document` representa um documento carregado na memória. O documento possui vários construtores sobrecarregados que permitem criar um documento em branco ou carregá-lo de um arquivo ou fluxo. O documento pode ser carregado em qualquer formato de carregamento suportado pelo Aspose.Words. Para obter a lista de todos os formatos de carregamento suportados, consulte a enumeração [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/).

## Crie um novo documento {#create-a-new-document}

Chamaremos o construtor [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) sem parâmetros para criar um novo documento em branco. Se você deseja gerar um documento programaticamente, a maneira mais simples é usar a classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) para adicionar o conteúdo do documento.

O exemplo de código a seguir mostra como criar um documento usando o construtor de documentos:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Observe os valores padrão:

- Um documento em branco contém uma seção com parâmetros padrão, um parágrafo vazio e alguns estilos de documento. Na verdade este documento é igual ao resultado da criação do "Novo documento" em Microsoft Word.
- O tamanho do papel do documento é [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Carregar um documento {#load-a-document}

Para carregar um documento existente em qualquer um dos formatos [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/), passe o nome do arquivo ou fluxo para um dos construtores Document. O formato do documento carregado é determinado automaticamente pela sua extensão.

### Carregar de um arquivo {#load-from-a-file}

Passe um nome de arquivo como string para o construtor Document para abrir um documento existente a partir de um arquivo.

O exemplo de código a seguir mostra como abrir um documento a partir de um arquivo:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Carregar de um Stream {#load-from-a-stream}

Para abrir um documento a partir de um fluxo, basta passar um objeto de fluxo que contém o documento para o construtor Document.

O exemplo de código a seguir mostra como abrir um documento a partir de um fluxo:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
