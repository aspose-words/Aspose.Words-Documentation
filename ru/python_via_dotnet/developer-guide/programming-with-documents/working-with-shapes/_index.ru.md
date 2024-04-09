---
title: Работа с формами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с формами
linktitle: Работа с формами
description: "Создавать и управлять формами, оле-объектами в документе с помощью Python."
type: docs
weight: 280
url: /ru/python-net/working-with-shapes/
---

Эта тема обсуждает, как программно работать с формами, используя Aspose.Words.

Формы в Aspose.Words представляют собой объект в слое рисунка, такой как AutoShape, текстовый ящик, свободная форма, объект OLE, управление ActiveX или изображение. Документ Word может содержать одну или несколько различных форм. Формы документа представлены [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) класс.

## Вставка форм с помощью конструктора документов

Вы можете вставить встроенную форму с указанным типом и размером и свободно плавающую форму с указанным положением, размером и типом текстовой обертки в документ, используя [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) метод. The [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) Способ позволяет вставить форму DML в модель документа. Документ должен быть сохранен в формате, который поддерживает формы DML, в противном случае такие узлы будут преобразованы в форму VML, при этом сохраняется документ.

Следующий пример кода показывает, как вставить эти типы фигур в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Установить соотношение заперто

Использовать Aspose.Words, Вы можете указать, заблокировано ли соотношение сторон формы через [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) собственность.

Следующий пример показывает, как работать с **AspectRatioLocked** имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Настройка формы Layout in Cell

Вы также можете указать, отображается ли форма внутри стола или снаружи стола. [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) собственность.

Следующий пример показывает, как работать с **IsLayoutInCell** имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Создайте прямоугольник Snip Corner

Вы можете создать угловой прямоугольник с помощью Aspose.Words. Типы фигур являются [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), и [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Форма DML создается с использованием [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) Метод с этими типами форм. Эти типы не могут быть использованы для создания форм VML. Попытка создать форму с помощью общественного конструктора [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Класс поднимает исключение "Неподдерживаемое исключение".

Следующий пример кода показывает, как вставить эти типы фигур в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Получите реальные точки соприкосновения формы

Использовать Aspose.Words API, Вы можете получить расположение и размер формы, содержащей блок в точках, относительно якоря самой верхней формы. Чтобы сделать это, используйте [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) собственность.

Следующий пример показывает, как работать с **BoundsInPoints** имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Укажите вертикальный якорь

Вы можете указать вертикальное выравнивание текста в форме, используя [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) собственность.

Следующий пример показывает, как работать с **VerticalAnchor** имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Обнаружение Smart Форма искусства

Aspose.Words Также можно определить, имеет ли форма `SmartArt` объект. Чтобы сделать это, используйте [Имеет_smart_art свойство](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) собственность.

Следующий пример показывает, как работать с **HasSmartArt** имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Включить горизонтальный Правило в документе

Вы можете вставить горизонтальную форму правила в документ, используя [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) метод.

Следующий пример кода показывает, как это сделать:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API обеспечивает [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) свойство доступа к свойствам горизонтальной формы правила. The [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) Класс раскрывает основные свойства, такие как [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) Для форматирования горизонтального правила.

Следующий пример кода показывает, как установить [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Включить OLE Объект как икона

Aspose.Words API обеспечивает **Shape.insert_ole_object_as_icon** Функция вставки встроенного или связанного объекта OLE в качестве иконки в документ. Эта функция позволяет указать файл значка и подпись. The `OLE` Тип объекта должен быть обнаружен с помощью расширения файла.

Следующий пример кода показывает, как вставить объект OLE в качестве иконки в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Максимальный размер значка должен быть 32x32 для правильного отображения.

{{% /alert %}}

## Импорт форм с помощью Math XML в виде форм DOM

Вы можете использовать [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) свойство преобразовывать формы с помощью EquationXML в объекты Office Math. Значение по умолчанию этого свойства соответствует поведению MS Word, т.е. формы с уравнением XML не преобразуются в объекты математики Office.

Следующий пример кода показывает, как конвертировать формы в объекты Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
