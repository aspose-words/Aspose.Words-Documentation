---
title: Trabalhando com comentários em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabalhando com comentários
linktitle: Trabalhando com comentários
description: "Como adicionar, remover ou manipular comentários em um documento usando Python."
type: docs
weight: 260
url: /pt/python-net/working-with-comments/
---

{{% alert color="primary" %}}

**Experimente on-line**

Você pode experimentar esta funcionalidade com nosso [Remover anotações online gratuitamente](https://products.aspose.app/words/annotation).

{{% /alert %}}

Aspose.Words permite aos usuários trabalhar com comentários – os comentários em um documento em Aspose.Words são representados pela classe [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Utilize também as classes [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) para especificar a região do texto que deve ser associada a um comentário.

## Adicione um comentário

Aspose.Words permite adicionar comentários de várias maneiras:

1. Usando a classe [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
2. Usando as classes [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)

O exemplo de código a seguir mostra como adicionar um comentário a um parágrafo usando a classe **Comment**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddComments.py" >}}

O exemplo de código a seguir mostra como adicionar um comentário a um parágrafo usando uma região de texto e as classes **CommentRangeStart** e **CommentRangeEnd**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AnchorComment.py" >}}

## Extrair ou remover comentários

Usar comentários em um documento do Word (além de monitorar alterações) é uma prática comum ao revisar documentos, principalmente quando há vários revisores. Pode haver situações em que a única coisa que você precisa de um documento são os comentários. Digamos que você queira gerar uma lista de resultados da revisão ou talvez tenha coletado todas as informações úteis do documento e simplesmente queira remover comentários desnecessários. Você pode visualizar ou remover os comentários de um revisor específico.

Neste exemplo, veremos alguns métodos simples para coletar informações dos comentários de um documento e para remover comentários de um documento. Especificamente, abordaremos como:

- Extraia todos os comentários de um documento ou apenas os feitos por um determinado autor.
- Remova todos os comentários de um documento ou apenas de um determinado autor.

### Como extrair ou remover comentários

O código neste exemplo é bastante simples e todos os métodos são baseados na mesma abordagem. Um comentário em um documento do Word é representado por um objeto [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) no modelo de objeto do documento Aspose.Words. Para coletar todos os comentários em um documento use o método [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) com o primeiro parâmetro definido como [NodeType.COMMENT](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#comment). Certifique-se de que o segundo parâmetro do método **get_child_nodes** esteja definido como true: isso força o **get_child_nodes** a selecionar todos os nós filhos recursivamente, em vez de coletar apenas os filhos imediatos.

Para ilustrar como extrair e remover comentários de um documento, seguiremos as seguintes etapas:

1. Abra um documento do Word usando a classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/)
1. Reúna todos os comentários do documento em uma coleção
1. Para extrair comentários:
   1. Percorra a coleção usando o operador foreach
   1. Extraia e liste o nome do autor, data e hora e texto de todos os comentários
   1. Extraia e liste o nome do autor, data e hora e texto dos comentários escritos por um autor específico, neste caso o autor 'ks'
1. Para remover comentários:
   1. Volte na coleção usando o operador for
   1. Remova comentários
1. Salve as alterações

### Como extrair todos os comentários

O método [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) é muito útil e você pode usá-lo sempre que precisar obter uma lista de nós de documentos de qualquer tipo. A coleção resultante não cria uma sobrecarga imediata porque os nós são selecionados nesta coleção somente quando você enumera ou acessa itens nela.

O exemplo de código a seguir mostra como extrair o nome do autor, data e hora e texto de todos os comentários no documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractComments.py" >}}

### Como extrair comentários de um autor específico

Depois de selecionar nós [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) em uma coleção, tudo o que você precisa fazer é extrair as informações necessárias. Neste exemplo, as iniciais do autor, a data, a hora e o texto simples do comentário são combinados em uma string; você pode optar por armazená-lo de outras maneiras.

O método sobrecarregado que extrai os comentários de um determinado autor é quase o mesmo, apenas verifica o nome do autor antes de adicionar as informações ao array.

O exemplo de código a seguir mostra como extrair o nome do autor, data e hora e texto dos comentários do autor especificado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ExtractCommentsByAuthor.py" >}}

### Como remover comentários

Se você estiver removendo todos os comentários, não será necessário percorrer a coleção excluindo os comentários um por um; você pode removê-los chamando [clear](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/clear/) na coleção de comentários.

O exemplo de código a seguir mostra como remover todos os comentários do documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveComments.py" >}}

Quando você precisa remover comentários seletivamente, o processo se torna mais semelhante ao código que usamos para extração de comentários.

O exemplo de código a seguir mostra como remover comentários do autor especificado:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-RemoveCommentsByAuthor.py" >}}

O principal ponto a destacar aqui é o uso do operador for. Ao contrário da extração simples, aqui você deseja excluir um comentário. Um truque adequado é iterar a coleção de trás para frente, do último [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) para o primeiro. A razão para isso, se você começar do final e retroceder, o índice dos itens anteriores permanece inalterado e você pode voltar ao primeiro item da coleção.

O exemplo de código a seguir mostra os métodos para extração e remoção de comentários:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-ProcessComments.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Comments.docx).

{{% /alert %}}

### Como remover um comentário entre CommentRangeStart e CommentRangeEnd

Usando Aspose.Words você também pode remover comentários entre os nós **CommentRangeStart** e **CommentRangeEnd**.

O exemplo de código a seguir mostra como remover texto entre **CommentRangeStart** e **CommentRangeEnd**:

{{< highlight python >}}
# Open the document.
doc = aw.Document(docs_base.my_dir + "Comments.docx")

commentStart = doc.get_child(aw.NodeType.COMMENT_RANGE_START, 0, True).as_comment_range_start()
commentEnd = doc.get_child(aw.NodeType.COMMENT_RANGE_END, 0, True).as_comment_range_end()

currentNode = commentStart
isRemoving = True
while (currentNode != None and isRemoving) :
    if (currentNode.node_type == aw.NodeType.COMMENT_RANGE_END) :
        isRemoving = False

    nextNode = currentNode.next_pre_order(doc)
    currentNode.remove()
    currentNode = nextNode

# Save the document.
doc.save(docs_base.artifacts_dir + "WorkingWithComments.remove_region_text.docx")
{{< /highlight >}}

## Adicionar ou remover resposta do comentário

O método [add_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/add_reply/) adiciona uma resposta a este comentário. Observe que devido às limitações existentes do Microsoft Office, apenas 1 nível de respostas é permitido no documento. Uma exceção do tipo **InvalidOperationException** será gerada se esse método for chamado no comentário de resposta existente.

Você pode usar o método [remove_reply](https://reference.aspose.com/words/python-net/aspose.words/comment/remove_reply/) para remover a resposta especificada a este comentário.

O exemplo de código a seguir mostra como adicionar uma resposta ao comentário e remover a resposta do comentário:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-AddRemoveCommentReply.py" >}}

## Leia a resposta do comentário

A propriedade [replies](https://reference.aspose.com/words/python-net/aspose.words/comment/replies/) retorna uma coleção de objetos [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) que são filhos imediatos do comentário especificado.

O exemplo de código a seguir mostra como iterar as respostas de um comentário e resolvê-las:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_comments-CommentResolvedandReplies.py" >}}