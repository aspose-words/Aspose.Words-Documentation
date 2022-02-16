---
title: How to Add Group Shape into a Word Document in Python
articleTitle: How to Add Group Shape into a Word Document
linktitle: How to Add Group Shape into a Word Document
description: "Add group shape into a document using python."
type: docs
weight: 20
url: /python-net/how-to-add-group-shape-into-a-word-document/
aliases: [/python/how-to-add-group-shape-into-a-word-document/]
---

{{% alert color="primary" %}} 

Below are some of the Shape types supported in Aspose.Words. For complete list, please see **aspose.words.drawing.ShapeType** enumeration

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

Sometimes you need to add a group shape into a Word document. In Microsoft Word, you can quickly add a group shape using Group command/button. A group shape consists of multiple shapes. Individual shape in a group can be moved separately. In Aspose.Words it is very easy to add a group shape using **GroupShape** class. Shape is created separately using **Shape** class and then added in **GroupShape** object using **append_child** method.

## Example

Below example add a group shape into a Word document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}
