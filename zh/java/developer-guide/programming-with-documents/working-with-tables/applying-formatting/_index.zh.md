---
title: Java中的表格格式
second_title: Aspose.Words为Java
articleTitle: 应用表格格式
linktitle: 应用表格格式
description: "详细的表格格式。 使用Java格式化表的每个部分。"
type: docs
weight: 70
url: /zh/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

表的每个元素都可以应用不同的格式。 例如，表格格式将应用于整个表格，行格式仅应用于特定行，单元格格式仅应用于某些单元格。

Aspose.Words提供了丰富的API来检索表并将格式应用于表。 您可以使用[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)、[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)和[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)节点设置格式。

在本文中，我们将讨论如何将格式应用于不同的表节点以及Aspose.Words支持哪些表格格式设置。

## 将格式应用于不同节点

在本节中，我们将介绍将格式应用于各种表节点。

### 表格级别格式

要对表应用格式设置，您可以使用[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)、[PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/)和[TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/)类在相应的**Table**节点上可用的属性。

{{% alert color="primary" %}}

请注意，表必须至少有一行，才能应用表属性。 这意味着在使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)构建表时，必须在第一次调用[InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()之后完成此格式化），或者在将第一行添加到表中之后，或者在将节点直接插入DOM时完成。

{{% /alert %}}

下图显示了Microsoft Word中的**Table**格式特征及其在Aspose.Words中的相应属性的表示形式。

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

下面的代码示例演示如何将大纲边框应用于表:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

下面的代码示例演示如何在启用所有边框（网格）的情况下构建表:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### 行级格式

可以使用[Row](https://reference.aspose.com/words/java/com.aspose.words/row/)、[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)和[RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/)类控制行级**格式设置。

{{% alert color="primary" %}}

请注意，**Row**只能是**Table**的子节点。 与此同时，**Row**中必须至少有一个**Cell**，以便可以对其应用格式化。

{{% /alert %}}

下图显示了Microsoft Word中的**Row**格式特征及其在Aspose.Words中的相应属性的表示形式。

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

下面的代码示例演示如何修改表行格式:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### 单元格级别格式

单元格级别的格式设置由[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)、[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)和[CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/)类控制。

{{% alert color="primary" %}}

请注意，**Cell**只能是**Row**的子节点。 与此同时，**Cell**中必须至少有一个[Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/)，以便可以对其应用格式化。

除了**Paragraph**之外，您还可以将**Table**插入**Cell**。

{{% /alert %}}

下图显示了Microsoft Word中的**Cell**格式特征及其在Aspose.Words中的相应属性的表示形式。

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

下面的代码示例演示如何修改表格单元格的格式:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

下面的代码示例演示如何设置要添加到单元格内容的左侧/顶部/右侧/底部的空间量（以点为单位:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## 指定行高

设置行高的最简单方法是使用**DocumentBuilder**。 使用适当的**RowFormat**属性，您可以设置默认高度设置或为表中的每行应用不同的高度。

在Aspose.Words中，表行高度由:

- 行高属性-[Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- 给定行的高度规则属性-[HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

与此同时，可以为每行设置不同的高度-这使您可以广泛控制表格设置。

{{% alert color="primary" %}}

可以使用[HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/)字段设置用于指定对象高度的规则选项。

{{% /alert %}}

下面的代码示例演示如何创建包含单个单元格的表并应用行格式:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## 指定表格和单元格宽度

Microsoft Word文档中的表格提供了几种不同的方法来调整表格和单个单元格的大小。 这些属性允许对表的外观和行为进行相当大的控制，因此Aspose.Words支持表的行为，如Microsoft Word中所示。

重要的是要知道表元素具有几种不同的属性，这些属性会影响整个表的宽度以及单个单元格的计算方式:

- 桌子上的首选宽度
- 单个单元格的首选宽度
- 允许自动在桌子上

本文详细介绍了各种表格宽度计算属性的工作原理以及如何完全控制表格宽度计算。 这是
在这种情况下，了解表布局未按预期显示的情况尤其有用。

{{% alert color="primary" %}}

在大多数情况下，建议使用首选单元格而不是表格宽度。 首选单元格宽度更符合DOCX格式规范以及Aspose.Words模型。

单元格宽度实际上是DOCX格式的计算值。 实际的单元格宽度可以取决于很多事情。 例如，更改页边距或首选表格宽度可能会影响实际单元格宽度。

首选单元格宽度是存储在文档中的单元格属性。 它不依赖于任何内容，并且在更改单元格的表或其他属性时不会更改。

{{% /alert %}}

{{% alert color="primary" %}}

本文中描述的所有属性和方法都与表在Microsoft Word中的工作方式相关。 因此，在大多数情况下，如果您以编程方式构建表，但发现很难创建所需的表，则可以尝试先在Microsoft Word中直观地创建它，然后简单地将格式值复制到应用程序中。

{{% /alert %}}

### 如何使用首选宽度

表格或单个单元格的所需宽度是通过首选宽度属性定义的，该属性是元素努力适应的大小。 也就是说，可以为整个表格或单个单元格指定首选宽度。 在某些情况下，可能无法精确拟合此宽度，但在大多数情况下，实际宽度将接近此值。

使用[PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/)类的方法设置适当的首选宽度类型和值:

- 指定自动或"无首选宽度"的[Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO)字段
- 用于指定百分比宽度的[FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double)方法
- 以点为单位指定宽度的[FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double)方法

下面的图片显示了Microsoft Word中的*preferred width setting features*及其在Aspose.Words中的相应属性的表示。

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

下图显示了如何将这些选项应用于文档中的真实表格的示例。

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

在表中使用首选宽度之前，必须确保表至少包含一行。 这是因为Microsoft Word文档或在Aspose.Words中创建的文档中的此类表格格式存储在表的行中。

{{% /alert %}}

#### 指定首选表格或单元格宽度

在Aspose.Words中，使用[Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth)属性和[CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth)属性设置表和单元格宽度，并在[PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/)枚举中提供选项:

- **Auto**，相当于没有首选宽度集
- **Percent**，它相对于窗口或容器大小中的可用空间拟合元素，并在可用宽度更改时重新计算值
- **Points**，它对应于以点为单位的指定宽度的元素

{{% alert color="primary" %}}

默认情况下，一个表可以被描述为适合页面上100%的可用空间。 在这种情况下，这意味着表将尝试占用左右页边距之间的空间。

{{% /alert %}}

使用[Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth)属性将调整其相对于其容器的首选宽度：页面，文本列或外部表格单元格（如果它是嵌套表格）。

下面的代码示例演示如何将表设置为自动适应页面宽度的50%:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

在给定单元格上使用[CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth)属性将调整其首选宽度。

下面的代码示例演示如何设置不同的首选宽度设置:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### 查找首选宽度类型和值

您可以使用[Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType)和[Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue)属性查找所需表格或单元格的首选宽度详细信息。

下面的代码示例演示如何检索表单元格的首选宽度类型:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### 如何设置Autofit

[AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit)属性允许表中的单元格根据选定的条件增长和收缩。 例如，您可以使用**AutoFit to Window**选项使表格适合页面的宽度，使用**AutoFit to Content**选项允许每个单元格根据其内容增长或缩小。

{{% alert color="primary" %}}

此外，**AllowAutoFit**属性可以与首选单元格宽度结合使用，以设置自动适合其内容的单元格格式，但也具有初始宽度。 如有必要，单元格宽度可以超过此宽度。

{{% /alert %}}

默认情况下，Aspose.Words使用**AutoFit to Window**插入一个新表。 表格将根据可用的页面宽度调整大小。 要调整表的大小，可以调用[AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int)方法。 此方法接受一个[AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/)枚举，该枚举指定对表应用何种类型的autofit。

重要的是要知道autofit方法实际上是在同一时间将不同属性应用于表的快捷方式。 这些属性实际上为表提供了观察到的行为。 我们将讨论每个autofit选项的这些属性。

下面的代码示例演示如何将表设置为根据其内容收缩或增长每个单元格:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

我们将使用下表应用各种自动适合设置作为演示。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit表到窗口

当自动调整窗口应用于表时，以下操作实际上是在后台执行的:

1. 启用**Table.AllowAutoFit**属性可使用**Table.PreferredWidth**值100自动调整列大小以适应可用内容%
2. **CellFormat.PreferredWidth**从所有表格单元格中删除
   {{% alert color="primary" %}}
   请注意，这与Microsoft Word行为略有不同，其中每个单元格的首选宽度根据其当前大小和内容设置为适当的值。 Aspose.Words不会更新首选宽度，因此它们只是被清除。
   {{% /alert %}}
3. 为当前表内容重新计算列宽–最终结果是占用整个可用宽度的表
4. 当用户编辑文本时，表中列的宽度会自动更改

下面的代码示例演示如何将表自动填充到页面宽度:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

这些选项如何应用于上表的示例可以在下面的图片中看到。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit内容表

当表格自动填充内容时，以下步骤实际上是在幕后执行的:

1. 启用**Table.AllowAutoFit**属性以根据其内容自动调整每个单元格的大小

2. 首选表格宽度从**Table.PreferredWidth**中删除，**CellFormat.PreferredWidth**为每个表格单元格删除
   {{% alert color="primary" %}}

   请注意，此autofit选项从单元格中删除首选宽度，就像在Microsoft Word中一样。 如果要保留列大小并增加或减少列以适应内容，则应自行将**Table.AllowAutoFit**属性设置为**True**，而不是使用autofit快捷方式。{{% /alert %}}

3. 为当前表格内容重新计算列宽-最终结果是一个表格，其中列宽和整个表格的宽度会自动调整大小，以便在用户编辑文本时最适合内容

下面的代码示例演示如何将表自动填充到其内容:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

这些选项如何应用于上表的示例可以在下面的图片中看到。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### 在表中禁用AutoFit并使用固定列宽

如果某个表禁用了自动调整，并改用固定列宽，则执行以下步骤:

1. **Table.AllowAutoFit**属性被禁用，因此列不会增长或收缩到其内容
2. 整个表格的首选宽度从**Table.PreferredWidth**中删除，**CellFormat.PreferredWidth**从所有表格单元格中删除
3. 最终结果是一个表，其列宽由[CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth)属性确定，并且当用户输入文本或页面调整大小时，其列不会自动调整大小

{{% alert color="primary" %}}

请注意，如果没有为**CellFormat.Width**指定宽度，则使用一英寸（72点）的默认值。

{{% /alert %}}

下面的代码示例演示如何禁用autofit并为指定的表启用固定宽度:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

这些选项如何应用于上表的示例可以在下面的图片中看到。

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### 计算单元格宽度时的优先顺序

Aspose.Words允许用户通过多个对象定义表格或单元格的宽度，包括[CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)–其[Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth)属性大部分是从以前的版本遗留下来的，但是，它对于简化设置单元格宽度仍然有用。

重要的是要知道**CellFormat.Width**属性的工作方式不同，具体取决于表中已存在的其他宽度属性。

Aspose.Words使用以下顺序计算单元格宽度:

| 秩序 | 物业 | 资料描述 |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|  | [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit)确定 | 如果启用**AutoFit**:<br>-表格可能会超过首选宽度以容纳内容–它通常不会收缩到首选宽度以下<br>-对**CellFormat.Width**值的任何更改都将被忽略，单元格将适合其内容 |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/)值为**Points**或**Percent** | **CellFormat.Width**被忽略 |
|  | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/)值为**Auto** | **CellFormat.Width**中的值被复制并成为单元格的首选宽度（以点为单位） |

{{% alert color="primary" %}}

对width属性的任何更改都不会在首选宽度中更新，而是必须应用于首选宽度。

{{% /alert %}}

{{% alert color="primary" %}}

在创建固定表格布局时，指定单元格宽度。 没有宽度的单元格不能保存为DOC格式。 除了DOC以外的文档格式，例如DOCX，原则上允许在固定的表格布局中保存没有宽度的单元格。

{{% /alert %}}

## 允许单元格之间的间距

您可以获取或设置表格单元格之间的任何额外空间，类似于Microsoft Word中的"单元格间距"选项。 这可以使用[AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing)属性来完成。

下图显示了如何将这些选项应用于文档中的真实表格的示例。

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

下面的代码示例演示如何设置单元格之间的间距:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## 应用边框和阴影

边框和阴影可以使用[Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean)、[Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color)和[Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color)应用于整个表格，也可以使用[CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders)和[CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)仅应用于特定单元格。 此外，可以使用[RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders)设置行边框，但不能以这种方式应用阴影。

下图显示了Microsoft Word中的边框和阴影设置以及它们在Aspose.Words中的相应属性。

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


下面的代码示例演示如何设置具有不同边框和阴影的表格和单元格的格式:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
