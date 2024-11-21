---
title: Робота з управління контентом SDT
second_title: Aspose.Words для .NET
articleTitle: Робота з управління контентом SDT
linktitle: Робота з управління контентом SDT
description: "Розширене управління контентом документів, як створити та маніпулювати контент-контрольами (знаки Structured Document) C#й"
type: docs
weight: 390
url: /uk/net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

У Microsoft Word, Ви можете створити форму, починаючи з шаблону і додаючи контроль вмісту, включаючи прапорці, текстові коробки, дати пікселики і випадаючі списки. У <span notrans="<span notrans=" Aspose.Words"=""></span>, > Конструктивний тег документа або контроль вмісту з будь-якого документа, завантаженого в Aspose.Words імпортується як СтруктурованийDocumentTag node. Структуровані теги документів (SDT або контроль вмісту) дозволяють вбудовувати індивідуальну семантику, а також її поведінку та зовнішній вигляд у документ.

СтруктурованийДокумент Тег може статися в документі в наступних місцях:

- Блок-рівень - Серед абзаців і таблиць, як дитина тіла, заголовок, коментар, Футнот або вершина
- Рів-рівень - Серед рядків у таблиці, як дитина настільного вузла
- Рівень клітинки - Серед клітинок в рядку столу, як дитина вузла роу
- Внутрішньорівневе - Внутрішнє наповнення всередині, як дитина Параграфа
- Випробувано в інший структурований документ Навігація

## Вставте контроль вмісту в документ

У цій версії Aspose.Words, можуть бути створені такі типи SDT або управління контентом:

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

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Приклад коду показує, як створити контроль вмісту багатого тексту:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Приклад наступного коду показує, як створити контроль вмісту коробки типу combo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Як оновити контроль вмісту

Цей розділ пояснює, як оновити значення програми керування SDT або контентом.

Приклад коду показує, як встановити поточний стан прапорця:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Наприклад, наступний код показує, як змінити контроль вмісту звичайної текстової коробки типу, випадаючий список та зображення:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Binding Content Control для користувальницьких XML частин

Ви можете зв’язатися з даними XML (*custom XML part*) у документах Word.

Приклад коду показує, як підключити контроль вмісту на користувацьких частинах XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## XMLMapping структурований діапазон тегів документів

Ви можете отримати копію цього структурованого діапазону тегів для XML даних у користувальницькому XML частини поточного документа з використанням поточного документа **СтруктураdDocumentTagRangeStart.XmlMapping майно**й Однак, [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) метод може бути використаний для копіювання структурованого діапазону тегів до даних XML.

Приклад наступного коду показує, як встановити XML-картування:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Очистити вміст контенту

Ви можете очистити вміст контрольного вмісту з відображенням власника місця. Про нас **StructuredDocumentTag.Clear** метод очищає вміст цього структурованого тегу документа і відображає статус, якщо він визначений. Однак Неможливо очистити вміст контенту, якщо він має версії. Якщо контент-контроль не має резидента, вставляється п'ять пробілів Microsoft Word (крім повторюваних розділів, елементів, груп, контрольних скриньок, цитування). Якщо керування контентом налаштовується на користувацьку XML, позначений вузол XML.

Приклад коду показує, як очистити вміст контенту:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Зміна вмісту управління фоном та прикордонними кольорами

Про нас `StructuredDocumentTag.Color` Зручність в об'єкті дозволяє отримати або встановити колір управління контентом. Колір впливає на контроль вмісту в двох ситуаціях:

1,1 км MS Word висвітлює фон управління контентом, коли миша рухається над контролем вмісту. Це допомагає визначити контроль вмісту. Колір висвітлення трохи "м'якше" ніж *Color*й Наприклад, MS Word висвітлює фон з рожевим кольором, коли *Color* червоний.
2,2 км Коли ви взаємодієте (видалення, забір і т.д.) з контролем вмісту, кордон управління контентом кольоровий з *Color*й

Приклад коду показує, як змінити колір управління контентом:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Як встановити стиль для форматування тексту, що виводиться в контроль вмісту

Якщо ви хочете встановити стиль управління контентом, ви можете використовувати `StructuredDocumentTag.Style` або `StructuredDocumentTag.StyleName` властивості. Коли ви набираєте текст у контроль вмісту у вихідному документі, типований текст буде мати стиль "Швидке".

{{% alert color="primary" %}}

Зауважте, що лише за посиланнями та стилі символів можна застосувати до контролю вмісту. InvalidOperationException ("Неможливо застосувати цей стиль до SDT") кидається, коли застосовується стиль, який існує, але не посилання або стиль символів.

{{% /alert %}}

Приклад коду показує, як встановити стиль управління контентом:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Робота з повторним управлінням контенту

Контроль вмісту повторення дозволяє повторювати вміст, що міститься в ньому. Використання Aspose.Words, структуровані типи тегів документів, що повторюють розділ, можуть бути створені та для цього, [Тип обмотки SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) Послуги **RepeatingSectionItem** майно.

Приклад наступного коду показує, як зв'язати контроль вмісту повторюваного розділу до таблиці.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
