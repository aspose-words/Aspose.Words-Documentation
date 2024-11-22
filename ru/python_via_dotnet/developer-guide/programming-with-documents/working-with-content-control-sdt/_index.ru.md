---
title: Работа с Content Control SDT
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с Content Control SDT
linktitle: Работа с Content Control SDT
description: "Используя python, вы можете встроить семантику, определяемую клиентом, а также его поведение и внешний вид в документ."
type: docs
weight: 390
url: /ru/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

В Microsoft Word, Вы можете создать форму, начав с шаблона и добавив элементы управления контентом, включая галочки, текстовые поля, датчики и выпадающие списки. в Aspose.Words Тег структурированного документа или управление контентом из любого документа, загруженного в Aspose.Words импортируется как [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) Узел. Теги структурированных документов (SDT или контент-контроль) позволяют встраивать в документ определенную клиентом семантику, а также ее поведение и внешний вид. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) может происходить в документе в следующих местах:

- Уровень блока - Среди абзацев и таблиц, как ребенок [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) или [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) узел
- Row-level - Среди строк в таблице, как ребенок [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) узел
- Уровень клеток - Среди клеток в строке таблицы, как ребенок [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) узел
- Inline-level - Среди встроенного контента внутри, как ребенок [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Находится внутри другого [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Включение контроля контента в документ

В этой версии Aspose.Words, Могут быть созданы следующие типы SDT или контроля контента:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Следующий пример кода показывает, как создать контроль содержимого контрольного ящика типа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Следующий пример кода демонстрирует, как создать управление контентом в текстовом поле.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Следующий пример кода показывает, как создать управление содержимым комбинированной коробки типа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Как обновить контроль контента

В этом разделе объясняется, как программно обновлять значения SDT или управления контентом

Следующий пример кода показывает, как установить текущее состояние чекбокса:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Следующий пример кода показывает, как изменить элементы управления контентом в виде простого текстового поля, выпадающего списка и изображения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Обязательный контроль контента для пользовательских частей XML

Вы можете связать элементы управления контентом с данными XML (*обычная часть XML*) в документах Word.

Следующий пример кода показывает, как привязать управление контентом к пользовательским частям XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XML-картирование тегов структурированных документов

Вы можете получить отображение этого структурированного диапазона тегов документа на данные XML в пользовательской XML-части текущего документа, используя [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) собственность. Однако, [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) Способ может быть использован для отображения диапазона структурированных тегов документа на данные XML.

Следующий пример кода показывает, как настроить отображение XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Четкое содержание контроля контента

Вы можете очистить содержимое управления контентом с отображением заполнителя. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) метод очищает содержимое этого структурированного тега документа и отображает заполнитель, если он определен. Однако, Невозможно очистить содержимое контроля содержимого, если оно имеет изменения. Если контент-контроль не имеет заполнителя, в MS Word вставляются пять пробелов (кроме повторяющихся разделов, повторяющихся элементов раздела, групп, чекбоксов, цитат). Если управление контентом отображается на пользовательский XML, ссылающийся узел XML очищается.

Следующий пример кода показывает, как очистить содержимое контроля содержимого:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Изменение фона управления контентом и цвета границ

The [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) Собственность позволяет получить или установить цвет управления контентом. Цвет влияет на контроль контента в двух ситуациях:

1. MS Word выделяет фон управления контентом, когда мышь перемещается по управлению контентом. Это помогает определить контроль контента. Цвет выделения немного "мягче", чем у *color*. Например, MS Word выделяет фон розовым цветом, когда *color* Красный.
2. Когда вы взаимодействуете (редактирование, выбор и т.д.) с контролем контента, граница контроля контента окрашена в цвет. *color*.

Следующий пример кода показывает, как изменить цвет управления контентом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Как настроить стиль для форматирования текста, введённого в контент-контроль

Если вы хотите установить стиль управления контентом, вы можете использовать [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) или [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) свойств. Когда вы вводите текст в управление контентом в выходном документе, типизированный текст будет иметь стиль "цитата".

{{% alert color="primary" %}}

Обратите внимание, что к контролю контента могут применяться только стили Linked и Character. Исключение ("Не применять этот стиль к SDT") бросается, когда стиль, который существует, но не связан или стиль персонажа применяется.

{{% /alert %}}

Следующий пример кода показывает, как установить стиль управления контентом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Работа с повторным контролем контента раздела

Контроль содержимого повторяющегося раздела позволяет повторять содержимое, содержащееся в нем. использовать Aspose.Words, узлы структурированных тегов документа повторяющегося раздела и повторяющихся типов элементов раздела могут быть созданы и для этой цели; [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) Тип перечисления обеспечивает [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) собственность.

Следующий пример кода показывает, как привязать повторяющийся раздел управления контентом к таблице:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
