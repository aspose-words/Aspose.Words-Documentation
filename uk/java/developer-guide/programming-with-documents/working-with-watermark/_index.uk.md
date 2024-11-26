---
title: Робота з водяним знаком Java
second_title: Aspose.Words для Java
articleTitle: Робота з водяним знаком
linktitle: Робота з водяним знаком
type: docs
description: "Документація водяного знака за допомогою Javaй"
weight: 70
url: /uk/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Ця тема обговорює, як працювати программатично з водяним знаком Aspose.Wordsй Watermark - це фонове зображення, яке відображає за текстом у документі. Водяний знак може містити текст або зображення, представлене на сайті [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) клас.

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовний онлайн документ водяний знак](https://products.aspose.app/words/watermark)й

{{% /alert %}}

## Додати водяний знак до документа

У Microsoft Word, водяний знак можна легко вставляти в документ за допомогою команди Insert Watermark. Aspose.Words забезпечує [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) клас додавати або видаляти водяний знак в документах. Aspose.Words забезпечує [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)анумація, що визначає три можливі типи водяних знаків (Text, Image та None) для роботи з

### Додати текст водяний знак

Приклад коду показує, як вставити текст водяного знака в документі шляхом визначення [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) використання [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Додати водяний знак зображення

Приклад коду показує, як вставити водяний знак зображення в документі шляхом визначення [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) використання [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Водяний знак також можна вставляти за допомогою класа форми. Дуже легко вставляти будь-яку форму або зображення в заголовок або нижній колонтитул і таким чином створити водяний знак будь-якого явного типу.

Приклад наступного коду вставляє водяний знак у документ Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)й

{{% /alert %}}


## Видалити водяний знак з документа

Про нас [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) клас забезпечує `Remove` спосіб видалити водяний знак з документа.

Приклади коду показують, як видалити водяний знак з документів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Щоб видалити водяний знак з документа, потрібно встановити тільки назву форми водяного знака під час вставки, а потім видалити форму водяного знака за вказаною назвою.

Приклад коду показує, як встановити назву форми водяного знака і видалити його з документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Додати водяний знак в клітинку таблиці

Іноді потрібно вставити водяний знак / зображення в комірку таблиці і відобразити його зовні столу, можна використовувати [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) майно. Ця властивість отримує або встановлює прапор, що вказує на те, що форма відображається всередині таблиці або зовні нього. Зверніть увагу, що це майно працює тільки тоді, коли ви оптимізуєте документ для Microsoft Word 2010 за допомогою [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) метод

Приклад коду показує, як використовувати цю властивість:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
