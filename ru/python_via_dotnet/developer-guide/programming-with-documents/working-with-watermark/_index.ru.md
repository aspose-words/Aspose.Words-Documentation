---
title: Работа с водяными знаками в Python
second_title: Aspose.Words за Python via .NET
articleTitle: Работа с водяным знаком
linktitle: Работа с водяным знаком
description: "Создавайте водяные знаки в документе и управляйте ими с помощью Python."
type: docs
weight: 340
url: /ru/python-net/working-with-watermark/
---

В этом разделе обсуждается, как программно работать с водяными знаками с помощью Aspose.Words. Водяной знак — это фоновое изображение, которое отображается позади текста в документе. Водяной знак может содержать текст или изображение, представленное классом [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функциональность с нашим [Бесплатный водяной знак для онлайн-документов](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Как добавить водяной знак в документ

В Microsoft Word водяной знак можно легко вставить в документ с помощью команды "Вставить водяной знак". Aspose.Words предоставляет класс [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) для добавления или удаления водяных знаков в документах. Aspose.Words предоставляет перечисление [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/), определяющее три возможных типа водяных знаков ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) и [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)), с которыми можно работать

### Добавить текстовый водяной знак

В следующем примере кода показано, как вставить текстовый водяной знак в документ, определив [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) с помощью метода [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Добавить водяной знак изображения

В следующем примере кода показано, как вставить водяной знак изображения в документ, определив [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) с помощью метода [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Водяной знак также можно вставить с помощью класса формы. Очень легко вставить любую форму или изображение в верхний или нижний колонтитул и таким образом создать водяной знак любого мыслимого типа.

В следующем примере кода в документ Word вставляется водяной знак:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера по адресу [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Удалить водяной знак из документа

Класс [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) предоставляет метод удаления для удаления водяного знака из документа.

В следующем примере кода показано, как удалить водяной знак из документов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Если водяные знаки добавляются с использованием объекта класса [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), то для удаления водяного знака из документа вам необходимо при вставке задать только имя формы водяного знака, а затем удалить фигуру водяного знака по назначенному имени.

В следующем примере кода показано, как задать имя фигуры водяного знака и удалить его из документа:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Добавьте водяной знак в ячейку таблицы

Иногда вам нужно вставить водяной знак/изображение в ячейку таблицы и отобразить его за пределами таблицы, вы можете использовать свойство [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Это свойство получает или задает флаг, указывающий, отображается ли фигура внутри таблицы или за ее пределами. Обратите внимание, что это свойство работает только при оптимизации документа для Microsoft Word 2010 года с использованием метода [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

В следующем примере кода показано, как использовать это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
