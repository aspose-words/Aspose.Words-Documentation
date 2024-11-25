---
title: چگونه Group Shape را به یک سند ورد اضافه کنیم
second_title: Aspose.Words برای Java
articleTitle: کار با Group Shapes در اسناد ورد
linktitle: کار با Group Shapes در اسناد ورد
description: "گروه بندی و غیر گروه بندی اشکال با استفاده از Java."
type: docs
weight: 290
url: /fa/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات شما نیاز به اضافه کردن یک group shape به یک سند ورد دارید. چنین group shape از اشکال مختلف تشکیل شده است.

در Microsoft Word، شما می توانید به سرعت یک group shape با استفاده از دستور/دکمه گروه اضافه کنید. اشکال فردی در یک گروه را می توان به طور جداگانه جابجا کرد.

در Aspose.Words اضافه کردن group shape با استفاده از [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) کلاس بسیار آسان است. **Shape** به طور جداگانه با استفاده از [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) کلاس ایجاد می شود و سپس در [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) شی با استفاده از [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) روش اضافه می شود.

در زیر برخی از انواع `Shape` پشتیبانی شده در Aspose.Words آورده شده است. برای لیست کامل، لطفا به [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)مراجعه کنید:

- مستطیل
- RoundRectangle
- RoundRectangle
- بیضوی
- الماس
- مثلث
- RightTriangle
- موازی
- ذوزنقه
- شش ضلعی
- هشت ضلعی

**مثال**

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
