---
title: Как добавить Group Форма в файл Word
second_title: Aspose.Words для Python via .NET
articleTitle: Работать с Group Форма в документах Word
linktitle: Работать с Group Форма в документах Word
description: "Добавить group shape В документе, использующем Python."
type: docs
weight: 290
url: /ru/python-net/how-to-add-group-shape-into-a-word-document/
---

Иногда вам нужно добавить group shape В виде документа Word. Такой group shape состоит из нескольких форм.

В Microsoft Word, Вы можете быстро добавить group shape используя Group Команда/кнопка. Индивидуальная форма в группе может перемещаться отдельно.

В Aspose.Words Очень легко добавить group shape использовать [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) класс. Форма создается отдельно с использованием [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) класс, а затем добавить в [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) объект используя [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) метод.

Следующий пример кода показывает, как добавить group shape В документе Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Ниже приведены некоторые из `Shape` Поддерживаемые типы Aspose.Words. Полный список, пожалуйста, смотрите [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) перечисление

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
