---
title: Как добавить Group Shape в документ Word
second_title: Aspose.Words для Java
articleTitle: Работа с Group Shapes в документах Word
linktitle: Работа с Group Shapes в документах Word
description: "Группировка и разгруппировывание фигур с помощью Java."
type: docs
weight: 290
url: /ru/java/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Иногда вам нужно добавить group shape в документ Word. Такой group shape состоит из нескольких фигур.

В поле Microsoft Word вы можете быстро добавить group shape, используя команду/кнопку Сгруппировать. Отдельные фигуры в группе можно перемещать по отдельности.

В Aspose.Words очень просто добавить group shape, используя класс [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/). **Shape** создается отдельно с помощью класса [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/), а затем добавляется в объект [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) с помощью метода [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node).

Ниже приведены некоторые из типов `Shape`, поддерживаемых в Aspose.Words. Для получения полного списка, пожалуйста, посетите [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Прямоугольник
- RoundRectangle
- RoundRectangle
- Эллипс
- Бриллиант
- Треугольник
- RightTriangle
- Параллелограмм
- Трапеция
- Шестиугольник
- Восьмиугольник

**Пример**

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
