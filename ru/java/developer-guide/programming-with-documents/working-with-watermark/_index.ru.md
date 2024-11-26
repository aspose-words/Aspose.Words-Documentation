---
title: Работа с водяным знаком в Java
second_title: Aspose.Words для Java
articleTitle: Работа с водяными знаками
linktitle: Работа с водяными знаками
type: docs
description: "Манипулирование водяными знаками документа с помощью Java."
weight: 70
url: /ru/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

В этом разделе обсуждается, как программно работать с водяным знаком с помощью Aspose.Words. Водяной знак - это фоновое изображение, которое отображается за текстом в документе. Водяной знак может содержать текст или изображение, представленные классом [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете опробовать эту функцию с нашим [Бесплатный онлайн документ водяного знака](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Добавление водяного знака к документу

В Microsoft Word водяной знак можно легко вставить в документ с помощью команды Вставить водяной знак. Aspose.Words предоставляет класс [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) для добавления или удаления водяных знаков в документах. Aspose.Words содержит перечисление [WatermarkType](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/), определяющее три возможных типа водяных знаков (текст, изображение и без водяных знаков) для работы.

### Добавить текстовый водяной знак

В следующем примере кода показано, как вставить текстовый водяной знак в документ, определив [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) с помощью метода [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Добавить водяной знак на изображение

В следующем примере кода показано, как вставить водяной знак изображения в документ, определив [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) с помощью метода [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Водяной знак также можно вставить с помощью класса shape. Очень легко вставить любую фигуру или изображение в верхний или нижний колонтитул и, таким образом, создать водяной знак любого мыслимого типа.

В следующем примере кода водяной знак вставляется в документ Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с сайта [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Удаление водяного знака из документа

Класс [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) предоставляет метод `Remove` для удаления водяного знака с документа.

В следующих примерах кода показано, как удалить водяной знак с документов:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Чтобы удалить водяной знак из документа, вам необходимо задать только название формы водяного знака во время вставки, а затем удалить форму водяного знака с помощью назначенного имени.

В следующем примере кода показано, как задать название формы водяного знака и удалить его из документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Добавление водяного знака в ячейку таблицы

Иногда вам нужно вставить водяной знак/изображение в ячейку таблицы и отобразить его за пределами таблицы, вы можете использовать свойство [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Это свойство возвращает или устанавливает флаг, указывающий, отображается ли фигура внутри таблицы или за ее пределами. Обратите внимание, что это свойство работает только при оптимизации документа для Microsoft Word 2010 года с использованием метода [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
