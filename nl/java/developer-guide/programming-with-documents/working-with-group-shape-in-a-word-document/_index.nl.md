---
title: Hoe toe te voegen Group Vorm in een Word-document
second_title: Aspose.Words voor Java
articleTitle: Werken met Group Vormen in Word-documenten
linktitle: Werken met Group Vormen in Word-documenten
description: "Group• het gebruik van bepaalde vormen Java."
type: docs
weight: 290
url: /nl/java/how-to-add-group-shape-into-a-word-document/
---

Soms moet je een group shape in een Word-document. Zo'n group shape bestaat uit meerdere vormen

In Microsoft Word, u kunt snel een group shape de Group commando/knop. Individuele vormen in een groep kunnen apart worden verplaatst.

In Aspose.Words het is zeer gemakkelijk om een group shape gebruik [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Klasse. **Shape** afzonderlijk wordt aangemaakt met behulp van [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasse en vervolgens toegevoegd aan [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) object gebruiken [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) methode.

Hieronder zijn enkele van de `Shape` type ondersteund in Aspose.Words. Voor een volledige lijst, bezoek [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rechthoek
- ronde rechthoek
- ronde rechthoek
- Ellips
- Diamant
- Driehoek
- Rechtsdriehoek
- Parallellogram
- Trapezoïde
- Hexagon
- Octagon

**Example**

*Add a group shape in een Word-document. *


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
