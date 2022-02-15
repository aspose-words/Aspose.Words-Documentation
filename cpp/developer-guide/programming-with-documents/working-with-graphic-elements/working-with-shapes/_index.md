---
title: Working with Shapes in C++
articleTitle: Working with Shapes
linktitle: Working with Shapes
type: docs
weight: 280
url: /cpp/working-with-shapes/
---

## Shapes in Aspose.Words

This topic discusses how to work programmatically with shapes using Aspose.Words. The shapes in Aspose.Words represent an object in the drawing layer, such as an AutoShape, textbox, freeform, OLE object, ActiveX control, or picture. A Word document can contain one or more different shapes.  Shapes of the document are represented by the Shape class.

### Insert Shape Using Document Builder

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

### Set Aspect Ratio Locked

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

### Set Shape Layout In Cell

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

### Add Corners Snipped

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

### Get Actual Shape Bounds Points

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

### Horizontal Rule Format

Aspose.Words API provides Shape.HorizontalRuleFormat property to access the properties of the horizontal rule shape. The HorizontalRuleFormat class exposes basic properties like Height, Color, Shade, etc. for the formatting of a horizontal rule. The following code example demonstrates how to set HorizontalRuleFormat.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

### Insert OLE Object as an Icon

Aspose.Words API provides Shape->InsertOleObjectAsIcon function to insert an embedded or linked OLE object as an icon into the document. This function allows specifying the icon file and the caption. The OLE object type shall be detected using the file extension. The following code example demonstrates how to set insert OLE object as an Icon into the document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Maximum size of the icon must be 32x32 for the correct display.

{{% /alert %}}
