---
title: Как добавить Group Shape в файл Word
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с Group Shape в документах Word
linktitle: Работа с Group Shape в документах Word
description: "Добавьте group shape в документ, используя Python."
type: docs
weight: 290
url: /ru/python-net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Иногда вам нужно добавить group shape в документ Word. Такой group shape состоит из нескольких фигур.

В поле Microsoft Word вы можете быстро добавить group shape, используя команду/кнопку "Сгруппировать". Отдельную фигуру в группе можно перемещать отдельно.

В Aspose.Words очень просто добавить group shape, используя класс [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Фигура создается отдельно с помощью класса [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), а затем добавляется в объект [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) с помощью метода [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

В следующем примере кода показано, как добавить group shape в документ Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddGroupShape.py" >}}

{{% alert color="primary" %}}

Ниже приведены некоторые из типов `Shape`, поддерживаемых в Aspose.Words. Полный список приведен в разделе [aspose.words.drawing.ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/) перечисление

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
