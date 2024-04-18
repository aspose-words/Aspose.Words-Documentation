---
title: Работа с Content Control SDT
second_title: Aspose.Words для .NET
articleTitle: Работа с Content Control SDT
linktitle: Работа с Content Control SDT
description: "Продвинутое управление контентом документов, как создавать и манипулировать контролем контента (Structured Document Tags) C#."
type: docs
weight: 390
url: /ru/net/working-with-content-control-sdt/
---

В Microsoft Word, Вы можете создать форму, начав с шаблона и добавив элементы управления контентом, включая галочки, текстовые поля, датчики и выпадающие списки. в <p notrans="<p notrans=" Aspose.Words"=""></p>"> Тег структурированного документа или управление контентом из любого документа, загруженного в Aspose.Words Импортируется как узел структурированного документа. Теги структурированных документов (SDT или контент-контроль) позволяют встраивать в документ определенную клиентом семантику, а также ее поведение и внешний вид.

Структурированный документ Тег может появиться в документе в следующих местах:

- Block-level - Среди абзацев и таблиц, как ребенок Тела, HeaderFooter, Комментарий, Сноска или Узел формы
- Row-level - Среди строк в таблице, как ребенок столового узла
- Уровень клеток - Среди клеток в строке таблицы, как ребенок узла Row
- Inline-level - Среди встроенного контента внутри, как ребенок параграфа
- Внутри другого структурированного документа Тег

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

Следующий пример кода показывает, как создать контроль содержимого контрольного ящика типа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Следующий пример кода показывает, как создать управление контентом в текстовом поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Следующий пример кода показывает, как создать управление содержимым комбинированной коробки типа:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Как обновить контроль контента

В этом разделе объясняется, как программно обновлять значения SDT или управления контентом.

Следующий пример кода показывает, как установить текущее состояние чекбокса:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Следующий пример кода показывает, как изменить элементы управления контентом в виде простого текстового поля, выпадающего списка и изображения:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Обязательный контроль контента для пользовательских частей XML

Вы можете связать элементы управления контентом с данными XML (*обычная часть XML*) в документах Word.

Следующий пример кода показывает, как привязать управление контентом к пользовательским частям XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XML-картирование тегов структурированных документов

Вы можете получить отображение этого структурированного диапазона тегов документа на данные XML в пользовательской XML-части текущего документа, используя **Структурированный документTagRangeStart.XmlMapping**. Однако, [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) Способ может быть использован для отображения диапазона структурированных тегов документа на данные XML.

Следующий пример кода показывает, как настроить отображение XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Четкое содержание контроля контента

Вы можете очистить содержимое управления контентом с отображением заполнителя. The **StructuredDocumentTag.Clear** метод очищает содержимое этого структурированного тега документа и отображает заполнитель, если он определен. Однако, Невозможно очистить содержимое контроля содержимого, если оно имеет изменения. Если контент-контроль не имеет заполнителя, вставляются пять пробелов. Microsoft Word (кроме повторяющихся разделов, повторяющихся элементов раздела, групп, чек-боксов, цитат). Если управление контентом отображается на пользовательский XML, ссылающийся узел XML очищается.

Следующий пример кода показывает, как очистить содержимое контроля содержимого:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Изменение фона управления контентом и цвета границ

The `StructuredDocumentTag.Color` Собственность позволяет получить или установить цвет управления контентом. Цвет влияет на контроль контента в двух ситуациях:

1. MS Word выделяет фон управления контентом, когда мышь перемещается по управлению контентом. Это помогает определить контроль контента. Цвет выделения немного "мягче", чем у *Color*. Например, MS Word выделяет фон розовым цветом, когда *Color* Красный.
2. Когда вы взаимодействуете (редактирование, выбор и т.д.) с контролем контента, граница контроля контента окрашена в цвет. *Color*.

Следующий пример кода показывает, как изменить цвет управления контентом:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Как настроить стиль для форматирования текста, введённого в контент-контроль

Если вы хотите установить стиль управления контентом, вы можете использовать `StructuredDocumentTag.Style` или `StructuredDocumentTag.StyleName` свойств. Когда вы вводите текст в управление контентом в выходном документе, типизированный текст будет иметь стиль "цитата".

{{% alert color="primary" %}}

Обратите внимание, что к контролю контента могут применяться только стили Linked и Character. Исключение из недействительной операции ("Не могу применить этот стиль к SDT") происходит, когда применяется стиль, который существует, но не связан или стиль персонажа.

{{% /alert %}}

Следующий пример кода показывает, как установить стиль управления контентом:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Работа с повторным контролем контента раздела

Контроль содержимого повторяющегося раздела позволяет повторять содержимое, содержащееся в нем. использовать Aspose.Words, узлы структурированных тегов документа повторяющегося раздела и повторяющихся типов элементов раздела могут быть созданы и для этой цели; [Тип перечисления SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) обеспечивает **RepeatingSectionItem** собственность.

Следующий пример кода показывает, как привязать повторяющийся раздел управления контентом к таблице.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
