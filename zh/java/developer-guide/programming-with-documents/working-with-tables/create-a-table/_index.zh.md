---
title: 如何在 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 创建表格
linktitle: 创建表格
description: "使用不同方式创建文档中的表格 Java。 。 。 。"
type: docs
weight: 20
url: /zh/java/create-a-table/
---

Aspose.Words 允许用户从零开始在文档中创建表格,并提供几种不同的方法来做到这一点. 本文详细介绍了如何使用每种方法在文档中添加格式表格,以及文章结尾处对每种方法的比较.

## 默认表格样式

新创建的表格得到的默认值类似于在 Microsoft Word编号:

| 表格属性 | 默认在 Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| 边框颜色 |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

表格如果位置紧凑,可以内置,如果可以在页面的任何地方放置,也可以浮动. 默认 Aspose.Words 总是创建内线表格。

{{% /alert %}}

## 用文档构建器创建表格

内 Aspose.Words, 用户可以使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)。 。 。 。 创建表格的基本算法如下:

一、导 言 以 [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. 国家 使用 [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – 自动启动新行
3个 可选择使用 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) 属性以指定单元格格式
4个 使用相应的单元格内容插入 **DocumentBuilder** 方法,例如: [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), 和其他事项
5.五. 重复步骤2-4直到行完成
6个 调用 [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 以结束当前行
7个 可选择使用 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 属性以指定行格式
8. 国家 重复步骤2-7直到表格完成
9. 国家 调用 [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) 完成表格的构建

{{% alert color="primary" %}}

重要细节:

- 怎么样? [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) 也可以在细胞内调用,在这种情况下,它开始在细胞内创建嵌入式表.
- 打电话后 [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), 创建新单元格,并使用其他方法添加任何内容 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 类将被添加到当前单元格中。 要创建同一行的新单元格, 请打电话 **InsertCell** 再来
- 狦 **InsertCell** 之后立即调用 [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 和一行的结尾,表格将继续在新一行。
- 那个 [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) 结束表格的方法只应在调用后调用一次 **EndRow**。 。 。 。 通话 **EndTable** 将光标从当前单元格移动到表格之后的位置。

{{% /alert %}}

创建表格的过程可以从以下图片中清楚地看到:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

以下代码示例显示如何使用 **DocumentBuilder** 默认格式:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

以下代码示例显示如何使用文档构建器创建格式化的表格:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

以下代码示例显示如何使用文档构建器插入嵌入式表格:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## 通过 DOM (单位:千美元)Document Object Model页:1

您可以将表格直接插入到 DOM 通过添加新的 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) 特定位置的节点。

请注意,在表格节点创建之后,表格本身将完全空出,即尚未包含行和单元格. 要将行和单元格插入表格,请添加适当的 [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) 和 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 子节点到 DOM。 。 。 。

{{% alert color="primary" %}}

创建表格的这种方法使用与使用该表格时相同的表格默认值 **DocumentBuilder**。 。 。 。

{{% /alert %}}

以下代码示例通过在文档树上添加适当的子节点来显示从零开始构建新表格的方法:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## 从 HTML 创建表格

Aspose.Words 支持从 HTML 来源将内容插入文档 [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) 方法。 输入可以是完整的HTML页面,也可以只是部分片段.

用这个 **InsertHtml** 方法,用户可以通过表格标签(如: `<table>`, `<tr>`, `<td>`。 。 。 。

以下代码示例显示如何从包含 HTML 标记的字符串中将一个表格插入文档:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## 插入现有表格的副本

通常需要根据文档中已有的表格创建表格。 在保留所有格式的同时复制表格的最简单方式是使用 [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) 方法。

同样的技术可以用来将现有行或单元格的副本添加到表格中.

以下代码示例显示如何使用节点构造器复制一个表格:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)。 。 。 。

{{% /alert %}}

以下代码示例显示如何克隆表格最后一行并附在表格中:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)。 。 。 。

{{% /alert %}}

如果您想在文档中创建表格,这些表格将随数据源的每个记录动态增长,则不建议采用上述方法。 相反,通过使用 Mail merge 与区域。 你可以更多地了解这个技巧 [Mail Merge 区域](/words/java/types-of-mail-merge-operations/) 节。

## 比较创建表格的方法

Aspose.Words 提供了在文档中创建新表格的几种方法。 每种方法都有其自身的利弊,所以选择使用的方法往往取决于具体情况.

让我们仔细看看这些创建表格的方法,比较他们的利弊:

|  方法 | 优点 |  缺点 |
|  :-  |  :-  |  :-  |
| 维亚 `DocumentBuilder` | 插入表格和其他文档内容的标准方法 | 有时很难在同一个构建者实例下同时创建许多类型的表格 |
| 维亚 DOM |  与周围创建并直接将节点插入到 DOM 不使用一个 **DocumentBuilder** | 表格是创建的" 空的 ": 在进行大多数操作之前, 您必须调用 [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) 创建任何缺失的儿童节点 |
| 从 HTML | 从 HTML 源创建新表格时可以使用标签 `<table>`, `<tr>`, `<td>` | 不尽然 Microsoft Word 表格格式可以应用到 HTML |
| 克隆现有表格 | 您可以在保留所有行和单元格格式的同时创建现有表格的副本 | 在表格准备好使用之前,必须移除适当的儿童节点 |
