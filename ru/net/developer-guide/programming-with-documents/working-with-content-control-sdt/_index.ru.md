---
title: Работа с SDT для управления контентом
second_title: Aspose.Words для .NET
articleTitle: Работа с SDT для управления контентом
linktitle: Работа с SDT для управления контентом
description: "Расширенное управление содержимым документов: как создавать элементы управления содержимым (структурированные теги документов) и манипулировать ими с помощью C#."
type: docs
weight: 390
url: /ru/net/working-with-content-control-sdt/
---

В версии Microsoft Word вы можете создать форму, начав с шаблона и добавив элементы управления содержимым, включая флажки, текстовые поля, средства выбора дат и раскрывающиеся списки. В Aspose.Words тег структурированного документа или элемент управления содержимым из любого документа, загруженного в Aspose.Words, импортируется как узел StructuredDocumentTag. Структурированные теги документов (SDT или элементы управления контентом) позволяют встраивать в документ определяемую клиентом семантику, а также ее поведение и внешний вид.

StructuredDocumentTag может встречаться в документе в следующих местах:

- На уровне блока – среди абзацев и таблиц в качестве дочернего элемента узла Body, HeaderFooter, Comment, Footnote или Shape
- На уровне строки – среди строк таблицы, как дочерний элемент узла таблицы
- Уровень ячейки – среди ячеек в строке таблицы, как дочерний элемент узла строки
- Встроенный уровень – среди встроенного содержимого внутри, как дочерний элемент абзаца
- Вложен внутри другого StructuredDocumentTag

## Вставка элементов управления содержимым в документ

В этой версии Aspose.Words могут быть созданы следующие типы SDT или управления контентом:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

В следующем примере кода показано, как создать флажок типа элемента управления содержимым:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

В следующем примере кода показано, как создать элемент управления содержимым поля форматированного текста:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

В следующем примере кода показано, как создать элемент управления содержимым поля со списком типа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Как обновить элементы управления контентом

В этом разделе объясняется, как программно обновить значения SDT или управления содержимым.

В следующем примере кода показано, как установить текущее состояние флажка:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

В следующем примере кода показано, как изменить элементы управления содержимым типа простое текстовое поле, раскрывающийся список и изображение:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Привязка управления содержимым к пользовательским частям XML

Вы можете связать элементы управления содержимым с данными XML (*пользовательская часть XML*) в документах Word.

В следующем примере кода показано, как привязать элемент управления содержимым к пользовательским частям XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XML-сопоставление диапазона тегов структурированного документа

Вы можете получить сопоставление этого диапазона тегов структурированного документа с данными XML в пользовательской части XML текущего документа, используя **Свойство StructuredDocumentTagRangeStart.XmlMapping**. Однако метод [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) можно использовать для сопоставления диапазона тегов структурированного документа с данными XML.

В следующем примере кода показано, как настроить сопоставление XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Очистить содержимое элемента управления содержимым

Вы можете очистить содержимое элемента управления содержимым, отобразив заполнитель. Метод **StructuredDocumentTag.Clear** очищает содержимое этого тега структурированного документа и отображает заполнитель, если он определен. Однако невозможно очистить содержимое элемента управления содержимым, если у него есть изменения. Если элемент управления содержимым не имеет заполнителя, вставляются пять пробелов, как в Microsoft Word (кроме повторяющихся разделов, элементов повторяющихся разделов, групп, флажков и цитат). Если элемент управления содержимым сопоставлен с пользовательским XML, указанный узел XML очищается.

В следующем примере кода показано, как очистить содержимое элемента управления содержимым:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Изменение цвета фона и границ элемента управления содержимым

Свойство `StructuredDocumentTag.Color` позволяет получить или установить цвет элемента управления содержимым. Цвет влияет на управление контентом в двух ситуациях:

1. MS Word выделяет фон элемента управления содержимым, когда указатель мыши наводится на элемент управления содержимым. Это помогает идентифицировать элемент управления контентом. Цвет выделения немного "мягче", чем у *Color*. Например, MS Word выделяет фон розовым цветом, когда *Color* — красный.
2. Когда вы взаимодействуете (редактируете, выбираете и т.д.) с элементом управления содержимым, граница элемента управления содержимым окрашивается в цвет *Color*.

В следующем примере кода показано, как изменить цвет элемента управления содержимым:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Как установить стиль для форматирования текста, введенного в элемент управления содержимым

Если вы хотите установить стиль управления контентом, вы можете использовать свойства `StructuredDocumentTag.Style` или `StructuredDocumentTag.StyleName`. Когда вы вводите текст в элемент управления содержимым выходного документа, набранный текст будет иметь стиль "Цитата".

{{% alert color="primary" %}}

Обратите внимание, что для управления содержимым можно применять только стили "Связь" и "Символ". Исключение InvalidOperationException ("Невозможно применить этот стиль к SDT") выдается, когда применяется стиль, который существует, но не является стилем "Связь" или "Символ".

{{% /alert %}}

В следующем примере кода показано, как установить стиль управления содержимым:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Работа с контролем содержимого повторяющегося раздела

Элемент управления содержимым повторяющегося раздела позволяет повторять содержимое, содержащееся в нем. Используя Aspose.Words, можно создавать узлы тегов структурированного документа повторяющегося раздела и типы элементов повторяющегося раздела, и для этой цели [Тип перечисления SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) предоставляет свойство **RepeatingSectionItem**.

В следующем примере кода показано, как привязать элемент управления содержимым повторяющегося раздела к таблице.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
