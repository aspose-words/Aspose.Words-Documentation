---
title: 与文档分开呈现形状
second_title: Aspose.Words对于C++
articleTitle: 与文档分开呈现形状
linktitle: 与文档分开呈现形状
description: "在处理文档时提取各种图形对象，例如图像、包含段落的文本框或箭头形状，并将它们导出到外部位置。"
type: docs
weight: 40
url: /zh/cpp/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

在处理文档时，一个常见的任务是提取文档中找到的所有图像并将其导出到外部位置。 使用Aspose.WordsAPI，此任务变得简单，它已经提供了提取和保存图像数据的功能。 但是，有时您可能希望类似地提取由不同类型的绘图对象表示的其他类型的图形内容，例如，包含段落，箭头形状和小图像的文本框。 没有直接的方法来呈现此对象，因为它是单个内容元素的组合。 您可能还会遇到这样的情况，即内容已组合在一起，成为看起来像单个图像的对象。

Aspose.Words提供了提取此类内容的功能，就像从shape中提取简单图像作为渲染内容一样。 本文介绍如何利用此功能独立于文档呈现形状。

## Aspose.Words中的形状类型

文档绘图层中的所有内容都由Aspose.Words文档对象模块（DOM）中的[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)或[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)节点表示。 这样的内容可以是文本框，图像，AutoShapes，OLE对象等。 某些字段也导入为形状，例如`INCLUDEPICTURE`字段。

一个简单的图像由[ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)的**Shape**节点表示。 此形状节点没有子节点，但此形状节点中包含的图像数据可以通过[Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/)属性访问。 另一方面，一个形状也可以由许多子节点组成。 例如，由[ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)属性表示的文本框形状可以由许多节点组成，例如[Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/)和[Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/)。 大多数形状可以包括**Paragraph**和**Table**块级节点。 这些节点与主体中出现的节点相同。 形状总是某个段落的一部分，可以直接内联或锚定到**Paragraph,**，但"浮动"在文档页面的任何地方。

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

文档还可以包含组合在一起的形状。 通过选择多个对象并单击右键菜单中的"组"，可以在Microsoft Word中启用分组。

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

在Aspose.Words中，这些形状组由`GroupShape`节点表示。 这些也可以以相同的方式调用，以将整个组呈现给图像。

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

DOCX格式可以包含特殊类型的图像，如图表或图表。 这些形状也通过Aspose.Words中的**Shape**节点表示，这也提供了将它们渲染为图像的类似方法。 根据设计，一个形状不能包含另一个作为子形状的形状，除非该形状是一个图像(**ShapeType.Image**)。 例如，Microsoft Word不允许您在另一个文本框中插入文本框。

上面描述的形状类型提供了一种通过[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)类呈现形状的特殊方法。 通过**GetShapeRenderer**方法或将**Shape**传递给**ShapeRenderer**类的构造函数，为**Shape**或**GroupShape**检索**ShapeRenderer**类的实例。 此类提供对成员的访问，这些成员允许将形状呈现为以下内容:

- 使用[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)方法重载的磁盘上的文件
- 使用[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)方法重载的流
- 使用[RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)和[RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)方法的`Graphics`对象

{{% alert color="primary" %}}

呈现**Shape**时，它必须是文档层次结构的一部分。 如果**Shape**不是文档树的一部分，那么在调用**ShapeRenderer**方法后呈现的输出将为空。

{{% /alert %}}

## 渲染到文件或流

[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)方法提供将形状直接呈现到文件或流的重载。 两个重载都接受[ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/)类的实例，该实例允许定义用于呈现形状的选项。 这与[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)方法的工作方式相同。 即使此参数是必需的，您也可以传递null值，指定没有自定义选项。

形状可以以[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)枚举中指定的任何图像格式导出。 例如，图像可以通过指定`SaveFormat.Jpeg`枚举呈现为光栅图像，例如JPEG，或者通过指定`SaveFormat.Emf`呈现为矢量图像，例如EMF。

下面的代码示例演示将形状与文档分开呈现为EMF图像，并保存到磁盘:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

下面的代码示例说明了将形状与文档分开呈现为JPEG图像，并将其保存为流:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

**ImageSaveOptions**类允许您指定控制图像呈现方式的各种选项。 上面描述的功能可以以相同的方式应用于**GroupShape**和**Shape**节点。

## 渲染到.NET图形对象

直接呈现到**Graphics**对象允许您定义自己的设置和**Graphics**对象的状态。 一个常见的场景是将形状直接呈现到从Windows表单或位图中检索到的**Graphics**对象中。 渲染**Shape**节点时，设置将影响形状外观。 例如，可以对**Graphics**对象使用**RotateTransform**或**ScaleTransform**方法来旋转或缩放形状。

下面的示例演示如何将形状呈现为a。**NET Graphics**对象与文档分开，并对渲染的图像应用旋转:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

类似地，与[RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/)方法一样，从[NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/)继承的[RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)方法对于创建文档内容的缩略图很有用。 通过构造函数指定形状大小。 **RenderToSize**方法接受**Graphics**对象，图像位置的X和Y坐标，以及将绘制到**Graphics**对象上的图像的大小（宽度和高度）。

可以使用从[NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/)类继承的[ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)方法将**Shape**呈现为一定的比例。 这类似于接受相同主要参数的[Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/)方法。 这两种方法之间的区别在于，使用**ShapeRenderer.RenderToScale**方法，而不是文字大小，您可以选择在渲染期间缩放形状的float值。 如果float值等于1.0，则形状将呈现在100% 原来的大小。 Float值0.5会将图像大小减少一半。

## 渲染形状图像

[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)类表示绘图层中的对象，例如AutoShape、文本框、自由格式、OLE对象、ActiveX控件或图片。 使用**Shape**类，您可以在Microsoft Word文档中创建或修改形状。 形状的一个重要属性是它的[ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/)。 不同类型的形状在Word文档中可以具有不同的功能。 例如，只有图像和OLE形状可以包含图像，而大多数形状只能包含文本。

下面的示例演示如何将形状图像与文档分开呈现为JPEG图像并将其保存到磁盘:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## 检索形状大小

[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)类还提供了通过[GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/)方法以像素为单位检索形状大小的功能。 此方法接受两个float类型（单个）参数-scale和DPI，它们用于在渲染形状时计算形状大小。 该方法返回`Size`对象，该对象包含计算大小的宽度和高度。 当需要预先知道渲染形状的大小时，这很有用，例如在从渲染输出创建新位图时。

下面的示例演示如何使用要渲染的形状的宽度和高度创建新的位图和图形对象:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

使用**RenderToSize**或**RenderToScale**方法时，渲染的图像大小也会在[SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)对象中返回。 这可以分配给一个变量，并在必要时使用。

**SizeInPoints**属性返回以点为单位测量的形状大小（请参阅[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)。 结果是包含宽度和高度的`SizeF`对象。
