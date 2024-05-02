---
title: Cómo añadir Group Forma en un documento de Word
second_title: Aspose.Words para Java
articleTitle: Trabajando con Group Formas en documentos de palabras
linktitle: Trabajando con Group Formas en documentos de palabras
description: "Groupformas de ing y sin agrupación usando Java."
type: docs
weight: 290
url: /es/java/how-to-add-group-shape-into-a-word-document/
---

A veces necesitas añadir un group shape en un documento de Word. Tal group shape consiste en múltiples formas

In Microsoft Word, puede agregar rápidamente group shape usando el Group comando/button. Las formas individuales en un grupo se pueden mover por separado.

In Aspose.Words es muy fácil añadir un group shape utilizando [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) clase. **Shape** se crea por separado [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) clase y luego agregado [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) objeto utilizando [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) método.

A continuación, algunos de los `Shape` tipos apoyados en Aspose.Words. Para lista completa, visite [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rectángulo
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamante
- Triángulo
- RightTriángulo
- Parallelograma
- Trapezoide
- Hexagon
- Octagon

**Example**

*Add a group shape en un documento de Word. *


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
