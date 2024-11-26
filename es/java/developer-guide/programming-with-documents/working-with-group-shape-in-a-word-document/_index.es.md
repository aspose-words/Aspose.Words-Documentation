---
title: Cómo Agregar Group Shape a un documento de Word
second_title: Aspose.Words por Java
articleTitle: Trabajar con Group Shapes en Documentos de Word
linktitle: Trabajar con Group Shapes en Documentos de Word
description: "Agrupar y desagrupar formas usando Java."
type: docs
weight: 290
url: /es/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

A veces es necesario agregar un group shape en un documento de Word. Tal group shape consta de múltiples formas.

En Microsoft Word, puede agregar rápidamente un group shape usando el comando/botón de Grupo. Las formas individuales de un grupo se pueden mover por separado.

En Aspose.Words es muy fácil agregar un group shape usando la clase [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). **Shape** se crea por separado usando la clase [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) y luego se agrega en el objeto [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) usando el método [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

A continuación se muestran algunos de los `Shape` tipos admitidos en Aspose.Words. Para ver la lista completa, visite [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rectángulo
- RoundRectangle
- RoundRectangle
- Elipse
- Diamante
- Triángulo
- RightTriangle
- Paralelogramo
- Trapecio
- Hexágono
- Octágono

**Ejemplo**

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
