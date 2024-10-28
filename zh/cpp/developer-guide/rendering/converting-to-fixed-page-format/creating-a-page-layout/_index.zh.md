---
title: 在C++中创建页面布局
second_title: Aspose.Words对于C++
articleTitle: 创建页面布局
linktitle: 创建页面布局
description: "创建页面布局可能是一个昂贵的过程。 Aspose.Words仅在必要时才会创建页面布局：呈现文档页面、获取字段值、将文档导出到HTML等。"
type: docs
weight: 10
url: /zh/cpp/creating-a-page-layout/
---

在速度和内存方面，创建页面布局可能是一个昂贵的过程。 这是由于几个原因:

- 文档可能有大量的内容，可能需要显示在数千页上。 每个页面上每个对象的几何形状都需要描述，这会消耗内存资源。
- 文档可能有许多规则，对几何体进行约束。 可能会花费大量的计算时间，以确保满足每个约束。
- 某些文档功能（例如`NUMPAGES`字段）会为未来的属性值创建递归依赖关系，这些属性值在计算时不可用。 这导致重复计算，并在计算时间上加起来。

由于上述原因，Aspose.Words仅在必要时才会创建页面布局。 这样做的一个典型原因是请求呈现文档页面或获取取决于页面布局中可用信息的字段值。 一个不太明显的原因可能是将文档导出到HTML。 即使HTML不是固定页面格式，并且它不描述内容对象的几何形状，它仍然支持图像。 这些图像可以是在Microsoft Word中创建的形状的形式，其中包含一个文本。 例如，带有轴标签的图表可以作为图像导出到HTML中，但在此之前，Aspose.Words需要渲染该图像，因此需要知道在哪里显示标签。 请参阅下面的图表示例:

![converting-to-fixed-page-format-aspose-words-cpp-1](converting-to-fixed-page-format-1.png)

## 非几何属性

除了处理几何信息外，页面布局还负责计算颜色和边框样式。 在Microsoft Word中，文本颜色可以指定为自动，这意味着颜色选择应该基于单元格或段落的底纹颜色，或者基于文本出现的页面颜色。

页面布局计算文本将出现的位置以及在其后面呈现的内容，从而启用颜色计算。 还有其他特定的计算由页面布局执行。 例如，表中的水平边框取决于表行是否在文本列中的最后一个，以及它是否跨列分隔。 如果行在列中最后呈现，则使用底部边框而不是水平边框。

![converting-to-fixed-page-format-aspose-words-cpp-2](converting-to-fixed-page-format-2.png)

在Aspose.Words中，用户可以请求是构建新的页面布局，还是更新现有的页面布局。 这两个都可以通过[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)类提供的[UpdatePageLayout](https://reference.aspose.com/words/cpp/aspose.words/document/updatepagelayout/)方法来执行。 如果页面布局不存在，但有需要（例如，当文档导出为固定页面格式时），Aspose.Words将自动调用此方法。 但是，如果页面布局已经存在，Aspose.Words将使用现有的布局，以避免消耗更新它所需的资源。 在这种情况下，用户需要调用`UpdatePageLayout`方法，以确保页面布局与文档模型是最新的。

## 动态结构

创建页面布局的过程包括以下步骤:

- *Conversion*–枚举文档模型的内容并准备相应的布局对象。
- *Build*-排列布局对象以表示页面上文档的内容。
- *Reflow*-更新对象排列以满足几何约束。
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content*-如果文档包含具有嵌套文本内容的形状，则需要执行的步骤。

请注意，页面布局是一个动态结构，可以部分重建。 当无法在不重建文档布局结构的情况下计算字段值时，这尤其需要。 字段可以引用对象在页面上的位置，与此同时，字段值本身也呈现在页面上，影响被引用对象的位置。 页面布局不能一次性构建，因为在页面上定位时字段值可能尚不可用。

考虑`NUMPAGES`字段出现在文档中第一页的页脚中的典型情况。 此字段的值是总页数。 为了在页面上定位字段，它的值应该是已知的。 如果当前只构建第一页，那么还不知道总页数。 在这种情况下，页面布局必须使用默认值，然后返回到该字段并根据实际计算更改其值。 但是，更改字段值可能会影响页面上的其他文档内容，并最终导致追加新页面或删除现有页面，从而使计算值过时。 这个问题可以通过使更新现有的页面布局成为可能来解决。

创建布局时，还可以设置影响页面上文档输出的[LayoutOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/)属性。