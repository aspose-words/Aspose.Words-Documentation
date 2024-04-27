---
title: Добавяне Group Форма в документ с думи
second_title: Aspose.Words вместо Java
articleTitle: Работа с Group Форма в Word Documents
linktitle: Работа с Group Форма в Word Documents
description: "Grouping и разгрупиране форми използване Java."
type: docs
weight: 290
url: /bg/java/how-to-add-group-shape-into-a-word-document/
---

Понякога трябва да добавите group shape в документ на Word. - group shape се състои от множество форми

В Microsoft Word, Можете бързо да добавите group shape с помощта на Group команда/бутон. Индивидуални форми в група могат да бъдат преместени отделно.

В Aspose.Words е много лесно да се добави group shape приложение [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Клас. **Shape** се създава отделно, като се използва [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) клас и след това добавен в [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) Използване на обект [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/groupshape/#appendChild-com.aspose.words.Node) метод.

По- долу са някои от `Shape` вид поддържан в Aspose.Words. За пълен списък, моля посетете [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/):

- Правоъгълен
- RoundRectangle
- RoundRectangle
- Елипса
- Диамант
- Триъгълник
- RightTrigle
- Паралелнаграма
- Трапезоид
- Хексагон
- Октагон

**Example**

*Добави group shape в документ на Word. *


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
