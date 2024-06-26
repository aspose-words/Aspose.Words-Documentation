---
title: Как добавить Group Форма в документ Word
second_title: Aspose.Words для Java
articleTitle: Работать с Group Формы в документах Word
linktitle: Работать с Group Формы в документах Word
description: "GroupИнг и негруппирующие формы с использованием Java."
type: docs
weight: 290
url: /ru/java/how-to-add-group-shape-into-a-word-document/
---

Иногда вам нужно добавить group shape В виде документа Word. Такой group shape состоит из нескольких форм

В Microsoft Word, Вы можете быстро добавить group shape используя Group Команда/кнопка. Индивидуальные формы в группе могут перемещаться отдельно.

В Aspose.Words Очень легко добавить group shape использовать [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) класс. **Shape** Создается отдельно с использованием [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) класс, а затем добавить в [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) объект используя [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) метод.

Ниже приведены некоторые из `Shape` Поддерживаемые типы Aspose.Words. Для полного списка, пожалуйста, посетите [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Прямоугольник
- Круглый прямоугольник
- Круглый прямоугольник
- Эллипс
- Бриллиант
- Треугольник
- Правый Треугольник
- Параллелограмма
- Трапезоид
- Гексагон
- Октагон

**Example**

*Добавить group shape В виде документа Word. *


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
