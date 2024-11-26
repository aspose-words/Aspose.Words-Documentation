---
title: Comment ajouter Group Shape dans un document Word
second_title: Aspose.Words pour Java
articleTitle: Utilisation de Group Shapes dans des documents Word
linktitle: Utilisation de Group Shapes dans des documents Word
description: "Regroupement et dissociation des formes à l'aide de Java."
type: docs
weight: 290
url: /fr/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous devez ajouter un group shape dans un document Word. Un tel group shape se compose de plusieurs formes.

Dans Microsoft Word, vous pouvez rapidement ajouter un group shape à l'aide de la commande/bouton de groupe. Les formes individuelles d'un groupe peuvent être déplacées séparément.

Dans Aspose.Words, il est très facile d'ajouter un group shape en utilisant la classe [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). **Shape** est créé séparément à l'aide de la classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), puis ajouté dans l'objet [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) à l'aide de la méthode [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

Voici quelques-uns des types `Shape` pris en charge dans Aspose.Words. Pour la liste complète, veuillez visiter [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rectangle
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamant
- Triangle
- RightTriangle
- Parallélogramme
- Trapèze
- Hexagone
- Octogone

**Exemple**

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
