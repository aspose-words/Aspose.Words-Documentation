---
title: Wie man hinzufügt Group Form in ein Word-Dokument
second_title: Aspose.Words für Java
articleTitle: Arbeiten mit Group Formen in Word-Dokumenten
linktitle: Arbeiten mit Group Formen in Word-Dokumenten
description: "Grouping und ungrouping Formen mit Java."
type: docs
weight: 290
url: /de/java/how-to-add-group-shape-into-a-word-document/
---

Manchmal muss man ein group shape in ein Word-Dokument. Eine solche group shape besteht aus mehreren Formen

In Microsoft Word, Sie können schnell hinzufügen group shape Verwendung von Group Befehl/Taste. Einzelne Formen in einer Gruppe können separat bewegt werden.

In Aspose.Words es ist sehr einfach, ein group shape Verwendung [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Klasse. **Shape** wird separat mit [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Klasse und dann in [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Objekt verwenden [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) Methode.

Unten sind einige der `Shape` unterstützte Typen Aspose.Words. Für vollständige Liste, bitte besuchen [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rechteck
- RoundRectangle
- RoundRectangle
- Ellipse
- Diamant
- Dreieck
- Das rechte Dreieck
- Parallelogramm
- Trapezoid
- Hexagon
- Oktagon

**Example**

*Einfügen eines group shape in ein Word-Dokument. *


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
