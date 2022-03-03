---
title: Working with Shapes in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Shapes
linktitle: Working with Shapes
description: "Introduction to shape markup language, creating shapes of different types using C#."
type: docs
weight: 10
url: /net/working-with-shapes/
---

This topic discusses how to work programmatically with shapes using Aspose.Words. The shapes in Aspose.Words represent an object in the drawing layer, such as an AutoShape, textbox, freeform, OLE object, ActiveX control, or picture. A Word document can contain one or more different shapes.  Shapes of the document are represented by the [Shape](https://apireference.aspose.com/words/net/aspose.words.drawing/shape) class.

## Inserting Shapes Using Document Builder

You can insert inline shape with specified type and size and free-floating shape with the specified position, size and text wrap type into a document using DocumentBuilder.InsertShape method. The DocumentBuilder.InsertShape method allows inserting DML shape into the document model. The document must be saved in the format, which supports DML shapes, otherwise, such nodes will be converted to VML shape, while document saving. The following code example shows how to insert these types of shapes into the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Set Aspect Ratio Locked

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Set Shape Layout In Cell

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Create Snip Corner Rectangle

You can create a snip corner rectangle using Aspose.Words. The shape types are SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped,  TopCornersOneRoundedOneSnipped,  SingleCornerRounded,  TopCornersRounded,  and DiagonalCornersRounded. The DML shape is created using DocumentBuilder.InsertShape method with these shape types. These types cannot be used to create VML shapes. Attempt to create shape by using the public constructor of the "Shape" class raises the "NotSupportedException" exception. The following code example shows how to insert these type of shapes into the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Get Actual Shape Bounds Points

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Specify Vertical Anchor

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Detect SmartArt Shape

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Insert Horizontal Rule into Document

The code example given below demonstrates how to insert horizontal rule shape into a document using DocumentBuilder.InsertHorizontalRule method.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API provides Shape.HorizontalRuleFormat property to access the properties of the horizontal rule shape. The HorizontalRuleFormat class exposes basic properties like Height, Color, NoShade etc. for the formatting of a horizontal rule. The following code example demonstrates how to set HorizontalRuleFormat.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Insert OLE Object as an Icon

Aspose.Words API provides Shape.InsertOleObjectAsIcon function to insert an embedded or linked OLE object as an icon into the document. This function allows specifying the icon file and the caption. The OLE object type shall be detected using the file extension. The following code example demonstrates how to set insert OLE object as an Icon into the document.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

{{% alert color="primary" %}}

Maximum size of the icon must be 32x32 for the correct display.

{{% /alert %}}

## Import Shapes with Math XML as Shapes into DOM

You can use LoadOptions.ConvertShapeToOfficeMath property to convert the shapes with EquationXML to Office Math objects. The default value of this property corresponds to MS Word behavior i.e. shapes with equation XML are not converted to Office math objects.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
