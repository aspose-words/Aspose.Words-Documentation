---
title: 如何将 Group 形状添加到 Word 文件中
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 在 Word 文档中使用 Group 形状
linktitle: 在 Word 文档中使用 Group 形状
description: "使用 Python 将 group shape 添加到文档中。"
type: docs
weight: 290
url: /zh/python-net/how-to-add-group-shape-into-a-word-document/
---

有时您需要将 group shape 添加到 Word 文档中。这样的 group shape 由多种形状组成。

在 Microsoft Word 中，您可以使用 Group 命令/按钮快速添加 group shape。组中的单个形状可以单独移动。

在 Aspose.Words 中，使用 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 类添加 group shape 非常容易。形状是使用 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 类单独创建的，然后使用 [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) 方法添加到 [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) 对象中。

以下代码示例演示如何将 group shape 添加到 Word 文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

以下是 Aspose.Words 支持的一些 `Shape` 类型。有关完整列表，请参阅 [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) 枚举

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
