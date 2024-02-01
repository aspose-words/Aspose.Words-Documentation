---
title: Как добавить фигуру Group в файл Word
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с фигурой Group в документах Word
linktitle: Работа с фигурой Group в документах Word
description: "Добавьте фигуру группы в документ, используя Python."
type: docs
weight: 290
url: /ru/python-net/how-to-add-group-shape-into-a-word-document/
---

Иногда вам нужно добавить фигуру группы в документ Word. Такая групповая фигура состоит из нескольких фигур.

В Microsoft Word вы можете быстро добавить форму группы с помощью команды/кнопки Group. Отдельную фигуру в группе можно перемещать отдельно.

В Aspose.Words очень легко добавить фигуру группы, используя класс [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Форма создается отдельно с использованием класса [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), а затем добавляется в объект [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) с использованием метода [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

В следующем примере кода показано, как добавить фигуру группы в документ Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Ниже приведены некоторые из `Shape` типов, поддерживаемых в Aspose.Words. Полный список см. в перечислении [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)

- [Rectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#rectangle)
- [RoundRectangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#round_rectangle)
- [Ellipse](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#ellipse)
- [Diamond](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diamond)
- [Triangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#triangle)
- [RightTriangle](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#right_triangle)
- [Parallelogram](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#parallelogram)
- [Trapezoid](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#trapezoid)
- [Hexagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#hexagon)
- [Octagon](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#octagon)

{{% /alert %}}
