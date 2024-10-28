---
title: 使用C++中的部分
second_title: Aspose.Words对于C++
articleTitle: 使用部分
linktitle: 使用部分
description: "理解使用 C++ 的文档部分概念和操作实践。在文档中插入部分 C++。删除部分 C++。在文档之间复制部分。"
type: docs
weight: 120
url: /zh/cpp/working-with-sections/
---

有时您想要的文档在所有页面上没有相同的格式。 例如，您可能需要修改页码格式，具有不同的页面大小和方向，或者将第一个文档页面作为封面页，而无需任何编号。 你可以用部分来实现这一点。

节是控制页眉和页脚、方向、列、边距、页码格式等的级别节点。

Aspose.Words允许您管理部分，将文档划分为部分，并进行仅适用于特定部分的格式更改。 Aspose.Words存储有关节格式的信息，如页眉和页脚、页面设置和节间隔中的列设置。

本文介绍了如何使用节和节间隔。

## 什么节和节休息是

文档部分由[Section](https://reference.aspose.com/words/cpp/aspose.words/section/)和[SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/)类表示。 节对象是[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)节点的直接子节点，可以通过[Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)属性访问。 您可以使用一些方法来管理这些节点，例如[Remove](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/remove/), [Add](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/add/), [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/), 和其他人。

Section break是将文档页面划分为具有可自定义布局的部分的选项。

## 分段中断的类型

Aspose.Words允许您使用[BreakType](https://reference.aspose.com/words/cpp/aspose.words/breaktype/)枚举的不同分节符分割和格式化文档:

- SectionBreakContinuous
- SectionBreakNewColumn
- SectionBreakNewPage
- SectionBreakEvenPage
- SectionBreakOddPage

您还可以使用[SectionStart](https://reference.aspose.com/words/cpp/aspose.words/sectionstart/)枚举来选择仅适用于第一节的中断类型，例如NewColumn, NewPage, EvenPage, 和OddPage。

## 管理一个部分

由于节是一个普通的复合节点，因此整个节点操作API可用于操作节：对节进行添加、删除和其他操作。 您可以在文章中阅读有关节点的更多信息 [Aspose.Words文档对象模型(DOM)](/words/cpp/aspose-words-document-object-model/).

另一方面，您也可以使用`DocumentBuilder`API来处理部分。 在本文中，我们将重点介绍使用部分的这种特殊方式。

## 插入或删除断点

Aspose.Words允许您使用[InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/)方法在文本中插入分段中断。

下面的代码示例演示如何在文档中插入分隔符:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "insert-section-breaks.cpp" >}}

使用[Remove](https://reference.aspose.com/words/cpp/aspose.words/node/remove/)方法删除分段中断。 如果您不需要删除特定的节中断，而是删除该节的内容，则可以使用[ClearContent](https://reference.aspose.com/words/cpp/aspose.words/section/clearcontent/)方法。

下面的代码示例演示如何删除分隔符:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "remove-section-breaks.h" >}}

{{% alert color="primary" %}}

请注意，节间隔包含有关它之前的节的信息，而不是它之后的节。 因此，如果您删除了分节符，则删除的分节符之前的文本将获得其后面的分节符的属性。 这可能会导致整个文档变成横向，或者页眉和页脚更改或完全消失。

{{% /alert %}}

## 移动一个部分

如果要将文档中的某个部分从一个位置移动到另一个位置，则需要获取该部分的索引。 Aspose.Words允许您从[SectionCollection](https://reference.aspose.com/words/cpp/aspose.words/sectioncollection/)中获取节位置。 您可以使用[Sections](https://reference.aspose.com/words/cpp/aspose.words/document/get_sections/)属性获取文档中的所有部分。 但是如果你只想获得第一个部分，你可以使用[FirstSection](https://reference.aspose.com/words/cpp/aspose.words/document/get_firstsection/)属性。

下面的代码示例演示如何访问第一个部分并遍历复合节点的子节点:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "section-child-nodes.h" >}}

