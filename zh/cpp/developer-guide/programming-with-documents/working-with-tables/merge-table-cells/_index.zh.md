---
title: 在C++中合并表单元格
second_title: Aspose.Words对于C++
articleTitle: 合并表格单元格
linktitle: 合并表格单元格
description: "如何在C++中合并表单元格。 检查表中的单元格是否使用C++合并。"
type: docs
weight: 40
url: /zh/cpp/merge-table-cells/
---

有时，表中的某些行需要标题或占用表全宽的大文本块。 为了正确设计表格，用户可以将几个表格单元格合并为一个。 Aspose.Words在处理所有输入格式（包括导入HTML内容）时支持合并单元格。

## 如何合并表格单元格

在Aspose.Words中，合并的单元格由[CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/)类的以下属性表示:

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/)描述单元格是否是单元格水平合并的一部分
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/)描述单元格是否是单元格垂直合并的一部分

这些属性的值确定单元格的合并行为:

- 合并单元格序列中的第一个单元格将具有[CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- 任何随后合并的单元格都将具有[CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- 未合并的单元格将具有[CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

有时，在加载表中的现有文档单元格时，它们会出现合并。 但是，它实际上可以是一个长单元格-有时Microsoft Word以这种方式导出合并的单元格。 当尝试使用单个单元格时，这可能会令人困惑，但似乎没有任何特定的模式来确定何时发生这种情况。

{{% /alert %}}

## 检查单元格是否合并

要检查单元格是否是合并单元格序列的一部分，我们只需检查**HorizontalMerge**和**VerticalMerge**属性。

下面的代码示例演示如何打印水平和垂直单元格合并类型:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## 表{#merge-cells-in-a-table}中的合并单元格

要合并使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)创建的表中的单元格，您需要为预期合并的每个单元格设置适当的合并类型–首先是**CellMerge.First**，然后是**CellMerge.Previous**。

此外，您必须记住清除那些不需要合并的单元格的合并设置–这可以通过将第一个非合并单元格设置为**CellMerge.None**来完成。 如果不这样做，表中的所有单元格都将被合并。

下面的代码示例演示如何创建具有两行的表，其中第一行中的单元格水平合并:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

下面的代码示例演示如何创建一个两列表，其中第一列中的单元格垂直合并:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## 在其他情况下合并表格单元格

在未使用**DocumentBuilder**的其他情况下，例如在现有表中，以前面的方式合并单元格可能不那么容易。 相反，我们可以将合并属性应用于单元格的基本操作包装在一个使任务更容易的方法中。 此方法类似于合并自动化方法，它被称为合并表中的单元格范围。

下面的代码将合并指定范围内的表格单元格，从给定单元格开始，到结束单元格结束。 在这种情况下，范围可以跨越多行或多列:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

下面的代码示例演示如何在两个指定单元格之间合并单元格范围:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

根据您使用的框架的版本，您可能希望通过将其转换为扩展方法来优化此方法。 在这种情况下，您可以直接在单元格上调用此方法来合并单元格范围，例如`cell1.Merge(cell2)`。

## 表格{#vertical-and-Horizontal-merged-cells-in-the-table}中的垂直和水平合并单元格

正如我们在前面的文章中所说，Microsoft Word中的表是一组独立的行。 每行都有一组独立于其他行的单元格的单元格。 因此，在Microsoft Word表中没有"列"这样的对象，并且"1st列"类似于"表中每行的1st单元格的集合"。 这允许用户有一个表，其中，例如，1st行由两个单元格组成–2cm和1cm，2nd行由两个不同的单元格组成–1cm和2cm宽。 Aspose.Words支持这种表的概念。

HTML中的表具有本质上不同的结构：每行具有相同数量的单元格，并且（对于任务很重要）每个单元格具有相应列的宽度，对于一列中的所有单元格都相同。 因此，如果**HorizontalMerge**和**VerticalMerge**返回不正确的值，请使用以下代码示例:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## 转换为水平合并单元格{#convert-to-horizontally-merged-cells}

有时无法检测哪些单元格被合并，因为某些较新版本的Microsoft Word在单元格水平合并时不再使用合并标志。 但是对于使用合并标志按单元格宽度水平合并到单元格的情况，Aspose.Words提供了`ConvertToHorizontallyMergedCells`方法来转换单元格。 此方法只需转换表格并根据需要添加新单元格。

下面的代码示例在操作中显示了上述方法:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}