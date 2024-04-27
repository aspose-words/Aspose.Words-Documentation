---
title: 转换为固定页面格式 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 转换为固定页面格式
linktitle: 转换为固定页面格式
description: "Aspose.Words (单位:千美元) Java 执行自己的页面布局引擎,使其能够生产所有固定的页面格式,例如PDF, XPS, 和各种图像格式。"
type: docs
weight: 10
url: /zh/java/converting-to-fixed-page-format/
---

Aspose.Words 执行自己的页面布局引擎。 在探讨其规格之前,值得首先在高级别讨论文件。 在思考一个文档时,用户一般会想象出一些包含文字,图像,表格和图表的纸页. 文档可以是各种类型,如文本,电子表格,幻灯片,CAD绘图,流程图,因此可以有本质上不同的布局. 大多数应用程序允许将文档发送到打印机;这时用户可以实际查看文档的最终意图外观.

## 在各种应用程序中显示文档

各种文档查看或发布应用程序允许用户打开(Adobe Acrobat, XPS 查看器),有时也会编辑(Adobe InDesign)特定格式的文档. 这些应用程序通常会产生所谓的"固定页"格式文档. 这种文件格式准确地描述了文件内容放在每一页的地方。 内部,PDF或 XPS 格式中包含每个页面的描述,以及绘图指令,指定页面内容的布局. 这类似于图像格式,描述内容以光栅或矢量形式显示的地方.

相反,一些文本编辑应用程序不支持查看文档的页面。 比如说, Microsoft 除简单的显示,编辑和打印文本外,Notepad支持的功能很少. 这里的重要观察是,这些应用程序既不能显示文档的页面,也不能告诉一个用户其中将打印多少,只能查看文档内容. 文档可以以纯文本格式保存,也可以由许多其他应用程序打开. 使用一个允许查看任意文件的二进制内容的应用程序,人们可以看到文档文件中存储的内容 - 它只是纯文本,里面没有其它内容.

略为复杂的文本编辑应用程序,例如 Microsoft WordPad,将文档保存为富文本格式(RTF),它支持更多的格式化功能,如插入图像,字符格式,段落边距和间隔. 然而,RTF格式也只包含文件的内容,没有网页信息.

Microsoft Word 是最先进的文本编辑应用程序 Windows 今时. 它以 DOCX 格式格式格式格式文件,该格式可以灵活和广泛地描述文档的内容,允许用户指定一个文档部分的页面大小,方向,并且作为一个WYSIWYG应用程序甚至会在屏幕上显示文档页面. 尽管如此,仍然没有任何资料说明如何在文档文件中的网页上显示该文件的内容。 文档文件只描述了内容本身,以及文档对象彼此的关系,还有一些几何限制. 因此,在展示文件之前, Microsoft Word 计算信息本身。 这就是一个页面布局开始发挥作用的地方。

## 什么是页面布局

文档页面布局是一个数据结构,描述特定对象在所有文档对象的页面上的位置. 此外,由于对象具有影响其外观的属性,如字体大小,阴影或绘图效果,因此你不仅需要知道对象在哪里,还需要知道它占据的页面的哪个区域(s),以及它是否适用于多个页面,以便其他对象不会与同一个区域(s)重叠.

Aspose.Words 内部执行页面布局功能,使其能够生产所有固定的页面格式,例如PDF, XPS, 和各种图像格式。 如果没有页面布局,将无法获得固定页面文档文件中存储的信息,也不会支持所有这些格式。

文档与页面布局之间的关系相当简单. 文档描述了内容,相应的页面布局则描述了该内容的几何特征. 注意,没有文档,页面布局就不可能存在,因为没有计算几何的内容,但是没有页面布局,文档是可以存在的. 例如,当DOCX文档被转换成RTF文档时,通常不需要知道几何,因为两种格式都不存储.

## 创建页面布局

在速度和内存方面,创建页面布局可能是一个代价高昂的程序. 其原因如下:

- 怎么样? 文件可能包含大量内容,可能需要在数千页上展示. 每页每个对象的几何需要描述,消耗内存资源.
- 怎么样? 文档可能有许多规则,对几何设置了限制. 可能花费大量计算时间,以确保满足每一种限制。
- 一些文件特征,例如: `NUMPAGES` 字段,创建未来属性值的递归依赖,在计算时不可用。 这导致重复计算,并在计算时间中加起来.

