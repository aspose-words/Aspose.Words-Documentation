---
title: Работа с форми в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с форми
linktitle: Работа с форми
description: "Създаване и управление на форми, оле обекти в документ, използвайки Python."
type: docs
weight: 280
url: /bg/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Тази тема обсъжда как да се работи програмно с форми, използвайки Aspose.Words.

Форми в Aspose.Words представлява обект в рисувания слой, като AutoShape, текстова кутия, свободна форма, OLE обект, ActiveX контрол, или картина. Документът на Word може да съдържа една или повече различни форми. Форматите на документа са представени от [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Клас.

## Вмъкване на форма чрез създаване на документ

Можете да въведете в линия форма с определен тип и размер и свободно плаваща форма с определено положение, размер и текстова обвивка в документ, като използвате [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) метод. На [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) метод позволява въвеждане на DML форма в модела на документа. Документът трябва да бъде записан във формат, който поддържа DML форми, в противен случай, такива възли ще бъдат преобразувани във VML форма, докато документ спестяване.

Следният пример за код показва как да се вкарат тези видове форми в документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Задаване на заключване на съотношението

Използване Aspose.Words, Можете да посочите дали съотношението на аспекта е заключен през [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) собственост.

Следният пример с код показва как да работите с **AspectRatioLocked** собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Задаване на форма в клетка

Можете също така да посочите дали формата се показва в таблица или извън нея с помощта на [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) собственост.

Следният пример с код показва как да работите с **IsLayoutInCell** собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Създаване на наклонен ъгъл

Можете да създадете ъглов правоъгълник с помощта на Aspose.Words. Видът на формата е [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), както и [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Формата DML е създадена с помощта на [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) метод с тези видове форма. Тези видове не могат да бъдат използвани за създаване на VML форми. Опит за създаване на форма чрез използване на обществения конструктор на [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Класът повишава изключението "Неподдържано изключение."

Следният пример за код показва как да се вкарат тези форми в документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Получаване на реални граници на формата точки

Използване Aspose.Words API, Можете да получите местоположението и размера на формата, съдържаща блок в точки, спрямо котвата на най-горната форма. За целта използвайте [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) собственост.

Следният пример с код показва как да работите с **BoundsInPoints** собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Вертикална котва

Можете да посочите вертикалното подравняване на текста във форма с помощта на [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) собственост.

Следният пример с код показва как да работите с **VerticalAnchor** собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Открий умно Форма на изкуството

Aspose.Words също така позволява да се установи дали формата има `SmartArt` Възразявам. За целта използвайте [has_smart_art имот](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) собственост.

Следният пример с код показва как да работите с **HasSmartArt** собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Вмъкване на хоризонтално Член в документ

Можете да въведете хоризонтално правило форма в документ с помощта на [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) метод.

Следният пример с код показва как да направите това:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API осигурява [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) собственост за достъп до свойствата на хоризонталното правило. На [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) клас излага основни свойства като [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) и т.н. за форматиране на хоризонтално правило.

Следният пример с код показва как да зададете [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Вмъкване на OLE Обект като икона

Aspose.Words API осигурява **Форма. enter_ole_object_as_icon** функция за въвеждане на вграден или свързан обект OLE като икона в документа. Тази функция позволява посочване на иконите и надписа. На `OLE` Типът обект се открива чрез разширението на файла.

Следният пример за код показва как да зададете OLE обект като икона в документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Максималният размер на иконата трябва да бъде 32x32 за правилния дисплей.

{{% /alert %}}

## Импортиране на форма с Math XML като форма в DOM

Можеш да използваш [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) Имотът да конвертирате формите с уравнениеXML да Office Математически обекти. По подразбиране стойността на този имот съответства на MS Word поведение, т.е. форми с уравнение XML не се конвертират в Office математически обекти.

Следният пример за код показва как да конвертирате форми в Office Математически обекти:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
