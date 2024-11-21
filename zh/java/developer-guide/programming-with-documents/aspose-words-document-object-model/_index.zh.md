---
title: Aspose.Words Document Object Model (DOM)
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: Aspose.Words Document Object Model (DOM)
linktitle: Aspose.Words Document Object Model (DOM)
type: docs
description: "Document Object Model (单位:千美元)DOM)是Word文档的内在代表. 使用 Java。 。 。 。"
weight: 10
url: /zh/java/aspose-words-document-object-model/
timestamp: 2024-01-27-14-07-04
---

那个 Aspose.Words Document Object Model (单位:千美元)DOM)是Word文档的内在代表. 那个 Aspose.Words DOM 允许您在程序上读取、操作和修改Word文档的内容和格式。

本节介绍 Aspose.Words DOM 还有他们的关系 通过使用 Aspose.Words DOM 中,您可以获取对文档元素和格式化的程序访问。

## 创建文档 对象树 {#create-a-document-objects-tree}

当文档读入 Aspose.Words <span notrans="<span notrans=" DOM"=""></span>",> 然后构建对象树,源文档的不同类型元素有自己的 DOM 具有各种属性的树形对象。

### 构建文档节点树 {#build-document-nodes-tree}

何时 Aspose.Words 将 Word 文档读入内存,它创建了代表各种文档元素的不同类型对象。 文本,段落,表,或节的每次运行都是节点,甚至文档本身也是节点. Aspose.Words 定义每个文档节点类型的类。

文档树 Aspose.Words 遵循复合设计模式:

- 所有节点类最终都来自 [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) 类,是 Aspose.Words Document Object Model。 。 。 。
- 能够包含其他节点的节点,例如, **Section** 或 **Paragraph**, 来源于 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 分类,反过来又源于 **Node** 课。

下图显示各节点之间的继承情况。 Aspose.Words Document Object Model (单位:千美元)DOM) (中文(简体) ). 抽象类的名称在斜体语中.

<img src="/words/java/aspose-words-document-object-model/aspose-words-dom.png" alt="aspose-words-dom" style="width:700px"/>

{{% alert color="primary" %}}

