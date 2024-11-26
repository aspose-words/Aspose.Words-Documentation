---
title: 使用 C# 中的列和行
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用列和行
linktitle: 使用列和行
description: "使用 C# 处理表格的各个部分 - 行、列和单元格。指定标题行 C#。"
type: docs
weight: 30
url: /zh/net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

要更好地控制表的工作方式，请了解如何操作列和行。

## 查找表元素索引 {#find-the-index-of-table-elements}

通过索引访问选定的文档节点来管理列、行和单元格。查找任意节点的索引涉及从父节点收集该元素类型的所有子节点，然后使用 [IndexOf](https://reference.aspose.com/words/zh/net/aspose.words/nodecollection/indexof/) 方法在集合中查找所需节点的索引。

### 查找文档 {#find-the-index-of-table-in-a-document} 中表的索引

有时您可能需要对文档中的特定表格进行更改。为此，您可以通过索引引用表。

以下代码示例显示如何检索文档中表的索引：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### 查找表 {#find-the-index-of-a-row-in-a-table} 中行的索引

同样，您可能需要对选定表中的特定行进行更改。为此，您还可以通过索引引用行。

以下代码示例显示如何检索表中行的索引：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### 查找行 {#find-the-index-of-a-cell-in-a-row} 中单元格的索引

最后，您可能需要对特定单元格进行更改，您也可以通过单元格索引来完成此操作。

以下代码示例显示如何检索行中单元格的索引：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## 使用列 {#work-with-columns}

在 Aspose.Words Document Object Model (DOM) 中，[Table](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/) 节点由 [Row](https://reference.aspose.com/words/zh/net/aspose.words.tables/row/) 节点和 [Cell](https://reference.aspose.com/words/zh/net/aspose.words.tables/cell/) 节点组成。因此，在 Aspose.Words 的 `Document` 对象模型中，就像在 Word 文档中一样，没有列的概念。

按照设计，Microsoft Word 和 Aspose.Words 中的表格行是完全独立的，基本属性和操作仅包含在表格的行和单元格中。这使得表能够具有一些有趣的属性：

- 每个表格行可以有完全不同数量的单元格
- 垂直方向上，每行的单元格可以有不同的宽度
- 可以连接具有不同行格式和单元格数量的表格

对列执行的任何操作实际上都是"快捷方式"，它们通过集体更改行单元格来执行操作，使得它们看起来像是应用于列。也就是说，您可以通过简单地迭代同一表行单元格索引来对列执行操作。

以下代码示例通过证明一个外观类来简化此类操作，该外观类收集构成表"列"的单元格：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

以下代码示例显示如何将空白列插入表中：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

以下代码示例演示如何从文档的表中删除列：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## 指定行作为标题行

您可以选择仅在第一页或每页（如果表格被拆分为多个）上重复表格中的第一行作为标题行。在 Aspose.Words 中，您可以使用 [HeadingFormat](https://reference.aspose.com/words/zh/net/aspose.words.tables/rowformat/headingformat/) 属性在每个页面上重复标题行。

如果多个标题行一个接一个地位于表的开头，您还可以标记多个标题行。为此，您需要将 **HeadingFormat** 属性应用于这些行。

{{% alert color="primary" %}}

请注意，标题行在嵌套表中不起作用。也就是说，如果一个表位于另一个表中，则此设置将不起作用。 Microsoft Word 的限制不允许这样做，Aspose.Words 则不允许。

{{% /alert %}}

以下代码示例演示如何构建一个包含在后续页面上重复的标题行的表：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## 防止表和行跨页中断 {#keep-tables-and-rows-from-breaking-across-pages}

有时，表格的内容不应跨页拆分。例如，如果标题位于表格上方，则标题和表格应始终保持在同一页面上，以保持正确的外观。

有两种单独的技术可用于实现此功能：

- `Allow row break across pages`，应用于表行
- `Keep with next`，应用于表格单元格中的段落

默认情况下，上述属性被禁用。

### 防止行跨页中断 {#keep-a-row-from-breaking-across-pages}

这涉及限制行单元格内的内容在页面上拆分。在 Microsoft Word 中，可以在"表属性"下找到"允许跨页断行"选项。在 Aspose.Words 中，可以在 [Row](https://reference.aspose.com/words/zh/net/aspose.words.tables/row/) 的 [RowFormat](https://reference.aspose.com/words/zh/net/aspose.words.tables/rowformat/) 对象下找到该属性，作为属性 [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/zh/net/aspose.words.tables/row/format/properties/allowbreakacrosspages)。

以下代码示例演示如何禁用表中每行的跨页断行：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) 下载本示例的示例文件。

{{% /alert %}}

### 防止表格跨页 {#keep-a-table-from-breaking-across-pages}

为了阻止表格跨页拆分，我们需要指定希望表格中包含的内容保持在一起。

为此，Aspose.Words 使用一种方法，允许用户选择一个表格，并为表格单元格内的每个段落启用 [KeepWithNext](https://reference.aspose.com/words/zh/net/aspose.words/paragraphformat/keepwithnext/) 参数为 true。表中的最后一段例外，应将其设置为 false。

以下代码示例演示如何将表设置为在同一页面上保持在一起：

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx) 下载本示例的示例文件。

{{% /alert %}}
