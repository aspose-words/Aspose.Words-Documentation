---
title: 渲染形状 与文档分开
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 渲染形状 与文档分开
linktitle: 渲染形状 与文档分开
description: "处理文档时提取各种图形对象,例如图像、包含段落的文本框或箭头形状,然后用外部位置导出 Java。 。 。 。"
type: docs
weight: 40
url: /zh/java/rendering-shapes-separately-from-a-document/
---

在处理文档时,一个共同的任务是提取文档中找到的所有图像,然后导出到外部位置. 这项任务变得很简单,因为 Aspose.Words API, 它已经提供了提取和保存图像数据的功能。 然而,有时您可能想同样地提取由不同类型绘图对象代表的其他类型的图形内容,例如包含段落,箭头形状,以及小图像的文本框. 没有直截了当的方法来渲染这个对象,因为它是单个内容要素的组合. 当内容被组合成一个看起来像单一图像的对象时,您也可能遇到这样的情况。

Aspose.Words 为提取这类内容提供功能,其方式与您从形状中提取一个简单的图像的方式相同。 本文描述了如何利用这一功能使形状独立于文档。

## 形状类型 Aspose.Words

文件绘图层中的所有内容均由 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 或 [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 节点在 Aspose.Words 文档对象模块( E)DOM) (中文(简体) ). 这类内容可以是文本框,图像,自动形状,OLE对象等. 一些字段也作为形状导入,例如: `INCLUDEPICTURE` 字段。

一个简单的图像用一个 **Shape** 节点 [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE)。 。 。 这个形状节点没有子节点,但是这个形状节点中包含的图像数据可以被: [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) 属性。 另一方面,一个形状也可以由许多儿童节点组成. 例如,文本框形状,以 [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX) 属性,可以由许多节点组成,例如 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 和 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/)。 。 。 。 大多数形状可以包括: **Paragraph** 和 **Table** 块级节点。 这些节点与主体中出现的节点相同. 形状总是某些段落的一部分,要么直接包含在内,要么固定在 **段落,** 但"浮动"在文件页的任何地方。

![rendering-shapes-separately-from-a-document-aspose-words-java-1](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

文档还可以包含组合在一起的形状。 Group可以在 Microsoft Word 通过选择多个对象并单击"Group"在右键菜单中。

![rendering-shapes-separately-from-a-document-aspose-words-java-2](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

内 Aspose.Words, 这些形状组由以下几部分代表: [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) 节点. 这些也可以以同样的方式引用,使整个群体都达到图像.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](/words/java/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX格式可以包含特殊类型的图像,如图表或图表. 这些形状也通过 **Shape** 节点在 Aspose.Words, 也提供了一种类似的方法,将它们渲染成图像。 从设计上看,一个形状不能包含童年时的另一形状,除非该形状是图像(.**ShapeType.Image**) (中文(简体) ). 举例来说, Microsoft Word 不允许在另一个文本框中插入文本框。

上述形状类型提供了一种特殊方法,使形状通过 [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) 课。 一个实例 **ShapeRenderer** 类检索为 a **Shape** 或 **GroupShape** 通过 **GetShapeRenderer** 方法或通过 **Shape** 改为: **ShapeRenderer** 课。 此类为成员提供访问,可以使形状达到以下: 1

- 磁盘上的文件,使用 [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) 方法超载
- 使用 [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) 方法超载
- 图形 使用 [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) 和 [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 方法

{{% alert color="primary" %}}

制作时 <span notrans="<span notrans=" **Shape**"=""></span>",> 它必须是文件等级的一部分。 如果 **Shape** 不是一个文档树的一部分, 那么在引用后输出为空白 **ShapeRenderer** 方法。 方法。 。

{{% /alert %}}

## 渲染到文件或流

那个 [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) 方法提供了将形状直接变成文件或流的超载。 两个超载都接受一个实例 [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) 类,可以定义渲染形状的选项。 这个方法和 [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 方法。 即使需要这个参数,也可以通过一个无效值,指定没有自定义选项.

形状可以导出为您在 [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 计数. 例如,图像可以作为光栅图像来渲染,例如通过指定 [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) 计数,或作为矢量图像,例如通过指定 [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF)。 。 。 。

下面的代码示例说明将一个形状与文档分隔成EMF图像并保存到磁盘:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

下面的代码示例说明将一个形状和 JPEG 图像与文档分开,并保存到流中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

那个 **ImageSaveOptions** 类允许您指定控制图像如何渲染的各种选项。 上述功能可以同样的方式适用于 **GroupShape** 和 **Shape** 节点。

## 渲染到一个 `Graphics` 对象

直接渲染到一个 **Graphics** 对象允许您定义自己的设置和状态 **Graphics** 对象。 一种常见的情况是将形状直接变成一种 **Graphics** 从 a 检索到的对象 Windows 形式或位图. 当 **Shape** 节点被渲染,设置会影响形状外观. 例如,可以通过使用 **RotateTransform** 或 **ScaleTransform** 方法 **Graphics** 对象。

下面的例子说明如何将形状制成 **Graphics** 对象与文档分开,并将旋转应用到渲染的图像中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

同样, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) 方法,则 [渲染到大小](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float)方法从 [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) 用于创建文档内容的缩略图。 形状大小通过构造器指定. 那个 **RenderToSize** 方法接受 **Graphics** 对象,图像位置的 X 和 Y 坐标,以及将绘制到 **Graphics** 对象。

那个 **Shape** 可用下列方法制成某种规模: [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 方法从 [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) 课。 这类似于 [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) 接受相同主要参数的方法。 这两种方法的不同之处在于 **ShapeRenderer.RenderToScale** 方法,而不是字面大小,您选择一个在渲染时缩放形状的浮动值。 如果浮点值等于1.0,则导致形状以原大小的100%渲染. 浮值为0.5将图像大小减小一半.

## 渲染形状图像

那个 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 类代表绘图层中的对象,如自动形状、文本框、freeform、OLE对象、ActiveX控制或图片。 使用 **Shape** 类别中,您可以在 Microsoft Word 文档。 形状的重要财产是它的 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)。 。 。 不同类型的形状在Word文档中可以具有不同的能力. 例如,只有图像和OLE形状才能在它们内部有图像,而大多数形状只能有文字.

以下示例显示如何将形状图像与文档分开制成JPEG图像并将其保存到磁盘中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## 获取形状大小

那个 [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) 类还提供功能以通过 [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) 方法。 这种方法接受两个浮标(Single)参数 - 缩放和DPI,这些参数用于在渲染形状时计算形状大小. 方法返回 [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) 对象,它包含计算大小的宽度和高度。 当它需要提前了解已变形的大小时,例如当从已变形的输出中创建新的位图时,这一点是有用的.

下面的例子说明如何用要渲染的形状的宽度和高度来创建一个新的位图和图形对象:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

使用时 **RenderToSize** 或 **RenderToScale** 方法,渲染的图像大小也在 [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float) 对象。 这可分配给一个变量,必要时使用。

那个 **SizeInPoints** 属性返回按点测量的形状大小(参见 [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)) (中文(简体) ). 结果是 `SizeF` 含有宽度和高度的天体。
