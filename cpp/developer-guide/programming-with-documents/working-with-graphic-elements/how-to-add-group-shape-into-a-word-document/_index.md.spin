---
title: How to Add Group Shape into a Word Document
type: docs
weight: 250
url: /cpp/how-to-add-group-shape-into-a-word-document/
---

{{% alert color="primary" %}} 

Below are some of the Shape types supported in Aspose.Words. For complete list, please visit [ShapeType](https://apireference.aspose.com/words/cpp/namespace/aspose.words.drawing#shapetype)

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

Sometimes you need to add a group shape into a Word document. In Microsoft Word, you can quickly add a group shape using the Group command/button. A group shape consists of {multiple|several|a few|many|numerous} shapes. Individual shapes in a group can be moved separately. In Aspose.Words it is very easy to add a group shape using GroupShape class. The shape is created separately using the Shape class and then added to the GroupShape object using the AppendChild method.

The code example given below {demonstrates|shows} how to add a group shape into a Word document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}
