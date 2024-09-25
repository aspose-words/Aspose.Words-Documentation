---
title: 使用 Python 中的部分
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用部分
linktitle: 使用部分
description: "使用 Python 创建和管理文档中的节和分节符。将节插入文档 Python。删除 Python 部分。复制文档之间的部分。"
type: docs
weight: 120
url: /zh/python-net/working-with-sections/
---

有时您希望文档的所有页面都具有不同的格式。例如，您可能需要修改页码格式、具有不同的页面大小和方向，或者将文档首页作为封面而不进行任何编号。您可以通过部分来实现这一点。

节是控制页眉和页脚、方向、列、边距、页码格式等的级别节点。

Aspose.Words 允许您管理部分、将文档划分为多个部分以及进行仅适用于特定部分的格式更改。 Aspose.Words 存储有关节格式的信息，例如页眉和页脚、页面设置以及分节符中的列设置。

本文介绍如何使用节和分节符。

## 什么是节和分节符

文档部分由 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 和 [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) 类表示。节对象是 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 节点的直接子级，可以通过 [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) 属性进行访问。您可以使用 [Remove](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/remove/#node)、[Add](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/add/#node)、[IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/#node) 等一些方法来管理这些节点。

分节符是一个选项，可将文档页面分为具有可自定义布局的部分。

## 分节符的类型

Aspose.Words 允许您使用 [BreakType](https://reference.aspose.com/words/python-net/aspose.words/breaktype/) 枚举的不同分节符来分割和格式化文档：

- 连续分节符
- 分节符新列
- 分节符新页
- 节断偶数页
- 分节奇数页

您还可以使用 [SectionStart](https://reference.aspose.com/words/python-net/aspose.words/sectionstart/) 枚举来选择仅适用于第一部分的分隔类型，例如 NewColumn、NewPage、EvenPage 和 OddPage。

## 管理部分

由于节是一个普通的复合节点，因此可以使用全节点操作 API 来操作节：对节进行添加、删除等操作。您可以在 [Aspose.Words Document Object Model (DOM)](/words/zh/python-net/aspose-words-document-object-model/) 文章中阅读有关节点的更多信息。

另一方面，您还可以使用 `DocumentBuilder` API 来处理部分。在本文中，我们将重点讨论这种使用节的特殊方式。

## 插入或删除分节符

Aspose.Words 允许您使用 [InsertBreak](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/#breaktype) 方法在文本中插入分节符。

以下代码示例演示如何在文档中插入分节符：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "insert-section-breaks.py" >}}

使用 [Remove](https://reference.aspose.com/words/python-net/aspose.words/node/remove/#default) 方法删除分节符。如果您不需要删除特定分节符而是删除该节的内容，则可以使用 [ClearContent](https://reference.aspose.com/words/python-net/aspose.words/section/clear_content/#default) 方法。

以下代码示例展示了如何删除分节符：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "remove-section-breaks.py" >}}

{{% alert color="primary" %}}

请注意，分节符包含有关其之前的部分的信息，而不是有关其之后的部分的信息。因此，如果删除分节符，则删除的分节符之前的文本将获得其后面的分节符的属性。这可能会导致整个文档变成横向，或者页眉和页脚发生变化或完全消失。

{{% /alert %}}

## 移动一个部分

如果要将文档中的某个部分从一个位置移动到另一个位置，则需要获取该部分的索引。 Aspose.Words 允许您从 [SectionCollection](https://reference.aspose.com/words/python-net/aspose.words/sectioncollection/) 中获取章节位置。您可以使用 [Sections](https://reference.aspose.com/words/python-net/aspose.words/document/sections/) 属性来获取文档中的所有部分。但如果您只想获取第一部分，则可以使用 [FirstSection](https://reference.aspose.com/words/python-net/aspose.words/document/first_section/) 属性。

以下代码示例演示如何访问第一部分并迭代复合节点的子节点：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "section-child-nodes.py" >}}

## 指定部分布局

