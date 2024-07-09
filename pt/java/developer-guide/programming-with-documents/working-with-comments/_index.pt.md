---
title: Trabalhando com comentários em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com comentários
linktitle: Trabalhando com comentários
description: "Trabalhar com comentários usando Java."
type: docs
weight: 260
url: /pt/java/working-with-comments/
---

{{% alert color="primary" %}}

**Experimente online**

Você pode tentar esta funcionalidade com a nossa [Notícias online grátis](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite aos usuários trabalhar com comentários – comentários em um documento Aspose.Words são representados por [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) classe. Também use o [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) classes para especificar a região do texto que deve estar associada a um comentário.

## Adicionar um comentário

Aspose.Words permite adicionar comentários de várias maneiras:

1. Usando o [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) classe
2. Usando o [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) aulas

O exemplo de código a seguir mostra como adicionar um comentário a um parágrafo usando o **Comment** classe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

O exemplo de código a seguir mostra como adicionar um comentário a um parágrafo usando uma região de texto e o **CommentRangeStart** e **CommentRangeEnd** classes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extrair ou remover comentários

Usar Comentários em um documento do Word (além de Track Changes) é uma prática comum ao analisar documentos, particularmente quando há vários revisores. Pode haver situações em que a única coisa que você precisa de um documento é os comentários. Diga que você deseja gerar uma lista de resultados de revisão, ou talvez você tenha coletado todas as informações úteis do documento e você simplesmente deseja remover comentários desnecessários. Você pode querer visualizar ou remover os comentários de um determinado revisor.

Nesta amostra, vamos analisar alguns métodos simples para coletar informações dos comentários dentro de um documento e para remover comentários de um documento. Especificamente, vamos cobrir como:

- Extrair todos os comentários de um documento ou apenas os feitos por um determinado autor.
- Remover todos os comentários de um documento ou apenas de um determinado autor.

### Como Extrair ou Remover Comentários

O código nesta amostra é bastante simples e todos os métodos são baseados na mesma abordagem. Um comentário em um documento do Word é representado por um `Comment` objeto no Aspose.Words modelo de objeto de documento. Para coletar todos os comentários em um documento use o [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) método com o primeiro parâmetro definido para `NodeType.Comment`. Certifique-se de que o segundo parâmetro do **Não há problema** método é definido para true: isto força o **Não há problema** selecionar de todos os nós da criança recursivamente, em vez de apenas recolher as crianças imediatas.

Para ilustrar como extrair e remover comentários de um documento, passaremos pelas seguintes etapas:

1. Abra um documento do Word usando o [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe
1. Obtenha todos os comentários do documento em uma coleção
1. Para extrair comentários:
   1. Vá através da coleção usando o para o operador
   1. Extraia e lista o nome do autor, data e hora e texto de todos os comentários
   1. Extrair e listar o nome do autor, data e hora e texto de comentários escritos por um autor específico, neste caso, o autor ‘ks’
1. Para remover comentários:
   1. Vá para trás através da coleção usando o para o operador
   1. Remover comentários
1. Salve as mudanças.

Vamos usar o seguinte documento do Word para este exercício:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Como você pode ver, contém vários Comentários de dois autores com as iniciais "pm" e "ks".

### Como Extrair todos os Comentários

O [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) método é muito útil e você pode usá-lo cada vez que você precisa para obter uma lista de nós de documentos de qualquer tipo. A coleção resultante não cria uma sobrecarga imediata porque os nós são selecionados nesta coleção somente quando você enumerar ou acessar itens nele.

O exemplo a seguir mostra como extrair o nome do autor, data & hora e texto de todos os comentários no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Como Extrair Comentários de um Autor Especificado

Depois de ter selecionado nós de comentário em uma coleção, tudo que você tem que fazer é extrair as informações que você precisa. Nesta amostra, as iniciais do autor, data, hora e o texto simples do comentário é combinado em uma string; você pode optar por armazená-lo de algumas outras maneiras em vez disso.

O método sobrecarregado que extrai os Comentários de um determinado autor é quase o mesmo, ele apenas verifica o nome do autor antes de adicionar a informação no array.

O exemplo a seguir mostra como extrair o nome do autor, data & hora e texto dos comentários pelo autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Como remover comentários

Se você estiver removendo todos os comentários, não há necessidade de passar pela coleção deletando comentários um por um; você pode removê-los chamando [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) sobre a coleção de comentários.

O exemplo de código a seguir mostra como remover todos os comentários no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Quando você precisa remover seletivamente comentários, o processo se torna mais semelhante ao código que usamos para extração de comentários.

O exemplo de código a seguir mostra como remover comentários pelo autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

O ponto principal a destacar aqui é o uso do operador. Ao contrário da simples extração, aqui você deseja excluir um comentário. Um truque adequado é iterar a coleção para trás do último Comentário para o primeiro. A razão para isso, se você começar do final e mover para trás, o índice dos itens anteriores permanece inalterado, e você pode trabalhar seu caminho de volta para o primeiro item na coleção.

O exemplo de código a seguir mostra os métodos para a extração e remoção de comentários:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo a partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Quando lançado, a amostra exibe os seguintes resultados. Em primeiro lugar, ele lista todos os comentários de todos os autores, em seguida, ele lista comentários pelo autor selecionado apenas. Finalmente, o código removendo todos os comentários.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

O documento do Word de saída agora tem comentários removidos dele:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Como remover texto entre CommentRangeStart e CommentRangeEnd

Usando Aspose.Words você também pode remover comentários entre os nós CommentRangeStart e CommentRangeEnd.

O exemplo de código a seguir mostra como remover texto entre CommentRangeStart e CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Adicionar ou Remover Comentário

O [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) método adiciona uma resposta a este comentário. Por favor, note que devido às limitações existentes do MS Office apenas um (1) nível de respostas é permitido no documento. Uma exceção do tipo InvalidOperationException será levantada se este método for chamado no comentário de resposta existente.

Você pode usar o [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) método para remover a resposta especificada a este comentário.

O exemplo de código a seguir mostra como adicionar uma resposta a um comentário e remover a resposta de um comentário:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Ler Comentário's Reply

Aspose.Words apoio para ler a resposta de um comentário. O [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) propriedade retorna uma coleção da [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) objetos que são crianças imediatas do comentário especificado.

O exemplo de código a seguir mostra como iterar através das respostas de um comentário e resolveu-as:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}