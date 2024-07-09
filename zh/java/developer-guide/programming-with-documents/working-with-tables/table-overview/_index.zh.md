---
title: 表格概览
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 表格概览
linktitle: 表格概览
description: "工作表及其组成部分,如单元格、行、列 Aspose.Words (单位:千美元) Java。 。 。 。 如何与表合作 Java。 。 。 。"
type: docs
weight: 10
url: /zh/java/table-overview/
---

Aspose.Words 是一个用于服务器侧处理各种格式文档的类库 – PDF, HTML, 不同的 Microsoft Word 格式和其他 - 并以下列方式支持表格:

* 文档中的表格在打开/保存和转换时保留。
* 可以编辑表格、内容及其格式,然后以支持表格的格式将修改导出为文件

在本篇文章中,我们将更多地了解表格结构、单元格、行和列。 Aspose.Words, 以及使用这些表格的详细情况。

## 表格结构

如前所述,该表由下列要素组成: **Cell**, **Row** 和 **Column**。 。 。 这些概念是所有表格的通用概念,无论文档格式如何。

这是一个常见的例子,显示一个表格在 Microsoft Word 文档:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### 表格节点

从任何文档中装入的表格 Aspose.Words 作为导入 **表格节点**。 。 。 。 该表是作为下列儿童提供的:

- 主语
- 内部故事,如评论或脚注
- 在一个表格嵌入另一个表格时的单元格

{{% alert color="primary" %}}

请注意,表格可以在任何深度的其他表格内嵌入。

{{% /alert %}}

### 表格内容

表格节点并不包含任何真实内容,而是构成内容的其他此类节点的容器:

- 怎么样? **Table** 包含很多 **Row** 节点。 表格提供了所有常用节点元素,允许您自由移动,修改,并删除文档中的表格.
- 怎么样? **Row** 代表单个表格行并包含许多 **Cell** 节点。 此外, **Row** 提供了定义行如何显示的元素,例如高度和对齐。
- 怎么样? **Cell** 这是包含 true 表中可见的内容,由 **Paragraph** 和其他块级节点。 此外,细胞可以包含嵌入式表.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

您可以使用 **DocumentExplorer**。 。 。 。

{{% /alert %}}

### 表后的空段落

上面的图片显示,文档包含一个数行的表格,这些表格又由两个单元格组成. 两个单元格中每个单元格都包含一个段落,即单元格格式文本的容器。

还值得指出的是,在一份文件中将两个连续的表格分开,至少需要在表格之后有一个空段落。 没有这样一个段落,将连续的表格合并为一个表格。 这两种行为都一样 Microsoft Word 和 Aspose.Words。 。 。 。

Aspose.Words 有一些与表格有关的类别 - [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), 还有其他人。

## 另见

* [Aspose.Words Document Object Model (DOM)](/words/zh/java/aspose-words-document-object-model/)
* [文档中节点的逻辑级别](/words/zh/java/logical-levels-of-nodes-in-a-document/)