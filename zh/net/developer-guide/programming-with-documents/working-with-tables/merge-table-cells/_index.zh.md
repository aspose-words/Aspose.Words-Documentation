---
title: 合并 C# 中的表格单元格
second_title: .NET 格式的 Aspose.Words
articleTitle: 合并表格单元格
linktitle: 合并表格单元格
description: "如何合并 C# 中的表格单元格。检查表中的单元格是否使用 C# 合并。"
type: docs
weight: 40
url: /zh/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

有时，表格中的某些行需要标题或占据表格整个宽度的大文本块。为了正确设计表格，用户可以将多个表格单元格合并为一个。 Aspose.Words 在处理所有输入格式（包括导入 HTML 内容）时支持合并单元格。

## 如何合并表格单元格

在 Aspose.Words 中，合并单元格由 [CellFormat](https://reference.aspose.com/words/zh/net/aspose.words.tables/cellformat/) 类的以下属性表示：

- [HorizontalMerge](https://reference.aspose.com/words/zh/net/aspose.words.tables/cellformat/horizontalmerge/) 描述单元格是否是单元格水平合并的一部分
- [VerticalMerge](https://reference.aspose.com/words/zh/net/aspose.words.tables/cellformat/verticalmerge/) 描述单元格是否是单元格垂直合并的一部分

这些属性的值决定单元格的合并行为：

- 合并单元序列中的第一个单元将具有 [CellMerge.First](https://reference.aspose.com/words/zh/net/aspose.words.tables/cellmerge/)
- 任何随后合并的单元格都将具有 [CellMerge.Previous](https://reference.aspose.com/words/zh/net/aspose.words.tables/cellmerge/)
- 未合并的单元格将具有 [CellMerge.None](https://reference.aspose.com/words/zh/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

有时，在加载表格中的现有文档单元格时，它们会显示为合并的。然而，它实际上可以是一个长单元格--有时 Microsoft Word 以这种方式导出合并的单元格。当尝试处理单个细胞时，这可能会令人困惑，但似乎没有任何特定的模式来说明这种情况何时发生。

{{% /alert %}}

## 检查单元格是否合并

要检查单元格是否是合并单元格序列的一部分，我们只需检查 **HorizontalMerge** 和 **VerticalMerge** 属性。

以下代码示例显示如何打印水平和垂直单元格合并类型：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) 下载本示例的示例文件。

{{% /alert %}}

## 使用 DocumentBuilder 时合并表格单元格

要合并使用 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 创建的表中的单元格，您需要为需要合并的每个单元格设置适当的合并类型 - 首先是 **CellMerge.First**，然后是 **CellMerge.Previous**。

此外，您必须记住清除那些不需要合并的单元格的合并设置 - 这可以通过将第一个非合并单元格设置为 **CellMerge.None** 来完成。如果不这样做，表中的所有单元格将被合并。

以下代码示例演示如何创建一个包含两行的表格，其中第一行中的单元格水平合并：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

以下代码示例演示如何创建一个两列表格，其中第一列中的单元格垂直合并：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## 其他情况下合并表格单元格

在不使用 **DocumentBuilder** 的其他情况下，例如在现有表格中，以以前的方式合并单元格可能不那么容易。相反，我们可以将涉及将合并属性应用于单元格的基本操作包装在一种方法中，从而使任务变得更加容易。此方法类似于合并自动化方法，调用该方法来合并表中的一系列单元格。

下面的代码将合并指定范围内的表格单元格，从给定单元格开始，到结束单元格结束。在这种情况下，范围可以跨越多行或多列：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

以下代码示例演示如何合并两个指定单元格之间的单元格区域：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) 下载本示例的示例文件。

{{% /alert %}}

根据您使用的 .NET Framework 版本，您可能希望通过将其转换为扩展方法来完善此方法。在这种情况下，您可以直接在单元格上调用此方法来合并一系列单元格，例如`cell1.Merge(cell2)`。

## HTML 表格中的垂直和水平合并单元格

正如我们在之前的文章中所说，Microsoft Word 中的表是一组独立的行。每行都有一组独立于其他行的单元格的单元格。因此，在 Microsoft Word 表中不存在"列"这样的对象，"第一列"类似于"表中每行的第一个单元格的集合"。例如，这允许用户拥有一个表格，其中第一行由两个单元格组成 - 2 厘米和 1 厘米，第二行由两个不同的单元格组成 - 1 厘米和 2 厘米宽。 Aspose.Words 支持这种表的概念。

HTML 中的表格具有本质上不同的结构：每行具有相同数量的单元格，并且（这对于任务很重要）每个单元格具有相应列的宽度，一列中的所有单元格都相同。因此，如果 **HorizontalMerge** 和 **VerticalMerge** 返回不正确的值，请使用以下代码示例：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx) 下载本示例的示例文件。

{{% /alert %}}

## 转换为水平合并单元格

有时无法检测哪些单元格被合并，因为某些较新版本的 Microsoft Word 在水平合并单元格时不再使用合并标志。但对于使用合并标志将单元格按宽度水平合并为单元格的情况，Aspose.Words 提供了 `ConvertToHorizontallyMergedCells` 方法来转换单元格。此方法只是转换表格并根据需要添加新单元格。

下面的代码示例展示了上述方法的运行情况：

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
