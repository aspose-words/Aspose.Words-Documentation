---
title: Робота з водяним знаком в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з водяним знаком
linktitle: Робота з водяним знаком
description: "Створення та управління водяними знаками в документі Pythonй"
type: docs
weight: 340
url: /uk/python-net/working-with-watermark/
---

Ця тема обговорює, як працювати программатично з водяним знаком Aspose.Wordsй Watermark - це фонове зображення, яке відображає за текстом у документі. Водяний знак може містити текст або зображення, представлене на сайті [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) клас.

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовний онлайн документ водяний знак](https://products.aspose.app/words/watermark)й

{{% /alert %}}

## Як додати водяний знак до документа

У Microsoft Word, водяний знак можна легко вставляти в документ за допомогою команди Insert Watermark. Aspose.Words забезпечує [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) клас додавати або видаляти водяний знак в документах. Aspose.Words забезпечує [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) анумація, що визначає три можливі види водяних знаків ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), і [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) працювати з

### Додати текст водяний знак

Приклад коду показує, як вставити текст водяного знака в документі шляхом визначення [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) використання [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) метод.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Додати водяний знак зображення

Приклад коду показує, як вставити водяний знак зображення в документі шляхом визначення [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) використання [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Водяний знак також можна вставляти за допомогою класа форми. Дуже легко вставляти будь-яку форму або зображення в заголовок або нижній колонтитул і таким чином створити водяний знак будь-якого явного типу.

Приклад наступного коду вставляє водяний знак у документ Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}


## Видалити водяний знак з документа

Про нас [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) клас забезпечує видалення способу видалення водяного знака з документа.

Приклад коду показує, як видалити водяний знак з документів:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Якщо водяні знаки додаються за допомогою водяних знаків [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Після того, щоб видалити водяний знак з документа, потрібно встановити тільки назву форми водяного знака при вставці, а потім видалити форму водяного знака за вказаною назвою.

Приклад наступного коду показує, як встановити назву форми водяного знака і видалити його з документа:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Додати водяний знак в клітинку таблиці

Іноді потрібно вставити водяний знак / зображення в комірку таблиці і відобразити його зовні столу, можна використовувати водяний знак [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) майно. Ця властивість отримує або встановлює прапор, що вказує на те, що форма відображається всередині таблиці або зовні нього. Зверніть увагу, що це майно працює тільки тоді, коли ви оптимізуєте документ для Microsoft Word 2010 за допомогою [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) метод.

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
