---
title: Работа с SDT для управления контентом
second_title: Aspose.Words за Python via .NET
articleTitle: Работа с SDT для управления контентом
linktitle: Работа с SDT для управления контентом
description: "Используя Python, вы можете встраивать в документ определяемую пользователем семантику, а также ее поведение и внешний вид."
type: docs
weight: 390
url: /ru/python-net/working-with-content-control-sdt/
---

В Microsoft Word вы можете создать форму, начав с шаблона и добавив элементы управления содержимым, включая флажки, текстовые поля, средства выбора дат и раскрывающиеся списки. В Aspose.Words тег структурированного документа или элемент управления содержимым из любого документа, загруженного в Aspose.Words, импортируется как узел [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Структурированные теги документов (SDT или элементы управления контентом) позволяют встраивать в документ определяемую клиентом семантику, а также ее поведение и внешний вид. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) может встречаться в документе в следующих местах:

- На уровне блока - среди абзацев и таблиц, как дочерний элемент узла [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) или [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Уровень строки - среди строк таблицы, как дочерний элемент узла [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- На уровне ячейки — среди ячеек в строке таблицы, как дочерний элемент узла [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Встроенный уровень - Среди встроенного содержимого внутри, как дочерний элемент [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Вложен в другой [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Вставка элементов управления содержимым в документ

В этой версии Aspose.Words могут быть созданы следующие типы SDT или контроля контента:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

В следующем примере кода показано, как создать флажок типа элемента управления содержимым.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

В следующем примере кода показано, как создать элемент управления содержимым поля форматированного текста.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

В следующем примере кода показано, как создать элемент управления содержимым поля со списком типа.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Как обновить элементы управления контентом

В этом разделе объясняется, как программно обновить значения SDT или управления содержимым

В следующем примере кода показано, как установить текущее состояние флажка:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

В следующем примере кода показано, как изменить элементы управления содержимым типа простое текстовое поле, раскрывающийся список и изображение:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Привязка управления содержимым к пользовательским частям XML

Вы можете связать элементы управления содержимым с данными XML (*пользовательская часть XML*) в документах Word.

В следующем примере кода показано, как привязать элемент управления содержимым к пользовательским частям XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XML-сопоставление диапазона тегов структурированного документа

Вы можете получить сопоставление этого диапазона тегов структурированного документа с данными XML в пользовательской части XML текущего документа, используя свойство [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Однако метод [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) можно использовать для сопоставления диапазона тегов структурированного документа с данными XML.

В следующем примере кода показано, как настроить сопоставление XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Очистить содержимое элемента управления содержимым

Вы можете очистить содержимое элемента управления содержимым, отобразив заполнитель. Метод [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) очищает содержимое этого тега структурированного документа и отображает заполнитель, если он определен. Однако невозможно очистить содержимое элемента управления содержимым, если у него есть изменения. Если элемент управления содержимым не имеет заполнителя, вставляются пять пробелов, как в MS Word (кроме повторяющихся разделов, повторяющихся элементов разделов, групп, флажков, цитат). Если элемент управления содержимым сопоставлен с пользовательским XML, указанный узел XML очищается.

В следующем примере кода показано, как очистить содержимое элемента управления содержимым:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Изменение цвета фона и границ элемента управления содержимым

Свойство [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) позволяет получить или установить цвет элемента управления содержимым. Цвет влияет на управление контентом в двух ситуациях:

1. MS Word выделяет фон элемента управления содержимым, когда указатель мыши наводится на элемент управления содержимым. Это помогает идентифицировать элемент управления контентом. Цвет подсветки немного "мягче", чем у *color*. Например, MS Word подсвечивает фон розовым цветом, тогда как *color* красный.
2. Когда вы взаимодействуете (редактируете, выбираете и т.д.) с элементом управления содержимым, граница элемента управления содержимым окрашивается в цвет *color*.

В следующем примере кода показано, как изменить цвет элемента управления содержимым:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Как установить стиль для форматирования текста, введенного в элемент управления содержимым

Если вы хотите установить стиль управления содержимым, вы можете использовать свойства [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) или [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Когда вы вводите текст в элемент управления содержимым выходного документа, набранный текст будет иметь стиль "Цитата".

{{% alert color="primary" %}}

Обратите внимание, что для управления содержимым можно применять только стили "Связь" и "Символ". Исключение ("Невозможно применить этот стиль к SDT") выдается, когда применяется стиль, который существует, но не является стилем "Связь" или "Символ".

{{% /alert %}}

В следующем примере кода показано, как установить стиль управления содержимым:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Работа с контролем содержимого повторяющегося раздела

Элемент управления содержимым повторяющегося раздела позволяет повторять содержимое, содержащееся в нем. Используя Aspose.Words, можно создать узлы тегов структурированного документа повторяющегося раздела и типы элементов повторяющегося раздела, и для этой цели тип перечисления [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) предоставляет свойство [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

В следующем примере кода показано, как привязать элемент управления содержимым повторяющегося раздела к таблице:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
