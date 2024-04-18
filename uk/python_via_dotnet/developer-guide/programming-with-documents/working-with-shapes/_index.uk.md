---
title: Робота з фігурами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з фігурами
linktitle: Робота з фігурами
description: "Створення та управління формами, об'єктами олів у документі Pythonй"
type: docs
weight: 280
url: /uk/python-net/working-with-shapes/
---

Ця тема обговорює, як працювати программатично з формами за допомогою Aspose.Wordsй

Форми в Aspose.Words представляє об'єкт в шарі малювання, такі як AutoShape, текстова коробка, форма, об'єкт OLE, управління ActiveX або малюнок. Документ Word може містити одну або іншу форму. Види документа представлені [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) клас.

## Вставки за допомогою конструктора документів

Ви можете вставляти в лінію форму з вказаним типом і розміром і вільно плаваючою формою з вказаним положенням, розміром і типом текстового обгортання в документ, використовуючи [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) метод. Про нас [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) метод дозволяє вставляти DML форму в документ модель. Документ повинен бути збережений у форматі, який підтримує форми DML, інакше такі вершини будуть перетворені на форму VML, при цьому збереження документа.

Приклад коду показує, як вставити ці типи форм у документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Набір Aspect Ratio Locked

Використання Aspose.Words, Ви можете вказати, чи заблоковано співвідношення форми через [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) майно.

Приклад наступного коду показує, як працювати з **AspectRatioLocked** майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Встановити Shape Layout В клітинку

Ви також можете вказати, чи відображається форма всередині таблиці або зовні його за допомогою [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) майно.

Приклад наступного коду показує, як працювати з **IsLayoutInCell** майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Створення Snip Corner прямокутника

Ви можете створити прямокутний прямокутний прямокутник за допомогою Aspose.Wordsй Типи форми [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded), і [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded)й

Форма DML створюється за допомогою [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) метод з цими типами форми. Ці типи не можуть використовуватися для створення VML-форм. Інтемпт створення форми за допомогою публічного конструктора [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Клас піднімає виняток "Без підтримки".

Приклад коду показує, як вставити ці форми в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Отримувати Фактичні точки фігури

Використання Aspose.Words API, Ви можете отримати місце розташування і розмір форми, що містить блок в точках, відносно анкеру верхньої форми. Для цього використовуйте [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) майно.

Приклад наступного коду показує, як працювати з **BoundsInPoints** майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Вказати Вертикальний Якір

Ви можете вказати текст вертикального вирівнювання у вигляді форми за допомогою [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) майно.

Приклад наступного коду показує, як працювати з **VerticalAnchor** майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Детект Смарт Арт форма

Aspose.Words також дозволяє виявити, чи має форму `SmartArt` об'єкт. Для цього використовуйте [has_smart_art нерухомість](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) майно.

Приклад наступного коду показує, як працювати з **HasSmartArt** майно:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Вставити горизонтальний Рулі в документі

Ви можете вставити форму горизонтального правила в документ, використовуючи [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) метод.

Приклад наступного коду показує, як це зробити:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API забезпечує [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) властивість доступу до властивостей горизонтальної форми правила. Про нас [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) клас визначає основні властивості, такі як [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) і т.д. для форматування горизонтального правила.

Приклад коду показує, як встановити [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Вставити OLE Об'єкт ікони

Aspose.Words API Послуги **Форма.inert_ole_object_as_icon** Функція вставити вбудований або пов'язаний об'єкт OLE як іконка в документ. Ця функція дозволяє вказати файл ікони і підписку. Про нас `OLE` тип об'єкта визначається за допомогою розширення файлів.

Приклад коду показує, як встановити об'єкт OLE як іконку в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Максимальний розмір іконки повинен бути 32х32 для коректного відображення.

{{% /alert %}}

## Імпортні фігури з Math XML як форма в DOM

Ви можете використовувати [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) об'єкти Office Math. Значення за замовчуванням цього майна відповідає поведінці MS Word i.e. форми з рівняння XML не перетворюються на предмети математики Office.

Приклад коду показує, як перетворити форму на об'єкти Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
