---
title: Работа с системой управления контентом SDT
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с системой управления контентом SDT
linktitle: Работа с системой управления контентом SDT
description: "Используя python, вы можете внедрять в документ семантику, определенную клиентом, а также ее поведение и внешний вид."
type: docs
weight: 390
url: /ru/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

В Microsoft Word вы можете создать форму, начав с шаблона и добавив элементы управления содержимым, включая элементы checkbox, текстовые поля, средства выбора даты и выпадающие списки. В Aspose.Words тег структурированного документа или элемент управления содержимым из любого документа, загруженного в Aspose.Words, импортируется как узел [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Теги структурированного документа (SDT или элемент управления содержимым) позволяют внедрять в документ семантику, определенную пользователем, а также его поведение и внешний вид. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) может встречаться в документе в следующих местах:

- На уровне блоков - между абзацами и таблицами, как дочерний элемент узла [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) или [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- На уровне строк - среди строк в таблице, как дочерний элемент узла [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- На уровне ячейки - среди ячеек в строке таблицы, как дочерний элемент узла [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Встроенный уровень - среди встроенного содержимого внутри, как дочерний элемент [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Вложенный в другой [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

## Вставка элементов управления содержимым в документ

В этой версии Aspose.Words могут быть созданы следующие типы SDT или элементов управления содержимым:

- Checkbox
- DropDownList
- ComboBox
- Дата
- BuildingBlockGallery
- Группа
- `Picture`
- RichText
- PlainText

В следующем примере кода показано, как создать элемент управления содержимым типа checkbox.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

В следующем примере кода показано, как создать элемент управления содержимым типа rich text box.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

В следующем примере кода показано, как создать элемент управления содержимым типа поле со списком.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Как обновить элементы управления контентом

В этом разделе объясняется, как обновить значения SDT или управлять содержимым программными средствами.

В следующем примере кода показано, как установить текущее состояние checkbox:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

В следующем примере кода показано, как изменить элементы управления содержимым типа обычного текстового поля, выпадающего списка и изображения:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл с этими примерами по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Привязка элемента управления содержимым к пользовательским частям XML

Вы можете привязать элементы управления содержимым к данным XML (*custom XML part*) в документах Word.

В следующем примере кода показано, как привязать элемент управления содержимым к пользовательским частям XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping из диапазона тегов структурированного документа

Вы можете получить сопоставление этого диапазона тегов структурированного документа с данными XML в пользовательской части текущего документа XML, используя свойство [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Однако для сопоставления диапазона тегов структурированного документа с данными XML можно использовать метод [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/).

В следующем примере кода показано, как задать сопоставление XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Очистить содержимое элемента управления содержимым

Вы можете очистить содержимое элемента управления содержимым, отобразив заполнитель. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) метод очищает содержимое этого тега структурированного документа и отображает заполнитель, если он определен. Однако очистить содержимое элемента управления контентом, если в нем есть изменения, невозможно. Если элемент управления содержимым не имеет заполнителя, вставляются пять пробелов, как в MS Word (за исключением повторяющихся разделов, элементов раздела, групп, флажков, цитат). Если элемент управления содержимым сопоставлен пользовательскому XML, узел, на который ссылается XML, очищается.

В следующем примере кода показано, как очистить содержимое элемента управления содержимым:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Изменение цвета фона и границ элементов управления содержимым

Свойство [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) позволяет получить или задать цвет элемента управления содержимым. Цвет влияет на управление содержимым в двух ситуациях:

1. MS Word выделяет фон элемента управления содержимым при наведении курсора мыши на элемент управления содержимым. Это помогает идентифицировать элемент управления содержимым. Цвет выделения немного "мягче", чем *color*. Например, слово MS выделяет фон розовым цветом, в то время как *color* - красным.
2. Когда вы взаимодействуете (редактируете, выбираете и т.д.) с элементом управления контентом, граница элемента управления контентом окрашивается в цвет *color*.

В следующем примере кода показано, как изменить цвет элемента управления содержимым:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Как задать стиль для форматирования текста, введенного в элемент управления содержимым

Если вы хотите задать стиль управления содержимым, вы можете использовать свойства [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) или [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Когда вы вводите текст в content control в выходном документе, набранный текст будет иметь стиль "Цитата".

{{% alert color="primary" %}}

Обратите внимание, что к элементу управления контентом могут быть применены только связанные стили и стили символов. Исключение ("Невозможно применить этот стиль к SDT") возникает, когда применяется стиль, который существует, но не связан, или стиль символов.

{{% /alert %}}

В следующем примере кода показано, как задать стиль управления содержимым:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Работа с повторяющимся содержимым раздела

Элемент управления содержимым повторяющегося раздела позволяет повторять содержимое, содержащееся в нем. Используя Aspose.Words, можно создать узлы тегов структурированного документа типов повторяющегося раздела и элементов повторяющегося раздела, и для этой цели тип перечисления [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) предоставляет свойство [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

В следующем примере кода показано, как привязать элемент управления содержимым повторяющегося раздела к таблице:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
