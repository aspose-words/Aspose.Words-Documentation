---
title: Як додати Group Форма в файл Word
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з Group Форма в документах Word
linktitle: Робота з Group Форма в документах Word
description: "Додати group shape в документ, що використовує Pythonй"
type: docs
weight: 290
url: /uk/python-net/how-to-add-group-shape-into-a-word-document/
---

Іноді потрібно додати group shape у документ Word. Такий group shape складається з декількох форм.

У Microsoft Word, Ви можете швидко додати group shape використання Group команда/буттон. Окрему форму в групі можна переміщати окремо.

У Aspose.Words дуже легко додати group shape використання [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) клас. Форма створюється окремо [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас і потім додано в [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) об'єкт за допомогою [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод.

Приклад наступного коду показує, як додати group shape у документ Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Нижче наведено деякі з `Shape` типи, що підтримуються Aspose.Wordsй Для повного списку див. [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) акумуляція

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
