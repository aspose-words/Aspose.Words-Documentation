---
title: 与列和行进行协作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与列和行一起工作
linktitle: 与列和行一起工作
description: "使用表格中的部分 - 行、列和单元格 Java。 。 。 。 指定页眉行 Java。 。 。 。"
type: docs
weight: 30
url: /zh/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

对于表格如何工作的更多控制,学习如何操纵列和行.

## 查找表格元素索引

列、行和单元格通过使用其索引访问选定的文档节点来管理。 查找任何节点的索引涉及从父节点收集元素类型的所有子节点,然后使用 [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) 在收藏中查找理想节点索引的方法。

### 在文档中查找表格索引

有时您可能需要修改文档中的某个表格。 要做到这一点,可以参考一个表格的索引。

以下代码示例显示如何检索文档中表格的索引:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### 在表格中查找行索引

同样,您可能需要修改选定表格中的特定行。 要做到这一点,也可以用其索引来指一行.

以下代码示例显示如何在表格中检索行索引:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### 在行中查找单元格索引

最后,你可能需要修改特定的单元格,你也可以通过单元格索引来做到这一点。

以下代码示例显示如何获取行中的单元格索引:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## 与列一起工作

在那个 Aspose.Words Document Object Model (单位:千美元)DOM,则 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) 节点由 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 节点然后 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 节点。 因此, `Document` 对象模型 Aspose.Words,如同Word文档一样,没有栏的概念。

根据设计,桌子排成 Microsoft Word 和 Aspose.Words 完全独立,基本属性和操作只包含在表格的行和单元格中. 这给出了表格具有一些有趣的属性的能力:

- 每个表格行可以有完全不同的单元格数目
- 纵向,每一行的单元格可以有不同的宽度
- 怎么样? 可以使用不同的行格式和单元格数加入表格

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

在列上进行的任何操作实际上都是通过集体改变行单元格来进行操作的"快捷键",其方式看起来像是这些单元格被应用到列上. 也就是说,您可以在列上执行操作,只需在同一个表格行单元格索引上延展。

以下代码示例通过证明一个表面类来简化此类操作,该类类收集构成表的"列"的单元格: 1

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

以下代码示例显示如何在表格中插入空白列:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

以下代码示例显示如何从文档中的表格中删除列:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## 指定行为页眉行

您可以选择只将表格中的第一行重复为首页或每页的页头行,如果表格被分割成若干行。 内 Aspose.Words, 您可以使用 [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) 属性。

如果这些行位于表格开头,也可以标记多个标题行。 要做到这一点,你需要应用 **HeadingFormat** 这些行的属性。

{{% alert color="primary" %}}

注意头行在嵌入式表格中不工作 。 也就是说,如果你在另一个表格中有一个表格,这个设置就不会有效果. 这是对 Microsoft Word 不允许这样,不能 Aspose.Words。 。 。 。

{{% /alert %}}

以下代码示例显示如何构建一个包括标题行的表格,这些标题行会在随后的页面重复:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## 从断开的页面中保留表格和行 {#keep-tables-and-rows-from-breaking-across-pages}

在有些情况下,表格的内容不应分页。 例如,如果某一标题在表格之上,标题和表格应始终放在同一页上,以保持适当的外观。

实现这一功能有两种不同的技术:

- 怎么样? `Allow row break across pages`, 用于表格行
- 怎么样? `Keep with next`, 用于表格单元格中的段落

默认情况下,上述属性将被禁用.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### 保持一行断开页面 {#keep-a-row-from-breaking-across-pages}

这涉及限制一行单元格内的内容不被分割成一页。 内 Microsoft Word, 这可以在表格属性下找到,作为"打开行以分页"的选项。 内 Aspose.Words 这是在 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) 一个对象 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 作为财产 [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)。 。 。 。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

以下代码示例显示如何禁用表格中每一行的跨页断行:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### 保留一个从分页中分页的表格 {#keep-a-table-from-breaking-across-pages}

为了阻止表格分页,我们需要具体说明,我们希望表格中包含的内容保持一致。

为了做到这一点, Aspose.Words 使用方法,允许用户选择表格并启用 [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) 参数改为 true 对于表格单元格中的每个段落。 例外是表中最后一段,该段应设定为 false。 。 。 。

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

下面的代码示例显示如何设置一个表格,以便在同一页上保持一致:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
