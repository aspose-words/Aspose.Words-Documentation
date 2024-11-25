---
title: Работа с элементами управления содержимым SDT в Java
second_title: Aspose.Words для Java
articleTitle: Работа с системой управления контентом SDT
linktitle: Работа с системой управления контентом SDT
type: docs
description: "Расширенное управление содержимым документа, как создавать элементы управления содержимым (теги структурированных документов) и манипулировать ими с помощью Java."
weight: 390
url: /ru/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

В Microsoft Word вы можете создать форму, начав с шаблона и добавив элементы управления содержимым, включая элементы checkbox, текстовые поля, средства выбора даты и выпадающие списки. В Aspose.Words тег структурированного документа или элемент управления содержимым из любого документа, загруженного в Aspose.Words, импортируется как узел StructuredDocumentTag. Теги структурированного документа (SDT или элемент управления содержимым) позволяют внедрять в документ семантику, определенную пользователем, а также его поведение и внешний вид.

StructuredDocumentTag может встречаться в документе в следующих местах:

- На уровне блоков - среди абзацев и таблиц, в качестве дочернего элемента основного текста, HeaderFooter, комментария, сноски или узла формы.
- На уровне строк - среди строк в таблице, как дочерний элемент узла таблицы.
- На уровне ячейки - среди ячеек в строке таблицы, как дочерний элемент узла строки.
- Встроенный уровень - среди встроенного содержимого внутри, как дочерний элемент абзаца.
- Вложенный в другой StructuredDocumentTag.

## Вставка элементов управления содержимым в документ

В этой версии Aspose.Words могут быть созданы следующие типы элементов управления SDT или контентом:

- Checkbox
- DropDownList
- ComboBox
- Дата
- BuildingBlockGallery
- Группа
- `Picture`
- RichText
- PlainText

В следующем примере кода показано, как создать элемент управления содержимым типа checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

В следующем примере кода показано, как создать элемент управления содержимым типа rich text box:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

В следующем примере кода показано, как создать элемент управления содержимым типа поле со списком:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Как обновить элементы управления контентом

В этом разделе объясняется, как обновить значения SDT или управлять содержимым программными средствами.

В следующем примере кода показано, как установить текущее состояние checkbox:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

В следующем примере кода показано, как изменить элементы управления содержимым типа обычного текстового поля, выпадающего списка и изображения:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл с этими примерами по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Привязка элемента управления содержимым к пользовательским частям XML

Вы можете привязать элементы управления содержимым к данным XML (*custom XML part*) в документах Word.

В следующем примере кода показано, как привязать элемент управления содержимым к пользовательским частям XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Очистить содержимое элемента управления содержимым

Вы можете очистить содержимое элемента управления содержимым, отобразив заполнитель. Метод **StructuredDocumentTag.clear()** очищает содержимое этого тега структурированного документа и отображает заполнитель, если он определен. Однако невозможно очистить содержимое элемента управления содержимым, если в нем есть изменения. Если элемент управления содержимым не имеет заполнителя, вставляются пять пробелов, как в MS Word (за исключением повторяющихся разделов, элементов раздела, групп, флажков, цитат). Если элемент управления содержимым сопоставлен пользовательскому XML, узел, на который ссылается XML, очищается.

В следующем примере кода показано, как очистить содержимое элемента управления содержимым:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Изменение цвета фона и границ элементов управления содержимым

Свойство `StructuredDocumentTag.Color` позволяет получить или задать цвет элемента управления содержимым. Цвет влияет на управление содержимым в двух ситуациях:

1. MS Word выделяет фон элемента управления содержимым при наведении курсора мыши на элемент управления содержимым. Это помогает идентифицировать элемент управления содержимым. Цвет выделения немного "мягче", чем *Color*. Например, слово MS выделяет фон розовым цветом, в то время как *Color* - красным.
2. Когда вы взаимодействуете (редактируете, выбираете и т.д.) с элементом управления контентом, граница элемента управления контентом окрашивается в цвет *Color*.

В следующем примере кода показано, как изменить цвет элемента управления содержимым:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Как задать стиль для форматирования текста, введенного в элемент управления содержимым

Если вы хотите задать стиль управления содержимым, вы можете использовать свойства `StructuredDocumentTag.Style` или `StructuredDocumentTag.StyleName`. Когда вы вводите текст в content control в выходном документе, набранный текст будет иметь стиль "Цитата".

{{% alert color="primary" %}}

Обратите внимание, что к элементу управления контентом могут быть применены только связанные стили и стили символов. Сообщение InvalidOperationException ("Невозможно применить этот стиль к SDT") выдается, когда применяется стиль, который существует, но не связан, или стиль символов.

{{% /alert %}}

В следующем примере кода показано, как задать стиль управления контентом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Работа с повторяющимся содержимым раздела

Элемент управления содержимым повторяющегося раздела позволяет повторять содержимое, содержащееся в нем. Используя Aspose.Words, можно создать узлы тегов структурированного документа типов повторяющийся раздел и повторяющиеся элементы раздела, и для этой цели [SdtType тип перечисления](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) предоставляет элемент REPEATING_SECTION_ITEM.

В следующем примере кода показано, как привязать элемент управления содержимым повторяющегося раздела к таблице:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

