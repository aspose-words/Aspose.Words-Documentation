---
title: 在Java中转换为固定页面格式
second_title: Aspose.Words为Java
articleTitle: 转换为固定页格式
linktitle: 转换为固定页格式
description: "Aspose.WordsforJava实现了自己的页面布局引擎，使其能够生成所有固定的页面格式，如PDF、XPS和各种图像格式。"
type: docs
weight: 10
url: /zh/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words实现自己的页面布局引擎。 在深入研究其规范之前，首先在高层次上讨论文档是值得的。 当考虑一个文档时，用户通常会想象一些包含单词、图像、表格和图表的纸张。 文档可以是各种类型的，例如文本、电子表格、幻灯片、CAD绘图、流程图，因此，可以具有本质上不同的布局。 大多数应用程序允许将文档发送到打印机；这是用户可以实际查看文档的最终预期外观的时候。

## 在各种应用程序中显示文档

各种文档查看或发布应用程序允许用户打开（Adobe Acrobat，XPS查看器），有时还可以编辑（AdobeInDesign）特定格式的文档。 这些应用程序通常产生所谓的"固定页"格式文档。 这样的文档格式精确地描述了文档内容在每个页面上的位置。 在内部，PDF或XPS格式包含每个页面的描述，以及绘图说明，指定页面上内容的布局。 这类似于图像格式，描述内容以栅格或矢量形式显示的位置。

相反，一些文本编辑应用程序不支持查看文档的页面。 例如，MicrosoftNotepad除了简单地显示，编辑和打印文本之外，还支持很少的功能。 这里的重要观察是，这样的应用程序既不能显示文档的页面，也不能告诉用户将打印多少页面，只允许查看文档内容。 文档可以以纯文本格式保存，并且可以被许多其他应用程序打开。 使用允许查看任意文件的二进制内容的应用程序可以看到文档文件中存储的内容–它只是纯文本，其中没有其他内容。

稍微复杂一点的文本编辑应用程序（如Microsoft WordPad）以富文本格式（RTF）保存文档，该格式支持更多的格式设置功能，如插入图像、字符格式、段落边距和间距。 但是，RTF格式也只包含文档的内容，没有关于页面的信息。

Microsoft Word是当今Windows中最先进的文本编辑应用程序。 它以DOCX格式格式化文件，灵活而广泛地描述文档的内容，允许用户指定页面大小，文档部分的方向，作为WYSIWYG应用程序甚至可以在屏幕上显示文档页面。 尽管如此，仍然没有关于文档内容如何在文档文件中可用的页面上显示的信息。 文档文件仅描述内容本身，以及文档对象彼此之间的关系，以及一些几何约束。 因此，在显示文档之前，Microsoft Word会自行计算该信息。 这就是页面布局发挥作用的地方。

## 什么是页面布局

文档页面布局是一种数据结构，描述特定对象在所有文档对象的页面上的位置。 此外，由于对象具有影响其外观的属性，例如字体大小，阴影或绘图效果，因此您不仅需要知道对象在哪里，还需要知道它占据页面的哪个区域，以及它是否

Aspose.Words在内部实现页面布局功能，使其能够生成所有固定的页面格式，如PDF、XPS和各种图像格式。 如果没有页面布局，固定页面文档文件中存储的信息将不可用，并且不支持所有这些格式。

文档和页面布局之间的关系非常简单。 文档描述内容，而相应的页面布局描述该内容的几何。 请注意，如果没有文档，页面布局就不能存在，因为没有计算几何的内容，但是文档可以在没有页面布局的情况下存在。 例如，当DOCX文档转换为RTF文档时，通常不需要知道几何，因为两种格式都不存储它。

## 创建页面布局

在速度和内存方面，创建页面布局可能是一个昂贵的过程。 这是由于几个原因:

- 文档可能有大量的内容，可能需要显示在数千页上。 每个页面上每个对象的几何形状都需要描述，这会消耗内存资源。
- 文档可能有许多规则，对几何体进行约束。 可能会花费大量的计算时间，以确保满足每个约束。
- 某些文档功能（例如`NUMPAGES`字段）会为未来的属性值创建递归依赖关系，这些属性值在计算时不可用。 这导致重复计算，并在计算时间上加起来。

