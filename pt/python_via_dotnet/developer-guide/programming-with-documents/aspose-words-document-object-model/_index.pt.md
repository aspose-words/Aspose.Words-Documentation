---
title: Aspose.Words DOM
second_title: Aspose.Words para Python via .NET
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) é uma representação na memória de um documento do Word. Leia, manipule e modifique o conteúdo e a formatação de um documento do Word usando Python."
weight: 10
url: /pt/python-net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

O Aspose.Words Document Object Model (DOM) é uma representação na memória de um documento do Word. O Aspose.Words DOM permite ler, manipular e modificar programaticamente o conteúdo e a formatação de um documento do Word.

Esta seção descreve as principais classes do Aspose.Words DOM e seus relacionamentos. Ao usar as classes Aspose.Words DOM, você pode obter acesso programático aos elementos e formatação do documento.

## Crie uma árvore de objetos `Document` {#create-a-document-objects-tree}

Quando um documento é lido no Aspose.Words DOM, uma árvore de objetos é construída e diferentes tipos de elementos do documento de origem têm seus próprios objetos de árvore DOM com várias propriedades.

### Construir árvore de nós de documento {#build-document-nodes-tree}

Quando o Aspose.Words lê um documento do Word na memória, ele cria objetos de diferentes tipos que representam vários elementos do documento. Cada execução de um texto, parágrafo, tabela ou seção é um nó, e até mesmo o próprio documento é um nó. Aspose.Words define uma classe para cada tipo de nó de documento.

A árvore de documentos em Aspose.Words segue o Composite Design Pattern:

- Todas as classes de nós derivam, em última análise, da classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/), que é a classe base no Document Object Model Aspose.Words.
- Nós que podem conter outros nós, por exemplo, [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) ou [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), derivam da classe [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/), que por sua vez deriva da classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

O diagrama fornecido abaixo mostra a herança entre classes de nós do Aspose.Words Document Object Model (DOM). Os nomes das classes abstratas estão em itálico.

<img src="/words/python-net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspor-palavras-dom" style="width:700px"/>

{{% alert color="primary" %}}

O Aspose.Words DOM também contém classes que não são de nós, como [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) ou [Font](https://reference.aspose.com/words/python-net/aspose.words/font/), que são usadas para personalizar a aparência e os estilos de um documento. Essas classes não são mostradas neste diagrama porque não são herdadas da classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/).

{{% /alert %}}

Vejamos um exemplo. A imagem a seguir mostra um documento Microsoft Word com diferentes tipos de conteúdo.

<img src="/words/python-net/aspose-words-document-object-model/document-example.png" alt="documento-exemplo-aspose-palavras" style="width:700px"/>

Ao ler o documento acima no Aspose.Words DOM, é criada a árvore de objetos, conforme esquema abaixo.

<img src="/words/python-net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-palavras" style="width:700px"/>

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/), [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) e todas as outras elipses no diagrama são objetos Aspose.Words que representam elementos do documento do Word.

### Obtenha um `Node` tipo {#get-a-node-type}

Embora a classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) seja suficiente para distinguir nós diferentes entre si, o Aspose.Words fornece a enumeração [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/) para simplificar algumas tarefas API, como selecionar nós de um tipo específico.

