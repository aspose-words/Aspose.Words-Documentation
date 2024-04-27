---
title: Jak přidat Group Vytvořit slovní dokument
second_title: Aspose.Words místo Java
articleTitle: Práce s Group Tvary v textových dokumentech
linktitle: Práce s Group Tvary v textových dokumentech
description: "Grouping a odkupovací tvary používající Java."
type: docs
weight: 290
url: /cs/java/how-to-add-group-shape-into-a-word-document/
---

Někdy musíte přidat group shape do Word dokumentu. Takový group shape sestává z více tvarů

In Microsoft Word, můžete rychle přidat group shape s použitím Group příkaz/tlačítko. Jednotlivé tvary ve skupině lze pohybovat samostatně.

In Aspose.Words je velmi snadné přidat a group shape podání [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) třída. **Shape** je vytvořen samostatně pomocí [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) třída a poté přidána [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) pomocí objektu [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) metoda.

Níže jsou uvedeny některé z `Shape` typy podporované v Aspose.Words. Pro kompletní seznam prosím navštivte [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Obdélník
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamond
- Trojúhelník
- Pravý trojúhelník
- Parallelogram
- Trapezoid
- Hexagon
- Oktagon

**Example**

* Přidej group shape do Word dokumentu. *


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
