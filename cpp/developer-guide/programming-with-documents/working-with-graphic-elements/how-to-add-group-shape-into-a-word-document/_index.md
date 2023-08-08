---
title: How to Add Group Shape into a Word Document
second_title: Aspose.Words for C++
articleTitle: How to Add Group Shape into a Word Document
linktitle: How to Add Group Shape into a Word Document
description: "Grouping and ungrouping shapes using C++."
type: docs
weight: 250
url: /cpp/how-to-add-group-shape-into-a-word-document/
---

Sometimes you need to add a group shape into a Word document. Such a group shape consists of multiple shapes.

In Microsoft Word, you can quickly add a group shape using the Group command/button. An individual shape in a group can be moved separately.

In Aspose.Words it is very easy to add a group shape using the [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) class. The shape is created separately using the [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) class and then added to the **GroupShape** object using the [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) method.

The following code example shows how to add a group shape into a Word document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Below are some of the Shape types supported in Aspose.Words. For complete list, please visit [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

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

{{% /alert %}}