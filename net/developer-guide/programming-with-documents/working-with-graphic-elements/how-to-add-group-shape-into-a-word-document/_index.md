---
title: How to Add Group Shape into a Word Document
type: docs
weight: 20
url: /net/how-to-add-group-shape-into-a-word-document/
---

{{% alert color="primary" %}} 

Below are some of the Shape types supported in Aspose.Words. For complete list, please visit [ShapeType](http://www.aspose.com/docs/display/wordsnet/Aspose.Words.Drawing.ShapeType+Enumeration)

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

Sometimes you need to add a group shape into a Word document. In Microsoft Word, you can quickly add a group shape using Group command/button. A group shape consists of multiple shapes. Individual shape in a group can be moved separately. In Aspose.Words it is very easy to add a group shape using [GroupShape](http://www.aspose.com/docs/display/wordsnet/Aspose.Words.Drawing.GroupShape+Class) class. Shape is created separately using [Shape](http://www.aspose.com/docs/display/wordsnet/Aspose.Words.Drawing.Shape+Class) class and then added in [GroupShape](http://www.aspose.com/docs/display/wordsnet/Aspose.Words.Drawing.GroupShape+Class) object using [AppendChild](http://www.aspose.com/docs/display/wordsnet/Aspose.Words.Drawing.GroupShape.AppendChild+Method) method.
## **Example**
Below example add a group shape into a Word document.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}
