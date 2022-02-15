---
title: Working with Shapes – Aspose.Words for Python via .NET
articleTitle: Working with Shapes
linktitle: Working with Shapes
description: "Create and manage shapes, ole objects in a document using python."
type: docs
weight: 10
url: /python-net/working-with-shapes/
aliases: [/python/working-with-shapes/]
---

This topic discusses how to work programmatically with shapes using Aspose.Words. The shapes in Aspose.Words represent an object in the drawing layer, such as an AutoShape, textbox, freeform, OLE object, ActiveX control, or picture. A Word document can contain one or more different shapes.  Shapes of the document are represented by the **Shape** class.

## Inserting Shapes Using Document Builder

You can insert inline shape with specified type and size and free-floating shape with the specified position, size and text wrap type into a document using **DocumentBuilder.insert_shape** method. The **DocumentBuilder.insert_shape** method allows inserting DML shape into the document model. The document must be saved in the format, which supports DML shapes, otherwise, such nodes will be converted to VML shape, while document saving. The following code example shows how to insert these types of shapes into the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Set Aspect Ratio Locked

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Set Shape Layout In Cell

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Create Snip Corner Rectangle

You can create a snip corner rectangle using Aspose.Words. The shape types are SINGLE_CORNER_SNIPPED, TOP_CORNERS_SNIPPED, DIAGONAL_CORNERS_SNIPPED,  TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED,  SINGLE_CORNER_ROUNDED,  TOP_CORNERS_ROUNDED,  and DIAGONAL_CORNERS_ROUNDED. The DML shape is created using **DocumentBuilder.insert_shape** method with these shape types. These types cannot be used to create VML shapes. Attempt to create shape by using the public constructor of the "Shape" class raises the "NotSupportedException" exception. The following code example shows how to insert these type of shapes into the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Get Actual Shape Bounds Points

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Specify Vertical Anchor

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Detect SmartArt Shape

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Insert Horizontal Rule into Document

The code example given below demonstrates how to insert horizontal rule shape into a document using **DocumentBuilder.insert_horizontal_rule** method.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API provides Shape.HorizontalRuleFormat property to access the properties of the horizontal rule shape. The **HorizontalRuleFormat** class exposes basic properties like **height**, **color**, **no_shade** etc. for the formatting of a horizontal rule. The following code example demonstrates how to set **HorizontalRuleFormat**.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Insert OLE Object as an Icon

Aspose.Words API provides **Shape.insert_ole_object_as_icon** function to insert an embedded or linked OLE object as an icon into the document. This function allows specifying the icon file and the caption. The OLE object type shall be detected using the file extension. The following code example demonstrates how to set insert OLE object as an Icon into the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Maximum size of the icon must be 32x32 for the correct display.

{{% /alert %}}

## Import Shapes with Math XML as Shapes into DOM

You can use **LoadOptions.convert_shape_to_office_math** property to convert the shapes with EquationXML to Office Math objects. The default value of this property corresponds to MS Word behavior i.e. shapes with equation XML are not converted to Office math objects.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
