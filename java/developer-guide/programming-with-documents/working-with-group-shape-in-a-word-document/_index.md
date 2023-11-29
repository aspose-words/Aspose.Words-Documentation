---
title: How to Add Group Shape into a Word Document
second_title: Aspose.Words for Java
articleTitle: Working with Group Shapes in Word Documents
linktitle: Working with Group Shapes in Word Documents
description: "Grouping and ungrouping shapes using Java."
type: docs
weight: 290
url: /java/how-to-add-group-shape-into-a-word-document/
---

Sometimes you need to add a group shape into a Word document. Such a group shape consists of multiple shapes. 

In Microsoft Word, you can quickly add a group shape using the Group command/button. Individual shapes in a group can be moved separately.

In Aspose.Words it is very easy to add a group shape using [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) class. **Shape** is created separately using [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) class and then added in [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) object using [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) method.

Below are some of the Shape types supported in Aspose.Words. For complete list, please visit [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

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

**Example**

*Add a group shape into a Word document.*


{{< highlight csharp >}}
package AddGroupShape;
import Aspose.Words.*;
import Aspose.Words.Drawing.*;
import Aspose.Words.Fields.*;
public class Program
{
	public static void main(String[] args)
	{
		Aspose.Words.Document doc = new Aspose.Words.Document();
	        doc.EnsureMinimum();
		GroupShape gs = new GroupShape(doc);
		Aspose.Words.Drawing.Shape shape = new Aspose.Words.Drawing.Shape(doc, Aspose.Words.Drawing.ShapeType.AccentBorderCallout1);
		shape.Width = 100;
		shape.Height = 100;
		gs.AppendChild(shape);
		Aspose.Words.Drawing.Shape shape1 = new Aspose.Words.Drawing.Shape(doc, Aspose.Words.Drawing.ShapeType.ActionButtonBeginning);
		shape1.Left = 100;
		shape1.Width = 100;
		shape1.Height = 200;
		gs.AppendChild(shape1);
	        gs.Width = 200;
		gs.Height = 200;
		gs.CoordSize = new System.Drawing.Size(200, 200);
		DocumentBuilder builder = new DocumentBuilder(doc);
		builder.InsertNode(gs);
		doc.Save("c:\\TestFile.docx");
	}
}
{{< /highlight >}}
