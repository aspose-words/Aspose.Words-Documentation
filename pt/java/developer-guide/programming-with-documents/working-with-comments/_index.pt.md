---
title: Trabalhando com comentários em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com comentários
linktitle: Trabalhar com comentários
description: "Trabalhando com comentários usando Java."
type: docs
weight: 260
url: /pt/java/working-with-comments/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

**Experimente online**

Pode experimentar esta funcionalidade com o nosso [Removedor gratuito em linha outra](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite que os usuários trabalhem com comentários-os comentários em um documento em Aspose.Words são representados pela classe [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/). Use também as classes [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) para especificar a região do texto que deve ser associada a um comentário.

## Adicionar um comentário

Aspose.Words permite adicionar comentários de várias maneiras:

1. Usando a classe [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/)
2. Usando as classes [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/)

O exemplo de código a seguir mostra como adicionar um comentário a um parágrafo usando a classe **Comment**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddComments-AddComments.java" >}}

O exemplo de código a seguir mostra como adicionar um comentário a um parágrafo usando uma região de texto e as classes **CommentRangeStart** e **CommentRangeEnd**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AnchorComment-AnchorComment.java" >}}

## Extrair ou remover comentários

O uso de comentários em um documento do Word (além de rastrear alterações) é uma prática comum ao revisar documentos, especialmente quando há vários revisores. Pode haver situações em que a única coisa que você precisa de um documento são os comentários. Digamos que você queira gerar uma lista de resultados de revisão, ou talvez tenha coletado todas as informações úteis do documento e simplesmente queira remover comentários desnecessários. Você pode querer ver ou remover os comentários de um revisor específico.

Nesta amostra, vamos analisar alguns métodos simples para recolher informações dos comentários de um documento e para remover comentários de um documento. Especificamente, abordaremos como:

- Extraia todos os comentários de um documento ou apenas os feitos por um determinado autor.
- Remova todos os comentários de um documento ou apenas de um autor específico.

### Como extrair ou remover comentários

O código desta amostra é bastante simples e todos os métodos baseiam-se na mesma abordagem. Um comentário em um documento do Word é representado por um objeto `Comment` no modelo de objeto de Documento Aspose.Words. Para recolher todos os comentários num documento, utilize o método [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) com o primeiro parâmetro definido como `NodeType.Comment`. Certifique-se de que o segundo parâmetro do método **getChildNodes** esteja definido como true: isso força o **getChildNodes** a selecionar recursivamente de todos os nós filhos, em vez de coletar apenas os filhos imediatos.

Para ilustrar como extrair e remover comentários de um documento, seguiremos as seguintes etapas:

1. Abrir um documento do Word utilizando a classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/)
1. Obter todos os comentários do documento em uma coleção
1. Para extrair comentários:
   1. Percorra a coleção usando o para o operador
   1. Extrair e listar o nome do autor, data e hora e o texto de todos os comentários
   1. Extrair e listar o nome do autor, a data e a hora e o texto dos comentários escritos por um autor específico, neste caso, o autor 'ks'
1. Para remover comentários:
   1. Retroceda através da recolha utilizando o for the operator
   1. Remover comentários
1. Salve as alterações.

Vamos usar o seguinte documento do Word para este exercício:

![extract-remove-comments-aspose-words-java-1](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-1.png)

Como pode ver, contém vários comentários de dois autores com as iniciais "pm"e " ks".

### Como extrair todos os comentários

O método [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) é muito útil e você pode usá-lo sempre que precisar obter uma lista de nós de documentos de qualquer tipo. A coleção resultante não cria uma sobrecarga imediata porque os nós são selecionados nessa coleção somente quando você enumera ou acessa itens nela.

O exemplo de código a seguir mostra como extrair o nome do autor, data e hora e o texto de todos os comentários no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments.java" >}}

### Como extrair Comentários de um autor especificado

Depois de selecionar os nós de comentário em uma coleção, tudo o que você precisa fazer é extrair as informações necessárias. Neste exemplo, as iniciais do autor, a data, a hora e o texto simples do comentário são combinados numa cadeia de caracteres; em vez disso, pode optar por armazená-lo de outras formas.

O método sobrecarregado que extrai os comentários de um determinado autor é quase o mesmo, apenas verifica o nome do autor antes de adicionar as informações ao array.

O exemplo de código a seguir mostra como extrair o nome do autor, a data e a hora e o texto dos comentários do autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-extractComments_Author.java" >}}

### Como remover comentários

Se você estiver removendo todos os comentários, não há necessidade de percorrer a coleção excluindo Comentários um por um; você pode removê-los chamando [clear](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#clear) na coleção de comentários.

O exemplo de código a seguir mostra como remover todos os comentários no documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments.java" >}}

Quando você precisa remover seletivamente comentários, o processo se torna mais semelhante ao código que usamos para a extração de comentários.

O exemplo de código a seguir mostra como remover comentários do autor especificado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-removeComments_Author.java" >}}

O principal ponto a destacar aqui é a utilização do operador for. Ao contrário da extração simples, aqui você deseja excluir um comentário. Um truque adequado é iterar a coleção para trás do último comentário para o primeiro. A razão para isso se você começar do final e retroceder, o índice dos itens anteriores permanece inalterado e você pode voltar ao primeiro item da coleção.

O exemplo de código a seguir mostra os métodos para a extração e remoção de comentários:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-ProcessComments.java" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de exemplo deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/src/main/resources/com/aspose/words/examples/programming_documents/comments/ProcessComments/TestFile.doc).

{{% /alert %}}

Quando lançada, a amostra apresenta os seguintes resultados. Em primeiro lugar, lista todos os comentários de todos os autores e, em seguida, lista apenas os comentários do autor selecionado. Finalmente, o código de remoção de todos os comentários.

![extract-remove-comments-aspose-words-java-2](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-2.png)

O documento do Word de saída agora tem comentários removidos dele:

![extract-remove-comments-aspose-words-java-3](/words/java/working-with-comments/extract-remove-comments-aspose-words-java-3.png)

### Como remover texto entre CommentRangeStart e CommentRangeEnd

Usando Aspose.Words Você também pode remover comentários entre os nós CommentRangeStart e CommentRangeEnd.

O exemplo de código a seguir mostra como remover texto entre CommentRangeStart e CommentRangeEnd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-RemoveCommentRegionText-RemoveCommentRegionText.java" >}}

## Adicionar ou remover a resposta do comentário

O método [addReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#addReply-java.lang.String-java.lang.String-java.util.Date-java.lang.String) adiciona uma resposta a este comentário. Por favor, note que, devido às limitações existentes do MS Office, apenas um (1) Nível de respostas é permitido no documento. Uma exceção do tipo InvalidOperationException será levantada se este método for chamado no Comentário de resposta existente.

Você pode usar o método [removeReply](https://reference.aspose.com/words/java/com.aspose.words/comment/#removeReply-com.aspose.words.Comment) para remover a resposta especificada a este comentário.

O exemplo de código a seguir mostra como adicionar uma resposta a um comentário e remover a resposta de um comentário:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-AddRemoveCommentReply-AddRemoveCommentReply.java" >}}

## Ler a resposta do comentário

Aspose.Words Apoio à leitura da resposta de um comentário. A propriedade [Replies](https://reference.aspose.com/words/java/com.aspose.words/comment/#getReplies) retorna uma coleção dos objetos [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) que são filhos imediatos do comentário especificado.

O exemplo de código a seguir mostra como iterar as respostas de um comentário e resolvê-las:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-comments-ProcessComments-CommentResolvedandReplies.java" >}}
