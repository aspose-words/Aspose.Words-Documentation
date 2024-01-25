---
title: Working with Shapes in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Shapes
linktitle: Working with Shapes
description: "Create and manage shapes, ole objects in a document using Python."
type: docs
weight: 280
url: /python-net/working-with-shapes/
aliases:
- /python/working-with-shapes/
- /python/working-with-graphic-elements/
---

This topic discusses how to work programmatically with shapes using Aspose.Words.

The shapes in Aspose.Words represent an object in the drawing layer, such as an AutoShape, textbox, freeform, OLE object, ActiveX control, or picture. A Word document can contain one or more different shapes. Shapes of the document are represented by the [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) class.

## Inserting Shapes Using Document Builder

You can insert inline shape with specified type and size and free-floating shape with the specified position, size and text wrap type into a document using [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) method. The [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) method allows inserting DML shape into the document model. The document must be saved in the format, which supports DML shapes, otherwise, such nodes will be converted to VML shape, while document saving.

The following code example shows how to insert these types of shapes into the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Set Aspect Ratio Locked

Using Aspose.Words, you can specify whether the shape’s aspect ratio is locked through the [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) property.

The following code example shows how to work with the **AspectRatioLocked** property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Set Shape Layout In Cell

You can also specify whether the shape is displayed inside a table or outside of it using the [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) property.

The following code example shows how to work with the **IsLayoutInCell** property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Create Snip Corner Rectangle

You can create a snip corner rectangle using Aspose.Words. The shape types are [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), and [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

The DML shape is created using [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) method with these shape types. These types cannot be used to create VML shapes. Attempt to create shape by using the public constructor of the [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) class raises the "NotSupportedException" exception.

The following code example shows how to insert these type of shapes into the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Get Actual Shape Bounds Points

Using Aspose.Words API, you can get the location and size of the shape containing block in points, relative to the anchor of the topmost shape. To do this, use the [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) property.

The following code example shows how to work with the **BoundsInPoints** property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Specify Vertical Anchor

You can specify the text vertical alignment within a shape using the [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) property.

The following code example shows how to work with the **VerticalAnchor** property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Detect SmartArt Shape

Aspose.Words also allows to detect if the Shape has a `SmartArt` object. To do this, use the [has_smart_art property](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) property.

The following code example shows how to work with the **HasSmartArt** property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Insert Horizontal Rule into Document

You can insert horizontal rule shape into a document using the [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) method.

The following code example shows how to do this:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API provides the [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) property to access the properties of the horizontal rule shape. The [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) class exposes basic properties like [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) etc. for the formatting of a horizontal rule.

The following code example demonstrates how to set [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Insert OLE Object as an Icon

Aspose.Words API provides **Shape.insert_ole_object_as_icon** function to insert an embedded or linked OLE object as an icon into the document. This function allows specifying the icon file and the caption. The OLE object type shall be detected using the file extension.

The following code example demonstrates how to set insert OLE object as an Icon into the document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Maximum size of the icon must be 32x32 for the correct display.

{{% /alert %}}

## Import Shapes with Math XML as Shapes into DOM

You can use [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) property to convert the shapes with EquationXML to Office Math objects. The default value of this property corresponds to MS Word behavior i.e. shapes with equation XML are not converted to Office math objects.

The following code example shows how to convert shapes to Office Math objects:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
