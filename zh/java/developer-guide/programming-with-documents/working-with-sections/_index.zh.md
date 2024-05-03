---
title: 与部门合作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与部门合作
linktitle: 与部门合作
description: "理解文件部分的概念和操纵做法 Java。 。 。 。 在文档中插入段落 Java。 。 。 。 删除区域 Java。 。 。 。 复制文档之间的章节。"
type: docs
weight: 120
url: /zh/java/working-with-sections/
---

有时,您想要一个对所有页面格式不相同的文档。 例如,您可能需要修改页面编号格式,有不同的页面大小和方向,或者将首页文档作为封面页面而不作任何编号. 你可以用部分来达到这个目的。

节是控制页眉和页脚、方向、列、边距、页码格式等的关节点。

Aspose.Words 允许您管理区域,将文档分割成区域,并制作仅适用于特定区域的格式修改。 Aspose.Words 存储关于区域格式化的信息,如页眉和页脚、页面设置和分页设置。

本条解释了如何与各节和节间休息工作。

## 什么节和节间断是

文件部分由会议事务处代表。 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) 和 [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/) 课程。 科目标为: [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 节点和可以通过 [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) 属性。 您可以使用一些方法来管理这些节点,例如 [Remove](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#remove-com.aspose.words.Node), [Add](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#add-com.aspose.words.Node), [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node), 还有其他人。

节间休息是将文档页分成可自定义版式的节的选项。

## 区间换行类型

Aspose.Words 允许您使用不同的区间分隔文档并格式化 [BreakType](https://reference.aspose.com/words/java/com.aspose.words/breaktype/) 计数:

- 继续破坏
- Break新学院
- 破碎的新页
- 破碎的EvenPage区
- BreakOdd页

你也可以使用这个 [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/sectionstart/) 引用来选择一个仅适用于第一节的断开类型,例如新科隆,新Page,EvenPage,和OddPage.

## 管理一个科

由于一个区域是普通的复合节点,整个节点操纵 API 可用于操纵区段:用于添加,删除,以及区段上的其他操作. 您可以在文章中阅读更多节点 [Aspose.Words Document Object Model (DOM)](/words/zh/java/aspose-words-document-object-model/)。 。 。 。

另一方面,你也可以使用 `DocumentBuilder` API 与部门合作。 在本篇文章中,我们将侧重于这种与各科合作的特殊方式。

## 插入或删除分区换行符

Aspose.Words 允许您使用 [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int) 方法。

下面的代码示例显示如何在文档中插入一个分区断层:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "insert-section-breaks.java" >}}

使用 [Remove](https://reference.aspose.com/words/java/com.aspose.words/node/#remove) 删除区间断裂的方法。 如果您不需要删除特定的节间断段,而是删除该节的内容,可以使用 [ClearContent](https://reference.aspose.com/words/java/com.aspose.words/section/#clearContent) 方法。

以下代码示例显示如何删除段落中断:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "remove-section-breaks.java" >}}

{{% alert color="primary" %}}

请注意,一个节间休息有它前面的节的信息,而不是它后面的节. 因此,如果删除一个节间断,在删除的节间断之前的文本会得到该节间断之后的属性. 这可能导致整个文档成为地貌,或标题和页脚改变或完全消失.

{{% /alert %}}

## 移动一个区域

如果您要在文档中将一节从一个位置移到另一个位置,则需要获得该节的索引. Aspose.Words 允许您从 [SectionCollection](https://reference.aspose.com/words/java/com.aspose.words/sectioncollection/)。 。 。 。 你可以用这个 [Sections](https://reference.aspose.com/words/java/com.aspose.words/document/#getSections) 属性以获取文档中的所有区域。 但如果你想只得到第一节, 你可以使用 [FirstSection](https://reference.aspose.com/words/java/com.aspose.words/document/#getFirstSection) 属性。

以下代码示例显示如何访问第一节,并通过复合节点的子节点进行排列: 1

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "section-child-nodes.java" >}}

