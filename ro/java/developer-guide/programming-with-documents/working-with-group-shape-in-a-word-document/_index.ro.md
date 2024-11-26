---
title: Cum se adaugă Group Shape într-un Document Word
second_title: Aspose.Words pentru Java
articleTitle: Lucrul cu Group Shapes în documente Word
linktitle: Lucrul cu Group Shapes în documente Word
description: "Gruparea și degruparea formelor folosind Java."
type: docs
weight: 290
url: /ro/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Uneori trebuie să adăugați un group shape într-un document Word. Un astfel de group shape este format din mai multe forme.

În Microsoft Word, puteți adăuga rapid un group shape Folosind comanda/butonul de grup. Formele individuale dintr-un grup pot fi mutate separat.

În Aspose.Words este foarte ușor să adăugați un group shape folosind [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) clasă. **Shape** este creat separat folosind clasa [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) și apoi adăugat în obiectul [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) folosind metoda [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

Mai jos sunt câteva dintre tipurile `Shape` acceptate în Aspose.Words. Pentru lista completă, vă rugăm să vizitați [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Dreptunghi
- RoundRectangle
- RoundRectangle
- Elipsă
- Diamant
- Triunghi
- RightTriangle
- Paralelogram
- Trapezoid
- Hexagon
- Octagon

**Exemplu**

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
