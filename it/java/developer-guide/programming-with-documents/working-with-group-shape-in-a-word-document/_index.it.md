---
title: Come aggiungere Group Shape in un documento di Word
second_title: Aspose.Words per Java
articleTitle: Utilizzo di Group Shapes in documenti Word
linktitle: Utilizzo di Group Shapes in documenti Word
description: "Raggruppare e separare le forme usando Java."
type: docs
weight: 290
url: /it/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario aggiungere un group shape in un documento di Word. Tale group shape è costituito da più forme.

In Microsoft Word, è possibile aggiungere rapidamente un group shape usando il comando/pulsante di gruppo. Le singole forme di un gruppo possono essere spostate separatamente.

In Aspose.Words è molto facile aggiungere un group shape usando la classe [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). **Shape** viene creato separatamente usando la classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) e poi aggiunto nell'oggetto [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) usando il metodo [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

Di seguito sono riportati alcuni dei tipi `Shape` supportati in Aspose.Words. Per l'elenco completo, visitare [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rettangolo
- RoundRectangle
- RoundRectangle
- Ellisse
- Diamante
- Triangolo
- RightTriangle
- Parallelogramma
- Trapezio
- Esagono
- Octagon

**Esempio**

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
