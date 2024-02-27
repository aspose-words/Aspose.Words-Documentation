---
title: 更改 Word 文档中的表格样式
second_title: .NET 格式的 Aspose.Words
articleTitle: 应用表格样式
linktitle: 应用表格样式
description: "高级表格格式 C#。使用 C# 创建表格样式。应用表格样式 C#。"
type: docs
weight: 80
url: /zh/net/working-with-tablestyle/
---

表格样式定义了一组可以轻松应用于表格的格式。可以在表格样式中设置边框、底纹、对齐方式和字体等格式，并将其应用于多个表格以获得一致的外观。

Aspose.Words 支持将表格样式应用于表格，还支持读取任何表格样式的属性。在加载和保存期间通过以下方式保留表格样式：

- 加载和保存为 DOCX 和 WordML 格式的表格样式时会保留这些格式
- 以 DOC 格式加载和保存时保留表格样式（但不保留任何其他格式）
- 导出为其他格式、渲染或打印时，表格样式将扩展为表格中的直接格式，因此保留所有格式

## 创建表格样式

用户可以创建新样式并将其添加到样式集合中。 [Add](https://reference.aspose.com/words/net/aspose.words/stylecollection/add/)方法用于创建新的表格样式。

以下代码示例显示如何创建新的用户定义的表格样式：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "create-table-style.cs" >}}

## 复制现有表格样式

如果需要，您可以使用 `AddCopy` 方法将某个文档中已存在的表格样式复制到样式集合中。

重要的是要知道，通过这种复制，链接的样式也会被复制。

以下代码示例演示如何将样式从一个文档导入到另一个文档：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "copy-style-different-document.cs" >}}

## 应用现有表格样式

Aspose.Words提供了一个继承自[Style](https://reference.aspose.com/words/net/aspose.words/style/)的[TableStyle](https://reference.aspose.com/words/net/aspose.words/tablestyle/)类。 **TableStyle** 方便用户应用不同的样式选项，如阴影、填充、缩进、[CellSpacing](https://reference.aspose.com/words/net/aspose.words/tablestyle/cellspacing/) 和 [Font](https://reference.aspose.com/words/net/aspose.words/style/font/) 等。

此外，Aspose.Words 提供了 [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) 类和 `Table` 类的一些属性来指定我们将使用哪种表格样式：[Style](https://reference.aspose.com/words/net/aspose.words.tables/table/style/)、[StyleIdentifier](https://reference.aspose.com/words/net/aspose.words.tables/table/styleidentifier/)、[StyleName](https://reference.aspose.com/words/net/aspose.words.tables/table/stylename/) 和 [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/)。

Aspose.Words 还提供 [ConditionalStyle](https://reference.aspose.com/words/net/aspose.words/conditionalstyle/) 类，表示应用于具有指定表格样式的表格某些区域的特殊格式，以及表示 **ConditionalStyle** 对象集合的 [ConditionalStyleCollection](https://reference.aspose.com/words/net/aspose.words/conditionalstylecollection/)。该集合包含一组永久项目，代表 [ConditionalStyleType](https://reference.aspose.com/words/net/aspose.words/conditionalstyletype/) 枚举类型的每个值的一个项目。 **ConditionalStyleType** 枚举定义了可以在表格样式中定义条件格式的所有可能的表格区域。

在这种情况下，可以为 ConditionalStyleType 枚举类型下定义的所有可能的表区域定义条件格式。

以下代码示例显示如何定义表标题行的条件格式：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "define-conditional-formatting.cs" >}}

您还可以选择要应用样式的表格部分，例如第一列、最后一列、带状行。它们列在 [TableStyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/tablestyleoptions/) 枚举中并通过 [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/) 属性应用。 **TableStyleOptions** 枚举允许按位组合这些功能。

以下代码示例演示如何创建应用了表格样式的新表：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "build-table-with-style.cs" >}}

下图显示了 **Table Styles** 在 Microsoft Word 中的表示及其在 Aspose.Words 中的相应属性。

![formatting-table-style-aspose-words-net](/words/net/working-with-tablestyle/applying-formatting-10.png)

## 从表格样式中获取格式并将其应用为直接格式

Aspose.Words 还提供 [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/net/aspose.words/document/expandtablestylestodirectformatting/) 方法来获取表格样式上的格式并将其扩展为表格的行和单元格作为直接格式。尝试将格式与表格样式和单元格样式结合起来。

{{% alert color="primary" %}}

此方法不会覆盖已通过行或单元格格式应用于表格的任何其他格式。

{{% /alert %}}

以下代码示例演示如何将格式从样式扩展到表行和单元格作为直接格式：

{{< gist "aspose-words-gists" "93b92a7e6f2f4bbfd9177dd7fcecbd8c" "expand-formatting-on-cells-and-row-from-style.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx) 下载本示例的示例文件。

{{% /alert %}}
