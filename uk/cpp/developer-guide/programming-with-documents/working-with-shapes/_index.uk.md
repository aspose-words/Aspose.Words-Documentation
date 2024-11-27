---
title: Робота з фігурами в C++
second_title: Aspose.Words для C++
articleTitle: Робота з формами
linktitle: Робота з формами
type: docs
description: "Знайомство з мовою розмітки фігур, створення фігур різних типів за допомогою C++."
weight: 280
url: /uk/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

У цьому розділі обговорюється, як програмно працювати з фігурами, використовуючи Aspose.Words.

Фігури в Aspose.Words представляють об'єкт на рівні малювання, такий як AutoShape, текстове поле, довільна форма, об'єкт OLE, елемент керування ActiveX або зображення. Документ Word може містити одну або кілька різних фігур. Форми документа представлені класом [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Вставка фігури за допомогою конструктора документів

Ви можете вставити в документ вбудовану фігуру із зазначеним типом і розміром, а також вільно переміщається фігуру із зазначеним Положенням, розміром і типом перенесення тексту, використовуючи метод [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Метод **InsertShape** дозволяє вставити фігуру DML в модель документа. Документ повинен бути збережений у форматі, що підтримує форми DML, інакше такі вузли будуть перетворені у форму VML при збереженні документа.

Наступний приклад коду показує, як вставити ці типи фігур у документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Встановіть фіксоване співвідношення сторін

Використовуючи Aspose.Words, ви можете вказати, чи буде зафіксовано співвідношення сторін фігури за допомогою властивості [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Наступний приклад коду показує, як працювати з властивістю **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Встановіть Розташування Фігури В Осередку

Ви також можете вказати, чи буде фігура відображатися всередині таблиці або поза нею, використовуючи властивість [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Наступний приклад коду показує, як працювати з властивістю **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Створіть прямокутник з відрізаним кутом

Ви можете створити прямокутник з відрізаним кутом, використовуючи Aspose.Words. Типи фігур - *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* і *DiagonalCornersRounded.*

Фігура DML створюється методом **InsertShape** за допомогою цих типів фігур. Ці типи не можуть бути використані для створення фігур VML. Спроба створити фігуру за допомогою відкритого конструктора класу " Shape "призводить до виникнення винятку"NotSupportedException".

Наступний приклад коду показує, як вставити фігури такого типу в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Отримайте реальні точки кордонів форми

Використовуючи Aspose.Words API, ви можете отримати розташування та розмір Фігури, що містить блок, у точках відносно прив'язки найвищої фігури. Для цього використовуйте властивість [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Наступний приклад коду показує, як працювати з властивістю **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Формат горизонтального правила

Aspose.Words API надає властивість [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) для доступу до властивостей форми горизонтального правила. Клас **HorizontalRuleFormat** надає базові властивості, такі як висота, колір, відтінок і т.д. для форматування горизонтального правила.

Наступний приклад коду показує, як встановити **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Вставити об'єкт OLE як значок

Aspose.Words API надає функцію **Shape** → **InsertOleObjectAsIcon** для вставки вбудованого або пов'язаного об'єкта OLE Як значка в документ. Ця функція дозволяє вказати файл значка і підпис до нього. Тип об'єкта `OLE` визначається по розширенню файлу.

Наступний приклад коду показує, як встановити об'єкт insert OLE як піктограму в документі:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Для коректного відображення максимальний розмір значка повинен становити 32х32 дюйма.

{{% /alert %}}
