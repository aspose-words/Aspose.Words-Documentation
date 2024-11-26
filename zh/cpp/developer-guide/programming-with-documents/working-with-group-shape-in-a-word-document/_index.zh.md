---
title: 如何在Word文档中添加Group Shape
second_title: Aspose.Words对于C++
articleTitle: 在Word文档中使用Group Shapes
linktitle: 在Word文档中使用Group Shapes
description: "使用C++对形状进行分组和取消分组。"
type: docs
weight: 290
url: /zh/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

有时您需要在Word文档中添加group shape。 这样的group shape由多个形状组成。

在Microsoft Word中，您可以使用组命令/按钮快速添加group shape。 组中的单个形状可以单独移动。

在Aspose.Words中，使用[GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/)类添加group shape非常容易。 形状使用[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)类单独创建，然后使用[AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/)方法添加到**GroupShape**对象。

下面的代码示例演示如何将group shape添加到Word文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

下面是Aspose.Words中支持的一些`Shape`类型。 有关完整列表，请访问[ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- 矩形
- RoundRectangle
- RoundRectangle
- 椭圆
- 钻石
- 三角形
- RightTriangle
- 平行四边形
- 梯形,梯形
- 六边形
- 八角,八角

{{% /alert %}}
