---
title: چگونه اضافه کنیم Group شکل دادن به یک Word Document
second_title: Aspose.Words برای Java
articleTitle: کار با Group شکل در Word Files
linktitle: کار با Group شکل در Word Files
description: "Groupشکل های غیر گروهی با استفاده از Java..."
type: docs
weight: 290
url: /fa/java/how-to-add-group-shape-into-a-word-document/
---

گاهی اوقات باید اضافه کنید group shape در یک سند Word چنین group shape شامل چندین شکل است

In In In Microsoft Word, شما می توانید به سرعت اضافه کنید group shape استفاده از Group فرمان / دکمه شکل های فردی در یک گروه می تواند به طور جداگانه منتقل شود.

In In In Aspose.Words بسیار آسان است برای اضافه کردن یک group shape استفاده از [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) کلاس **Shape** به طور جداگانه با استفاده از [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) کلاس و سپس اضافه شده در [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) استفاده از Object [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) روش

در زیر برخی از `Shape` انواع پشتیبانی شده در Aspose.Words... برای لیست کامل، لطفا بازدید کنید [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- – Rectangle
- RoundRectangle
- RoundRectangle
- Ellipse
- الماس
- مثلث
- ۳- RightTriangle
- Parallelogram
- تلهezoid
- Hexagon
- | Octagon

**Example**

* اضافه کردن group shape در یک سند Word *


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
