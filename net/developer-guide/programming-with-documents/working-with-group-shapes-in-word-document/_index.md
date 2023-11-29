---
title: How to Add Group Shape into Word Document
second_title: Aspose.Words for .NET
articleTitle: How to Add Group Shape into a Word Document
linktitle: Working with Group Shapes in Word Documents
description: "Grouping and ungrouping shapes using C#."
type: docs
weight: 290
url: /net/how-to-add-group-shape-into-a-word-document/
---

Sometimes you need to add a group shape into a Word document. Such a group shape consists of multiple shapes.

In Microsoft Word, you can quickly add a group shape using the Group command/button. An individual shape in a group can be moved separately.

In Aspose.Words it is very easy to add a group shape using the [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) class. **Shape** is created separately using the [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) class and then added to the [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) object using the [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) method.

The following code example shows how to add a group shape into a Word document:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Below are some of the Shape types supported in Aspose.Words:

- Rectangle
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamond
- Triangle
- RightTriangle
- Parallelogram
- Trapezoid
- Hexagon
- Octagon

For complete list, please check the [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) class.

{{% /alert %}}