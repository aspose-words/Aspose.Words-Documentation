---
title: Робота з водяним знаком в C#
second_title: Aspose.Words для .NET
articleTitle: Робота з водяним знаком
linktitle: Робота з водяним знаком
description: "Документація водяного знака за допомогою C#й"
type: docs
weight: 340
url: /uk/net/working-with-watermark/
---

Ця тема обговорює, як працювати программатично з водяним знаком Aspose.Wordsй Watermark - це фонове зображення, яке відображає за текстом у документі. Водяний знак може містити текст або зображення, представлене на сайті [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) клас.

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовний онлайн документ водяний знак](https://products.aspose.app/words/watermark)й

{{% /alert %}}

## Додати водяний знак до документа

У Microsoft Word, водяний знак можна легко вставляти в документ за допомогою команди Insert Watermark. Aspose.Words забезпечує [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) клас додавати або видаляти водяний знак в документах. Aspose.Words забезпечує [Водомарка Тип](https://reference.aspose.com/words/net/aspose.words/watermark/type/)анумація, що визначає три можливі типи водяних знаків (Text, Image та None) для роботи з

### Додати текст водяний знак

Приклад коду показує, як вставити текст водяного знака в документі шляхом визначення [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) використання [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Додати водяний знак зображення

Приклад коду показує, як вставити водяний знак зображення в документі шляхом визначення [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) використання [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Водяний знак також можна вставляти за допомогою класа форми. Дуже легко вставляти будь-яку форму або зображення в заголовок або нижній колонтитул і таким чином створити водяний знак будь-якого явного типу.

Приклад наступного коду вставляє водяний знак у документ Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)й

{{% /alert %}}


## Видалити водяний знак з документа

Про нас [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) клас забезпечує видалення способу видалення водяного знака з документа.

Приклад коду показує, як видалити водяний знак з документів:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Якщо водяні знаки додаються за допомогою водяних знаків [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Після того, щоб видалити водяний знак з документа, потрібно встановити тільки назву форми водяного знака при вставці, а потім видалити форму водяного знака за вказаною назвою.

Приклад наступного коду показує, як встановити назву форми водяного знака і видалити його з документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Додати водяний знак в клітинку таблиці

Іноді потрібно вставити водяний знак / зображення в комірку таблиці і відобразити його зовні столу, можна використовувати водяний знак [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) майно. Ця властивість отримує або встановлює прапор, що вказує на те, що форма відображається всередині таблиці або зовні нього. Зверніть увагу, що це майно працює тільки тоді, коли ви оптимізуєте документ для Microsoft Word 2010 за допомогою [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) метод.

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