那个 Aspose.Words DOM 还包含非节点类,例如: [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) 或 [Font](https://reference.aspose.com/words/java/com.aspose.words/font/), 用于定制文档中的外观和样式。 本图中未显示这些类未从 `Node` 课。

{{% /alert %}}

举个例子 以下图像显示 Microsoft Word 有不同类型内容的文档。

<img src="/words/java/aspose-words-document-object-model/document-example.png" alt="document-example" style="width:700px"/>

将上述文档读入 Aspose.Words DOM, 创建对象的树,如下图所示。

<img src="/words/java/aspose-words-document-object-model/document-example-dom.png" alt="document-example-dom" style="width:700px"/>

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/), [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), [Run](https://reference.aspose.com/words/java/com.aspose.words/run/), 和图上的所有其他椭圆是 Aspose.Words 代表 Word 文档元素的对象。

### 拿一个 `Node` 类型 {#get-a-node-type}

虽然 [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) 分类足以区分不同的节点, Aspose.Words 提供 [NodeType](https://reference.aspose.com/words/java/com.aspose.words/nodetype/) 引用以简化一些 API 任务,例如选择特定类型的节点。

每个节点的类型可以使用 [NodeType](https://reference.aspose.com/words/java/com.aspose.words/node/#getNodeType) 属性。 此财产返回 a **NodeType** 计数值. 例如,以 **Paragraph** 类返回 **NodeType**。 。 。 。**Paragraph**,并用 **Table** 类返回 **NodeType**。 。 。 。**Table**。 。 。 。

以下示例显示如何使用 **NodeType** 计数:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-GetNodeType-.java" >}}

## 文档树导航 {#document-tree-navigation}

Aspose.Words 代表作为节点树的文档,它允许您在节点之间导航。 本节介绍如何在 Aspose.Words。 。 。 。

当您打开早先在文档浏览器中展示的样本文档时,节点树就和它所代表的完全一样 Aspose.Words。 。 。 。

<img src="/words/java/aspose-words-document-object-model/document-in-document-explorer.png" alt="document-in-document-explorer" style="width:680px"/>

{{% alert color="primary" %}}

您可以在此学习" Document Explorer" 样本项目 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Document_explorer)。 。 。 。

{{% /alert %}}

### 文档节点关系 {#document-nodes-relationships}

树上的节点有它们之间的关系:

- 含有另一个节点的节点是 *parent.*
- 怎么样? 父节点中的节点是 *child.* 同一父母的孩子节点 *sibling* 节点。
- 那个 *root* 节点总是 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 节点.

能够包含其他节点的节点来自 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 分类,所有节点最终都来自 [Node](https://reference.aspose.com/words/java/com.aspose.words/node/) 课。 这两个基类为树结构导航和修改提供了共同的方法和属性.

以下UML对象图显示了样本文档的几个节点及其通过父母,孩子和兄弟姐妹属性彼此间的关系:

<img src="/words/java/aspose-words-document-object-model/document-nodes-relationships.png" alt="document-nodes-relationships" style="width:370px"/>

#### 文档为节点所有者

一个节点总是属于某个特定文档,即使它刚刚被创建或从树上移除,因为样式和列表等重要的全文档结构都存储在其中. **Document** 节点. 例如,不可能有一个 **Paragraph** 无 **Document** 因为每个段落都有指定的样式,该样式为文档全球定义。 创建任何新节点时都会使用此规则. 添加新内容 **Paragraph** 直接发送给 DOM 需要向构建器传递文档对象。

{{% alert color="primary" %}}

那个 [Node.Document](https://reference.aspose.com/words/java/com.aspose.words/node/#getDocument) 属性返回节点所属的文档。

{{% /alert %}}

使用新段落创建时 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), 建造者总是有 **Document** 分类通过 [DocumentBuilder.Document](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#Document) 属性。

以下代码示例显示,在创建任何节点时,将拥有节点的文档总是被定义:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-OwnerDocument-.java" >}}

#### 父节点

每个节点都有由 [ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) 属性。 一个节点没有父节点,即, **ParentNode** 在下列情况下无效:

- 怎么样? 节点刚刚建立,尚未加入树上.
- 怎么样? 节点已被树除去.
- 怎么样? 这是根 **Document** 总是有父节点的节点。

您可以通过调用: [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) 方法。 以下代码示例显示如何访问父节点:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-AccessParentNode-.java" >}}

#### 子节点

访问儿童节点的最有效方式 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 是经过 [FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#FirstChild) 和 [LastChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#LastChild) 属性分别返回第一个和最后一个子节点。 如果没有子节点,这些属性返回 *null*。 。 。 。

**CompositeNode** 还提供了 [ChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChildNodes) 用于索引或列出儿童节点访问的集合。 那个 **ChildNodes** 属性是节点的活集,这意味着当文档被更改时,例如节点被删除或添加时, **ChildNodes** 自动更新收藏。

如果一个节点没有孩子,那么 **ChildNodes** 属性返回空收藏。 您可以检查是否 **CompositeNode** 包含任何使用 [HasChildNodes](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#hasChildNodes) 属性。

以下代码示例说明如何列出一个直接的孩子节点 `CompositeNode` 使用 `ChildNodes` 收藏库:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingEnumeratorProvidedByChildNodesCollection.java" >}}

以下代码示例说明如何列出一个直接的孩子节点 `CompositeNode` 使用索引访问:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-ChildNodes-enumerateChildrenOfACompositeNodeUsingIndexedAccess.java" >}}

#### 兄弟姐妹节点

您可以使用 [PreviousSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getPreviousSibling) 和 [NextSibling](https://reference.aspose.com/words/java/com.aspose.words/node/#getNextSibling) 属性。 如果一个节点是其父母最后一个孩子,那么 **NextSibling** 属性是 *null*。 。 。 相反,如果节点是其父母的第一个孩子,则 **PreviousSibling** 属性是 *null*。 。 。 。

以下代码示例显示如何高效访问复合节点的所有直接和间接的儿童节点:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-SiblingNodes-.java" >}}

### 儿童和父母节点的输入

目前为止,我们已经讨论过返回其中一种碱性类型的属性。 **Node** 或 **CompositeNode**。 。 。 但有时你可能需要将数值投向特定节点类,例如: **Run** 或 **Paragraph**。 。 。 也就是说,你无法完全摆脱 铸造与工作 Aspose.Words DOM, 这是复合的。

为了减少铸造需求,大多数 Aspose.Words 类提供属性和收藏,提供强烈类型的访问。 输入访问有三种基本模式:

- 父节点显示输入 **FirstXXX** 和 **LastXXX** 属性。 例如, **Document** 已经 [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) 和 [LastSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getLastSection) 属性。 同样, **Table** 有属性,例如 [FirstRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getFirstRow), [LastRow](https://reference.aspose.com/words/java/com.aspose.words/table/#getLastRow), 还有其他人。
- 父母的节点会显示儿童节点的打字集,例如: [Document.Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections), [Body.Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/story/#getParagraphs), 还有其他人。
- 儿童节点提供与其父母的打字机会,例如: [Run.ParentParagraph](https://reference.aspose.com/words/java/com.aspose.words/inline/#getParentParagraph), [Paragraph.ParentSection](https://reference.aspose.com/words/java/com.aspose.words/paragraph/#getParentSection), 还有其他人。

类型属性只是有用的快捷键,有时比从中继承的通用属性更容易访问 [Node.ParentNode](https://reference.aspose.com/words/java/com.aspose.words/node/#getParentNode) 和 [CompositeNode.FirstChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getFirstChild)。 。 。 。

以下代码示例显示如何使用打字属性访问文档树的节点:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-document_object_model-TypedAccessToChildrenAndParent-.java" >}}
