---
title: Работа с фигурами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с формами
linktitle: Работа с формами
description: "Создавайте фигуры и ole-объекты в документе и управляйте ими с помощью Python."
type: docs
weight: 280
url: /ru/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

В этом разделе обсуждается, как программно работать с фигурами, используя Aspose.Words.

Фигуры в Aspose.Words представляют объект на уровне рисования, такой как AutoShape, текстовое поле, объект произвольной формы, OLE, элемент управления ActiveX или изображение. Документ Word может содержать одну или несколько различных фигур. Формы документа представлены классом [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Вставка фигур с помощью конструктора документов

Вы можете вставить в документ встроенную фигуру с указанным типом и размером, а также свободно перемещающуюся фигуру с указанным положением, размером и типом переноса текста, используя метод [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). Метод [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) позволяет вставить фигуру DML в модель документа. Документ должен быть сохранен в формате, поддерживающем формы DML, в противном случае такие узлы будут преобразованы в форму VML при сохранении документа.

В следующем примере кода показано, как вставить эти типы фигур в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Установите фиксированное соотношение сторон

Используя Aspose.Words, вы можете указать, будет ли зафиксировано соотношение сторон фигуры с помощью свойства [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

В следующем примере кода показано, как работать со свойством **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Установите Расположение Фигуры В Ячейке

Вы также можете указать, будет ли фигура отображаться внутри таблицы или за ее пределами, используя свойство [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

В следующем примере кода показано, как работать со свойством **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Создайте прямоугольник с отрезанным углом

Вы можете создать прямоугольник с отрезанным углом, используя Aspose.Words. Существуют следующие типы фигур [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), и [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Фигура DML создается с использованием метода [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) с этими типами фигур. Эти типы не могут быть использованы для создания фигур VML. Попытка создать фигуру с помощью открытого конструктора класса [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) приводит к возникновению исключения "NotSupportedException".

В следующем примере кода показано, как вставить фигуры такого типа в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Получите реальные точки границ формы

Используя Aspose.Words API, вы можете получить местоположение и размер фигуры, содержащей блок, в точках относительно привязки самой верхней фигуры. Для этого используйте свойство [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

В следующем примере кода показано, как работать со свойством **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Укажите вертикальную привязку

Вы можете задать выравнивание текста по вертикали внутри фигуры, используя свойство [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

В следующем примере кода показано, как работать со свойством **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Определить форму SmartArt

Aspose.Words также позволяет определить, есть ли у фигуры объект `SmartArt`. Для этого используйте свойство [has_smart_art property](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

В следующем примере кода показано, как работать со свойством **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Вставить горизонтальную линейку в документ

Вы можете вставить горизонтальную линейчатую фигуру в документ, используя метод [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

В следующем примере кода показано, как это сделать:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API предоставляет свойство [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) для доступа к свойствам формы горизонтального правила. Класс [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) предоставляет базовые свойства, такие как [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) и т.д. для форматирования горизонтального правила.

В следующем примере кода показано, как установить [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Вставить объект OLE в качестве значка

Aspose.Words API предоставляет функцию **Shape.insert_ole_object_as_icon** для вставки встроенного или связанного объекта OLE в виде значка в документ. Эта функция позволяет указать файл значка и подпись к нему. Тип объекта `OLE` определяется по расширению файла.

В следующем примере кода показано, как установить объект insert OLE в качестве значка в документе:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Для корректного отображения максимальный размер значка должен составлять 32х32 дюйма.

{{% /alert %}}

## Импортируйте фигуры с математикой XML в виде фигур в DOM

Вы можете использовать свойство [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) для преобразования фигур с уравнением EquationXML в объекты Office Math. Значение этого свойства по умолчанию соответствует MS поведению Word, т.е. фигуры с уравнением XML не преобразуются в объекты Office math.

В следующем примере кода показано, как преобразовать фигуры в объекты Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
