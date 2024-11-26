---
title: Aspose.Words Document Object Model (DOM) em C#
second_title: Aspose.Words para .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) é uma representação na memória de um documento do Word. Leia, manipule e modifique o conteúdo e a formatação de um documento do Word usando C#."
weight: 10
url: /pt/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

O Aspose.Words Document Object Model (DOM) é uma representação na memória de um documento do Word. O Aspose.Words DOM permite ler, manipular e modificar programaticamente o conteúdo e a formatação de um documento do Word.

Esta seção descreve as principais classes do Aspose.Words DOM e seus relacionamentos. Ao usar as classes Aspose.Words DOM, você pode obter acesso programático aos elementos e formatação do documento.

## Crie uma árvore de objetos `Document` {#create-a-document-objects-tree}

Quando um documento é lido no Aspose.Words DOM, uma árvore de objetos é construída e diferentes tipos de elementos do documento de origem têm seus próprios objetos de árvore DOM com várias propriedades.

### Construir árvore de nós de documento {#build-document-nodes-tree}

Quando o Aspose.Words lê um documento do Word na memória, ele cria objetos de diferentes tipos que representam vários elementos do documento. Cada execução de um texto, parágrafo, tabela ou seção é um nó, e até mesmo o próprio documento é um nó. Aspose.Words define uma classe para cada tipo de nó de documento.

A árvore de documentos em Aspose.Words segue o Composite Design Pattern:

