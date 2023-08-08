---
title: Working with Shapes in Java
second_title: Aspose.Words for Java
articleTitle: Working with Shapes
linktitle: Working with Shapes
type: docs
description: "Introduction to shape markup language, creating shapes of different types using Java."
weight: 10
url: /java/working-with-shapes/
---

This topic discusses how to work programmatically with shapes using Aspose.Words.

The shapes in Aspose.Words represent an object in the drawing layer, such as an AutoShape, textbox, freeform, OLE object, ActiveX control, or picture. A Word document can contain one or more different shapes. Shapes of the document are represented by the [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) class.

## Insert Shape Using Document Builder

You can insert inline shape with specified type and size and free-floating shape with the specified position, size and text wrap type into a document using the [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) method. The **InsertShape** method allows inserting DML shape into the document model. The document must be saved in the format, which supports DML shapes, otherwise, such nodes will be converted to VML shape, while document saving.

The following code example shows how to insert these types of shapes into the document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## Set Aspect Ratio Locked

Using Aspose.Words, you can specify whether the shape’s aspect ratio is locked through the [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) property.

The following code example shows how to work with the **AspectRatioLocked** property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## Set Shape Layout In Cell

You can also specify whether the shape is displayed inside a table or outside of it using the [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) property.

The following code example shows how to work with the **IsLayoutInCell** property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## Add Corners Snipped

You can create a snip corner rectangle using Aspose.Words. The shape types are *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped,  TopCornersOneRoundedOneSnipped,  SingleCornerRounded,  TopCornersRounded,*  and *DiagonalCornersRounded.*

The DML shape is created using **InsertShape** method with these shape types. These types cannot be used to create VML shapes. Attempt to create shape by using the public constructor of the "Shape" class raises the "NotSupportedException" exception.

The following code example shows how to insert these type of shapes into the document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## Get Actual Shape Bounds Points

Using Aspose.Words API, you can get the location and size of the shape containing block in points, relative to the anchor of the topmost shape. To do this, use the [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) property.

The following code example shows how to work with the **BoundsInPoints** property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Specify Vertical Anchor

You can specify the text vertical alignment within a shape using the [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) property.

The following code example shows how to work with the **VerticalAnchor** property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## Detect SmartArt Shape

Aspose.Words also allows to detect if the Shape has a SmartArt object. To do this, use the [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) property.

The following code example shows how to work with the **HasSmartArt** property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## Horizontal Rule Format

You can insert horizontal rule shape into a document using the [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) method.

Aspose.Words API provides [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) property to access the properties of the horizontal rule shape. The [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) class exposes basic properties like Height, Color, NoShade etc. for the formatting of a horizontal rule.

The following code example shows how to set **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
