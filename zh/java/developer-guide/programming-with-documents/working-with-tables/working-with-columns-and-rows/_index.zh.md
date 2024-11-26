---
title: 使用Java中的列和行
second_title: Aspose.Words为Java
articleTitle: 使用列和行
linktitle: 使用列和行
description: "使用Java处理表的部分–行、列和单元格。 指定标题行Java。"
type: docs
weight: 30
url: /zh/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

要更好地控制表的工作方式，请了解如何操作列和行。

## 查找表元素索引

列，行和单元格通过其索引访问所选文档节点来管理。 查找任何节点的索引涉及从父节点收集元素类型的所有子节点，然后使用[IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node)方法在集合中查找所需节点的索引。

### 查找文档中表的索引

有时您可能需要对文档中的特定表进行更改。 为此，您可以通过其索引引用表。

下面的代码示例演示如何检索文档中表的索引:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### 在表中查找行的索引

同样，您可能需要对选定表中的特定行进行更改。 为此，您还可以通过其索引引用行。

下面的代码示例演示如何检索表中的行的索引:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### 查找行中单元格的索引

最后，您可能需要对特定单元格进行更改，您也可以通过单元格索引执行此操作。

下面的代码示例演示如何检索行中单元格的索引:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## 使用列

在Aspose.Words文档对象模型（DOM）中，[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)节点由[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)个节点和[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)个节点组成。 因此，在Aspose.Words的`Document`对象模型中，与Word文档中一样，没有列的概念。

根据设计，Microsoft Word和Aspose.Words中的表行是完全独立的，基本属性和操作仅包含在表的行和单元格中。 这使表具有一些有趣的属性的能力:

- 每个表行可以具有完全不同数量的单元格
- 垂直地，每行的单元格可以具有不同的宽度
- 可以连接具有不同行格式和单元格数的表

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

对列执行的任何操作实际上都是"快捷方式"，通过集体更改行单元格来执行操作，使其看起来像是应用于列。 也就是说，您可以通过简单地迭代相同的表行单元格索引来对列执行操作。

下面的代码示例通过证明facade类来简化此类操作，该类收集构成表的"列"的单元格:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

下面的代码示例演示如何将空白列插入到表中:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

下面的代码示例演示如何从文档中的表中删除列:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## 将行指定为标题行

您可以选择仅在第一页上或在每页上重复表中的第一行作为标题行（如果表被拆分为多个）。 在Aspose.Words中，您可以使用[HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat)属性在每个页面上重复标题行。

如果这些行一个接一个地位于表的开头，则还可以标记多个标题行。 为此，您需要将**HeadingFormat**属性应用于这些行。

{{% alert color="primary" %}}

请注意，标题行在嵌套表中不起作用。 也就是说，如果您在另一个表中有一个表，则此设置将不起作用。 它是Microsoft Word的限制，不允许这样做，而不是Aspose.Words。

{{% /alert %}}

下面的代码示例演示如何生成一个表，其中包括在后续页上重复的标题行:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## 防止表和行跨越页面 {#keep-tables-and-rows-from-breaking-across-pages}

有些时候，表的内容不应该跨页分割。 例如，如果标题位于表格上方，则标题和表格应始终保持在同一页面上，以保持正确的外观。

有两种不同的技术可用于实现此功能:

- `Allow row break across pages`，应用于表行
- `Keep with next`，应用于表格单元格中的段落

默认情况下，上述属性处于禁用状态。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### 保持行不跨越页面 {#keep-a-row-from-breaking-across-pages}

这涉及到限制行单元格内的内容在页面上被分割。 在Microsoft Word中，这可以在表属性下找到，作为选项"允许行跨页中断"。 在Aspose.Words中，这是在[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)的[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)对象下作为属性[RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)找到的。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

下面的代码示例演示如何为表中的每行禁用跨页分隔行:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### 防止表跨页 {#keep-a-table-from-breaking-across-pages}

为了阻止表跨页面拆分，我们需要指定我们希望表中包含的内容保持在一起。

为此，Aspose.Words使用一种方法，该方法允许用户选择一个表，并为表单元格中的每个段落启用[KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext)参数为true。 例外情况是表中的最后一段，应将其设置为false。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

下面的代码示例演示如何将表设置为在同一页上保持在一起:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
