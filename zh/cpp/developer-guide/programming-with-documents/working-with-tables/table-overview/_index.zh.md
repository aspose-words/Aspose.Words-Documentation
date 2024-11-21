---
title: 表概述
second_title: Aspose.Words对于C++
articleTitle: 表概述
linktitle: 表概述
description: "使用表格及其组件，例如单元格、行、列Aspose.Words 对于 C++. 如何在 C++ 中使用表格。"
type: docs
weight: 10
url: /zh/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words是一个类库，设计用于服务器端处理各种格式的文档–PDF，HTML，不同的Microsoft Word格式和其他格式–并通过以下方式支持表:

* 文档中的表在打开/保存和转换过程中保留
* 可以编辑表格、内容及其格式，然后以支持表格的格式将更改导出到文件中

在本文中，我们将详细了解Aspose.Words支持的表结构、单元格、行和列，以及使用此类表的详细信息。

## 表结构

如前所述，该表由**Cell**，**Row**和**Column**等元素组成。 这些是所有表格通用的概念，无论文档格式如何。

这是在Microsoft Word文档中找到的表的常见示例:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### 表节点

加载到Aspose.Words中的任何文档中的表都将作为**Table node**导入。 该表可以作为:

- 正文
- 内联故事，如注释或脚注
- 当表嵌套在另一个表中时，单元格

{{% alert color="primary" %}}

请注意，表可以嵌套在其他表中以达到任何深度。

{{% /alert %}}

### 表格内容

表节点不包含任何真实内容–相反，它是构成内容的其他此类节点的容器:

- **Table**包含许多**Row**节点。 表格提供了所有常用的节点元素，允许您在文档中自由移动、修改和删除表格。
- **Row**表示单个表行，包含许多**Cell**节点。 此外，**Row**还提供了定义行显示方式的元素，例如高度和对齐方式。
- **Cell**是包含表中可见的真实内容的内容，由**Paragraph**和其他块级节点组成。 此外，单元格可以包含嵌套表。

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

您可以使用**DocumentExplorer**检查文档中表节点的结构。

{{% /alert %}}

### 表后空段

上图显示该文档包含一个由几行组成的表格，该表格又由两个单元格组成。 两个单元格中的每一个都包括一个段落，该段落是单元格格式化文本的容器。

另外值得注意的是，在文档中分隔两个连续的表格需要在表格之后至少有一个空段落。 如果没有这一段,连续的表格将合并成一个表格。 此行为在Microsoft Word和Aspose.Words中都是相同的。

在Aspose.Words中，与表相关的所有类和属性都包含在[Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/)命名空间中。

## 请参阅

* [Aspose.Words文档对象模型(DOM)](/words/cpp/aspose-words-document-object-model/)
* [文档中节点的逻辑级别](/words/cpp/logical-levels-of-nodes-in-a-document/)
