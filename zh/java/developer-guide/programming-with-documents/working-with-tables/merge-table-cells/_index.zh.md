---
title: 合并表格单元格 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 合并表格单元格
linktitle: 合并表格单元格
description: "如何合并表格单元格 Java。 。 。 。 检查是否使用表格中的单元格合并 Java。 。 。 。"
type: docs
weight: 40
url: /zh/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

有时表格中的某些行需要一个标题或大块的文字,占用表格的全宽. 对于表格的正确设计,用户可以将多个表格单元格合并为一个. Aspose.Words 支持在使用所有输入格式时合并单元格,包括导入 HTML 内容。

## 如何合并表格单元格

内 Aspose.Words, 合并单元格由下列属性代表: [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) 类:

- 怎么样? [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) 它描述单元格是否是单元格横向合并的一部分
- 怎么样? [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) 它描述单元格是否是单元格垂直合并的一部分

这些属性的值决定了细胞的合并行为:

- 怎么样? 合并细胞序列中的第一个细胞将拥有 [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- 怎么样? 任何后来合并的单元格 [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- 一个没有合并的牢房 [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

有时,在将已有的文档单元格装入表格时,它们会出现合并. 然而,它实际上可能是一个长的细胞,有时 Microsoft Word 导出以这种方式合并单元格 。 这在试图与单个细胞一起工作时可能会引起混淆,但似乎并没有任何特定的规律来说明何时会发生这种情况.

{{% /alert %}}

## 检查单元格是否合并

为了检查细胞是否是合并细胞序列的一部分,我们只是检查一下 **HorizontalMerge** 和 **VerticalMerge** 属性。

以下代码示例显示如何打印水平和垂直单元格合并类型:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## 使用文档构建器时合并表格单元格

合并表格中的单元格 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), 您需要为预期合并的每个单元格设置适当的合并类型 – 首先 **CellMerge.First** 接着 **CellMerge.Previous**。 。 。 。

另外,您必须记住清除不需要合并的单元格的合并设置,这可以通过设置第一个非合并单元格到 **CellMerge.None**。 。 。 如果不这样做,表格中的所有单元格将被合并。

以下代码示例显示如何创建一个有两行的表格,将第一行中的单元格横向合并:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

以下的代码示例显示如何在第一列的单元格垂直合并的情况下创建一个双列表格:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## 在其他情况下合并表格单元格

在其他情况下: **DocumentBuilder** 无法使用,例如在现有表格中,以先前的方式合并单元格可能不那么容易。 相反,我们可以把将合并属性应用到单元格中所涉及的基本操作包成一个方法,使任务更容易完成. 这种方法类似于合并自动化方法,它被称作将表格中的一系列单元格合并.

以下代码将合并指定范围内的表格单元格,从给定单元格开始,到结束单元格结束. 在这种情况下,范围可以跨越多个行或列:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

以下代码示例显示两个指定单元格之间如何合并一系列单元格:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## HTML 表格中的垂直和水平合并单元格

正如我们在前几篇文章中所述, Microsoft Word 是一组独立的行。 每行都有一组独立于其他行的单元格的单元格. 因此, Microsoft Word 表中没有"栏"等对象,"第1栏"类似于"表中每行第1行的一组单元格"。 这使得用户可以拥有一个表格,例如第1行包含两个单元格--2cm和1cm,第2行包含两个不同的单元格--1cm和2cm宽. 还有 Aspose.Words 支持这个表格概念。

HTML中的表格结构基本不同:每行的单元格数量相同,(对任务很重要)每个单元格都有对应列的宽度,对于一个列中的所有单元格都是相同的. 所以,如果 **HorizontalMerge** 和 **VerticalMerge** 返回不正确的值,使用以下代码示例:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## 横向转换 合并单元格

有时无法检测哪些单元格被合并,因为有些更新的版本包含: Microsoft Word 当单元格横向合并时,不再使用合并旗。 但对于使用合并旗标将单元格横向合并成单元格的情况, Aspose.Words 提供 `ConvertToHorizontallyMergedCells` 转换单元格的方法。 这种方法只是将表格转换,并根据需要添加新的单元格.

以下代码示例显示上述操作方法: 1

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
