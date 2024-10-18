---
title: Работа с фигурами в C++
second_title: Aspose.Words для C++
articleTitle: Работа с формами
linktitle: Работа с формами
type: docs
description: "Знакомство с языком разметки фигур, создание фигур различных типов с использованием C++."
weight: 280
url: /ru/cpp/working-with-shapes/
---

В этом разделе обсуждается, как программно работать с фигурами, используя Aspose.Words.

Фигуры в Aspose.Words представляют объект на уровне рисования, такой как AutoShape, текстовое поле, произвольная форма, OLE-объект, элемент управления ActiveX или изображение. Документ Word может содержать одну или несколько различных фигур. Формы документа представлены классом [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Вставка фигуры с помощью конструктора документов

Вы можете вставить в документ встроенную фигуру с указанным типом и размером, а также свободно перемещающуюся фигуру с указанным положением, размером и типом переноса текста, используя метод [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Метод **InsertShape** позволяет вставить фигуру DML в модель документа. Документ должен быть сохранен в формате, поддерживающем формы DML, в противном случае такие узлы будут преобразованы в форму VML при сохранении документа.

В следующем примере кода показано, как вставить эти типы фигур в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Установите фиксированное соотношение сторон

Используя Aspose.Words, вы можете указать, будет ли зафиксировано соотношение сторон фигуры с помощью свойства [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/).

В следующем примере кода показано, как работать со свойством **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Установите Расположение Фигуры В Ячейке

Вы также можете указать, будет ли фигура отображаться внутри таблицы или за ее пределами, используя свойство [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

В следующем примере кода показано, как работать со свойством **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Создайте прямоугольник с отрезанным углом

Вы можете создать прямоугольник с отрезанным углом, используя Aspose.Words. Типы фигур - *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* и *DiagonalCornersRounded.*

Форма DML создается с помощью метода **InsertShape** с использованием этих типов фигур. Эти типы нельзя использовать для создания фигур VML. Попытка создать форму с помощью открытого конструктора класса "Shape" приводит к возникновению исключения "NotSupportedException".

В следующем примере кода показано, как вставить фигуры такого типа в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Получите реальные точки границ формы

Используя Aspose.Words API, вы можете получить местоположение и размер фигуры, содержащей блок, в точках относительно привязки самой верхней фигуры. Для этого используйте свойство [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

В следующем примере кода показано, как работать со свойством **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Формат горизонтального правила

Aspose.Words API предоставляет свойство [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) для доступа к свойствам формы горизонтального правила. Класс **HorizontalRuleFormat** предоставляет базовые свойства, такие как высота, цвет, оттенок и т.д. для форматирования горизонтального правила.

В следующем примере кода показано, как установить **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Вставить OLE-объект в виде значка

Aspose.Words API предоставляет функцию **Shape** → **InsertOleObjectAsIcon** для вставки встроенного или связанного OLE-объекта в виде значка в документ. Эта функция позволяет указать файл значка и заголовок. Тип объекта `OLE` определяется с помощью расширения файла.

В следующем примере кода показано, как настроить вставку OLE-объекта в качестве значка в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Для корректного отображения максимальный размер значка должен составлять 32х32 дюйма.

{{% /alert %}}
