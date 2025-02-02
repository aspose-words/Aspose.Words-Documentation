---
title: Aspose.Words modelo de objecto do documento (DOM) Em C++
second_title: Aspose.Words para C++
articleTitle: Aspose.Words Modelo De Objecto Do Documento (DOM)
linktitle: Aspose.Words Modelo De Objecto Do Documento (DOM)
type: docs
description: "Document Object Model (DOM) é uma representação na memória de um documento do Word. Leia, manipule e modifique o conteúdo e a formatação de um documento do Word usando C++."
weight: 10
url: /pt/cpp/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

O Aspose.Words Document Object Model (DOM) é uma representação na memória de um documento do Word. O Aspose.Words DOM permite ler, manipular e modificar programaticamente o conteúdo e a formatação de um documento do Word.

Esta secção descreve as principais classes do Aspose.Words DOM e as suas relações. Ao utilizar as classes Aspose.Words DOM, pode obter acesso programático aos elementos do documento e à formatação.

## Criar Árvore De Objectos Do Documento {#create-a-document-objects-tree}

Quando um documento é lido no Aspose.Words DOM, então uma árvore de objetos é construída e diferentes tipos de elementos do documento de origem têm seus próprios objetos de árvore DOM com várias propriedades.

### Construir Árvore De Nós Do Documento {#build-document-nodes-tree}

Quando Aspose.Words lê um documento do Word na memória, ele cria objetos de diferentes tipos que representam vários elementos do documento. Cada execução de um texto, parágrafo, tabela ou seção é um nó, e até mesmo o próprio documento é um nó. Aspose.Words define uma classe para cada tipo de nó de Documento.

A árvore de documentos em Aspose.Words segue o padrão de desenho composto:

- Todas as classes de nós derivam, em última análise, da classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/), que é a classe base no modelo de objeto de Documento Aspose.Words.
- Os nós que podem conter outros nós, por exemplo, **Section** ou **Paragraph**, derivam da classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/), que por sua vez deriva da classe **Node**.

O diagrama fornecido abaixo mostra a herança entre as classes de nós do modelo de objeto de documento Aspose.Words (DOM). Os nomes das classes abstratas estão em itálico.

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

O Aspose.Words DOM também contém as classes não-nó, como [Style](https://reference.aspose.com/words/cpp/aspose.words/style/) ou [Font](https://reference.aspose.com/words/cpp/aspose.words/font/), que são usadas para personalizar a aparência e os estilos dentro de um documento. Essas classes não são mostradas neste diagrama como não herdadas da classe `Node`.

{{% /alert %}}

Vejamos um exemplo. A imagem a seguir mostra um documento Microsoft Word com diferentes tipos de conteúdo.

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

Ao ler o documento acima no Aspose.Words DOM, A árvore de objetos é criada, conforme mostrado no esquema abaixo.

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), e todas as outras elipses no diagrama são Aspose.Words objetos que representam elementos do documento do Word.

### Obter um `Node` Tipo {#get-a-node-type}

Embora a classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/) seja suficiente para distinguir nós diferentes uns dos outros, Aspose.Words fornece a enumeração [NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/) para simplificar algumas tarefas API, como selecionar nós de um tipo específico.

O tipo de cada nó pode ser obtido usando a propriedade [NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/). Esta propriedade retorna um **NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph** e um nó de tabela representado pelo **Table** class returns **NodeType**.**Table**.

O exemplo a seguir mostra como obter um tipo de nó usando a enumeração **NodeType**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## Navegação Na Árvore De Documentos {#document-tree-navigation}

Aspose.Words representa um documento como uma árvore de nós, que permite navegar entre nós. Esta secção descreve como explorar e navegar na árvore de documentos em Aspose.Words.

Quando você abre o documento de amostra, apresentado anteriormente, no Document Explorer, a árvore de nós aparece exatamente como está representada em Aspose.Words.

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### Relações Do Nó Do Documento {#document-nodes-relationships}

Os nós da árvore têm relações entre eles:

