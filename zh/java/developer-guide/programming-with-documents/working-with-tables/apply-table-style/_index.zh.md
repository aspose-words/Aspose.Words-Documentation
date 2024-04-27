---
title: 使用表格样式 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 应用表格样式
linktitle: 应用表格样式
description: "高级表格格式化 Java。 。 。 。 使用 Java。 。 。 。 高级表格格式、使用表格样式的介绍 Java。 。 。 。"
type: docs
weight: 80
url: /zh/java/working-with-tablestyle/
---

表格样式定义了一套易于应用于表格的格式. 格式化如边框,阴影,对齐,以及字体可以设置在表格样式中,并应用到许多表格中以求一致的外观.

Aspose.Words 支持将表格样式应用到表格中,并读取任何表格样式的属性。 表格样式在加载和保存过程中以下列方式保存:

- DOCX 格式和 WordML 格式的表格样式在装入和保存到这些格式时保留
- 表格样式在 DOC 格式的加载和保存时保留(但不保存到任何其他格式)
- 怎么样? 当导出到其他格式, 渲染或打印时, 表格样式被扩展为表格中的直接格式化, 因此所有格式都保留

## 创建表格样式

用户可以创建新的样式,并加入样式收藏. 那个 [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) 方法用于创建新的表格样式。

以下代码示例显示如何创建新用户定义的表格样式:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## 复制现有的表格样式

如果有必要,您可以使用 `AddCopy` 方法。

必须知道,通过这种复制,链接的样式也被复制.

以下代码示例显示如何将样式从一个文档导入到另一个文档:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## 应用已有的表格样式

Aspose.Words 提供 [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) 继承自 [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) 课。 **TableStyle** 方便用户应用不同的样式选项,例如阴影、粘贴、缩进, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) 和 [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), 页:1

临Τ Aspose.Words 提供 [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) 分类和 `Table` 分类以指定我们将合作的表格样式: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), 和 [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)。 。 。 。

Aspose.Words 还规定 [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) 类,它代表适用于表格中指定表格样式的某些区域的特殊格式化,以及 [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) 代表一个集合 **ConditionalStyle** 对象。 此集合包含一组永久项目, 代表每个值的一个项目 [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) 计数类型。 那个 **ConditionalStyleType** 列表定义了所有可能以表格样式定义有条件格式的表格区域。

在这种情况下,条件格式化可以定义在条件化StyleType计数类型下定义的所有可能的表格区域.

以下代码示例显示如何定义表格头行的有条件格式:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

也可以选择将样式应用到哪个表格部分,例如第一列、最后一列、带宽的行。 它们列于 [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) 列举并通过 [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) 属性。 那个 **TableStyleOptions** 点数允许这些特性的位元组合.

以下代码示例显示如何创建新的表格,并采用表格样式:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

以下图片显示 **Table Styles** 输入 Microsoft Word 及其相应的属性 Aspose.Words。 。 。 。

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## 从表格样式中选择格式并将其应用为直接格式

Aspose.Words 还提供了 [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) 将表格样式中找到的格式化方法扩展到表格的行和单元格,作为直接格式化方法。 尝试将格式化与表格样式和单元格样式相结合。

{{% alert color="primary" %}}

此方法不会覆盖已通过行或单元格格式应用到表格上的任何其他格式。

{{% /alert %}}

以下代码示例显示如何将格式从样式扩展至表格行和单元格,作为直接格式:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}