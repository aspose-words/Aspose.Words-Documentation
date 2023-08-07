---
title: Add Group Shape into Word File
second_title: Aspose.Words for Python via .NET
articleTitle: How to Add Group Shape into a Word Document
linktitle: How to Add Group Shape into a Word Document
description: "Add group shape into a document using Python."
type: docs
weight: 20
url: /python-net/how-to-add-group-shape-into-a-word-document/
aliases: [/python/how-to-add-group-shape-into-a-word-document/]
---

Sometimes you need to add a group shape into a Word document. Such a group shape consists of multiple shapes.

In Microsoft Word, you can quickly add a group shape using the Group command/button. An individual shape in a group can be moved separately.

In Aspose.Words it is very easy to add a group shape using [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) class. Shape is created separately using [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) class and then added in [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) object using [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) method.

The following code example shows how to add a group shape into a Word document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Below are some of the Shape types supported in Aspose.Words. For complete list, please see [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) enumeration

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
