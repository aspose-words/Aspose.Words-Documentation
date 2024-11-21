---
title: Як додати Group Форма в документ Word
second_title: Aspose.Words для Java
articleTitle: Робота з Group Види у документах Word
linktitle: Робота з Group Види у документах Word
description: "Groupінг і негрупування форм за допомогою Javaй"
type: docs
weight: 290
url: /uk/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Іноді потрібно додати group shape у документ Word. Таке group shape складається з декількох форм

У Microsoft Word, Ви можете швидко додати group shape використання Group команд/буттон. Індивідуальні форми в групі можуть переміщатися окремо.

У Aspose.Words дуже легко додати group shape використання [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) клас. **Shape** створюється окремо [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) клас і потім додано в [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) об'єкт за допомогою [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) метод.

Нижче наведено деякі з `Shape` види, що підтримуються Aspose.Wordsй Для повного списку, будь ласка, відвідайте [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- прямокутник
- Круглий прямокутник
- Круглий прямокутник
- Елліпс
- Алмаз
- Трикутник
- ПравоТрикутник
- Паралелограма
- Трапеція
- Хексагон
- Октагон

**Example**

*Додати group shape у документ Word. Ім'я *


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
