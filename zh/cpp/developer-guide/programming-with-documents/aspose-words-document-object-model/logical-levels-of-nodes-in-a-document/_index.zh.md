---
title: C++文档中节点的逻辑级别
second_title: Aspose.Words对于C++
articleTitle: 文档中节点的逻辑级别
linktitle: 文档中节点的逻辑级别
type: docs
description: "在 Aspose.Words对于C++ 文档中提到了节点的逻辑级别-块级别、内联级别或行级别。 节点级别用于描述文档树中节点通常出现的位置。"
weight: 10
url: /zh/cpp/logical-levels-of-nodes-in-a-document/
---

本文档有时将一组节点类称为属于文档中的"级别"，例如"块级别"、"内联级别"（也称为"内联"）或"行级别"节点。 文档中的这些级别纯粹是在逻辑上区分的，并且没有通过继承或其他Aspose.WordsDOM表示。 节点级别用于描述文档树中节点通常出现的位置。

在上一篇文章中，我们已经谈到了节点之间的关系以及并非所有节点都被允许成为任何节点的子节点这一事实。 例如，Cell只能是行子项，行只能是表子项，依此类推。 这些关系也适用于将节点逻辑划分为文档中的级别。

以下各节描述Aspose.Words中节点的逻辑级别以及属于每个级别的类。

## 文档和节逻辑级别

一个Word文档由一个或多个部分组成，由[Section](https://reference.aspose.com/words/cpp/aspose.words/section)类表示，并用节符分隔。 节可以定义自己的页面大小、边距、方向、文本列数以及页眉和页脚。

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)和 [部分](https://www.aspose.com/api/words/cpp/aspose.words/section/) 级别节点的结构如下图所示。

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

一个部分包含主文本，以及第一页、偶数页和奇数页的页眉和页脚。 这些不同的文本"流"称为*stories*。

在Aspose.Words中，**Section**节点包含[Body](https://reference.aspose.com/words/cpp/aspose.words/body/)和[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)故事节点。 **Body**对象存储主文本。 **HeaderFooter**对象存储每个页眉和页脚的文本。 任何故事的文本由段落和表格组成，分别由块级的**Paragraph**和**Table**对象表示。

此外，每个Word文档都可以包含一个词汇表，该词汇表由Aspose.Words中的[GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/)节点表示。 词汇表文档包含[BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/)、[AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/)和[AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/)条目。

**GlossaryDocument**

## 块逻辑级别

块级节点表示内容和内容控件的容器，可以出现在以下节点中的文档树子节点中:

- 身体
- 标题
- 页脚
- 脚注
- 评论
- 形状
- GroupShape
- 细胞
- StructuredDocumentTag

块级节点由以下类表示:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)和[Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)，它们是最重要的块级节点
- 书签，发生在块级别和内联级别
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/)，表示自定义标记，可以包含内容和内容控件

下图显示了块级元素。

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## 内联逻辑级别

内联级节点表示文档的实际内容，可以包含在以下容器中:

- 段落-最常见的容器
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

内联级元素由以下类表示:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/)-不同格式的文本运行
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/)和[BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend)表示书签
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) 和[Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/)表示注解
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) 和[FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/)表示字段字符，[FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/)表示单词字段
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/)表示文档中的特殊字符
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)和[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)表示形状，绘图，图像等。
- SmartTag和StructuredDocumentTag表示自定义标记

下图显示了内联级节点结构。

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Microsoft Word中的形状包括Office ArtAutoShapes、文本框、图像、OLE对象和ActiveX控件，所有这些都使用`Shape`类表示。 某些形状还可以包含文本，因此Aspose.Words中的形状节点可以包含块级节点。

形状可以使用GroupShape节点相互分组。

{{% /alert %}}

{{% alert color="primary" %}}

脚注和注释可以包含文本，因此Aspose.Words中的脚注和注释节点可以包含块级节点。

{{% /alert %}}

## 表、行和单元格节点级别

该表由行和单元格的节点组成。 表元素由以下类表示:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/)表示表行
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/)表示表格单元格
- StructuredDocumentTag表示自定义标记

下图显示了表、行和单元格级别的节点结构。

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
