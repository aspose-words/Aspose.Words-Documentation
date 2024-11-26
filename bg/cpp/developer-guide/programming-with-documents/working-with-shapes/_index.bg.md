---
title: Работа с фигури в C++
second_title: Aspose.Words за C++
articleTitle: Работа с форми
linktitle: Работа с форми
type: docs
description: "Въведение в езика за маркиране на форми, създаване на форми от различни видове, използвайки C++."
weight: 280
url: /bg/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Тази тема обсъжда как да се работи програмно с форми, използващи Aspose.Words.

Фигурите в Aspose.Words представляват обект в чертожния слой, като например AutoShape, текстово поле, свободна форма, OLE обект, контрола Активекс или картина. Документ Word може да съдържа една или повече различни фигури. Формите на документа са представени от клас [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Вмъкване На Фигура С Помощта На Конструктор На Документи

Можете да вмъкнете вградена фигура с определен тип и размер и свободно плаваща фигура с определена позиция, размер и тип на обтичане на текст в документ, като използвате метода [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Методът **InsertShape** позволява вмъкване на DML фигура в модела на документа. Документът трябва да бъде записан във формат, който поддържа DML фигури, в противен случай такива възли ще бъдат преобразувани във Фигура VML, докато документът се записва.

Следващият пример за код показва как да вмъкнете тези типове фигури в документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Зададено Съотношение Заключено

Използвайки Aspose.Words, можете да укажете дали пропорцията на фигурата е заключена чрез свойството [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

Следният пример за код показва как да работите със свойството **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Задаване На Оформлението На Формата В Клетката

Можете също да укажете дали фигурата да се показва в таблица или извън нея, като използвате свойството [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Следният пример за код показва как да работите със свойството **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Създаване На Ъглов Правоъгълник

Можете да създадете правоъгълник за изрязване на ъгъла, като използвате Aspose.Words. Формите са *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* и *DiagonalCornersRounded.*

Форма DML се създава с помощта на **InsertShape** Метод с тези типове фигури. Тези типове не могат да се използват за създаване на VML фигури. Опит за създаване на фигура с помощта на публичния конструктор на класа " фигура "повдига изключението" NotSupportedException".

Следващият пример за код показва как да вмъкнете този тип фигури в документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Получете Точки За Действителни Граници На Формата

Използвайки Aspose.Words API, можете да получите местоположението и размера на формата, съдържаща блок в точки, спрямо котвата на най-горната форма. За да направите това, използвайте функцията [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Следният пример за код показва как да работите със свойството **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Формат На Хоризонталното Правило

Aspose.Words API предоставя свойството [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) за достъп до свойствата на фигурата на хоризонталното правило. **HorizontalRuleFormat** класът излага основни свойства като височина, цвят, сянка и т.н. за форматиране на хоризонтално правило.

Следващият пример за код показва как да зададете **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Вмъкване на OLE обект като икона

Aspose.Words API осигурява **Shape** → **InsertOleObjectAsIcon** функция за вмъкване на вграден или свързан OLE обект като икона в документа. Тази функция позволява задаване на икона файл и надпис. Типът `OLE` обект се открива с помощта на разширението на файла.

Следващият пример за код показва как да зададете вмъкване на обект OLE като икона в документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Максималният размер на иконата трябва да бъде 32х32 за правилното показване.

{{% /alert %}}