有时，您希望通过为文档的不同部分制作创意布局来使文档看起来更好。如果要指定当前截面网格的类型，可以使用 [SectionLayoutMode](https://reference.aspose.com/words/python-net/aspose.words/sectionlayoutmode/) 枚举选择截面布局模式：

- 默认
- 网格
- 线网格
- SnapToChars

以下代码示例显示如何限制每个页面可以拥有的行数：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "line-grid-section-layout-mode.py" >}}

## 编辑部分

当您向文档添加新部分时，将没有可以编辑的正文或段落。 Aspose.Words 允许您使用 [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words/section/ensure_minimum/#default) 方法保证一个节包含至少一个段落的正文 - 它会自动向文档添加一个 Body（或 HeaderFooter）节点，然后向其中添加一个 Paragraph。

以下代码示例展示了如何使用 **EnsureMinimum** 准备新的节节点：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "ensure-minimum.py" >}}

### 追加或前置内容

如果您想在部分的开头/结尾绘制某些形状或添加文本或图像，可以使用 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 类的 [AppendContent](https://reference.aspose.com/words/python-net/aspose.words/section/append_content/#section) 和 [PrependContent](https://reference.aspose.com/words/python-net/aspose.words/section/prepend_content/#section) 方法。

以下代码示例演示如何附加现有部分的内容：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "append-section-content.py" >}}

### 克隆一个部分

Aspose.Words 允许您通过使用 [Clone](https://reference.aspose.com/words/python-net/aspose.words/section/clone/#default) 方法创建该部分的完整副本来复制该部分。

以下代码示例演示如何克隆文档中的第一部分：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "clone-section.py" >}}

### 复制文档之间的部分

在某些情况下，您可能拥有包含许多部分的大型文档，并且您希望将某个部分的内容从一个文档复制到另一个文档。

Aspose.Words 允许您使用 [ImportNode](https://reference.aspose.com/words/python-net/aspose.words/nodeimporter/import_node/#node_bool) 方法复制文档之间的部分。

以下代码示例演示如何在文档之间复制部分：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "copy-section.py" >}}

### 使用节页眉和页脚

显示每个部分的页眉或页脚的基本规则非常简单：

1. 如果该节没有自己的某种类型的页眉/页脚，则它取自上一节。
2. 页面上显示的页眉/页脚类型由"不同首页"和"不同奇数页和偶数页"部分设置控制 - 如果禁用它们，则忽略该部分自己的标题。

以下代码示例演示如何创建具有不同标头的 2 个部分：

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

如果要删除页眉和页脚的文本而不删除文档中的 [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) 对象，可以使用 [ClearHeadersFooters](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) 方法。此外，您可以使用 [DeleteHeaderFooterShapes](https://reference.aspose.com/words/python-net/aspose.words/section/delete_header_footer_shapes/#default) 方法从文档的页眉和页脚中删除所有形状。

以下代码示例演示如何清除节中所有页眉和页脚的内容：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-content.py" >}}

以下代码示例如何从节中的所有页眉页脚中删除所有形状：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "delete-header-footer-shapes.py" >}}

## 自定义部分中的页面属性

在打印页面或文档之前，您可能需要自定义和修改单页或整个文档的尺寸和布局。通过页面设置，您可以更改文档页面的设置，例如页边距、方向和尺寸，以打印不同的首页或奇数页。

Aspose.Words 允许您使用 [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) 类自定义页面和部分属性。

以下代码示例显示如何设置当前部分的页面大小和方向等属性：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "page-setup-and-section-formatting.py" >}}

以下代码示例显示如何修改所有部分中的页面属性：

{{< gist "aspose-words-gists" "000cda3bfe9679c09bfd03617bd1f9e8" "modify-page-setup-in-all-sections.py" >}}

## 也可以看看

- [文档中节点的逻辑级别](/words/python-net/logical-levels-of-nodes-in-a-document/#document-and-section-logical-level)
- [插入和附加文档](/words/zh/python-net/insert-and-append-documents/)
