---
title: 如何在Java中创建表
second_title: Aspose.Words为Java
articleTitle: 创建表
linktitle: 创建表
description: "使用Java在文档中创建表的不同方法。"
type: docs
weight: 20
url: /zh/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words允许用户从头开始在文档中创建表，并提供了几种不同的方法。 本文介绍了如何使用每种方法向文档添加格式化表的详细信息，并在文章末尾对每种方法进行了比较。

## 默认表样式

新创建的表被赋予类似于Microsoft Word中使用的默认值:

| 表属性 | Aspose.Words中的默认值 |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| 边框颜色 | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

如果一个表是紧密定位的，它可以是内联的，如果它可以定位在页面的任何地方，它可以是浮动的。 默认情况下，Aspose.Words始终创建内联表。

{{% /alert %}}

## 使用DocumentBuilder创建表

在Aspose.Words中，用户可以使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)在文档中创建表。 创建表的基本算法如下:

1. 以[StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)开始表
2. 使用[InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)将单元格添加到表中-这会自动启动一个新行
3. 或者，使用[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)属性指定单元格格式
4. 使用适当的**DocumentBuilder**方法（如[Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln)、[InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte)等）插入单元格内容
5. 重复步骤2-4，直到行完成
6. 调用[EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)结束当前行
7. 或者，使用[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)属性指定行格式
8. 重复步骤2-7，直到表格完成
9. 调用[EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)完成表的构建

{{% alert color="primary" %}}

重要详情:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)也可以在单元格内调用，在这种情况下，它开始在单元格内创建嵌套表。
- 调用[InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)后，将创建一个新单元格，并且您使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)类的其他方法添加的任何内容都将添加到当前单元格中。 要在同一行上创建新单元格，请再次调用**InsertCell**。
- 如果在[EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)之后和行尾立即调用**InsertCell**，则表将在新行上继续。
- 结束表的[EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)方法只应在调用**EndRow**后调用一次。 调用**EndTable**将光标从当前单元格移动到紧接在表格后面的位置。

{{% /alert %}}

创建表格的过程可以在下面的图片中清楚地看到:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

下面的代码示例演示如何使用默认格式的**DocumentBuilder**创建简单表:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

下面的代码示例演示如何使用DocumentBuilder创建格式化表:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

下面的代码示例演示如何使用DocumentBuilder插入嵌套表:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## 通过DOM创建表（文档对象模型）

通过在特定位置添加一个新的[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)节点，可以将表直接插入到DOM中。

请注意，在表节点创建后，表本身将完全为空，即它还不包含行和单元格。 要将行和单元格插入表中，请将适当的[Row](https://reference.aspose.com/words/java/com.aspose.words/run/)和[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)子节点添加到DOM中。

{{% alert color="primary" %}}

这种创建表的方法使用与使用**DocumentBuilder**时相同的表默认值。

{{% /alert %}}

下面的代码示例演示如何通过将适当的子节点添加到文档树来从头开始构建新表:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## 从HTML创建表

Aspose.Words支持使用[InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String)方法从HTML源向文档中插入内容。 输入可以是完整的HTML页面，也可以只是部分片段。

使用这个**InsertHtml**方法，用户可以通过表格标签将表格插入到文档中，如`<table>`, `<tr>`, `<td>`.

下面的代码示例演示如何从包含HTML标记的字符串将表插入到文档中:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## 插入现有表的副本

通常情况下，您需要根据文档中已存在的表创建表。 在保留所有格式的同时复制表的最简单方法是使用[deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean)方法克隆表节点。

可以使用相同的技术将现有行或单元格的副本添加到表中。

下面的代码示例演示如何使用节点构造函数复制表:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

下面的代码示例演示如何克隆表的最后一行并将其附加到表中:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

如果您正在考虑在文档中创建与数据源中的每条记录一起动态增长的表，则不建议使用上述方法。 相反，通过使用带有区域的Mail merge更容易实现所需的输出。 你可以在 [Mail Merge与区域](/words/java/types-of-mail-merge-operations/) 节。

## 比较创建表的方法

Aspose.Words提供了几种在文档中创建新表的方法。 每种方法都有自己的优点和缺点，因此使用哪种方法的选择往往取决于具体情况。

让我们仔细看看这些创建表格的方法，并比较它们的优缺点:

| 方法 | 优势 | 缺点 |
| :- | :- | :- |
| 通过`DocumentBuilder` | 插入表格和其他文档内容的标准方法 | 有时很难用同一个构建器实例在同一时间创建多种表 |
| 通过DOM | 更适合周围的代码，这些代码直接创建和插入节点到DOM中，而不使用**DocumentBuilder** | 表被创建为"空"：在执行大多数操作之前，您必须调用[EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum)来创建任何缺少的子节点 |
| 从HTML | 可以使用类似的标签从HTML源创建一个新表`<table>`, `<tr>`, `<td>` | 并非所有可能的Microsoft Word表格式都可以应用于HTML |
| 克隆现有表 | 您可以创建现有表的副本，同时保留所有行和单元格格式 | 在表准备好使用之前，必须删除适当的子节点 |
