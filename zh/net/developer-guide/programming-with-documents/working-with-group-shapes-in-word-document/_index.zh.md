---
title: 如何将 Group 形状添加到 Word 文档中
second_title: .NET 格式的 Aspose.Words
articleTitle: 如何将 Group 形状添加到 Word 文档中
linktitle: 在 Word 文档中使用 Group 形状
description: "使用 C# 对形状进行 Group 和取消分组。"
type: docs
weight: 290
url: /zh/net/how-to-add-group-shape-into-a-word-document/
---

有时您需要将 group shape 添加到 Word 文档中。这样的 group shape 由多种形状组成。

在 Microsoft Word 中，您可以使用 Group 命令/按钮快速添加 group shape。组中的单个形状可以单独移动。

在 Aspose.Words 中，使用 [GroupShape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/groupshape/) 类添加 group shape 非常容易。 **Shape** 使用 [Shape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/) 类单独创建，然后使用 [AppendChild](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/appendchild/) 方法添加到 [GroupShape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/groupshape/) 对象。

以下代码示例演示如何将 group shape 添加到 Word 文档中：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

以下是 Aspose.Words 支持的一些 `Shape` 类型：

- 长方形
- 圆角矩形
- 圆角矩形
- 椭圆
- 钻石
- 三角形
- 直角三角形
- 平行四边形
- 梯形
- 六角形
- 八角形

如需完整列表，请查看 [ShapeType](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shapetype) 类。

{{% /alert %}}