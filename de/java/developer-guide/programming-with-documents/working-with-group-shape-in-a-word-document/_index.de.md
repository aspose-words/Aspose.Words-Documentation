---
title: So fügen Sie Group Shape in ein Word-Dokument ein
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Group Shapes in Word-Dokumenten
linktitle: Arbeiten mit Group Shapes in Word-Dokumenten
description: "Gruppieren und Aufheben der Gruppierung von Formen mit Java."
type: docs
weight: 290
url: /de/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Manchmal müssen Sie einem Word-Dokument eine group shape hinzufügen. Eine solche group shape besteht aus mehreren Formen.

In Microsoft Word können Sie mit dem Gruppenbefehl / der Schaltfläche schnell eine group shape hinzufügen. Einzelne Formen in einer Gruppe können separat verschoben werden.

In Aspose.Words ist es sehr einfach, eine group shape mit der [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) -Klasse hinzuzufügen. **Shape** wird separat mit der Klasse [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) erstellt und dann mit der Methode [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) zum Objekt [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) hinzugefügt.

Nachfolgend sind einige der `Shape`-Typen aufgeführt, die in Aspose.Words unterstützt werden. Für eine vollständige Liste besuchen Sie bitte [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rechteck
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamond
- Dreieck
- RightTriangle
- Parallelogramm
- Trapezförmig
- Sechseck
- Octagon

**Beispiel**

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
