---
title: 文档中节点的逻辑级别 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 文档中节点的逻辑级别
linktitle: 文档中节点的逻辑级别
type: docs
description: "内 Aspose.Words (单位:千美元) Java 文档中提到了节点的逻辑级别 - 块级、 内置级或行级。 节点级别用于描述通常发生节点的文档树中的位置."
weight: 10
url: /zh/java/logical-levels-of-nodes-in-a-document/
---

此文档有时指属于文档中"级别"的一组节点类,如"块级","内层"(又称"内层"),或"row级"节点. 文件中的这些等级纯粹是按逻辑区分的,没有以继承或其他方式明确表示。 Aspose.Words DOM 意味着。 节点级别用于描述文档树中节点一般发生的地方.

在上篇文章中,我们已经谈到节点之间的关系以及并非所有节点都允许成为任何节点的孩子这一事实. 例如,Cell只能是一个Row孩子,一个Row只能是一个Table孩子,等等. 这些关系也适用于文档中节点的逻辑分级.

以下各节描述节点在 Aspose.Words 以及属于每个等级的班级。

## 文件和科

页:1 Word 文档由一个或多个部分组成,以 [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) 分类,并按节间断分隔。 一节可以定义自己的页面大小,边距,方向,文本列的数量,以及页眉和页脚.

[Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 和 [节次](https://www.aspose.com/api/words/java/com.aspose.words/section) 水平节点的结构如下图所示。

<img src="/words/java/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

一节包含正文,以及首页,偶数和奇数页的页眉和页脚. 这些不同的文本"流"称为: *stories*。 。 。 。

内 Aspose.Words, 联合国 **Section** 节点包含 [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) 和 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) 故事节点。 那个 **Body** 对象存储主文本。 那个 **HeaderFooter** 对象为每个页眉和页脚存储文本。 任何故事的文字都由段落和表格组成,分别由以下段落和表格组成: **Paragraph** 和 **Table** 块级对象。

此外,每个 单词文档可以包含一个词汇表,其代表词有: [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) 节点在 Aspose.Words。 。 。 。 词汇表文件包含 [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), 和 [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) 条目。

**GlossaryDocument** 包含 [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) 代表不同类型的术语表文档条目的节点。 每个 **BuildingBlock** 包含可以插入、删除和复制到文档的段落。

## 块逻辑级

区块级节点代表用于内容和内容控制的容器,可以在文档树子节点中发生于以下节点: 1

- 躯体
- 标题
- 页脚
- 脚注
- 评论
- 形状
- 怎么样? Group形状
- 细胞
- 结构文件图表

区块级节点由以下类别代表: 区块级节点:

- 怎么样? [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) 和 [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), 这些是最重要的块级节点
- 书签,既发生在区块一级,也发生在内层
- 怎么样? [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), 可同时包含内容和内容控制

以下图显示了块级元素.

<img src="/words/java/logical-levels-of-nodes-in-a-document/block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## 内置逻辑级别

内置级节点代表文档的实际内容,可以包含在以下容器中: 1

- 最常见的集装箱
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- 结构文件图表

内含级元素以下列类别为代表: 1

- 怎么样? [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) - 文本运行格式不同
- 怎么样? [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) 和 [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) 代表书签
- 怎么样? [评论RangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart),[评论RangeEnd]](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) 和 [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) 说明
- 怎么样? [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) 和 [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) 代表字段字符,以及 [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) 代表 单词字段
- 怎么样? [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) 代表文档中的特殊字符
- 怎么样? [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 和 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 代表形状、图纸、图像等。
- 智能标签和结构文件 标记代表自定义标记

以下图显示了内含级节点结构.

<img src="/words/java/logical-levels-of-nodes-in-a-document/inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

形状在 Microsoft Word 包括 Office Art 自动元件、文本框、图像、 OLE 对象和 ActiveX 控件,所有这些控件都使用 `Shape` 课。 有些形状也可以包含文字,所以形状节点在 Aspose.Words 可以包含块级节点.

元件可以使用 Group形状结点.

{{% /alert %}}

{{% alert color="primary" %}}

脚注和评论可包含文字,因此脚注和评论节点载于 Aspose.Words 可以包含块级节点.

{{% /alert %}}

## 表格、行和单元格节点级别

该表由行和单元格的节点组成. 表格内容如下:

- 怎么样? [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 代表表格行
- 怎么样? [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 代表表格单元格
- 结构文件 标记代表自定义标记

下图显示了表格、行和单元格的节点结构。

<img src="/words/java/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
