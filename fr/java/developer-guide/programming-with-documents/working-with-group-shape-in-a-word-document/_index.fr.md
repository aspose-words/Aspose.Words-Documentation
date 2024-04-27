---
title: Comment ajouter Group Transformer en document Word
second_title: Aspose.Words pour Java
articleTitle: Travailler avec Group Formes dans les documents Word
linktitle: Travailler avec Group Formes dans les documents Word
description: "Groupet dégrouper les formes en utilisant Java."
type: docs
weight: 290
url: /fr/java/how-to-add-group-shape-into-a-word-document/
---

Parfois vous devez ajouter une group shape dans un document Word. Tellement group shape se compose de formes multiples

En Microsoft Word, vous pouvez ajouter rapidement group shape utilisant les Group commande/bouton. Les formes individuelles d'un groupe peuvent être déplacées séparément.

En Aspose.Words il est très facile d'ajouter un group shape utilisant [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) En cours. **Shape** est créé séparément en utilisant [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe puis ajouté dans [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) objet utilisant [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) méthode.

Voici quelques-uns des `Shape` types supportés dans Aspose.Words. Pour la liste complète, veuillez visiter [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rectangle
- Rectangle rond
- Rectangle rond
- Ellipse
- Diamant
- Triangle
- Triangle droit
- Parallélogramme
- Trapézoïde
- Hexagone
- Octagon

**Example**

*Ajouter une group shape dans un document Word. *


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
