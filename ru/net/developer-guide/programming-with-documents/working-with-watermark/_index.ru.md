---
title: Работа с Watermark в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с Watermark
linktitle: Работа с Watermark
description: "Манипуляции с водяными знаками документов C#."
type: docs
weight: 340
url: /ru/net/working-with-watermark/
timestamp: 2024-05-02-11-51-44
---

Эта тема обсуждает, как программно работать с водяным знаком с помощью Aspose.Words. Водяной знак - это фоновое изображение, которое отображается за текстом в документе. Водяной знак может содержать текст или изображение, представленное [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) класс.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатный онлайн документ Watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Добавить водяной знак в документ

В Microsoft Word, водяной знак может быть легко вставлен в документ с помощью команды Insert Watermark. Aspose.Words обеспечивает [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) класс для добавления или удаления водяного знака в документах. Aspose.Words обеспечивает [Водяной знак Тип](https://reference.aspose.com/words/net/aspose.words/watermark/type/)Перечисление, определяющее три возможных типа водяных знаков (текст, изображение и нет) для работы

### Добавить текст Watermark

Следующий пример кода показывает, как вставить текстовый водяной знак в документ, определяя: [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) используя [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Добавить изображение Watermark

Следующий пример кода показывает, как вставить водяной знак изображения в документ, определяя [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) используя [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) метод:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Водяной знак также может быть вставлен с использованием класса формы. Очень легко вставить любую форму или изображение в заголовок или нижний колонтитул и таким образом создать водяной знак любого мыслимого типа.

Следующий пример кода вставляет водяной знак в документ Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Удалить водяной знак из документа

The [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) Класс обеспечивает способ удаления водяного знака из документа.

Следующий пример кода показывает, как удалить водяной знак из документов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Если водяные знаки добавляются с использованием [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Затем, чтобы удалить водяной знак из документа, вы должны установить только название формы водяного знака во время вставки, а затем удалить форму водяного знака по назначенному имени.

Следующий пример кода показывает, как установить название формы водяного знака и удалить его из документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Добавьте водяной знак в столовую ячейку

Иногда вам нужно вставить водяной знак / изображение в ячейку стола и отобразить его за пределами стола. [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) собственность. Это свойство получает или устанавливает флаг, указывающий, отображается ли форма внутри стола или снаружи. Обратите внимание, что это свойство работает только тогда, когда вы оптимизируете документ. Microsoft Word 2010 год с использованием [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) метод.

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