## 指定节布局

有时，您希望通过为不同的文档部分制作创意布局来使文档看起来更好。 如果要指定当前节网格的类型，可以使用[SectionLayoutMode](https://reference.aspose.com/words/cpp/aspose.words/sectionlayoutmode/)枚举选择节布局模式:

- 违约情况
- 网格
- LineGrid
- SnapToChars

下面的代码示例演示如何限制每个页面可能具有的行数:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "line-grid-section-layout-mode.h" >}}

## 编辑部分

当您向文档添加新部分时，将没有您可以编辑的正文或段落。 Aspose.Words允许您使用[EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words/section/ensureminimum/)方法保证一个部分包含至少有一个段落的正文-它会自动向文档添加一个正文（或HeaderFooter）节点，然后向其添加一个段落。

下面的代码示例演示如何使用**EnsureMinimum**准备新的节节点:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "ensure-minimum.h" >}}

### 追加或追加内容

如果要在部分的开头/结尾绘制一些形状或添加文本或图像，可以使用[Section](https://reference.aspose.com/words/cpp/aspose.words/section/)类的[AppendContent](https://reference.aspose.com/words/cpp/aspose.words/section/appendcontent/)和[PrependContent](https://reference.aspose.com/words/cpp/aspose.words/section/prependcontent/)方法。

下面的代码示例演示如何附加现有部分的内容:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "append-section-content.h" >}}

### 克隆一个部分

Aspose.Words允许您通过使用[Clone](https://reference.aspose.com/words/cpp/aspose.words/section/clone/)方法创建节的完整副本来复制节。

下面的代码示例演示如何克隆文档中的第一个部分:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "clone-section.h" >}}

### 在文档之间复制部分

在某些情况下，您可能有许多节的大型文档，并且您希望将节的内容从一个文档复制到另一个文档。

Aspose.Words允许您使用[ImportNode](https://reference.aspose.com/words/cpp/aspose.words/documentbase/importnode/)方法在文档之间复制部分。

下面的代码示例演示如何在文档之间复制节:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "copy-section.h" >}}

### 使用节页眉和页脚

为每个部分显示页眉或页脚的基本规则非常简单:

1. 如果该节没有自己的特定类型的页眉/页脚，则它取自上一节。
2. 页面上显示的页眉/页脚类型由"不同的第一页"和"不同的奇数和偶数页"部分设置控制–如果它们被禁用，则忽略该部分自己的标题。

下面的代码示例演示如何创建具有不同标头的2节:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

如果要删除页眉和页脚的文本而不删除文档中的[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)对象，则可以使用[ClearHeadersFooters](https://reference.aspose.com/words/cpp/aspose.words/section/clearheadersfooters/)方法。 此外，您可以使用[DeleteHeaderFooterShapes](https://reference.aspose.com/words/cpp/aspose.words/section/deleteheaderfootershapes/)方法从文档中的页眉和页脚中删除所有形状。

下面的代码示例演示如何清除部分中所有页眉和页脚的内容:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-content.h" >}}

下面的代码示例如何从节中的所有页眉页脚中删除所有形状:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "delete-header-footer-shapes.h" >}}

## 自定义部分中的页面属性

在打印页面或文档之前，您可能需要自定义和修改单个页面或整个文档的大小和布局。 通过页面设置，您可以更改文档页面的设置，如边距、方向和大小，以打印不同的第一页或奇数页。

Aspose.Words允许您使用[PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/)类自定义页面和部分属性。

下面的代码示例演示如何为当前节设置页面大小和方向等属性:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "page-setup-and-section-formatting.h" >}}

下面的代码示例演示如何修改所有部分中的页属性:

{{< gist "aspose-words-gists" "11904531c9095a3c413adf28dbe3fe8d" "modify-page-setup-in-all-sections.h" >}}

## 请参阅

- [文档中节点的逻辑级别](/words/cpp/logical-levels-of-nodes-in-a-document/)
- [插入和追加文档](/words/cpp/insert-and-append-documents/)