---
title: 形状与文档分开
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 与文档分开渲染形状
linktitle: 与文档分开渲染形状
description: "在处理文档时提取各种图形对象，例如图像、包含段落的文本框或箭头形状，并使用 Python 将它们导出到外部位置。"
type: docs
weight: 40
url: /zh/python-net/rendering-shapes-separately-from-a-document/
---

处理文档时，一项常见任务是提取文档中找到的所有图像并将其导出到外部位置。使用 Aspose.Words API，这项任务变得简单，它已经提供了提取和保存图像数据的功能。但是，有时您可能想要类似地提取由不同类型的绘图对象表示的其他类型的图形内容，例如包含段落、箭头形状和小图像的文本框。没有直接的方法来呈现该对象，因为它是各个内容元素的组合。您还可能会遇到这样的情况：内容被组合在一起形成看起来像单个图像的对象。

Aspose.Words 提供了提取此类内容的功能，就像从形状中提取简单图像作为渲染内容一样。本文介绍如何利用此功能独立于文档渲染形状。

## Aspose.Words 中的形状类型

文档绘图图层中的所有内容均由 Aspose.Words 文档对象模块 (DOM) 中的 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 或 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 节点表示。此类内容可以是文本框、图像、自选图形、OLE 对象等。某些字段也可以作为形状导入，例如 `INCLUDEPICTURE` 字段。

一个简单的图像由[ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image)的[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)节点表示。该形状节点没有子节点，但可以通过 [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) 属性访问该形状节点中包含的图像数据。另一方面，形状也可以由许多子节点组成。例如，由 [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box) 属性表示的文本框形状可以由许多节点组成，例如 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 和 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)。大多数形状可以包含 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 和 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 块级节点。这些节点与主体中出现的节点相同。形状始终是某个段落的一部分，要么直接内联，要么锚定到 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)，但"浮动"在文档页面的任何位置。

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

文档还可以包含组合在一起的形状。通过选择多个对象并单击右键菜单中的"Group"，可以在 Microsoft Word 中启用 Grouping。

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

在 Aspose.Words 中，这些形状组由 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 节点表示。也可以以相同的方式调用它们以将整个组渲染为图像。

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

DOCX 格式可以包含特殊类型的图像，例如图表或图表。这些形状也通过 Aspose.Words 中的 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 节点来表示，Aspose.Words 也提供了类似的方法将它们呈现为图像。根据设计，一个形状不能包含另一个形状作为子项，除非该形状是图像 ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image))。例如，Microsoft Word 不允许您将一个文本框插入另一个文本框。

上述形状类型提供了一种特殊的方法来通过 [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) 类渲染形状。通过 [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) 方法或通过将 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 传递给 [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) 类的构造函数，可以检索 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 或 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 的 [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) 类实例。此类提供对成员的访问，允许将形状呈现为以下内容：

- 磁盘上的文件
- 溪流

{{% alert color="primary" %}}

渲染 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 时，它必须是文档层次结构的一部分。如果 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 不是文档树的一部分，则调用 [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) 方法后渲染的输出将为空白。

{{% /alert %}}

## 渲染到文件或流

[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) 方法提供了将形状直接渲染到文件或流的重载。两个重载都接受 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 类的实例，该实例允许定义用于渲染形状的选项。这与 [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 方法的工作方式相同。即使此参数是必需的，您也可以传递 null 值，指定没有自定义选项。

该形状可以以 [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 枚举中指定的任何图像格式导出。例如，图像可以通过指定 [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) 枚举呈现为光栅图像（例如 JPEG），或者通过指定 [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf) 呈现为矢量图像（例如 EMF）。

下面的代码示例说明了将形状与文档分开渲染到 EMF 图像，并保存到磁盘：

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

下面的代码示例说明了将形状与文档分开渲染为 JPEG 图像，并保存到流中：

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

[ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 类允许您指定控制图像渲染方式的各种选项。上述功能可以以相同的方式应用于 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 和 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 节点。

## 渲染形状图像

[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 类表示绘图层中的对象，例如自选图形、文本框、自由格式、OLE 对象、ActiveX 控件或图片。使用 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 类，您可以创建或修改 Microsoft Word 文档中的形状。形状的一个重要属性是它的 [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/)。不同类型的形状在 Word 文档中可以具有不同的功能。例如，只有图像和 OLE 形状可以在其中包含图像，而大多数形状只能包含文本。

以下示例演示如何将 Shape 图像与文档分开渲染为 JPEG 图像并将其保存到磁盘：

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## 检索形状大小

[ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) 类还提供通过 [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/) 方法检索形状大小（以像素为单位）的功能。此方法接受两个浮点（单个）参数 - 比例和 DPI，它们用于在渲染形状时计算形状大小。该方法返回 **Size** 对象，其中包含计算出的尺寸的宽度和高度。当需要提前知道渲染形状的大小时，这非常有用。 [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) 属性返回以磅为单位测量的形状大小。结果是一个包含宽度和高度的 **SizeF** 对象。您还可以使用 [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) 属性来获取形状的实际边界。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