由于上述原因, Aspose.Words 将仅在必要时创建页面布局。 造成这种情况的一个典型原因是要求提供文件页面或获得一个取决于页面布局中可获得的信息的字段值。 一个不太明显的原因可能是将文档导出到 HTML 。 尽管HTML不是固定的页面格式,也不描述内容对象的几何,但它仍然支持图像. 这种图像的形式可以是: Microsoft Word 里面有条短信 例如,带有轴标签的图表可以作为图像导出到 HTML, 但在完成此任务之前 Aspose.Words 需要制作这个图像,因此需要知道在哪里显示标签。 参见下图实例:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### 非测量 属性

除了处理几何信息外,一个页面布局还负责计算颜色和边框样式. 内 Microsoft Word, 文本颜色可以被指定为自动颜色,这意味着颜色选择应当基于单元格或段落的阴影颜色,或者基于文本出现的页面颜色。

页面布局计算文本将出现在何处以及其后面将提供哪些内容,从而能够进行颜色计算。 还有其他由页面布局进行的具体计算. 例如,表格中的横向边框取决于表格行在文本的一栏中是否最后,以及是否横跨一栏。 如果一行是最后一个在列中,则使用下边框而不是水平边框。

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

内 <span notrans="<span notrans=" Aspose.Words"=""></span>",> 用户可以要求是构建新的页面布局,还是更新现有的页面布局。 两者都可以由 [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)方法,由 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 课。 如果不存在页面布局,但需要(例如,当文档导出为固定页格式时), Aspose.Words 将自动调用此方法。 然而,如果一个页面布局已经存在, Aspose.Words 将使用现有的系统,以避免耗尽更新系统所需的资源。 在这种情况下,用户需要拨打 `UpdatePageLayout` 方法,以确保页面布局与文档模式保持一致。

### 动态结构

创建页面布局的过程包括下列步骤:

- 怎么样? *Conversion* – 列举文档模型的内容,并准备相应的布局对象.
- 怎么样? *Build* – 安排布局对象在页面上代表文档内容.
- 怎么样? *Reflow* - 更新对象安排以满足几何限制.
- * 将布局对象投射到固定的页面演示文稿中并最后确定颜色信息*。
- *构筑和回流形状内容 * - 如果文档中包含带有嵌套文本内容的形状,则需要该步骤 。

注意,页面布局是一个动态结构,可以部分重建. 在不重建文档布局结构就无法计算字段值时,尤其需要这样做。 字段可以引用某个对象在页面上的位置,同时字段值本身也在页面上渲染,影响被引用对象的位置. 一个页面布局无法在一去中构建,因为在页面定位时,字段值可能还没有可用.

考虑典型的情景: `NUMPAGES` 字段出现在文档第一页的页脚中。 此字段的值为总页数. 为了将字段放置在页面上,应该知道其价值. 如果目前只建第一页,则总页数尚不清楚。 在这种情况下,页面布局必须使用默认值,然后返回该字段,并根据实际计算改变其值. 然而,改变字段值可能会影响页面上的其他文档内容,最终导致新页面被附加或现有页面被移除,从而使计算值过时. 这个问题可以通过更新现有的页面布局来解决.

当创建布局时,也可以设置 [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 属性,影响文档在页面上的输出。

## 保存到固定页面格式

在建立页面布局和计算对象的几何及其在页面上的位置之后,文档可以使用固定的页面格式保存,由 Aspose.Words。 。 。 在将文档保存到固定页格式时,可以使用所有这些格式通用的渲染选项. 它们允许控制:

- 怎么样? 输出文档中包含的页数和范围([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。
- 逐页保存文件的进展([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。
- 一组用于数字渲染的字符([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。
- 元文件播放器( T)[MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。 详细情况见 [处理 Windows 元文件](/words/zh/java/handling-windows-metafiles/) 第3条。
- 重新压缩JPEG图像的质量率,其价值可能因选定保存格式而略有不同([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)。 。 。 。
- 优化矢量图形 Aspose.Words 产出([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。
- 保存到 Tiff、 Png、 Bmp、 Jpeg、 Emf 格式时的图形选项([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。
- 以灰色尺度保存文档([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。
- 在绘图ML形状和倒置形状之间切换([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。
- 在DML效果渲染模式之间切换([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)。 。 。 。

下面的例子说明如何使用 JPEG 格式保存文档 `Save` 方法和渲染选项:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
