---
title: 表格格式化为 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 应用表格格式
linktitle: 应用表格格式
description: "表格的详细格式化。 使用 Java 以格式化表格的每个部分。"
type: docs
weight: 70
url: /zh/java/applying-formatting/
---

表格的每个要素都可以采用不同的格式。 例如,表格格式化将应用于整个表格,行格式化将仅适用于特定行,单元格格式化将仅适用于某些单元格.

Aspose.Words 提供财富 API 以检索并应用表格的格式。 你可以用这个 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), 和 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) 设置格式的节点。

在本篇文章中,我们将谈论如何对不同的表格节点应用格式,以及表格格式设置 Aspose.Words 支持 。

## 应用格式到不同的节点

在本节中,我们将考虑对各种表格节点采用格式。

### 表格级别格式

要将格式应用到表格中,您可以使用相应的属性 **Table** 使用 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), 和 [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) 课程。

{{% alert color="primary" %}}

注意,表格必须至少有一行才能应用表格属性. 这意味着,在建造一张桌子时, [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), 此格式化必须在第一次调用之后进行 [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()),或第一行添加到表格之后,或当节点直接插入到表格中时。 DOM。 。 。 。

{{% /alert %}}

以下图片显示 **Table** 格式化特性 Microsoft Word 及其相应的属性 Aspose.Words。 。 。 。

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

以下代码示例显示如何对表格应用大纲边框:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

以下代码示例显示如何构建所有边框的表格( 网格):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### 行级别格式

行级** 格式化可以使用 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), 和 [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) 课程。

{{% alert color="primary" %}}

说明a **Row** 只能是一个孩子的节点 **Table**。 。 。 。 同时,至少必须有一个 **Cell** 输入 **Row** 这样,格式就可以应用到它。

{{% /alert %}}

以下图片显示 **Row** 格式化特性 Microsoft Word 及其相应的属性 Aspose.Words。 。 。 。

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

以下代码示例显示如何修改表格行格式:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### 单元格级别格式

单元格级别格式化由 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), 和 [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) 课程。

{{% alert color="primary" %}}

说明a **Cell** 只能是一个孩子的节点 **Row**。 。 。 。 同时,至少必须有一个 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 输入 **Cell** 这样,格式就可以应用到它。

除此以外, **Paragraph**, ,也可以插入一个 **Table** 改为 a **Cell**。 。 。 。

{{% /alert %}}

以下图片显示 **Cell** 格式化特性 Microsoft Word 及其相应的属性 Aspose.Words。 。 。 。

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

以下代码示例显示如何修改表格单元格的格式:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

以下代码示例显示如何设置单元格内容左/上/右/下方的空间(以点计):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## 指定行高

设置行高的最简单方法是使用 **DocumentBuilder**。 。 。 。 使用适当的 **RowFormat** 属性,您可以设置默认的高度设置,也可以对表格中的每行应用不同的高度。

内 Aspose.Words, 表格行高度由:

