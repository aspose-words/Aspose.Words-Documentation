---
title: Работа с Watermark в Java
second_title: Aspose.Words для Java
articleTitle: Работа с Watermark
linktitle: Работа с Watermark
type: docs
description: "Манипуляции с водяными знаками документов Java."
weight: 70
url: /ru/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

Эта тема обсуждает, как программно работать с водяным знаком с помощью Aspose.Words. Водяной знак - это фоновое изображение, которое отображается за текстом в документе. Водяной знак может содержать текст или изображение, представленное [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) класс.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатный онлайн документ Watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Добавить водяной знак в документ

В Microsoft Word, водяной знак может быть легко вставлен в документ с помощью команды Insert Watermark. Aspose.Words обеспечивает [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) класс для добавления или удаления водяного знака в документах. Aspose.Words обеспечивает [Водяной знак Тип](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)Перечисление, определяющее три возможных типа водяных знаков (текст, изображение и отсутствие) для работы

### Добавить текст Watermark

Следующий пример кода показывает, как вставить текстовый водяной знак в документ, определяя: [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) используя [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Добавить изображение Watermark

Следующий пример кода показывает, как вставить водяной знак изображения в документ, определяя [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) используя [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Водяной знак также может быть вставлен с использованием класса формы. Очень легко вставить любую форму или изображение в заголовок или нижний колонтитул и таким образом создать водяной знак любого мыслимого типа.

Следующий пример кода вставляет водяной знак в документ Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Удалить водяной знак из документа

The [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) Класс обеспечивает `Remove` Способ удаления водяного знака из документа.

Следующие примеры кода показывают, как удалить водяной знак из документов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Чтобы удалить водяной знак из документа, вы должны установить только название формы водяного знака во время вставки, а затем удалить форму водяного знака по назначенному имени.

Следующий пример кода показывает, как установить название формы водяного знака и удалить его из документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Добавьте водяной знак в столовую ячейку

Иногда вам нужно вставить водяной знак / изображение в ячейку стола и отобразить его за пределами стола. [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) собственность. Это свойство получает или устанавливает флаг, указывающий, отображается ли форма внутри стола или снаружи. Обратите внимание, что это свойство работает только тогда, когда вы оптимизируете документ. Microsoft Word 2010 год с использованием [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) метод

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
