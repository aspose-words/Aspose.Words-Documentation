---
title: 文档中节点的逻辑级别
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 文档中节点的逻辑级别
linktitle: 文档中节点的逻辑级别
type: docs
description: "在 Aspose.Words for Python via .NET 文档中提到了节点的逻辑级别 - 块级别、内联级别或行级别。节点级别用于描述该节点在文档树中通常出现的位置。"
weight: 10
url: /zh/python-net/logical-levels-of-nodes-in-a-document/
---

本文档有时将一组节点类称为属于文档中的"级别"，例如"块级"、"内联级"（也称为"内联"）或"行级"节点。文档中的这些级别纯粹是逻辑上区分的，并没有通过继承或其他 Aspose.Words DOM 方式明确表达。节点级别用于描述文档树中节点通常出现的位置。

在上一篇文章中，我们已经讨论了节点之间的关系以及并非所有节点都允许成为任何节点的子节点这一事实。例如，[Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) 只能是 [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 子项，[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 只能是 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 子项，等等。这些关系也适用于将节点逻辑划分为文档中的级别。

以下部分描述了 Aspose.Words 中节点的逻辑级别以及属于每个级别的类。

## 文档和部分逻辑级别

Word 文档由一个或多个部分组成，由 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 类表示并由分节符分隔。节可以定义自己的页面大小、边距、方向、文本列数以及页眉和页脚。

[Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 和 [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 级别节点的结构如下图所示。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="文档和节级 aspose-words" style="width:700px"/>

节包含正文以及第一页、偶数页和奇数页的页眉和页脚。这些不同的文本"流"称为 *stories*。

在 Aspose.Words 中，[Section](https://reference.aspose.com/words/python-net/aspose.words/section/) 节点包含 [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) 和 [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) 故事节点。 [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) 对象存储主要文本。 [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) 对象存储每个页眉和页脚的文本。任何故事的文本都由段落和表格组成，分别由Block-level的[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)和[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)对象表示。

此外，每个Word文档可以包含一个术语表，由Aspose.Words中的[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/)节点表示。词汇表文档包含 [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) 和 [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct) 条目。

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) 包括代表不同类型的术语表文档条目的 [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) 节点。每个 [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) 都包含可以插入、删除和复制到文档中的部分。

## 块逻辑层

块级节点表示内容和内容控件的容器，并且可以出现在文档树子节点中的以下节点中：

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

块级节点由以下类表示：

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)和[Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)，这是最重要的区块级节点
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/)，发生在块级和内联级
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)，代表自定义标记，可以包含内容和内容控件

下图显示了块级元素。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="块级 aspose-words" style="width:550px"/>

## 内联逻辑级别

内联级节点表示文档的实际内容，可以包含在以下容器中：

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – 最常见的容器
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

内联级元素由以下类表示：

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – 不同格式的文本运行
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/)和[BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/)代表书签
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/)、[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)、[Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 和 [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) 表示注释
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)、[FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/)、[FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) 和 [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) 表示字段字符，[FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) 表示 Word 字段
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) 表示文档中的特殊字符
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 和 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 表示形状、图画、图像等。
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) 和 [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) 代表自定义标记

下图显示了内联级节点结构。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="内联级 aspose-words" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word 中的形状包括 Office Art 自选图形、文本框、图像、OLE 对象和 ActiveX 控件，所有这些都使用 `Shape` 类表示。某些形状还可以包含文本，因此 Aspose.Words 中的形状节点可以包含块级节点。

可以使用 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 节点将形状彼此分组。

{{% /alert %}}

{{% alert color="primary" %}}

脚注和注释可以包含文本，因此 Aspose.Words 中的 [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) 和 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 节点可以包含块级节点。

{{% /alert %}}

## 表、行和单元格节点级别

该表由行和单元格的节点组成。 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 元素由以下类表示：

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 代表表格行
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) 代表表格单元格
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) 代表自定义标记

下图展示了[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)、[Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)和[Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)级别的节点结构。

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="表格行单元格 aspose-words" style="width:910px"/>