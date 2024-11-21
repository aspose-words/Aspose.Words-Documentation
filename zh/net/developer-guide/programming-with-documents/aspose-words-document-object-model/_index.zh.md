---
title: C# 格式的 Aspose.Words Document Object Model (DOM)
second_title: .NET 格式的 Aspose.Words
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (DOM) 是 Word 文档的内存表示形式。使用 C# 读取、操作和修改 Word 文档的内容和格式。"
weight: 10
url: /zh/net/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Document Object Model (DOM) 是 Word 文档的内存表示形式。 Aspose.Words DOM 允许您以编程方式读取、操作和修改 Word 文档的内容和格式。

本节介绍 Aspose.Words DOM 的主要类及其关系。通过使用 Aspose.Words DOM 类，您可以获得对文档元素和格式的编程访问。

## 创建 `Document` 对象树 {#create-a-document-objects-tree}

当文档被读入 Aspose.Words DOM 时，就会构建一个对象树，源文档的不同类型的元素都有自己的具有各种属性的 DOM 树对象。

### 构建文档节点树 {#build-document-nodes-tree}

当 Aspose.Words 将 Word 文档读入内存时，它会创建代表各种文档元素的不同类型的对象。每一段文本、段落、表格或节都是一个节点，甚至文档本身也是一个节点。 Aspose.Words 为每个文档节点类型定义一个类。

Aspose.Words 中的文档树遵循复合设计模式：

