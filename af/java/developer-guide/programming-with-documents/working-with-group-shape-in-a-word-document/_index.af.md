---
title: Hoe om Group Shape By'n Word-Dokument Te Voeg
second_title: Aspose.Words vir Java
articleTitle: Werk met Group Shapes in Word-Dokumente
linktitle: Werk met Group Shapes in Word-Dokumente
description: "Groepering en ongroepering vorms met behulp van Java."
type: docs
weight: 290
url: /af/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Soms moet jy'n group shape by'n Word-dokument voeg. So'n group shape bestaan uit verskeie vorms.

In Microsoft Word kan jy vinnig'n group shape byvoeg deur die Groepopdrag/knoppie te gebruik. Individuele vorms in'n groep kan afsonderlik verskuif word.

In Aspose.Words is dit baie maklik om'n group shape te voeg met behulp van [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) klas. **Shape** word afsonderlik geskep met behulp van [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klas en dan bygevoeg in [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) voorwerp met behulp van [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) metode.

Hieronder is'n paar van die `Shape` tipes ondersteun in Aspose.Words. Vir volledige lys, besoek asseblief [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Reghoek
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamant
- Driehoek
- RightTriangle
- Parallelogram
- Trapezium
- Seshoek
- Oktagon

**Voorbeeld**

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