O tipo de cada nó pode ser obtido utilizando a propriedade [Node.node_type](https://reference.aspose.com/words/python-net/aspose.words/node/node_type/). Esta propriedade retorna um valor de enumeração [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/). Por exemplo, um nó de parágrafo representado pela classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) retorna [NodeType.PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#paragraph) e um nó de tabela representado pela classe [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) retorna [NodeType.TABLE](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#table).

O exemplo a seguir mostra como obter um tipo de nó usando a enumeração [NodeType](https://reference.aspose.com/words/python-net/aspose.words/nodetype/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-UseNodeType.py" >}}

## Navegação na árvore de documentos {#document-tree-navigation}

Aspose.Words representa um documento como uma árvore de nós, que permite navegar entre os nós. Esta seção descreve como explorar e navegar na árvore de documentos em Aspose.Words.

Ao abrir o documento de amostra apresentado anteriormente, no Document Explorer, a árvore de nós aparece exatamente como é representada em Aspose.Words.

<img src="/words/python-net/aspose-words-document-object-model/document-in-document-explorer.png" alt="explorador de documento em documento" style="width:680px"/>

{{% alert color="primary" %}}

Você pode aprender o projeto de amostra "Document Explorer" no [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples).

{{% /alert %}}

### Relacionamentos de nós de documento {#document-nodes-relationships}

Os nós da árvore possuem relacionamentos entre eles:

- Um nó contendo outro nó é um *parent.*
- O nó contido no nó pai é um *child.* Os nós filhos do mesmo pai são nós *sibling*.
- O nó *root* é sempre o nó [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Os nós que podem conter outros nós derivam da classe [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) e todos os nós derivam, em última análise, da classe [Node](https://reference.aspose.com/words/python-net/aspose.words/node/). Essas duas classes base fornecem métodos e propriedades comuns para navegação e modificação da estrutura em árvore.

O diagrama de objetos UML a seguir mostra vários nós do documento de amostra e suas relações entre si por meio das propriedades pai, filho e irmão:

<img src="/words/python-net/aspose-words-document-object-model/document-nodes-relationships.png" alt="documentos-nós-relacionamentos-aspose-palavras" style="width:370px"/>

#### O documento é o proprietário do nó

Um nó sempre pertence a um documento específico, mesmo que tenha acabado de ser criado ou removido da árvore, porque estruturas vitais para todo o documento, como estilos e listas, são armazenadas no nó [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Por exemplo, não é possível ter um [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) sem [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) porque cada parágrafo possui um estilo atribuído que é definido globalmente para o documento. Esta regra é usada ao criar novos nós. Adicionar um novo [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) diretamente ao DOM requer um objeto de documento passado ao construtor.

{{% alert color="primary" %}}

A propriedade [Node.document](https://reference.aspose.com/words/python-net/aspose.words/node/document/) retorna o documento ao qual o nó pertence.

{{% /alert %}}

Ao criar um novo parágrafo utilizando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), o construtor sempre possui uma classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) vinculada a ele através da propriedade [DocumentBuilder.document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/document/).

O exemplo de código a seguir mostra que ao criar qualquer nó, um documento que será o proprietário do nó é sempre definido:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-OwnerDocument.py" >}}

#### Nó pai

Cada nó possui um pai especificado pela propriedade [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/). Um nó não possui nó pai, ou seja, [parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) é *None*, nos seguintes casos:

- O nó acabou de ser criado e ainda não foi adicionado à árvore.
- O nó foi removido da árvore.
- Este é o nó [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) raiz que sempre possui um nó pai Nenhum.

Você pode remover um nó de seu pai chamando o método [Node.remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/). O exemplo de código a seguir mostra como acessar o nó pai:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-GetParentNode.py" >}}

#### Nós filhos

A maneira mais eficiente de acessar os nós filhos de um [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) é por meio das propriedades [first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/) e [last_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/last_child/) que retornam o primeiro e o último nós filhos, respectivamente. Se não houver nós filhos, essas propriedades retornarão *None*.

[CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) também fornece a coleção [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) permitindo acesso indexado ou enumerado aos nós filhos. O método [get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) retorna uma coleção ativa de nós, o que significa que sempre que o documento é alterado, como quando nós são removidos ou adicionados, a coleção **get_child_nodes** é atualizada automaticamente.

Se um nó não tiver filho, o método **get_child_nodes** retornará uma coleção vazia. Você pode verificar se o [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) contém algum nó filho usando a propriedade [has_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/has_child_nodes/).

O exemplo de código a seguir mostra como enumerar nós filhos imediatos de um [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) usando o enumerador fornecido pela coleção **get_child_nodes**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-EnumerateChildNodes.py" >}}

#### Nós irmãos

Você pode obter o nó que precede ou segue imediatamente um nó específico usando as propriedades [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) e [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/), respectivamente. Se um nó for o último filho de seu pai, a propriedade [next_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/next_sibling/) será *None*. Por outro lado, se o nó for o primeiro filho de seu pai, a propriedade [previous_sibling](https://reference.aspose.com/words/python-net/aspose.words/node/previous_sibling/) será *None*.

O exemplo de código a seguir mostra como visitar com eficiência todos os nós filhos diretos e indiretos de um nó composto:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-RecurseAllNodes.py" >}}

### Acesso digitado a nós filho e pai {#typed-access-to-child-and-parent-nodes}

Até agora, discutimos as propriedades que retornam um dos tipos base – [Node](https://reference.aspose.com/words/python-net/aspose.words/node/) ou [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). Mas às vezes há situações em que pode ser necessário converter valores para uma classe de nó específica, como [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) ou [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/). Ou seja, você não pode fugir completamente da transmissão ao trabalhar com o Aspose.Words DOM, que é composto.

Para reduzir a necessidade de conversão, a maioria das classes Aspose.Words fornece propriedades e coleções que fornecem acesso fortemente digitado. Existem três padrões básicos de acesso digitado:

- Um nó pai expõe propriedades **primeiro_XXX** e **último_XXX** digitadas. Por exemplo, o [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) possui propriedades [first_section](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) e [last_section](https://reference.aspose.com/words/python-net/aspose.words/document/last_section/). Da mesma forma, o [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) possui propriedades como [first_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/first_row/), [last_row](https://reference.aspose.com/words/python-net/aspose.words.tables/table/last_row/) e outras.
- Um nó pai expõe uma coleção digitada de nós filhos, como [Document.sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/), [Body.paragraphs](https://reference.aspose.com/words/python-net/aspose.words/story/paragraphs/) e outros.
- Um nó filho fornece acesso digitado ao seu pai, como [Run.parent_paragraph](https://reference.aspose.com/words/python-net/aspose.words/inline/parent_paragraph/), [Paragraph.parent_section](https://reference.aspose.com/words/python-net/aspose.words/paragraph/parent_section/) e outros.

Propriedades digitadas são apenas atalhos úteis que às vezes fornecem acesso mais fácil do que propriedades genéricas herdadas de [Node.parent_node](https://reference.aspose.com/words/python-net/aspose.words/node/parent_node/) e [CompositeNode.first_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/first_child/).

O exemplo de código a seguir mostra como usar propriedades digitadas para acessar nós da árvore de documentos:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_node-TypedAccess.py" >}}
