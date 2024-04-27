---
title: כיצד להוסיף Group להפוך ל-Word Document
second_title: Aspose.Words עבור Java
articleTitle: עבודה עם Group טפסים ב- Word Documents
linktitle: עבודה עם Group טפסים ב- Word Documents
description: "Groupצורות ing ו ungrouping באמצעות Java."
type: docs
weight: 290
url: /he/java/how-to-add-group-shape-into-a-word-document/
---

לפעמים צריך להוסיף group shape לתוך מסמך Word. כזה group shape מורכב ממספר צורות

In In In Microsoft Word, אתה יכול להוסיף במהירות group shape באמצעות Group פקודה / Button ניתן להעביר צורות בודדות בקבוצה בנפרד.

In In In Aspose.Words קל מאוד להוסיף group shape שימוש באמצעות [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) מעמד. **Shape** נוצר בנפרד באמצעות [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) השיעור ולאחר מכן הוסיף [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) אובייקט באמצעות [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) שיטה.

הנה כמה `Shape` סוגים נתמך Aspose.Words. לרשימה מלאה אנא בקרו [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Rectangle
- תגית: RoundRectangle
- תגית: RoundRectangle
- אליפס
- יהלום
- משולש
- תגית: RightTriangle
- מקביל
- Traezoid
- Hexagon
- אוקטגון

**Example**

*הוסף group shape לתוך מסמך Word. *


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