-行高财产 [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- 给定行的高度规则属性 [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

同时,可以为每行设置不同的高度--这使得您可以广泛地控制表格设置.

{{% alert color="primary" %}}

指定对象高度的规则选项可以使用 [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) 字段。

{{% /alert %}}

以下代码示例显示如何创建包含单个单元格并应用行格式的表格:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## 指定表格和单元格宽度

一张桌子在a Microsoft Word 文档提供了修改表格和单个单元格大小的几种不同方式。 这些属性允许对表格的外观和行为进行相当的控制,因此 Aspose.Words 支持表格的行为,如 Microsoft Word。 。 。 。

必须知道,表格元素呈现出几种不同的属性,可以影响总体表格的宽度以及单个单元格的计算方式:

- 桌上首选的宽度
- 单个单元格首选宽度
- 允许自动装配到桌子上

本文章详细介绍了各种表格宽度计算属性是如何工作的,以及如何获得对表格宽度计算的全面控制. 这是
尤其有助于了解表格布局没有如预期那样出现的情况。

{{% alert color="primary" %}}

在大多数情况下,推荐的首选单元格比表格宽度. 首选的单元格宽度更符合 DOCX 格式规格以及 Aspose.Words 型号。

单元格宽度实际上是DOCX格式的计算值. 实际的细胞宽度可以依赖于许多事物. 例如,改变页面边距或首选的表格宽度会影响实际的单元格宽度.

首选的单元格宽度是存储在文档中的单元格属性。 它不依赖任何东西,也不在修改单元格的表格或其他属性时改变。

{{% /alert %}}

{{% alert color="primary" %}}

本条所述的所有属性和方法都与表格如何工作有关。 Microsoft Word。 。 。 因此,在大多数情况下,如果你正在按程序构建自己的表格,但发现很难创建理想的表格,你可以尝试在视觉上创建它。 Microsoft Word 先将格式化的数值复制到应用程序中。

{{% /alert %}}

### 如何使用首选宽度

表格或单个单元格的理想宽度通过首选宽度属性来定义,这是元素努力适应的大小. 也就是说,可以指定整个表格或单个单元格的首选宽度. 在某些情况下,可能无法准确适应这一宽度,但实际上的宽度在大多数情况下接近这一值.

适当的首选宽度类型和值是使用 [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) 类:

- 那个 [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) 字段以指定自动或"无首选宽度"
- 那个 [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) 指定百分比宽度的方法
- 那个 [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) 指定点宽度的方法

以下图片显示了您在 Microsoft Word 及其相应的属性 Aspose.Words。 。 。 。

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

这些选项如何应用到文档中真实表格的一个实例可见以下图片.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

在表格中使用首选宽度之前,必须确保表格至少包含一行。 这是因为这样的表格格式化为 Microsoft Word 文档或创建于 Aspose.Words 被存储在表格的行中。

{{% /alert %}}

#### 指定首选表格或单元格宽度

内 Aspose.Words, 表格和单元格宽度使用 [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) 财产和财产 [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) 属性,在 [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 计数:

- 怎么样? **Auto**, 等于没有首选宽度集
- 怎么样? **Percent**, 与窗口或容器大小的可用空间相对应的元素,并在可用宽度变化时重新计算值
- 怎么样? **Points**, 对应指定宽度的元素

{{% alert color="primary" %}}

默认情况下,一个表格可以被描述为安装到页面上100%的可用空间. 在这种情况下,这意味着表格将试图占用左右页边距之间的空格.

{{% /alert %}}

使用 [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) 属性将相对其容器调整其首选宽度:页面、文本列或外部表格单元格,如果它是嵌入式表格。

以下代码示例显示如何将表格自动配置到页面宽度的50%:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

使用 [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) 属性将调整其首选宽度。

以下代码示例显示如何设置不同的首选宽度设置:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### 查找首选的宽度类型和值

你可以用这个 [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) 和 [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) 属性以查找想要的表格或单元格的首选宽度细节。

以下代码示例显示如何获取表格单元格首选的宽度类型:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### 如何设置自动适应

那个 [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) 属性允许表格中的单元格根据选定的标准生长和缩小。 例如,你可以使用 **自动编辑到窗口** 选项,使表格与页面宽度相匹配, **自动编辑到内容** 选项,允许每个单元格根据其内容生长或缩小。

{{% alert color="primary" %}}

此外, **AllowAutoFit** 属性可以与首选的单元格宽度结合使用,用于格式化自动符合其内容的单元格,但也具有初始宽度。 如有必要,单元格宽度可以超过此宽度。

{{% /alert %}}

默认 Aspose.Words 使用 **自动编辑到窗口**。 。 。 。 表格将按照可用的页面宽度大小。 要调整表格的大小,可以拨打 [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) 方法。 此方法接受 [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) 指定表格中自动适应的类型。

重要的是要知道,自动适配方法实际上是一种快捷方式,同时对表格应用不同的属性. 这些属性实际上给出了表格中观察到的行为. 我们将讨论每个自动适应选项的这些属性 。

以下代码示例显示如何根据每个单元格的内容设置一个表来缩小或生长:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

我们将使用下表应用各种自动适配设置作为演示.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### 自动填表到窗口

当自动适应窗口被应用到表格中时,以下操作实际上是在幕后进行:

一、导 言 那个 **Table.AllowAutoFit** 属性可以自动调整列大小以适应可用内容,使用 **Table.PreferredWidth** 价值100%
2. 国家 **CellFormat.PreferredWidth** 从所有表格单元格中删除
      {{% alert color="primary" %}}
   请注意,这与 Microsoft Word 行为,每个单元格的首选宽度被设定为基于当前大小和内容的适当值. Aspose.Words 不更新首选宽度,所以它们只能被清除。
      {{% /alert %}}
3个 对当前表格内容的列宽进行重新计算 - 最终结果是一个占据全部可用宽度的表格
4个 表格中列的宽度在用户编辑文本时自动更改

以下代码示例显示如何将表格自动配置到页面宽度:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

这些选项如何应用到上表的一个实例可见下图.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### 自动填表到内容

当表格自动适应内容时,以下步骤实际上是在幕后进行: 1

一、导 言 那个 **Table.AllowAutoFit** 属性被允许根据单元格的内容自动调整大小

2. 国家 首选的表格宽度从 **Table.PreferredWidth**, **CellFormat.PreferredWidth** 为每个表格单元格删除
      {{% alert color="primary" %}}

   注意, 此自动适配选项会像在 Microsoft Word。 。 。 如果要保留列大小并增加或减少列以适应内容,应当设置 **Table.AllowAutoFit** 属性改为 **True** 而不是用自动快捷键。{{% /alert %}}

3个 对当前表格内容的列宽进行重新计算--最终结果是一个表格,当用户编辑文本时,该表格的列宽和整个表格的宽度会自动调整,以最适合内容

以下代码示例显示如何自动调整表格的内容:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

这些选项如何应用到上表的一个实例可见下图.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### 禁用表格中的自动配置并使用固定列宽

如果表格已禁用自动装配,而是使用固定列宽,则执行下列步骤:

一、导 言 **Table.AllowAutoFit** 属性被禁用, 因此列不会增大或缩小到其内容
2. 国家 整个表格的首选宽度从 **Table.PreferredWidth**, **CellFormat.PreferredWidth** 从所有表格单元格中删除
3个 最终结果是一个表格,其列宽由 [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) 属性,且其列在用户输入文本或页面调整时不会自动调整大小

{{% alert color="primary" %}}

注意如果没有指定宽度 **CellFormat.Width**, 使用1英寸(72分)的默认值。

{{% /alert %}}

以下代码示例显示如何禁用自动适应并启用指定的表格的固定宽度:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

这些选项如何应用到上表的一个实例可见下图.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### 计算单元格宽度时的顺序

Aspose.Words 允许用户通过多个对象定义表格或单元格的宽度,包括 [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) - 它的 [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) 属性大多是以前版本遗留下来的,但对于简化单元格宽度的设置仍然有用。

必须知道 **CellFormat.Width** 属性的工作方式不同,取决于表格中已经存在哪些其他宽度属性。

Aspose.Words 使用下列顺序计算单元格宽度:

|  顺序 |  财产 |  说明 |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) 将确定 |  若为 **AutoFit** 已启用:<br/>- 表格可能超过首选宽度以容纳内容 - 它通常不会缩小至首选宽度以下<br/>- 任何更改 **CellFormat.Width** 值被忽略,单元格将与其内容相匹配 |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 值为 **Points** 或 **Percent** |  **CellFormat.Width** 忽略 |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) 值为 **Auto** |  值来自 **CellFormat.Width** 复制并成为单元格首选的宽度(单位:点) |

{{% alert color="primary" %}}

宽度属性的任何变化都不以首选宽度更新,而是必须应用到首选宽度。

{{% /alert %}}

{{% alert color="primary" %}}

在创建固定表格布局时,指定单元格宽度。 没有宽度的单元格无法保存到 DOC 格式 。 除DOC外的文档格式,如DOCX,原则上允许在固定的表格布局中保存没有宽度的单元格.

{{% /alert %}}

## 允许单元格间间隔

您可以在表格单元格之间获得或设置类似"%ell 间隔"选项的额外空格。 Microsoft Word。 。 。 。 可以使用 [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) 属性。

这些选项如何应用到文档中真实表格的一个实例可见以下图片.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

以下代码示例显示如何设置单元格之间的间隔:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## 应用边框和阴影

边框和阴影可以应用到整个表格中。 [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) 和 [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), 或只对使用 [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) 和 [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading)。 。 。 。 此外,可以使用 [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), 但阴影不能以这种方式适用。

以下图片显示边框和阴影设置 Microsoft Word 及其相应的属性 Aspose.Words。 。 。 。

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


以下代码示例显示如何格式化一个有不同边框和阴影的表格和单元格:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}