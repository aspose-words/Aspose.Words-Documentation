---
title: Работа с фигурами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с фигурами
linktitle: Работа с фигурами
description: "Создавайте фигуры и объекты ole в документе и управляйте ими с помощью Python."
type: docs
weight: 280
url: /ru/python-net/working-with-shapes/
---

В этом разделе обсуждается, как программно работать с фигурами с помощью Aspose.Words.

Фигуры в Aspose.Words представляют собой объект в слое рисования, например автофигуру, текстовое поле, произвольную форму, объект OLE, элемент управления ActiveX или изображение. Документ Word может содержать одну или несколько различных фигур. Формы документа представлены классом [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Вставка фигур с помощью Document Builder

Вы можете вставить в документ встроенную фигуру указанного типа и размера, а также свободно плавающую фигуру с указанным положением, размером и типом переноса текста, используя метод [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). Метод [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) позволяет вставлять форму DML в модель документа. Документ должен быть сохранен в формате, поддерживающем формы DML, иначе при сохранении документа такие узлы будут преобразованы в форму VML.

В следующем примере кода показано, как вставить фигуры этих типов в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Установить соотношение сторон заблокировано

Используя Aspose.Words, вы можете указать, заблокировано ли соотношение сторон фигуры с помощью свойства [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/).

В следующем примере кода показано, как работать со свойством **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Установить макет фигуры в ячейке

Вы также можете указать, будет ли фигура отображаться внутри таблицы или за ее пределами, используя свойство [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

В следующем примере кода показано, как работать со свойством **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Создать прямоугольник с отрезанным углом

Вы можете создать прямоугольник с отрезанным углом, используя Aspose.Words. Типы фигур: [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) и [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Форма DML создается с использованием метода [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) с использованием этих типов фигур. Эти типы нельзя использовать для создания фигур VML. Попытка создать фигуру с помощью открытого конструктора класса [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) вызывает исключение NotSupportedException.

В следующем примере кода показано, как вставить фигуры такого типа в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Получите фактические точки границ формы

Используя Aspose.Words API, вы можете получить местоположение и размер фигуры, содержащей блок, в точках относительно привязки самой верхней фигуры. Для этого используйте свойство [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

В следующем примере кода показано, как работать со свойством **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Укажите вертикальную привязку

Вы можете указать вертикальное выравнивание текста внутри фигуры, используя свойство [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

В следующем примере кода показано, как работать со свойством **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Обнаружение формы SmartArt

Aspose.Words также позволяет определить, есть ли в Shape объект `SmartArt`. Для этого используйте свойство [свойство has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

В следующем примере кода показано, как работать со свойством **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Вставьте горизонтальное правило в документ

Вы можете вставить фигуру горизонтальной линейки в документ, используя метод [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

В следующем примере кода показано, как это сделать:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API предоставляет свойство [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) для доступа к свойствам фигуры горизонтальной линейки. Класс [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) предоставляет базовые свойства, такие как [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) и т.д., для форматирования горизонтальной линейки.

В следующем примере кода показано, как установить [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Вставьте объект OLE как значок

Aspose.Words API предоставляет функцию **Shape.insert_ole_object_as_icon** для вставки внедренного или связанного объекта OLE в виде значка в документ. Эта функция позволяет указать файл значка и подпись. Тип объекта `OLE` определяется по расширению файла.

В следующем примере кода показано, как задать вставку объекта OLE в качестве значка в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Максимальный размер значка должен быть 32x32 для корректного отображения.

{{% /alert %}}

## Импортируйте фигуры с помощью Math XML как фигуры в DOM

Вы можете использовать свойство [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) для преобразования фигур с помощью EquationXML в объекты Office Math. Значение этого свойства по умолчанию соответствует поведению MS Word, т. е. фигуры с XML-уравнениями не преобразуются в математические объекты Office.

В следующем примере кода показано, как преобразовать фигуры в объекты Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
