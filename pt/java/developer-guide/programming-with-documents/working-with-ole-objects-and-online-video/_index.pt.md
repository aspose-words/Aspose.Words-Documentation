---
title: Trabalhando com Objetos Ole
second_title: Aspose.Words para Java
articleTitle: Trabalhando com Objetos Ole
linktitle: Trabalhando com Objetos Ole
description: "Criar e modificar a incorporação OLE em seu documento usando Java."
type: docs
weight: 360
url: /pt/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE significa "Object Linking and Embedding". Esta é a tecnologia pela qual os usuários podem trabalhar com documentos contendo "objetos" criados ou editados por aplicativos de terceiros. Ou seja, a OLE permite que um aplicativo exporte esses "objetos" para outro aplicativo para edição e, em seguida, importá-los de volta com algum conteúdo adicional.

Neste artigo, falaremos sobre inserir um objeto OLE e definir suas propriedades em um documento.

## Inserir objeto Ole

Se você quiser Objeto OLE, ligue para [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) método e passá-lo **ProgId** explicitamente com outros parâmetros.

O seguinte exemplo de código mostra como inserir OLE Objeto em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### Defina o nome e a extensão do arquivo ao inserir o objeto OLE

O pacote OLE é uma forma legado e "não documentada" de armazenar objetos embarcados se um manipulador OLE é desconhecido.

Início Windows versões como Windows 3.1, 95 e 98 tinham um Packager. exe aplicativo que poderia ser usado para incorporar qualquer tipo de dados no documento. Esta aplicação está agora excluída Windows, mas Microsoft Word e outros aplicativos ainda usá-lo para incorporar dados se o manipulador OLE está faltando ou desconhecido. O `OlePackage` classe permite aos usuários acessar as propriedades do Pacote OLE.

O exemplo de código a seguir mostra como definir o nome do arquivo, extensão e o nome de exibição para OLE Package:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### Obtenha acesso aos dados brutos de objetos OLE

Os usuários podem acessar dados de objetos OLE usando várias propriedades e métodos dos `OleFormat` classe. Por exemplo, é possível obter o `OLE` objeto dados brutos ou o caminho e o nome de um arquivo de origem para o objeto OLE vinculado.

O seguinte exemplo de código mostra como obter OLE Objeto dados brutos usando o [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### Inserir OLE Objeto como um ícone

Objetos OLE também podem ser inseridos em documentos como imagens.

O exemplo de código a seguir mostra como inserir OLE Object como um ícone. Com esta finalidade, o **DocumentBuilder** classe expõe o [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) método.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

O exemplo de código a seguir mostra como inserir um objeto OLE incorporado como um ícone de um fluxo no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## Inserir vídeo online

O vídeo online pode ser inserido no documento do Word a partir da aba *"Insert" > "Online Video"*. Você pode inserir um vídeo on-line em um documento no local atual chamando o [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) método:

O [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe apresenta quatro sobrecargas deste método. O primeiro trabalha com os recursos de vídeo mais populares e leva o `URL` do vídeo como parâmetro. Por exemplo, a primeira sobrecarga suporta a inserção simples de vídeos on-line de [YouTube](https://www.youtube.com/) e [Vimeo](https://vimeo.com/) recursos.

O exemplo de código a seguir mostra como inserir um vídeo online *Vimeo* em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

A segunda sobrecarga funciona com todos os outros recursos de vídeo e leva o código HTML incorporado como parâmetro. O código HTML para incorporar um vídeo pode variar dependendo do provedor, então contate o respectivo provedor para obter detalhes.

{{% alert color="primary" %}}

Por favor, note que o documento será automaticamente otimizado para MS Word 2013 para mostrar vídeo.

{{% /alert %}}

O exemplo de código a seguir mostra como inserir um vídeo online em um documento usando esse código HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
