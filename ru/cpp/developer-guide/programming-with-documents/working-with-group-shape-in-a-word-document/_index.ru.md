---
title: Как добавить Group Shape в документ Word
second_title: Aspose.Words для C++
articleTitle: Работа с Group Shapes в документах Word
linktitle: Работа с Group Shapes в документах Word
description: "Группировка и разгруппировывание фигур с помощью C++."
type: docs
weight: 290
url: /ru/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Иногда вам нужно добавить group shape в документ Word. Такой group shape состоит из нескольких фигур.

В Microsoft Word вы можете быстро добавить group shape, используя команду/кнопку "Сгруппировать". Отдельные фигуры в группе можно перемещать отдельно.

В Aspose.Words очень просто добавить объект group shape, используя класс [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). Фигура создается отдельно с помощью класса [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), а затем добавляется к объекту **GroupShape** с помощью метода [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

В следующем примере кода показано, как добавить group shape в документ Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Ниже приведены некоторые из типов `Shape`, поддерживаемых в Aspose.Words. Для получения полного списка, пожалуйста, посетите [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Прямоугольник
- Круглый прямоугольник
- Круглый прямоугольник
- Эллипс
- Бриллиант
- Треугольник
- Правильный треугольник
- Параллелограмм
- Трапеция
- Шестиугольник
- Восьмиугольник

{{% /alert %}}