- Todas as classes de nós derivam, em última análise, da classe [Node](https://reference.aspose.com/words/net/aspose.words/node/), que é a classe base no Document Object Model Aspose.Words.
- Nós que podem conter outros nós, por exemplo, **Section** ou **Paragraph**, derivam da classe [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/), que por sua vez deriva da classe **Node**.

O diagrama fornecido abaixo mostra a herança entre classes de nós do Aspose.Words Document Object Model (DOM). Os nomes das classes abstratas estão em itálico.

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspor-palavras-dom" style="width:700px"/>

{{% alert color="primary" %}}

O Aspose.Words DOM também contém classes que não são de nós, como [Style](https://reference.aspose.com/words/net/aspose.words/style/) ou [Font](https://reference.aspose.com/words/net/aspose.words/font/), que são usadas para personalizar a aparência e os estilos de um documento. Essas classes não são mostradas neste diagrama porque não são herdadas da classe `Node`.

{{% /alert %}}

Vejamos um exemplo. A imagem a seguir mostra um documento Microsoft Word com diferentes tipos de conteúdo.

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="documento-exemplo-aspose-palavras" style="width:700px"/>

Ao ler o documento acima no Aspose.Words DOM, é criada a árvore de objetos, conforme esquema abaixo.

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-palavras" style="width:700px"/>

[Document](https://reference.aspose.com/words/net/aspose.words/document/), [Section](https://reference.aspose.com/words/net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/net/aspose.words/run/) e todas as outras elipses no diagrama são objetos Aspose.Words que representam elementos do documento do Word.

### Obtenha um `Node` tipo {#get-a-node-type}

Embora a classe [Node](https://reference.aspose.com/words/net/aspose.words/node/) seja suficiente para distinguir nós diferentes entre si, o Aspose.Words fornece a enumeração [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/) para simplificar algumas tarefas API, como selecionar nós de um tipo específico.

O tipo de cada nó pode ser obtido utilizando a propriedade [NodeType](https://reference.aspose.com/words/net/aspose.words/node/nodetype/). Esta propriedade retorna um valor de enumeração **NodeType**. Por exemplo, um nó de parágrafo representado pela classe **Paragraph** retorna **NodeType**.**Paragraph** e um nó de tabela representado pela classe **Table** retorna **NodeType**.**Table**.

O exemplo a seguir mostra como obter um tipo de nó usando a enumeração **NodeType**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## Navegação na árvore de documentos {#document-tree-navigation}

Aspose.Words representa um documento como uma árvore de nós, que permite navegar entre os nós. Esta seção descreve como explorar e navegar na árvore de documentos em Aspose.Words.

Ao abrir o documento de amostra, apresentado anteriormente, no Document Explorer, a árvore de nós aparece exatamente como é representada em Aspose.Words.

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="explorador de documento em documento" style="width:680px"/>

{{% alert color="primary" %}}

Você pode aprender o projeto de amostra "Document Explorer" no [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

{{% /alert %}}

### Relacionamentos de nós de documento {#document-nodes-relationships}

Os nós da árvore possuem relacionamentos entre eles:

- Um nó contendo outro nó é um *parent.*
- O nó contido no nó pai é um *child.* Os nós filhos do mesmo pai são nós *sibling*.
- O nó *root* é sempre o nó [Document](https://reference.aspose.com/words/net/aspose.words/document/).

Os nós que podem conter outros nós derivam da classe [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) e todos os nós derivam, em última análise, da classe [Node](https://reference.aspose.com/words/net/aspose.words/node/). Essas duas classes base fornecem métodos e propriedades comuns para navegação e modificação da estrutura em árvore.

O diagrama de objetos UML a seguir mostra vários nós do documento de amostra e suas relações entre si por meio das propriedades pai, filho e irmão:

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="documentos-nós-relacionamentos-aspose-palavras" style="width:370px"/>

#### O documento é o proprietário do nó

Um nó sempre pertence a um documento específico, mesmo que tenha acabado de ser criado ou removido da árvore, porque estruturas vitais para todo o documento, como estilos e listas, são armazenadas no nó **Document**. Por exemplo, não é possível ter um **Paragraph** sem **Document** porque cada parágrafo possui um estilo atribuído que é definido globalmente para o documento. Esta regra é usada ao criar novos nós. Adicionar um novo **Paragraph** diretamente ao DOM requer um objeto de documento passado ao construtor.

{{% alert color="primary" %}}

A propriedade [Node.Document](https://reference.aspose.com/words/net/aspose.words/node/document/) retorna o documento ao qual o nó pertence.

{{% /alert %}}

Ao criar um novo parágrafo utilizando [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), o construtor sempre possui uma classe **Document** vinculada a ele através da propriedade [DocumentBuilder.Document](https://reference.aspose.com/words/net/aspose.words/documentbuilder/document/).

O exemplo de código a seguir mostra que ao criar qualquer nó, um documento que será o proprietário do nó é sempre definido:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### Nó pai

Cada nó possui um pai especificado pela propriedade [ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/). Um nó não possui nó pai, ou seja, **ParentNode** é nulo, nos seguintes casos:

- O nó acabou de ser criado e ainda não foi adicionado à árvore.
- O nó foi removido da árvore.
- Este é o nó **Document** raiz que sempre possui um nó pai nulo.

Você pode remover um nó de seu pai chamando o método [Remove](https://reference.aspose.com/words/net/aspose.words/node/remove/). O exemplo de código a seguir mostra como acessar o nó pai:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### Nós filhos

A maneira mais eficiente de acessar os nós filhos de um [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/) é por meio das propriedades [FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/) e [LastChild](https://reference.aspose.com/words/net/aspose.words/compositenode/lastchild/) que retornam o primeiro e o último nós filhos, respectivamente. Se não houver nós filhos, essas propriedades retornarão *null*.

**CompositeNode** também fornece o método [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) permitindo acesso indexado ou enumerado aos nós filhos. A propriedade **ChildNodes** é uma coleção ativa de nós, o que significa que sempre que o documento é alterado, como quando nós são removidos ou adicionados, a coleção **ChildNodes** é atualizada automaticamente.

Se um nó não tiver filho, a propriedade **ChildNodes** retornará uma coleção vazia. Você pode verificar se o **CompositeNode** contém algum nó filho usando a propriedade [HasChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/haschildnodes/).

O exemplo de código a seguir mostra como enumerar nós filhos imediatos de um `CompositeNode` usando o enumerador fornecido pela coleção `ChildNodes`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

O exemplo de código a seguir mostra como enumerar nós filhos imediatos de um `CompositeNode` usando acesso indexado:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### Nós irmãos

Você pode obter o nó que precede ou segue imediatamente um nó específico usando as propriedades [PreviousSibling](https://reference.aspose.com/words/net/aspose.words/node/previoussibling/) e [NextSibling](https://reference.aspose.com/words/net/aspose.words/node/nextsibling/), respectivamente. Se um nó for o último filho de seu pai, a propriedade **NextSibling** será *null*. Por outro lado, se o nó for o primeiro filho de seu pai, a propriedade **PreviousSibling** será *null*.

O exemplo de código a seguir mostra como visitar com eficiência todos os nós filhos diretos e indiretos de um nó composto:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### Acesso digitado a nós filho e pai {#typed-access-to-child-and-parent-nodes}

Até agora, discutimos as propriedades que retornam um dos tipos base – **Node** ou **CompositeNode**. Mas às vezes há situações em que pode ser necessário converter valores para uma classe de nó específica, como **Run** ou **Paragraph**. Ou seja, você não pode fugir completamente da transmissão ao trabalhar com o Aspose.Words DOM, que é composto.

Para reduzir a necessidade de conversão, a maioria das classes Aspose.Words fornece propriedades e coleções que fornecem acesso fortemente digitado. Existem três padrões básicos de acesso digitado:

- Um nó pai expõe propriedades **FirstXXX** e **LastXXX** digitadas. Por exemplo, o **Document** possui propriedades [FirstSection](https://reference.aspose.com/words/net/aspose.words/document/firstsection/) e [LastSection](https://reference.aspose.com/words/net/aspose.words/document/lastsection/). Da mesma forma, o **Table** possui propriedades como [FirstRow](https://reference.aspose.com/words/net/aspose.words.tables/table/firstrow/), [LastRow](https://reference.aspose.com/words/net/aspose.words.tables/table/lastrow/) e outras.
- Um nó pai expõe uma coleção digitada de nós filhos, como [Document.Sections](https://reference.aspose.com/words/net/aspose.words/document/sections/), [Body.Paragraphs](https://reference.aspose.com/words/net/aspose.words/story/paragraphs/) e outros.
- Um nó filho fornece acesso digitado ao seu pai, como [Run.ParentParagraph](https://reference.aspose.com/words/net/aspose.words/inline/parentparagraph/), [Paragraph.ParentSection](https://reference.aspose.com/words/net/aspose.words/paragraph/parentsection/) e outros.

Propriedades digitadas são apenas atalhos úteis que às vezes fornecem acesso mais fácil do que propriedades genéricas herdadas de [Node.ParentNode](https://reference.aspose.com/words/net/aspose.words/node/parentnode/) e [CompositeNode.FirstChild](https://reference.aspose.com/words/net/aspose.words/compositenode/firstchild/).

O exemplo de código a seguir mostra como usar propriedades digitadas para acessar nós da árvore de documentos:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
