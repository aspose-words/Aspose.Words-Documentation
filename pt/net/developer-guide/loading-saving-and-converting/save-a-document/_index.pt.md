---
title: Salvar um documento em C#
second_title: Aspose.Words para .NET
articleTitle: Salvar um documento
linktitle: Salvar um documento
type: docs
description: "Salve um documento em qualquer formato compatível usando C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /pt/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

A maioria das tarefas que você precisa realizar com Aspose.Words envolve salvar um documento. Para salvar um documento Aspose.Words fornece o método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) da classe [Document](https://reference.aspose.com/words/net/aspose.words/document/). Existem sobrecargas que permitem salvar um documento em um arquivo, fluxo ou objeto ASP.NET HttpResponse para enviar a um navegador cliente. O documento pode ser salvo em qualquer formato de salvamento suportado pelo Aspose.Words. Para obter a lista de todos os formatos de salvamento suportados, consulte a enumeração [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Salvar em um arquivo {#save-a-document-to-a-file}

Basta usar o método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) com um nome de arquivo. Aspose.Words determinará o formato de salvamento a partir da extensão de arquivo que você especificar.

O exemplo de código a seguir mostra como carregar e salvar um documento em um arquivo:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Salvar em um stream {#save-a-document-to-a-stream}

Passe um objeto de fluxo para o método [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). É necessário especificar explicitamente o formato de salvamento ao salvar em um stream.

O exemplo de código a seguir mostra como carregar e salvar um documento em um fluxo:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Envie um documento para um navegador do cliente {#sending-a-document-to-a-client-browser}

Para enviar um documento para um navegador cliente, use uma sobrecarga especial que usa quatro parâmetros: nome do arquivo, formato de salvamento, tipo de salvamento e um objeto ASP.NET HttpResponse. A forma como o documento será apresentado ao usuário é representada pela enumeração [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/), que determina se o documento enviado ao navegador oferecerá a opção de se abrir diretamente no navegador ou no aplicativo associado à extensão do arquivo.

O exemplo de código a seguir mostra como enviar um documento ao navegador do cliente a partir de um código ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de modelo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Essa sobrecarga do método `Save` não está disponível ao usar a DLL de perfil do cliente .NET. Esta DLL está localizada na pasta **net3.5_ClientProfile**. O perfil do cliente .NET exclui assemblies como **System.Web**, portanto, **HttpResponse** não está disponível. Isso ocorre inteiramente por design.

Isso pode se manifestar como um erro:

**"Nenhuma sobrecarga para o método 'Salvar' leva parâmetros '4'."**

Caso necessite utilizar Aspose.Words em aplicação ASP.NET, recomenda-se utilizar a DLL .NET 2.0 onde a sobrecarga correta estiver disponível, conforme descrito neste artigo.

## Salvar em PCL {#save-a-document-to-pcl}

Aspose.Words suporta salvar um documento em PCL (Printer Command Language). Aspose.Words pode salvar documentos no formato PCL 6 (PCL 6 Enhanced ou PCL XL). A classe `PclSaveOptions` pode ser usada para especificar opções adicionais ao salvar um documento no formato PCL.

O exemplo de código a seguir mostra como salvar um documento em PCL usando opções de salvamento:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Veja também

- Informações sobre o objeto ASP.NET [Resposta HTTP](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
