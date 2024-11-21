---
title: Aspose.Words Document Object Model (DOM)
second_title: Aspose.Words para Java
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) é uma representação em memória de um documento do Word. Ler, manipular e modificar o conteúdo e formatação de um documento do Word usando Java."
weight: 10
url: /pt/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

O Aspose.Words Document Object Model (DOM) é uma representação em memória de um documento do Word. O Aspose.Words DOM permite ler, manipular e modificar programaticamente o conteúdo e formatação de um documento do Word.

Esta seção descreve as principais classes da Aspose.Words DOM e suas relações. Usando o Aspose.Words DOM classes, você pode obter acesso programático a elementos de documento e formatação.

## Criar documento Árvore do objeto {#create-a-document-objects-tree}

Quando um documento é lido no Aspose.Words <span notrans="<span notrans=" DOM"=""></span>, então uma árvore de objeto é construída e diferentes tipos de elementos do documento de origem têm seu próprio DOM objetos de árvore com várias propriedades.

### Construa a árvore dos nós do documento {#build-document-nodes-tree}

Quando Aspose.Words lê um documento do Word em memória, ele cria objetos de diferentes tipos que representam vários elementos do documento. Cada execução de um texto, parágrafo, tabela ou seção é um nó, e até o próprio documento é um nó. Aspose.Words define uma classe para cada tipo de nó de documento.

A árvore do documento em Aspose.Words segue o padrão de design composto:

- Todas as classes de nó em última análise derivam do [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) classe, que é a classe base na Aspose.Words Document Object Model.
- Nós que podem conter outros nós, por exemplo, **Section** ou **Paragraph**, deriva da [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe, que por sua vez deriva do **Node** classe.

O diagrama fornecido abaixo mostra herança entre classes de nó do Aspose.Words Document Object Model (DOM). Os nomes das classes abstratas estão em Itálico.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

O Aspose.Words DOM também contém as classes não nó, como [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) ou [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), que são usados para personalizar a aparência e estilos dentro de um documento. Estas classes não são mostradas neste diagrama como não herdadas do `Node` classe.

{{% /alert %}}

Vamos ver um exemplo. A imagem a seguir mostra uma Microsoft Word documento com diferentes tipos de conteúdo.

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

Ao ler o documento acima no Aspose.Words DOM, a árvore de objetos é criada, como mostrado no esquema abaixo.

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), e todas as outras elipses no diagrama são Aspose.Words objetos que representam elementos do documento do Word.

### Arranja um. `Node` Tipo {#get-a-node-type}

Embora o [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) classe é suficiente para distinguir nós diferentes uns dos outros, Aspose.Words fornece o [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) enumeração para simplificar alguns API tarefas, como selecionar nós de um tipo específico.

O tipo de cada nó pode ser obtido usando o [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) propriedade. Esta propriedade retorna uma **NodeType** valor de enumeração. Por exemplo, um nó de parágrafo representado pelo **Paragraph** retornos de classe **NodeType**.**Paragraph**, e um nó de tabela representado por **Table** retornos de classe **NodeType**.**Table**.

O exemplo a seguir mostra como obter um tipo de nó usando o **NodeType** enumeração:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## Navegação da árvore do documento {#document-tree-navigation}

Aspose.Words representa um documento como uma árvore de nó, que permite navegar entre nós. Esta seção descreve como explorar e navegar na árvore de documentos em Aspose.Words.

Quando você abre o documento de amostra, apresentado anteriormente, no Explorador de Documentos, a árvore de nó aparece exatamente como está representada em Aspose.Words.

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

Você pode aprender o projeto de amostra "Document Explorer" no [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer).

{{% /alert %}}

### Relacionamentos do nó do documento {#document-nodes-relationships}

Os nós na árvore têm relações entre eles:

- Um nó contendo outro nó é um *parent.*
- Não. O nó contido no nó pai é um *child.* Os nós de criança do mesmo pai são *sibling* nós.
- O *root* o nó é sempre o [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) nó.

Os nós que podem conter outros nós derivam do [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) classe, e todos os nós finalmente derivam do [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) classe. Estas duas classes de base fornecem métodos e propriedades comuns para a navegação e modificação da estrutura da árvore.

