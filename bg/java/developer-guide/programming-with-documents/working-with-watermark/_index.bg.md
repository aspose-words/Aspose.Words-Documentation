---
title: Работа с воден знак в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с воден знак
linktitle: Работа с воден знак
type: docs
description: "Манипулация на воден знак с документ Java."
weight: 70
url: /bg/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Тази тема обсъжда как да се работи програмично с воден знак използване Aspose.Words. Воден знак е фоново изображение, което показва зад текста в документ. Воден знак може да съдържа текст или изображение, представено от [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Клас.

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатен онлайн документ воден знак](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Добавяне на воден знак към документ

В Microsoft Word, може лесно да бъде поставен воден знак в документ, като се използва командата "Вмъкни воден знак." Aspose.Words осигурява [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) клас за добавяне или премахване на воден знак в документи. Aspose.Words осигурява [Воден знак Тип](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)изброяване, определящо три възможни вида водни знаци (Текст, изображение и None), с които да работите

### Добавяне на текстов воден знак

Следният пример за код показва как да се постави текстов воден знак в документ чрез определяне [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) с помощта на [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Добавяне на изображение воден знак

Следният пример за код показва как да се постави изображение воден знак в документ чрез определяне [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) с помощта на [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Водният знак може да бъде поставен и с помощта на клас форма. Много е лесно да вмъкнете всяка форма или изображение в заглавна част или стъпало и по този начин да създадете воден знак от всеки въображаем тип.

Следният пример за код вмъква воден знак в Word документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Премахване на воден знак от документ

На [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) клас осигурява `Remove` метод за отстраняване на водния знак от документ.

Следните примери за кодове показват как да се премахне воден знак от документите:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

За да премахнете водния знак от документ, трябва да зададете само името на формата на водния знак по време на поставяне и след това да премахнете формата на водния знак с определено име.

Следният пример с код ви показва как да зададете името на формата на водния знак и да го премахнете от документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Добавяне на воден знак в клетка на таблицата

Понякога трябва да поставите воден знак / изображение в клетка на масата и да го покажете извън масата, можете да използвате [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) собственост. Това свойство получава или поставя флаг, показващ дали формата се показва в таблица или извън нея. Имайте предвид, че този имот работи само когато оптимизирате документа за Microsoft Word 2010 г. [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) метод

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
