---
title: Trabalhando com OLE objetos em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com objectos OLE
linktitle: Trabalhar com objectos OLE
description: "Crie e modifique a incorporação de OLE em seu documento usando C++."
type: docs
weight: 360
url: /pt/cpp/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE (Object Linking and Embedding) é uma tecnologia através da qual os utilizadores podem trabalhar com documentos que contêm "objectos" criados ou editados por aplicações de terceiros. Ou seja, OLE permite que um aplicativo de edição exporte esses "objetos" para outro aplicativo de edição e, em seguida, importe-os com conteúdo adicional.

Neste artigo, falaremos sobre como inserir um objeto OLE e definir suas propriedades em um documento.

## Inserir Objecto OLE

Se você quiser o objeto OLE, Chame o método [InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/) e passe o **ProgId** explicitamente com outros parâmetros.

O exemplo de código a seguir mostra como inserir o objeto OLE em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### Definir o nome e a extensão do ficheiro ao inserir o objecto OLE

OLE package é uma maneira legada e" não documentada " de armazenar objetos incorporados se um manipulador OLE for desconhecido.

As primeiras Windows versões como Windows 3.1, 95 e 98 tinham um empacotador.aplicação exe que pode ser utilizada para incorporar qualquer tipo de dados no documento. Este aplicativo agora está excluído de Windows, mas Microsoft Word e outros aplicativos ainda o usam para incorporar dados se o manipulador OLE estiver ausente ou desconhecido. A classe `OlePackage` permite aos utilizadores aceder às propriedades do pacote OLE.

O exemplo de código a seguir mostra como definir o nome do arquivo, a extensão e o nome de exibição para o pacote OLE:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### Obter acesso aos dados brutos do objecto OLE

Os usuários podem acessar os dados do objeto OLE usando várias propriedades e métodos da classe `OleFormat`. Por exemplo, é possível obter os dados brutos do objeto `OLE` ou o caminho e o nome de um arquivo de origem para o objeto OLE vinculado.

O exemplo de código a seguir mostra como obter dados brutos do objeto OLE usando o método [GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### Inserir o objeto Ole como um ícone

OLE objetos também podem ser inseridos em documentos como imagens.

O exemplo de código a seguir mostra como inserir o objeto OLE como um ícone. Para este propósito, a classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) expõe o método [InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

O exemplo de código a seguir mostra como inserir um objeto OLE incorporado como um ícone de um fluxo no documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## Inserir Vídeo Online

O vídeo Online pode ser inserido no documento do Word a partir do separador *"Insert" > "Online Video"*. Você pode inserir um vídeo on-line em um documento no local atual chamando o método [InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/).

A classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) introduz quatro sobrecargas deste método. O primeiro trabalha com os recursos de vídeo mais populares e toma o `URL` do vídeo como parâmetro. Por exemplo, a primeira sobrecarga suporta a simples inserção de vídeos em linha a partir de [YouTube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/) recursos.

O exemplo de código a seguir mostra como inserir um vídeo online de *Vimeo* em um documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

A segunda sobrecarga funciona com todos os outros recursos de vídeo e usa o código HTML incorporado como parâmetro. O código HTML para incorporar um vídeo pode variar consoante o fornecedor, por isso contacte o respetivo fornecedor para obter mais informações.

{{% alert color="primary" %}}

Por favor, note que o documento será automaticamente otimizado para MS Word 2013 para mostrar vídeo.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um vídeo on-line em um documento usando esse código HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}
