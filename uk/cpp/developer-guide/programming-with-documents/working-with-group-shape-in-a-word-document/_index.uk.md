---
title: Як додати Group Shape до документа Word
second_title: Aspose.Words для C++
articleTitle: Робота з Group Shapes в Word документах
linktitle: Робота з Group Shapes в Word документах
description: "Групування та розгрупування фігур за допомогою C++."
type: docs
weight: 290
url: /uk/cpp/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

Іноді потрібно додати group shape до документа Word. Такий group shape складається з декількох фігур.

У полі Microsoft Word ви можете швидко додати group shape за допомогою команди/кнопки "згрупувати". Окрему фігуру в групі можна переміщати окремо.

У Aspose.Words дуже просто додати об'єкт group shape, використовуючи клас [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/). Фігура створюється окремо за допомогою класу [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/), а потім додається до об'єкта **GroupShape** за допомогою методу [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/).

Наступний приклад коду показує, як додати group shape до документа Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cpp" >}}

{{% alert color="primary" %}}

Нижче наведено деякі типи `Shape`, які підтримуються в Aspose.Words. Для отримання повного списку, будь ласка, відвідайте [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/):

- Прямокутник
- RoundRectangle
- RoundRectangle
- Еліпс
- Діамант
- Трикутник
- RightTriangle
- Паралелограм
- Трапеція
- Шестикутник
- Восьмикутник

{{% /alert %}}
