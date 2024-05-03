---
title: Jak dodać Group Kształtuj w dokumencie słownym
second_title: Aspose.Words zamiast Java
articleTitle: Praca z Group Kształty w dokumentach słownych
linktitle: Praca z Group Kształty w dokumentach słownych
description: "Groupformowanie i odgrupowanie kształtów przy użyciu Java."
type: docs
weight: 290
url: /pl/java/how-to-add-group-shape-into-a-word-document/
---

Czasami trzeba dodać group shape do dokumentu Worda. Takie group shape składa się z wielu kształtów

W Microsoft Word, można szybko dodać group shape stosowania Group polecenie / przycisk. Indywidualne kształty w grupie mogą być przesuwane oddzielnie.

W Aspose.Words bardzo łatwo jest dodać group shape stosowanie [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Klasa. **Shape** jest tworzony oddzielnie za pomocą [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) klasa, a następnie dodany [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) obiekt [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) Metoda.

Poniżej znajdują się niektóre z `Shape` typy obsługiwane w Aspose.Words. Aby uzyskać pełną listę, odwiedź [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Prostokąt
- RoundProstangle
- RoundProstangle
- Ellipse
- Diamond
- Trójkąt
- RightTriangle
- Parallelogram
- Trapezoid
- Sześciokąt
- Oktagon

**Example**

* Dodaj group shape do dokumentu Worda. *


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
