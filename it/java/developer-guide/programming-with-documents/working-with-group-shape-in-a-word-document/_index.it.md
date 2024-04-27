---
title: Come Aggiungere Group Forma in un documento di Word
second_title: Aspose.Words per Java
articleTitle: Lavorare con Group Forme in documenti di Word
linktitle: Lavorare con Group Forme in documenti di Word
description: "Grouping e forme di raggruppamento utilizzando Java."
type: docs
weight: 290
url: /it/java/how-to-add-group-shape-into-a-word-document/
---

A volte è necessario aggiungere un group shape in un documento di Word. Questo group shape consiste di forme multiple

In Microsoft Word, si può aggiungere rapidamente group shape usando Group comando / pulsante. Le forme individuali in un gruppo possono essere spostate separatamente.

In Aspose.Words è molto facile da aggiungere group shape usando [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) classe. **Shape** è creato separatamente usando [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe e poi aggiunto in [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) oggetto utilizzando [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) metodo.

Qui di seguito sono alcuni dei `Shape` tipi supportati in Aspose.Words. Per l'elenco completo, visitare [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rettifica
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamante
- Triangolo
- RightTriangle
- Parallelogramma
- Trapezoide
- Hexagon
- Octagon

**Example**

*Add a group shape in un documento di Word. #


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