- Um nó que contém outro nó é *parent.*
- O nó contido no nó pai é um *child.* Nós filhos do mesmo pai são *sibling* nós.
- O nó *root* é sempre o nó [Document](https://reference.aspose.com/words/cpp/aspose.words/document/).

Os nós que podem conter outros nós derivam da classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode) e todos os nós derivam da classe [Node](https://reference.aspose.com/words/cpp/aspose.words/node/). Estas duas classes base fornecem métodos e propriedades comuns para a navegação e modificação da estrutura em árvore.

O diagrama de objetos UML a seguir mostra vários nós do documento de amostra e suas relações entre si por meio das propriedades pai, filho e irmão:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### O documento é proprietário do nó

Um nó sempre pertence a um documento específico, mesmo que tenha sido criado ou removido da árvore, porque estruturas vitais para todo o documento, como estilos e listas, são armazenadas no nó **Document**. Por exemplo, não é possível ter um **Paragraph** sem um **Document** porque cada parágrafo tem um estilo atribuído que é definido globalmente para o documento. Esta regra é usada ao criar novos nós. Adicionar um novo **Paragraph** diretamente ao DOM requer um objeto document passado para o construtor.

{{% alert color="primary" %}}

A propriedade [Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/) retorna o documento ao qual o nó pertence.

{{% /alert %}}

Ao criar um novo parágrafo usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), O Construtor sempre tem uma classe **Document** vinculada a ele por meio da propriedade [DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/).

O exemplo de código a seguir mostra que, ao criar qualquer nó, um documento que possuirá o nó é sempre definido:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### Nó Pai

Cada nó tem um pai especificado pela propriedade [ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/). Um nó não tem nó pai, ou seja, **ParentNode** é nulo, nos seguintes casos:

- O nó acaba de ser criado e ainda não foi adicionado à árvore.
- O nó foi removido da árvore.
- Este é o nó raiz **Document** que sempre tem um nó pai nulo.

Você pode remover um nó de seu pai chamando o método [Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/).O exemplo de código a seguir mostra como acessar o nó pai:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### Nós Filhos

A maneira mais eficiente de acessar nós filhos de a [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/) é por meio das propriedades [FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/) e [LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/) que retornam o primeiro e o último nós filhos, respectivamente. Se não houver nós filhos, essas propriedades retornarão *null*.

**CompositeNode**

Se um nó não tiver filho, a propriedade **ChildNodes** retornará uma coleção vazia. Você pode verificar se o **CompositeNode** contém quaisquer nós filhos usando a propriedade [HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/).

O exemplo de código a seguir mostra como enumerar nós filhos imediatos de a `CompositeNode` usando o enumerador fornecido pela coleção `ChildNodes`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

O exemplo de código a seguir mostra como enumerar nós filhos imediatos de a `CompositeNode` usando acesso indexado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### Nós Irmãos

Você pode obter o nó que imediatamente precede ou segue um nó específico usando as propriedades [PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/) e [NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/), respectivamente. Se um nó for o último filho de seu pai, a propriedade **NextSibling** será *null*. Por outro lado, se o nó for o primeiro filho de seu pai, a propriedade **PreviousSibling** será *null*.

O exemplo de código a seguir mostra como visitar com eficiência todos os nós filhos diretos e indiretos de um nó composto:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### Acesso digitado aos nós Filho e pai

Até agora, discutimos as propriedades que retornam um dos tipos de base – **Node** ou **CompositeNode**. Mas às vezes há situações em que você pode precisar converter valores para uma classe de nó específica, como **Run** ou **Paragraph**. Ou seja, você não pode se afastar completamente da conversão ao trabalhar com o Aspose.Words DOM, que é composto.

Para reduzir a necessidade de conversão, a maioria das classes Aspose.Words fornece propriedades e coleções que fornecem acesso fortemente tipado. Existem três padrões básicos de acesso digitado:

- Um nó pai expõe as propriedades **FirstXXX** e **LastXXX** tipadas. Por exemplo, o **Document** tem [FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/) e [LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/) propriedades. Da mesma forma, **Table** tem propriedades como [FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/), [LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/) e outras.
- Um nó pai expõe uma coleção tipada de nós filhos, como [Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/), [Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/) e outros.
- Um nó filho fornece acesso digitado ao seu pai, como [Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/) e outros.

As propriedades digitadas são apenas atalhos úteis que, por vezes, proporcionam um acesso mais fácil do que as propriedades genéricas herdadas de [Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/) e [CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/).

O exemplo de código a seguir mostra como usar propriedades digitadas para acessar nós da árvore de documentos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
