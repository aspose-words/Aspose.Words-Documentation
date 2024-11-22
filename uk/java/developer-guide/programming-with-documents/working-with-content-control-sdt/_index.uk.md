---
title: Робота з управління контентом SDT в Java
second_title: Aspose.Words для Java
articleTitle: Робота з управління контентом SDT
linktitle: Робота з управління контентом SDT
type: docs
description: "Розширене управління контентом документів, як створити та маніпулювати контент-контрольами (знаки Structured Document) Javaй"
weight: 390
url: /uk/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

У Microsoft Word, Ви можете створити форму, починаючи з шаблону і додаючи контроль вмісту, включаючи прапорці, текстові коробки, дати пікселики і випадаючі списки. У Aspose.Words, > Конструктивний тег документа або контроль вмісту з будь-якого документа, завантаженого в Aspose.Words імпортується як СтруктурованийDocumentTag node. Структуровані теги документів (SDT або контроль вмісту) дозволяють вбудовувати індивідуальну семантику, а також її поведінку та зовнішній вигляд у документ.

СтруктурованийДокумент Тег може статися в документі в наступних місцях:

- Блок-рівень - Серед абзаців і таблиць, як дитина тіла, заголовокЛідер, коментар, Футнот або вершина.
- Рів-рівень - Серед рядів в таблиці, як дитина настільного вузла.
- Клітка-рівень - Серед клітин в рядку столу, як дитина рупного вузла.
- Внутрішньорівневе - Внутрішньочервоний зміст, як дитина Параграфа.
- Випробувано в іншому структуріDocumentTag.

## Вставте контроль вмісту в документ

У цій версії Aspose.Words, можуть бути створені наступні типи SDT або управління контентом:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Приклад коду показує, як створити контроль вмісту прапорця типу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Приклад коду показує, як створити контроль вмісту багатої текстової коробки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Приклад наступного коду показує, як створити контроль вмісту комбо коробки типу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Як оновити контроль вмісту

Цей розділ пояснює, як оновити значення програми керування SDT або контентом.

Приклад коду показує, як встановити поточний стан прапорця:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Наприклад, наступний код показує, як змінити контроль вмісту звичайної текстової коробки типу, випадаючий список та зображення:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок з цих прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx)й

{{% /alert %}}

## Binding Content Control для користувальницьких XML частин

Ви можете зв’язатися з даними XML (*custom XML part*) у документах Word

Приклад коду показує, як зв'язати контроль вмісту на замовлення XML частин:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Очистити вміст контенту

Ви можете очистити вміст контрольного вмісту з відображенням власника місця. **СтруктурованийDocumentTag.clear()** метод очищає вміст цього структурованого тегу документа і відображає статус, якщо він визначений. Однак, Неможливо очистити вміст контенту, якщо він має версії. Якщо контент-контроль не має резидента, п'ять пробілів вставляються як в MS Word (крім повторних розділів, повторення елементів розділу, груп, чек-боксів, цитування). Якщо керування контентом налаштовується на користувацьку XML, позначений вузол XML.

Приклад коду показує, як очистити вміст контенту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Зміна вмісту управління фоном та прикордонними кольорами

Про нас `StructuredDocumentTag.Color` Зручність в об'єкті дозволяє отримати або встановити колір управління контентом. Колір впливає на контроль вмісту в двох ситуаціях:

1,1 км MS Word висвітлює фон управління контентом, коли миша переходить на контроль вмісту. Це допомагає визначити контроль вмісту. Колір висвітлення трохи "м'якше" ніж *Color*й Наприклад, MS Word висвітлює фон з рожевим кольором, коли *Color* червоний.
2,2 км Коли ви взаємодієте (видалення, забір і т.д.) з контролем вмісту, кордон контролю вмісту кольоровий з *Color*й

Приклад коду показує, як змінити колір управління контентом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Як встановити стиль для форматування тексту, що виводиться в контроль вмісту

Якщо ви хочете встановити стиль управління контентом, ви можете використовувати `StructuredDocumentTag.Style` або `StructuredDocumentTag.StyleName` властивості. Коли ви набираєте текст у контроль вмісту у вихідному документі, набраний текст буде мати стиль "Швидке".

{{% alert color="primary" %}}

Зауважте, що лише за посиланнями та стилі символів можна застосувати до контролю вмісту. InvalidOperationException ("Неможливо застосувати цей стиль до SDT") кидається, коли застосовується стиль, який існує, але не посилання або стиль символів.

{{% /alert %}}

Приклад коду показує, як встановити стиль управління контентом:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Робота з повторним управлінням контенту

Контроль вмісту повторення дозволяє повторювати вміст, що міститься в ньому. Використання Aspose.Words, структуровані типи тегів документів, що повторюють розділ, можуть бути створені та для цього, [Одеса _ Branch No31 _ TITLE_COMPANYCOMПАНИ](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) надає зареєстровані дані для користувачів сайту.

Приклад наступного коду показує, як зв'язати контроль вмісту повторюваного розділу до таблиці:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