O seguinte diagrama de objeto UML mostra vários nós do documento de amostra e suas relações uns com os outros através das propriedades pai, criança e irmão:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### Documento é proprietário de nó

Um nó sempre pertence a um documento particular, mesmo que tenha sido apenas criado ou removido da árvore, porque estruturas vitais em todo o documento, tais como estilos e listas são armazenados no **Document** nó. Por exemplo, não é possível ter um **Paragraph** sem um **Document** porque cada parágrafo tem um estilo atribuído que é definido globalmente para o documento. Esta regra é usada ao criar novos nós. Adicionar um novo **Paragraph** diretamente para o DOM requer um objeto de documento passado para o construtor.

{{% alert color="primary" %}}

O [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) propriedade retorna o documento ao qual o nó pertence.

{{% /alert %}}

Ao criar um novo parágrafo usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), o construtor sempre tem um **Document** classe ligada a ele através do [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) propriedade.

O exemplo de código a seguir mostra que ao criar qualquer nó, um documento que possuirá o nó é sempre definido:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### Node dos pais

Cada nó tem um pai especificado pelo [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) propriedade. Um nó não tem nó pai, ou seja, **ParentNode** é nulo, nos seguintes casos:

- Não. O nó acaba de ser criado e ainda não foi adicionado à árvore.
- Não. O nó foi removido da árvore.
- Não. Esta é a raiz **Document** nó que sempre tem um nó pai nulo.

Você pode remover um nó de seu pai chamando o [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) método. O exemplo de código a seguir mostra como acessar o nó pai:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### Nodes de criança

A maneira mais eficiente de acessar nós de crianças de um [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) é através do [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) e [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) propriedades que retornam os primeiros e últimos nós de crianças, respectivamente. Se não houver nós de criança, essas propriedades retornam *null*.

**CompositeNode** também fornece o [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) coleção permitindo acesso indexado ou enumerado aos nós da criança. O **ChildNodes** propriedade é uma coleção ao vivo de nós, o que significa que sempre que o documento é alterado, como quando nós são removidos ou adicionados, o **ChildNodes** A coleção é atualizada automaticamente.

Se um nó não tem filhos, então o **ChildNodes** propriedade retorna uma coleção vazia. Você pode verificar se o **CompositeNode** contém todos os nós da criança usando [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) propriedade.

O exemplo de código a seguir mostra como enumerar nós de criança imediatos de um `CompositeNode` usando o enumerador fornecido pelo `ChildNodes` coleção:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

O exemplo de código a seguir mostra como enumerar nós de criança imediatos de um `CompositeNode` usando acesso indexado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### Nodes irmãos

Você pode obter o nó que precede imediatamente ou segue um nó particular usando o [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) e [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) propriedades, respectivamente. Se um nó é o último filho de seu pai, então o **NextSibling** propriedade é *null*. Por outro lado, se o nó é o primeiro filho de seu pai, o **PreviousSibling** propriedade é *null*.

O exemplo a seguir mostra como visitar de forma eficiente todos os nós de crianças diretos e indiretos de um nó composto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### Acesso digitado a nós de criança e pai

Até agora, discutimos as propriedades que retornam um dos tipos de base – **Node** ou **CompositeNode**. Mas às vezes há situações em que você pode precisar lançar valores para uma classe de nó específica, como **Run** ou **Paragraph**. Ou seja, você não pode ficar completamente longe de fundição quando trabalhar com o Aspose.Words DOM, que é composto.

Para reduzir a necessidade de fundição, a maioria Aspose.Words classes fornecem propriedades e coleções que fornecem acesso fortemente digitado. Existem três padrões básicos de acesso digitado:

- Um nó pai expõe digitado **FirstXXX** e **LastXXX** propriedades. Por exemplo, o **Document** ele tem [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) e [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) propriedades. Da mesma forma, **Table** tem propriedades como [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), e outros.
- Um nó pai expõe uma coleção de nós de criança, como [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), e outros.
- Um nó infantil fornece acesso digitado a seus pais, como [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), e outros.

Propriedades digitadas são apenas atalhos úteis que às vezes fornecem acesso mais fácil do que propriedades genéricas herdadas de [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) e [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild).

O exemplo a seguir mostra como usar propriedades digitadas para acessar nós da árvore de documentos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
