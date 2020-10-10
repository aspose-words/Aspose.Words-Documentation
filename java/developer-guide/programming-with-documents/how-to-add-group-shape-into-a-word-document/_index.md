---
title: How to Add Group Shape into a Word Document
type: docs
weight: 310
url: /java/how-to-add-group-shape-into-a-word-document/
---

Sometimes you need to add a group shape into a Word document. In Microsoft Word, you can quickly add a group shape using Group command/button. A group shape consists of multiple shapes. Individual shape in a group can be moved separately.

In Aspose.Words it is very easy to add a group shape using [GroupShape](http://www.aspose.com/api/java/words/com.aspose.words/classes/GroupShape) class. Shape is created separately using [Shape](http://www.aspose.com/api/java/words/com.aspose.words/classes/Shape) class and then added in [GroupShape](http://www.aspose.com/api/java/words/com.aspose.words/classes/GroupShape) object using [AppendChild](http://www.aspose.com/api/java/words/com.aspose.words/classes/groupshape/methods/appendChild\(com.aspose.words.Node\)/) method.

Below are some of the Shape types supported in Aspose.Words. For complete list, please visit [ShapeType](http://www.aspose.com/api/java/words/com.aspose.words/constants/ShapeType)

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
