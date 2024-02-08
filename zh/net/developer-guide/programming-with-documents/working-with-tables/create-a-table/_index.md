---
title: 如何在 C# 中创建表
second_title: .NET 格式的 Aspose.Words
articleTitle: 创建一个表
linktitle: 创建一个表
description: "有关如何以多种方式在 C# 中制作表格的指南。在 C# 中为您的文档创建表格。"
type: docs
weight: 20
url: /zh/net/create-a-table/
---

Aspose.Words 允许用户从头开始在文档中创建表格，并提供了几种不同的方法来执行此操作。本文详细介绍了如何使用每种方法将格式化表格添加到文档中，并在文章末尾对每种方法进行了比较。

## 默认表格样式

新创建的表被赋予与 Microsoft Word 中使用的默认值类似的默认值：

|  表属性 |  Aspose.Words 中的默认值 |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

如果表格紧密定位，则可以是内联表格；如果可以将表格定位在页面上的任何位置，则可以是浮动表格。默认情况下，Aspose.Words 始终创建内联表。

{{% /alert %}}

## 使用 DocumentBuilder 创建表

在 Aspose.Words 中，用户可以使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 在文档中创建表格。创建表的基本算法如下：

1.用[StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)启动表
2. 使用 [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) 将单元格添加到表格中 – 这会自动开始一个新行
3. （可选）使用 [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) 属性指定单元格格式
4. 使用适当的 **DocumentBuilder** 方法（例如 [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/)、[InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) 等）插入单元格内容
5. 重复步骤 2-4，直至完成该行
6.调用[EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/)结束当前行
7. （可选）使用 [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) 属性指定行格式
8. 重复步骤 2-7，直到表格完成
9.调用[EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/)完成建表

{{% alert color="primary" %}}

重要细节：

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) 也可以在单元格内部调用，在这种情况下，它开始在单元格内创建嵌套表。
* 调用 [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) 后，会创建一个新单元格，您使用 [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) 类的其他方法添加的任何内容都将添加到当前单元格中。要在同一行上创建新单元格，请再次调用 **InsertCell**。
* 如果在 [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) 和行末尾之后立即调用 **InsertCell**，则表将继续新行。
* 结束表格的 [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) 方法只能在调用 **EndRow** 后调用一次。调用 **EndTable** 会将光标从当前单元格移动到紧邻表格之后的位置。

{{% /alert %}}

创建表的过程可以清晰地看到下图：

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

以下代码示例演示如何使用 **DocumentBuilder** 使用默认格式创建一个简单的表：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

以下代码示例演示如何使用 DocumentBuilder 创建格式化表：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

以下代码示例演示如何使用 DocumentBuilder 插入嵌套表：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## 通过 DOM (Document Object Model) 创建表

您可以通过在特定位置添加新的 [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) 节点来将表格直接插入到 DOM 中。

请注意，表节点创建后，表本身将完全为空，即它还不包含行和单元格。要将行和单元格插入表中，请将适当的 [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) 和 [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) 子节点添加到 DOM。

{{% alert color="primary" %}}

这种创建表的方法使用与使用 **DocumentBuilder** 时相同的表默认值。

{{% /alert %}}

以下代码示例演示如何通过向文档树添加适当的子节点来从头开始构建新表：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## 从 HTML 创建表格

Aspose.Words 支持使用 [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/) 方法将内容从 HTML 源插入到文档中。输入可以是完整的 HTML 页面或只是部分片段。

使用**InsertHtml**方法，用户可以通过`<table>`、`<tr>`、`<td>`等表格标签将表格插入到文档中。

以下代码示例演示如何将表格从包含 HTML 标记的字符串插入到文档中：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## 插入现有表的副本

很多时候，您需要根据文档中已有的表格创建表格。在保留所有格式的同时复制表的最简单方法是使用 [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) 方法克隆表节点。

可以使用相同的技术将现有行或单元格的副本添加到表中。

以下代码示例演示如何使用节点构造函数复制表：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下载本示例的示例文件。

{{% /alert %}}

以下代码示例演示如何克隆表的最后一行并将其附加到表中：

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下载本示例的示例文件。

{{% /alert %}}

如果您正在考虑在文档中创建随数据源中的每条记录动态增长的表，则不建议使用上述方法。相反，通过使用带有区域的 Mail merge 可以更轻松地实现所需的输出。您可以在 [Mail Merge 与区域](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions) 部分了解有关此技术的更多信息。

## 比较创建表的方法

Aspose.Words 提供了多种在文档中创建新表格的方法。每种方法都有其自身的优点和缺点，因此选择使用哪种方法通常取决于具体情况。

让我们仔细看看这些创建表的方法并比较它们的优缺点：

|  方法 | 优点 |  缺点 |
|  :-  |  :-  |  :-  |
| 通过`DocumentBuilder` | 插入表格和其他文档内容的标准方法 | 有时很难使用同一个构建器实例同时创建多种表 |
| 通过DOM |  更适合周围的代码，无需使用 **DocumentBuilder** 即可直接创建节点并将其插入到 DOM 中 | 该表被创建为"空"：在执行大多数操作之前，必须调用 [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) 创建任何丢失的子节点 |
| 来自 HTML | 可以使用 `<table>`、`<tr>`、`<td>` 等标签从 HTML 源创建新表 | 并非所有可能的 Microsoft Word 表格格式都可以应用于 HTML |
| 克隆现有表 | 您可以创建现有表格的副本，同时保留所有行和单元格格式 | 在表可供使用之前，必须删除适当的子节点 |