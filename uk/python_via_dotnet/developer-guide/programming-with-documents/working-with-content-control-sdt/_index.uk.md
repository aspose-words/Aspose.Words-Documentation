---
title: Робота з управління контентом SDT
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з управління контентом SDT
linktitle: Робота з управління контентом SDT
description: "За допомогою python ви можете зібрати індивідуальну семантику, а також її поведінку і зовнішній вигляд в документ."
type: docs
weight: 390
url: /uk/python-net/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

У Microsoft Word, Ви можете створити форму, починаючи з шаблону і додаючи контроль вмісту, включаючи прапорці, текстові коробки, дати пікселики і випадаючі списки. У Aspose.Words, > Конструктивний тег документа або контроль вмісту з будь-якого документа, завантаженого в Aspose.Words імпортується як [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) вузол. Структуровані теги документів (SDT або контроль вмісту) дозволяють вбудовувати індивідуальну семантику, а також її поведінку та зовнішній вигляд у документ. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) може виникнути в документі в наступних місцях:

- Блок-рівень - Серед абзаців і столів, як дитина дитини [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) чи [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) вуаєрист
- Рів-рівень - Серед рядків у таблиці, як дитина [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) вуаєрист
- Рівень клітин - Серед клітин в рядку столу, як дитина [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) вуаєрист
- Внутрішньорівневе - Внутрішнє наповнення всередині, як дитина [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Нестередний в іншому [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

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

Приклад коду показує, як створити контроль вмісту прапорця типу.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Приклад коду показує, як створити контроль вмісту багатої текстової коробки.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Приклад коду показує, як створити контроль вмісту коробки типу combo.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Як оновити контроль вмісту

Цей розділ пояснює, як оновити значення програми керування SDT або контентом

Приклад коду показує, як встановити поточний стан прапорця:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Наприклад, наступний код показує, як змінити контроль вмісту звичайної текстової коробки типу, випадаючий список та зображення:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок з цих прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx)й

{{% /alert %}}

## Binding Content Control для користувальницьких XML частин

Ви можете зв’язатися з даними XML (*custom XML part*) у документах Word.

Приклад коду показує, як підключити контроль вмісту на користувацьких частинах XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## XMLMapping структурований діапазон тегів документів

Ви можете отримати копію цього структурованого діапазону тегів для XML даних у користувальницькому XML частини поточного документа з використанням поточного документа [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/) майно. Однак, [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) метод може бути використаний для копіювання структурованого діапазону тегів до даних XML.

Приклад наступного коду показує, як встановити XML-картування:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Очистити вміст контенту

Ви можете очистити вміст контрольного вмісту з відображенням власника місця. [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) метод очищає вміст даної структурованої теги документів і відображає статус, якщо він визначений. Однак Неможливо очистити вміст контенту, якщо він має версії. Якщо контент-контроль не має держателя, п'ять пробілів вставляються як в MS Word (крім повторних розділів, повторення елементів розділу, груп, чек-боксів, цитування). Якщо керування контентом налаштовується на користувацьку XML, шифрований вузол XML.

Приклад коду показує, як очистити вміст контенту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Зміна вмісту управління фоном та прикордонними кольорами

Про нас [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) Зручність в об'єкті дозволяє отримати або встановити колір управління контентом. Колір впливає на контроль вмісту в двох ситуаціях:

1,1 км MS Word висвітлює фон управління контентом, коли миша рухається над контролем вмісту. Це допомагає визначити контроль вмісту. Колір висвітлення трохи "м'якше" ніж *color*й Наприклад, MS Word висвітлює фон з рожевим кольором, коли *color* червоний.
2,2 км Коли ви взаємодієте (видалення, забір і т.д.) з контролем вмісту, кордон управління контентом кольоровий з *color*й

Приклад коду показує, як змінити колір управління контентом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Як встановити стиль для форматування тексту, що виводиться в контроль вмісту

Якщо ви хочете встановити стиль управління контентом, ви можете використовувати [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) або [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/) властивості. Коли ви набираєте текст у контроль вмісту у вихідному документі, типований текст буде мати стиль "Швидке".

{{% alert color="primary" %}}

Зауважте, що лише за посиланнями та стилі символів можна застосувати до контролю вмісту. Виняток ("Неможливо застосувати цей стиль до SDT") кидається, коли стиль, який існує, але не посилюється або наноситься стиль символів.

{{% /alert %}}

Приклад коду показує, як встановити стиль управління контентом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Робота з повторним управлінням контенту

Контроль вмісту повторення дозволяє повторювати вміст, що міститься в ньому. Використання Aspose.Words, структуровані типи тегів документів, що повторюють розділ, можуть бути створені та для цього, [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) Тип нумерації забезпечує [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item) майно.

Приклад наступного коду показує, як зв'язати контроль вмісту повторюваного розділу до таблиці:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