由于上述原因，Aspose.Words仅在必要时才会创建页面布局。 这样做的一个典型原因是请求呈现文档页面或获取取决于页面布局中可用信息的字段值。 一个不太明显的原因可能是将文档导出到HTML。 即使HTML不是固定页面格式，也不描述内容对象的几何形状，它仍然支持图像。 这些图像可以是在Microsoft Word中创建的形状的形式，其中包含一个文本。 例如，带有轴标签的图表可以作为图像导出到HTML中，但在此之前，Aspose.Words需要渲染该图像，因此需要知道在哪里显示标签。 请参阅下面的图表示例:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### 非几何属性

除了处理几何信息外，页面布局还负责计算颜色和边框样式。 在Microsoft Word中，文本颜色可以指定为自动，这意味着颜色选择应该基于单元格或段落的底纹颜色，或者基于文本出现的页面颜色。

页面布局计算文本将出现的位置以及后面将呈现的内容，从而启用颜色计算。 还有其他特定的计算由页面布局执行。 例如，表中的水平边框取决于表行是否在文本列中的最后一个，以及它是否跨列分隔。 如果行在列中最后呈现，则使用底部边框而不是水平边框。

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

在Aspose.Words中，用户可以请求是构建新的页面布局，还是更新现有的页面布局。 这两个都可以通过[UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\))方法执行，由[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)类提供。 如果页面布局不存在，但有需要（例如，当文档导出为固定页面格式时），Aspose.Words将自动调用此方法。 但是，如果页面布局已经存在，Aspose.Words将使用现有的布局，以避免消耗更新它所需的资源。 在这种情况下，用户需要调用`UpdatePageLayout`方法，以确保页面布局与文档模型是最新的。

### 动态结构

创建页面布局的过程包括以下步骤:

- *Conversion*–枚举文档模型的内容并准备相应的布局对象。
- *Build*-排列布局对象以表示页面上文档的内容。
- *Reflow*-更新对象排列以满足几何约束。
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content*-如果文档包含具有嵌套文本内容的形状，则需要执行的步骤。

请注意，页面布局是一个动态结构，可以部分重建。 当无法在不重建文档布局结构的情况下计算字段值时，这尤其需要。 字段可以引用对象在页面上的位置，与此同时字段值本身也呈现在页面上，影响被引用对象的位置。 页面布局不能一次性构建，因为在页面上定位时字段值可能尚不可用。

考虑`NUMPAGES`字段出现在文档中第一页的页脚中的典型情况。 此字段的值是总页数。 为了在页面上定位字段，它的值应该是已知的。 如果当前只构建第一页，那么还不知道总页数。 在这种情况下，页面布局必须使用默认值，然后返回到该字段并根据实际计算更改其值。 但是，更改字段值可能会影响页面上的其他文档内容，并最终导致追加新页面或删除现有页面，从而使计算值过时。 这个问题可以通过使更新现有的页面布局成为可能来解决。

创建布局时，还可以设置影响页面上文档输出的[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)属性。

## 保存为固定页格式

在构建页面布局并计算对象的几何形状及其在页面上的位置后，文档可以以Aspose.Words支持的固定页面格式保存。 将文档保存为固定页面格式时，可以使用所有这些格式通用的呈现选项。 他们允许控制:

- 输出文档中包含的页数和范围([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/),[PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。
- 逐页文档保存的进度（[PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。
- 用于数字渲染([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)的一组字符。
- 元文件播放器（[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 有关详细信息，请参阅 [处理Windows元文件](/words/java/handling-windows-metafiles/) 文章。
- 用于重新压缩JPEG图像的质量速率，其值可能略有不同，具体取决于所选的保存格式([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/))。
- 优化Aspose.Words输出（[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)中的矢量图形。
- 保存为Tiff，Png，Bmp，Jpeg，Emf格式（[UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing)，[UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)）时的图形选项。
- 以灰度保存文档([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。
- 在DrawingML形状的渲染和回退形状([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))之间切换。
- 在DML效果渲染模式([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/))之间切换。

下面的示例演示如何使用`Save`方法和呈现选项将文档保存为JPEG格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
