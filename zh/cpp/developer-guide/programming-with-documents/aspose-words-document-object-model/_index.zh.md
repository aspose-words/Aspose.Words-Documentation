---
title: C++中的Aspose.Words文档对象模型(DOM)
second_title: Aspose.Words对于C++
articleTitle: Aspose.Words文档对象模型(DOM)
linktitle: Aspose.Words文档对象模型(DOM)
type: docs
description: "文档对象模型(DOM)是Word文档的内存表示形式。 使用C++读取、操作和修改Word文档的内容和格式。"
weight: 10
url: /zh/cpp/aspose-words-document-object-model/
---

Aspose.Words文档对象模型(DOM)是Word文档的内存表示形式。 Aspose.WordsDOM允许您以编程方式读取、操作和修改Word文档的内容和格式。

本节介绍Aspose.WordsDOM的主要类及其关系。 通过使用Aspose.WordsDOM类，您可以获得对文档元素和格式的编程访问。

## 创建文档对象树{#create-a-document-objects-tree}

当一个文档被读入Aspose.WordsDOM时，就会构建一个对象树，源文档的不同类型的元素都有自己的DOM树对象和各种属性。

### 构建文档节点树{#build-document-nodes-tree}

当Aspose.Words将Word文档读入内存时，它会创建表示各种文档元素的不同类型的对象。 文本、段落、表或节的每次运行都是一个节点，甚至文档本身也是一个节点。 Aspose.Words为每个文档节点类型定义一个类。

Aspose.Words中的文档树遵循复合设计模式:

