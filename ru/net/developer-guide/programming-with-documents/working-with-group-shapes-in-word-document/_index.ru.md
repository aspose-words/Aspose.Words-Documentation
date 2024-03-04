---
title: Как добавить фигуру Group в документ Word
second_title: Aspose.Words для .NET
articleTitle: Как добавить фигуру Group в документ Word
linktitle: Работа с Group фигурами в документах Word
description: "Group Объединение и разгруппирование фигур с помощью C#."
type: docs
weight: 290
url: /ru/net/how-to-add-group-shape-into-a-word-document/
---

Иногда вам нужно добавить фигуру группы в документ Word. Такая групповая фигура состоит из нескольких фигур.

В Microsoft Word вы можете быстро добавить форму группы с помощью команды/кнопки Group. Отдельную фигуру в группе можно перемещать отдельно.

В Aspose.Words очень легко добавить фигуру группы, используя класс [GroupShape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/groupshape/). **Shape** создается отдельно с помощью класса [Shape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shape/), а затем добавляется к объекту [GroupShape](https://reference.aspose.com/words/ru/net/aspose.words.drawing/groupshape/) с помощью метода [AppendChild](https://reference.aspose.com/words/ru/net/aspose.words/compositenode/appendchild/).

В следующем примере кода показано, как добавить фигуру группы в документ Word:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

Ниже приведены некоторые типы `Shape`, поддерживаемые в Aspose.Words:

- Прямоугольник
- КруглыйПрямоугольный
- КруглыйПрямоугольный
- Эллипс
- Алмаз
- Треугольник
- Прямоугольный треугольник
- Параллелограмм
- Трапеция
- Шестиугольник
- Октагон

Полный список можно найти в классе [ShapeType](https://reference.aspose.com/words/ru/net/aspose.words.drawing/shapetype).

{{% /alert %}}