---
title: كيفية إضافة Group Shape إلى مستند ورد
second_title: Aspose.Words ل Java
articleTitle: العمل مع Group Shapes في مستندات ورد
linktitle: العمل مع Group Shapes في مستندات ورد
description: "تجميع وفك تجميع الأشكال باستخدام Java."
type: docs
weight: 290
url: /ar/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

في بعض الأحيان تحتاج إلى إضافة group shape إلى مستند ورد. يتكون هذا group shape من أشكال متعددة.

في Microsoft Word، يمكنك إضافة group shape بسرعة باستخدام أمر/زر المجموعة. يمكن نقل الأشكال الفردية في المجموعة بشكل منفصل.

في Aspose.Words من السهل جدا إضافة group shape باستخدام [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) فئة. يتم إنشاء **Shape** بشكل منفصل باستخدام فئة [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ثم يتم إضافتها في [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) كائن باستخدام طريقة [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

فيما يلي بعض أنواع `Shape` المدعومة في Aspose.Words. للحصول على قائمة كاملة، يرجى زيارة [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- مستطيل
- RoundRectangle
- RoundRectangle
- القطع الناقص
- الماس
- المثلث
- RightTriangle
- متوازي الاضلاع
- شبه منحرف
- مسدس
- المثمن

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