- 所有节点类最终都派生自[Node](https://reference.aspose.com/words/cpp/aspose.words/node/)类，该类是Aspose.Words文档对象模型中的基类。
- 可以包含其他节点（例如**Section**或**Paragraph**）的节点派生自[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)类，而[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)类又派生自**Node**类。

下图显示了Aspose.Words文档对象模型(DOM)的节点类之间的继承。 抽象类的名称用斜体表示。

<img src="aspose-words-dom.png" alt="aspose-words-dom-aspose-words-cpp" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.WordsDOM还包含非节点类，如[Style](https://reference.aspose.com/words/cpp/aspose.words/style/)或[Font](https://reference.aspose.com/words/cpp/aspose.words/font/)，它们用于自定义文档中的外观和样式。 这些类在此图中未显示为未从`Node`类继承。

{{% /alert %}}

让我们来看一个例子。 下图显示了具有不同类型内容的Microsoft Word文档。

<img src="document-example.png" alt="document-example-aspose-words-cpp" style="width:700px"/>

将上述文档读入Aspose.WordsDOM时，将创建对象树，如下面的模式所示。

<img src="document-example-dom.png" alt="document-example-dom-aspose-words-cpp" style="width:700px"/>

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/), [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape), [Run](https://reference.aspose.com/words/cpp/aspose.words/run/), 图上的所有其他椭圆都是表示Word文档元素的Aspose.Words对象。

### 获取`Node`类型{#get-a-node-type}

虽然[Node](https://reference.aspose.com/words/cpp/aspose.words/node/)类足以将不同的节点彼此区分开来，但Aspose.Words提供了[NodeType](https://reference.aspose.com/words/cpp/aspose.words/nodetype/)枚举来简化一些API任务，例如选择特定类型的节点。

每个节点的类型可以使用[NodeType](https://reference.aspose.com/words/cpp/aspose.words/node/get_nodetype/)属性获得。 此属性返回**NodeType** enumeration value. For example, a paragraph node represented by the **Paragraph** class returns **NodeType**.**Paragraph**和由**Table** class returns **NodeType**.**Table**表示的表节点。

下面的示例演示如何使用**NodeType**枚举获取节点类型:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-UseNodeType.cpp" >}}

## 文档树导航{#document-tree-navigation}

Aspose.Words将文档表示为节点树，使您能够在节点之间导航。 本节介绍如何在Aspose.Words中浏览和导航文档树。

当您在文档资源管理器中打开前面介绍的示例文档时，节点树的显示与Aspose.Words中所表示的完全相同。

<img src="document-in-document-explorer.png" alt="document-in-document-explorer-aspose-words-cpp" style="width:680px"/>

### 文档节点关系{#document-nodes-relationships}

树中的节点之间具有关系:

- 包含另一个节点的节点是*parent.*
- 所述父节点包含的节点为同一父节点的*child.*个子节点为*sibling*个节点。
- *root*节点始终是[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)节点。

可以包含其他节点的节点派生自[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode)类，所有节点最终派生自[Node](https://reference.aspose.com/words/cpp/aspose.words/node/)类。 这两个基类为树结构导航和修改提供了常用的方法和属性。

下面的UML对象图显示了示例文档的几个节点及其通过父、子和兄弟属性相互之间的关系:

<img src="document-nodes-relationships.png" alt="document-nodes-relationships-aspose-words-cpp" style="width:370px"/>

#### 文档是节点所有者

节点始终属于特定文档，即使它刚刚创建或从树中删除，因为重要的文档范围结构（如样式和列表）存储在**Document**节点中。 例如，不可能有一个没有**Document**的**Paragraph**，因为每个段落都有一个为文档全局定义的指定样式。 创建任何新节点时使用此规则。 将新的**Paragraph**直接添加到DOM需要传递给构造函数的document对象。

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/cpp/aspose.words/node/get_document/)属性返回节点所属的文档。

{{% /alert %}}

使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)创建新段落时，构建器始终具有通过[DocumentBuilder.Document](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_document/)属性链接到它的**Document**类。

下面的代码示例显示，在创建任何节点时，始终定义将拥有该节点的文档:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-OwnerDocument.cpp" >}}

#### 父节点

每个节点都有一个由[ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/)属性指定的父节点。 在以下情况下，节点没有父节点，即**ParentNode**为null:

- 节点刚刚创建，尚未添加到树中。
- 节点已从树中删除。
- 这是根**Document**节点,它总是有一个空的父节点.

您可以通过调用[Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/)方法从其父节点中删除节点。下面的代码示例演示如何访问父节点:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-GetParentNode.cpp" >}}

#### 子节点

访问[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)子节点的最有效方法是通过[FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/)和[LastChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_lastchild/)属性分别返回第一个和最后一个子节点。 如果没有子节点，这些属性返回*null*。

**CompositeNode**

如果节点没有子节点，则**ChildNodes**属性返回一个空集合。 您可以使用[HasChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_haschildnodes/)属性检查**CompositeNode**是否包含任何子节点。

下面的代码示例演示如何使用`ChildNodes`集合提供的枚举器枚举`CompositeNode`的立即子节点:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cpp" >}}

下面的代码示例演示如何使用索引访问枚举`CompositeNode`的立即子节点:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-IndexChildNodes.cpp" >}}

#### 同级节点

您可以分别使用[PreviousSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_previoussibling/)和[NextSibling](https://reference.aspose.com/words/cpp/aspose.words/node/get_nextsibling/)属性获取紧接在特定节点之前或之后的节点。 如果节点是其父节点的最后一个子节点，则**NextSibling**属性为*null*。 相反，如果节点是其父节点的第一个子节点，则**PreviousSibling**属性为*null*。

下面的代码示例演示如何高效地访问复合节点的所有直接和间接子节点:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-RecurseAllNodes.cpp" >}}

### 对子节点和父节点的类型化访问

到目前为止，我们已经讨论了返回基类型之一的属性–**Node**或**CompositeNode**。 但有时在某些情况下，您可能需要将值转换为特定的节点类，例如**Run**或**Paragraph**。 也就是说，在使用复合Aspose.WordsDOM时，您无法完全摆脱铸造。

为了减少强制转换的需要，大多数Aspose.Words类提供了提供强类型访问的属性和集合。 类型化访问有三种基本模式:

- 父节点公开类型化**FirstXXX**和**LastXXX**属性。 例如，**Document**具有[FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/)和[LastSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_lastsection/)属性。 同样，**Table**具有[FirstRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_firstrow/)，[LastRow](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_lastrow/)等属性。
- 父节点公开子节点的类型化集合，如[Document.Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)、[Body.Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/story/get_paragraphs/)等。
- 子节点提供对其父节点（如[Run.ParentParagraph](https://reference.aspose.com/words/cpp/aspose.words/inline/get_parentparagraph/)、[Paragraph.ParentSection](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_parentsection/)等）的类型化访问。

类型化属性只是有用的快捷方式，有时提供比从[Node.ParentNode](https://reference.aspose.com/words/cpp/aspose.words/node/get_parentnode/)和[CompositeNode.FirstChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/get_firstchild/)继承的泛型属性更容易的访问。

下面的代码示例演示如何使用类型化属性访问文档树的节点:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Node-ExNode-TypedAccess.cpp" >}}