- 所有节点类最终都派生自 [Node](https://reference.aspose.com/words/zh/net/aspose.words/node/) 类，该类是 Aspose.Words Document Object Model 中的基类。
- 可以包含其他节点的节点（例如 **Section** 或 **Paragraph**）派生自 [CompositeNode](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/) 类，而 [CompositeNode](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/) 类又派生自 **Node** 类。

下图显示了 Aspose.Words Document Object Model (DOM) 节点类之间的继承。抽象类的名称以斜体显示。

<img src="/words/net/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose 单词 dom" style="width:700px"/>

{{% alert color="primary" %}}

Aspose.Words DOM 还包含非节点类，例如 [Style](https://reference.aspose.com/words/zh/net/aspose.words/style/) 或 [Font](https://reference.aspose.com/words/zh/net/aspose.words/font/)，用于自定义文档中的外观和样式。这些类未在此图中显示，因为这些类不是从 `Node` 类继承的。

{{% /alert %}}

让我们看一个例子。下图显示了包含不同类型内容的 Microsoft Word 文档。

<img src="/words/net/aspose-words-document-object-model/document-example.png" alt="文档示例 aspose-words" style="width:700px"/>

将上述文档读入 Aspose.Words DOM 时，将创建对象树，如下图所示。

<img src="/words/net/aspose-words-document-object-model/document-example-dom.png" alt="dom-aspose-词" style="width:700px"/>

[Document](https://reference.aspose.com/words/zh/net/aspose.words/document/)、[Section](https://reference.aspose.com/words/zh/net/aspose.words/section/)、[Paragraph](https://reference.aspose.com/words/zh/net/aspose.words/paragraph/)、[Table](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/)、[Shape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/)、[Run](https://reference.aspose.com/words/zh/net/aspose.words/run/) 以及图表上的所有其他省略号都是表示 Word 文档元素的 Aspose.Words 对象。

### 获取 `Node` 类型 {#get-a-node-type}

尽管 [Node](https://reference.aspose.com/words/zh/net/aspose.words/node/) 类足以区分不同的节点，但 Aspose.Words 提供了 [NodeType](https://reference.aspose.com/words/zh/net/aspose.words/node/nodetype/) 枚举来简化某些 API 任务，例如选择特定类型的节点。

每个节点的类型可以使用 [NodeType](https://reference.aspose.com/words/zh/net/aspose.words/node/nodetype/) 属性获取。此属性返回 **NodeType** 枚举值。例如，由 **Paragraph** 类表示的段落节点返回 **NodeType**.**Paragraph**，由 **Table** 类表示的表节点返回 **NodeType**.**Table**。

以下示例演示如何使用 **NodeType** 枚举获取节点类型：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-UseNodeType.cs" >}}

## 文档树导航 {#document-tree-navigation}

Aspose.Words 将文档表示为节点树，使您能够在节点之间导航。本节介绍如何浏览和导航 Aspose.Words 中的文档树。

当您在文档资源管理器中打开前面提供的示例文档时，节点树的显示方式与 Aspose.Words 中的显示方式完全相同。

<img src="/words/net/aspose-words-document-object-model/document-in-document-explorer.png" alt="文档中文档浏览器" style="width:680px"/>

{{% alert color="primary" %}}

您可以在 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer) 上了解示例项目"Document Explorer"。

{{% /alert %}}

### 文档节点关系 {#document-nodes-relationships}

树中的节点之间存在关系：

- 包含另一个节点的节点是 *parent.*
- 父节点包含的节点是*child.* 同一父节点的子节点是*sibling* 节点。
- *root* 节点始终是 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 节点。

可以包含其他节点的节点派生自 [CompositeNode](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/) 类，所有节点最终都派生自 [Node](https://reference.aspose.com/words/zh/net/aspose.words/node/) 类。这两个基类提供了用于树结构导航和修改的通用方法和属性。

下面的 UML 对象图显示了示例文档的几个节点以及它们通过父、子和同级属性相互之间的关系：

<img src="/words/net/aspose-words-document-object-model/document-nodes-relationships.png" alt="文档节点关系-aspose-词" style="width:370px"/>

#### 文档是节点所有者

节点始终属于特定文档，即使它刚刚创建或从树中删除，因为重要的文档范围结构（例如样式和列表）存储在 **Document** 节点中。例如，不可能有没有 **Document** 的 **Paragraph**，因为每个段落都有一个为文档全局定义的指定样式。创建任何新节点时都会使用此规则。直接将新的 **Paragraph** 添加到 DOM 需要将文档对象传递给构造函数。

{{% alert color="primary" %}}

[Node.Document](https://reference.aspose.com/words/zh/net/aspose.words/node/document/) 属性返回节点所属的文档。

{{% /alert %}}

使用 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 创建新段落时，构建器始终有一个通过 [DocumentBuilder.Document](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/document/) 属性链接到它的 **Document** 类。

以下代码示例显示，在创建任何节点时，始终定义拥有该节点的文档：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-OwnerDocument.cs" >}}

#### 父节点

每个节点都有一个由 [ParentNode](https://reference.aspose.com/words/zh/net/aspose.words/node/parentnode/) 属性指定的父节点。节点没有父节点，即**ParentNode**为空，以下情况：

- 该节点刚刚创建，尚未添加到树中。
- 该节点已从树中删除。
- 这是根 **Document** 节点，它始终具有空父节点。

您可以通过调用 [Remove](https://reference.aspose.com/words/zh/net/aspose.words/node/remove/) 方法从其父节点中删除节点。以下代码示例展示了如何访问父节点：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-GetParentNode.cs" >}}

#### 子节点

访问 [CompositeNode](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/) 子节点的最有效方法是通过分别返回第一个和最后一个子节点的 [FirstChild](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/firstchild/) 和 [LastChild](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/lastchild/) 属性。如果没有子节点，这些属性将返回 *null*。

**CompositeNode** 还提供了 [GetChildNodes](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/getchildnodes/) 方法，支持对子节点进行索引或枚举访问。 **ChildNodes** 属性是节点的实时集合，这意味着每当文档发生更改时（例如删除或添加节点时），**ChildNodes** 集合都会自动更新。

如果节点没有子节点，则 **ChildNodes** 属性返回一个空集合。您可以使用 [HasChildNodes](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/haschildnodes/) 属性检查 **CompositeNode** 是否包含任何子节点。

以下代码示例演示如何使用 `ChildNodes` 集合提供的枚举器枚举 `CompositeNode` 的直接子节点：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-EnumerateChildNodes.cs" >}}

以下代码示例演示如何使用索引访问枚举 `CompositeNode` 的直接子节点：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-IndexChildNodes.cs" >}}

#### 兄弟节点

您可以分别使用 [PreviousSibling](https://reference.aspose.com/words/zh/net/aspose.words/node/previoussibling/) 和 [NextSibling](https://reference.aspose.com/words/zh/net/aspose.words/node/nextsibling/) 属性获取紧邻特定节点之前或之后的节点。如果节点是其父节点的最后一个子节点，则 **NextSibling** 属性为 *null*。相反，如果节点是其父节点的第一个子节点，则 **PreviousSibling** 属性为 *null*。

下面的代码示例展示了如何高效地访问复合节点的所有直接和间接子节点：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-RecurseAllNodes.cs" >}}

### 对子节点和父节点 {#typed-access-to-child-and-parent-nodes} 的类型化访问

到目前为止，我们已经讨论了返回基本类型之一的属性 - **Node** 或 **CompositeNode**。但有时，您可能需要将值转换为特定的节点类，例如 **Run** 或 **Paragraph**。也就是说，在使用复合的 Aspose.Words DOM 时，您无法完全摆脱强制转换。

为了减少转换的需要，大多数 Aspose.Words 类提供了提供强类型访问的属性和集合。类型化访问有三种基本模式：

- 父节点公开类型化的 **FirstXXX** 和 **LastXXX** 属性。例如，**Document** 具有 [FirstSection](https://reference.aspose.com/words/zh/net/aspose.words/document/firstsection/) 和 [LastSection](https://reference.aspose.com/words/zh/net/aspose.words/document/lastsection/) 属性。同样，**Table** 具有 [FirstRow](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/firstrow/)、[LastRow](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/lastrow/) 等属性。
- 父节点公开子节点的类型化集合，例如 [Document.Sections](https://reference.aspose.com/words/zh/net/aspose.words/document/sections/)、[Body.Paragraphs](https://reference.aspose.com/words/zh/net/aspose.words/story/paragraphs/) 等。
- 子节点提供对其父节点的类型化访问，例如 [Run.ParentParagraph](https://reference.aspose.com/words/zh/net/aspose.words/inline/parentparagraph/)、[Paragraph.ParentSection](https://reference.aspose.com/words/zh/net/aspose.words/paragraph/parentsection/) 等。

类型化属性只是有用的快捷方式，有时比从 [Node.ParentNode](https://reference.aspose.com/words/zh/net/aspose.words/node/parentnode/) 和 [CompositeNode.FirstChild](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/firstchild/) 继承的通用属性提供更容易的访问。

以下代码示例演示如何使用类型化属性来访问文档树的节点：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Node-ExNode-TypedAccess.cs" >}}
