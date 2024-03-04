---
title: 表概览
second_title: .NET 格式的 Aspose.Words
articleTitle: 表概览
linktitle: 表概览
description: "使用 Aspose.Words for .NET 中的表格及其组件，例如单元格、行、列。如何使用 C# 中的表。"
type: docs
weight: 10
url: /zh/net/table-overview/
---

Aspose.Words 是一个类库，设计用于服务器端处理各种格式的文档（PDF、HTML、不同的 Microsoft Word 格式等），并通过以下方式支持表格：

* 在打开/保存和转换期间保留文档中的表格
* 可以编辑表格、内容及其格式，然后将更改导出到支持表格的格式的文件中

在本文中，我们将详细了解 Aspose.Words 支持的表结构、单元格、行和列，以及使用此类表的详细信息。

## 表结构

正如已经提到的，该表由 **Cell**、**Row** 和 **Column** 等元素组成。这些概念对于所有表格来说都是通用的，无论文档格式如何。

这是 Microsoft Word 文档中常见的表格示例：

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### 表节点

加载到 Aspose.Words 中的任何文档中的表格都会作为 **表节点** 导入。该表可以作为以下项的子项找到：

- 正文
- 内联故事，例如评论或脚注
- 当表格嵌套在另一个表格中时的单元格

{{% alert color="primary" %}}

请注意，表可以任意深度地嵌套在其他表中。

{{% /alert %}}

### 表内容

表节点不包含任何实际内容 - 相反，它是构成内容的其他此类节点的容器：

- **Table**包含许多**Row**节点。表格提供了所有常用的节点元素，允许您在文档中自由移动、修改和删除表格。
- **Row** 表示单个表行并包含许多 **Cell** 节点。此外，**Row** 还提供定义行显示方式的元素，例如高度和对齐方式。
- **Cell** 包含表中可见的 true 内容，由 **Paragraph** 和其他块级节点组成。此外，单元格可以包含嵌套表。

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

您可以使用 **DocumentExplorer** 检查文档中表节点的结构。

{{% /alert %}}

### 表后的空段落

上图显示该文档包含一个由多行组成的表格，该表格又由两个单元格组成。这两个单元格中的每一个都包含一个段落，它是单元格格式化文本的容器。

还值得注意的是，在文档中分隔两个连续的表格需要表格后至少有一个空段落。如果没有这样的段落，连续的表格将被连接成一个。此行为在 Microsoft Word 和 Aspose.Words 中是相同的。

在 Aspose.Words 中，所有与表相关的类和属性都包含在 [Aspose.Words.Tables](https://reference.aspose.com/words/zh/net/aspose.words.tables/) 命名空间中。

## 也可以看看

* [Aspose.Words Document Object Model (DOM)](/words/zh/net/aspose-words-document-object-model/)
* [文档中节点的逻辑级别](/words/zh/net/logical-levels-of-nodes-in-a-document/)