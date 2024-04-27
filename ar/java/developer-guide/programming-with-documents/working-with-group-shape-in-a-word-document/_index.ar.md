---
title: How to Add Group نشارك في وثيقة كلمة
second_title: Aspose.Words for Java
articleTitle: العمل مع Group Shapes in Word Documents
linktitle: العمل مع Group Shapes in Word Documents
description: "Grouping and ungrouping shapes using Java."
type: docs
weight: 290
url: /ar/java/how-to-add-group-shape-into-a-word-document/
---

أحياناً عليك أن تضيف group shape في وثيقة كلمة من هذا القبيل group shape تتألف من أشكال متعددة

In Microsoft Word, يمكنك أن تضيف بسرعة group shape استخدام Group القيادة/البوتون ويمكن نقل الأشكال الفردية في المجموعة بصورة منفصلة.

In Aspose.Words من السهل جداً إضافة group shape استخدام [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) الصف **Shape** يُنشأ بشكل منفصل باستخدام [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) ثم أضيف [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) استخدام الجسم [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) طريقة

بعض من `Shape` الأنواع المدعومة Aspose.Words. للقائمة الكاملة، يرجى زيارة [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rectangle
-دور ريكتنغ
-دور ريكتنغ
- إلليبسي
- الماس
- المثلث
- يمين -
- الموازية
- Trapezoid
- Hexagon
- أوكتاغون

**Example**

* group shape في وثيقة كلمة ♪


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