## 指定区域布局

有时,您希望文档通过为不同的文档章节制作创意布局来更好看. 如果您想要指定当前区域网格的类型, 您可以使用 [SectionLayoutMode](https://reference.aspose.com/words/java/com.aspose.words/sectionlayoutmode/) 计数:

- 默认
- 绳子
- 线条Grid
- SnapThoChars - 爱丽丝 - SnapToChars

以下代码示例说明如何限制每一页可能拥有的行数:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "line-grid-section-layout-mode.java" >}}

## 编辑一个区域

当您在文档中添加新章节时,将没有可以编辑的正文或段落. Aspose.Words 允许您保证某一部分包含至少一个段落的正文 [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/section/#ensureMinimum) 方法 – 它会在文档中自动添加一个body(或headerFooter)节点,然后在文档中添加一个段落.

以下代码示例显示如何使用 **EnsureMinimum**编号:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "ensure-minimum.java" >}}

### 附加或预留内容

如果您想要绘制某个形状, 或是在一节的开头/结尾添加文字或图像, 您可以使用 [AppendContent](https://reference.aspose.com/words/java/com.aspose.words/section/#appendContent-com.aspose.words.Section) 和 [PrependContent](https://reference.aspose.com/words/java/com.aspose.words/section/#prependContent-com.aspose.words.Section) 工作方法 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) 课。

以下代码示例显示如何附加现有部分的内容:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "append-section-content.java" >}}

### 克隆a科

Aspose.Words 允许您通过使用 [deepClone](https://reference.aspose.com/words/java/com.aspose.words/section/#deepClone) 方法。

以下代码示例显示如何克隆文档中的第一节:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "clone-section.java" >}}

### 复制文档之间的段落

在某些情况下,您可能拥有许多部分的大型文档,您想要将一个部分的内容从一个文件复制到另一个文件。

Aspose.Words 允许您使用 [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/documentbase/#importNode-com.aspose.words.Node-boolean) 方法。

以下代码示例显示如何在文档之间复制章节:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "copy-section.java" >}}

### 与区域页眉和页脚合作

每个部分显示页眉或页脚的基本规则相当简单:

一、导 言 如果该节没有自己的标题/脚指某型号,则取自上一节.
2. 国家 页面上显示的页眉/页脚类型由"差异第一页"和"差异奇数 & Even pages"区块设置控制--如果它们被禁用,那么该区块自己的标题会被忽略.

以下代码示例显示如何创建带有不同标题的两节:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

如果您想要删除页眉和页脚的文字而不删除 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) 对象,您可以使用 [ClearHeadersFooters](https://reference.aspose.com/words/java/com.aspose.words/section/#clearHeadersFooters) 方法。 此外,还可以使用 [DeleteHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/section/#deleteHeaderFooterShapes) 从文档页眉和页脚中删除所有形状的方法。

以下代码示例显示如何在一节中清除所有页眉和页脚的内容:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-content.java" >}}

以下代码示例如何从一个区域的所有页眉页脚中删除所有形状:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "delete-header-footer-shapes.java" >}}

## 自定义区域中的页面属性

在打印页面或文档之前,您可能想要自定义和修改单个页面或整个文档的大小和版式。 通过页面设置,您可以更改文档页面的设置,例如边距,方向,以及打印不同首页或奇数页的大小.

Aspose.Words 允许您使用 [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) 课。

以下代码示例显示如何设置当前部分的页面大小和方向等属性:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "page-setup-and-section-formatting.java" >}}

以下代码示例显示如何修改所有章节的页面属性:

{{< gist "aspose-words-gists" "7c0668453e53ed7a57d3ea3a05520f21" "modify-page-setup-in-all-sections.java" >}}

## 另见

- [文档中节点的逻辑级别](/words/zh/java/logical-levels-of-nodes-in-a-document/)
- [插入和附加文档](/words/zh/java/insert-and-append-documents/)