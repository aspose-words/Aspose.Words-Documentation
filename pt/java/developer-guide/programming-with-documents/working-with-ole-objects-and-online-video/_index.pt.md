---
title: Trabalhar com objectos Ole
second_title: Aspose.Words para Java
articleTitle: Trabalhar com objectos Ole
linktitle: Trabalhar com objectos Ole
description: "Crie e modifique a incorporação de OLE em seu documento usando Java."
type: docs
weight: 360
url: /pt/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE significa "ligação e incorporação de objectos". Esta é a tecnologia pela qual os utilizadores podem trabalhar com documentos contendo "objectos" criados ou editados por aplicações de terceiros. Ou seja, OLE permite que um aplicativo exporte esses "objetos" para outro aplicativo para edição e, em seguida, importe-os de volta com algum conteúdo adicional.

Neste artigo, falaremos sobre como inserir um objeto OLE e definir suas propriedades em um documento.

## Inserir Objecto Ole

Se você quiser o objeto OLE, Chame o método [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) e passe o **ProgId** explicitamente com outros parâmetros.

O exemplo de código a seguir mostra como inserir o objeto OLE em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Definir o nome e a extensão do ficheiro ao inserir o objecto OLE

OLE package é uma maneira legada e" não documentada " de armazenar objetos incorporados se um manipulador OLE for desconhecido.

As primeiras versões Windows, como Windows 3.1, 95 e 98, tinham uma aplicação Packager.exe que podia ser utilizada para incorporar qualquer tipo de dados no documento. Este aplicativo agora está excluído de Windows, mas Microsoft Word e outros aplicativos ainda o usam para incorporar dados se o manipulador OLE estiver ausente ou desconhecido. A classe `OlePackage` permite aos utilizadores aceder às propriedades OLE Package.

O exemplo de código a seguir mostra como definir o nome do arquivo, a extensão e o nome de exibição para OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Obter acesso aos dados brutos do objecto OLE

Os usuários podem acessar os dados do objeto OLE usando várias propriedades e métodos da classe `OleFormat`. Por exemplo, é possível obter os dados brutos do objeto `OLE` ou o caminho e o nome de um arquivo de origem para o objeto OLE vinculado.

O exemplo de código a seguir mostra como obter dados brutos do objeto OLE usando o método [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Inserir OLE objeto como um ícone

OLE objetos também podem ser inseridos em documentos como imagens.

O exemplo de código a seguir mostra como inserir o objeto OLE como um ícone. Para este propósito, a classe **DocumentBuilder** expõe o método [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

O exemplo de código a seguir mostra como inserir um objeto OLE incorporado como um ícone de um fluxo no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Inserir Vídeo Online

O vídeo Online pode ser inserido no documento do Word a partir do separador *"Insert" > "Online Video"*. Você pode inserir um vídeo on-line em um documento no local atual chamando o método [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double):

A classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) introduz quatro sobrecargas deste método. O primeiro trabalha com os recursos de vídeo mais populares e toma o `URL` do vídeo como parâmetro. Por exemplo, a primeira sobrecarga suporta a simples inserção de vídeos em linha a partir de [YouTube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/) recursos.

O exemplo de código a seguir mostra como inserir um vídeo online de *Vimeo* em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

A segunda sobrecarga funciona com todos os outros recursos de vídeo e usa o código HTML incorporado como parâmetro. O código HTML para incorporar um vídeo pode variar consoante o fornecedor, por isso contacte o respetivo fornecedor para obter mais informações.

{{% alert color="primary" %}}

Por favor, note que o documento será automaticamente otimizado para MS Word 2013 para mostrar vídeo.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um vídeo on-line em um documento usando esse código HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
