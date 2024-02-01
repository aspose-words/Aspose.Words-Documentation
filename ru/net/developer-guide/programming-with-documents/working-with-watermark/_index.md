---
title: Работа с водяными знаками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с водяным знаком
linktitle: Работа с водяным знаком
description: "Документируйте манипуляции с водяными знаками с помощью C#."
type: docs
weight: 340
url: /ru/net/working-with-watermark/
---

В этом разделе обсуждается, как программно работать с водяным знаком с помощью Aspose.Words. Водяной знак — это фоновое изображение, которое отображается позади текста в документе. Водяной знак может содержать текст или изображение, представленное классом [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функциональность с нашим [Бесплатный водяной знак для онлайн-документов](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Добавить водяной знак в документ

В Microsoft Word водяной знак можно легко вставить в документ с помощью команды "Вставить водяной знак". Aspose.Words предоставляет класс [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) для добавления или удаления водяных знаков в документах. Aspose.Words предоставляет перечисление [Тип водяного знака](https://reference.aspose.com/words/net/aspose.words/watermark/type/), определяющее три возможных типа водяных знаков (текст, изображение и отсутствие) для работы

### Добавить текстовый водяной знак

В следующем примере кода показано, как вставить текстовый водяной знак в документ, определив [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) с помощью метода [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Добавить водяной знак изображения

В следующем примере кода показано, как вставить водяной знак изображения в документ, определив [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) с помощью метода [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Водяной знак также можно вставить с помощью класса формы. Очень легко вставить любую форму или изображение в верхний или нижний колонтитул и таким образом создать водяной знак любого мыслимого типа.

В следующем примере кода в документ Word вставляется водяной знак:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Удалить водяной знак из документа

Класс [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) предоставляет метод удаления для удаления водяного знака из документа.

В следующем примере кода показано, как удалить водяной знак из документов:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Если водяные знаки добавляются с использованием объекта класса [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/), то для удаления водяного знака из документа вам необходимо при вставке задать только имя формы водяного знака, а затем удалить фигуру водяного знака по присвоенному имени.

В следующем примере кода показано, как задать имя фигуры водяного знака и удалить его из документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Добавьте водяной знак в ячейку таблицы

Иногда вам нужно вставить водяной знак/изображение в ячейку таблицы и отобразить его за пределами таблицы, вы можете использовать свойство [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Это свойство получает или задает флаг, указывающий, отображается ли фигура внутри таблицы или за ее пределами. Обратите внимание, что это свойство работает только при оптимизации документа для Microsoft Word 2010 с использованием метода [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
