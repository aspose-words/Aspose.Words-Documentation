---
title: Working with Shapes in C++
second_title: Aspose.Words for C++
articleTitle: Working with Shapes
linktitle: Working with Shapes
type: docs
description: "Introduction to shape markup language, creating shapes of different types using C++."
weight: 280
url: /cpp/working-with-shapes/
aliases:
- /cpp/working-with-graphic-elements/
timestamp: 2024-01-27-14-07-04
---

This topic discusses how to work programmatically with shapes using Aspose.Words.

The shapes in Aspose.Words represent an object in the drawing layer, such as an AutoShape, textbox, freeform, OLE object, ActiveX control, or picture. A Word document can contain one or more different shapes.  Shapes of the document are represented by the [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) class.

## Insert Shape Using Document Builder

You can insert inline shape with specified type and size and free-floating shape with the specified position, size and text wrap type into a document using the [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/) method. The **InsertShape** method allows inserting DML shape into the document model. The document must be saved in the format, which supports DML shapes, otherwise, such nodes will be converted to VML shape, while document saving.

The following code example shows how to insert these types of shapes into the document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Set Aspect Ratio Locked

Using Aspose.Words, you can specify whether the shape’s aspect ratio is locked through the [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/) property.

The following code example shows how to work with the **AspectRatioLocked** property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Set Shape Layout In Cell

You can also specify whether the shape is displayed inside a table or outside of it using the [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) property.

The following code example shows how to work with the **IsLayoutInCell** property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Create Snip Corner Rectangle

You can create a snip corner rectangle using Aspose.Words. The shape types are *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped,  TopCornersOneRoundedOneSnipped,  SingleCornerRounded,  TopCornersRounded,* and *DiagonalCornersRounded.*

The DML shape is created using **InsertShape** method with these shape types. These types cannot be used to create VML shapes. Attempt to create shape by using the public constructor of the "Shape" class raises the "NotSupportedException" exception.

The following code example shows how to insert these type of shapes into the document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Get Actual Shape Bounds Points

Using Aspose.Words API, you can get the location and size of the shape containing block in points, relative to the anchor of the topmost shape. To do this, use the [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/) property.

The following code example shows how to work with the **BoundsInPoints** property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Horizontal Rule Format

Aspose.Words API provides the [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) property to access the properties of the horizontal rule shape. The **HorizontalRuleFormat** class exposes basic properties like Height, Color, Shade, etc. for the formatting of a horizontal rule.

The following code example demonstrates how to set **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Insert OLE Object as an Icon

Aspose.Words API provides **Shape** → **InsertOleObjectAsIcon** function to insert an embedded or linked OLE object as an icon into the document. This function allows specifying the icon file and the caption. The `OLE` object type shall be detected using the file extension.

The following code example shows how to set insert OLE object as an Icon into the document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Maximum size of the icon must be 32x32 for the correct display.

{{% /alert %}}
