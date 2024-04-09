---
title: Работа с Watermark в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с Watermark
linktitle: Работа с Watermark
description: "Создание и управление водяными знаками в документе с использованием Python."
type: docs
weight: 340
url: /ru/python-net/working-with-watermark/
---

Эта тема обсуждает, как программно работать с водяным знаком с помощью Aspose.Words. Водяной знак - это фоновое изображение, которое отображается за текстом в документе. Водяной знак может содержать текст или изображение, представленное [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) класс.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатный онлайн документ Watermark](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Как добавить водяной знак в документ

В Microsoft Word, водяной знак может быть легко вставлен в документ с помощью команды Insert Watermark. Aspose.Words обеспечивает [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) класс для добавления или удаления водяного знака в документах. Aspose.Words обеспечивает [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) Перечисление, определяющее три возможных типа водяных знаков[TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), и [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) для работы

### Добавить текст Watermark

Следующий пример кода показывает, как вставить текстовый водяной знак в документ, определяя: [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) используя [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) метод.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Добавить изображение Watermark

Следующий пример кода показывает, как вставить водяной знак изображения в документ, определяя [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) используя [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Водяной знак также может быть вставлен с использованием класса формы. Очень легко вставить любую форму или изображение в заголовок или нижний колонтитул и таким образом создать водяной знак любого мыслимого типа.

Следующий пример кода вставляет водяной знак в документ Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Вы можете скачать файл шаблона этого примера из [здесь](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Удалить водяной знак из документа

The [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) Класс обеспечивает способ удаления водяного знака из документа.

Следующий пример кода показывает, как удалить водяной знак из документов:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Если водяные знаки добавляются с использованием [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Затем, чтобы удалить водяной знак из документа, вы должны установить только название формы водяного знака во время вставки, а затем удалить форму водяного знака по назначенному имени.

Следующий пример кода показывает, как установить название формы водяного знака и удалить его из документа:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Добавить водяной знак в столовую клетку

Иногда вам нужно вставить водяной знак / изображение в ячейку стола и отобразить его за пределами стола. [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) собственность. Это свойство получает или устанавливает флаг, указывающий, отображается ли форма внутри стола или снаружи. Обратите внимание, что это свойство работает только тогда, когда вы оптимизируете документ. Microsoft Word 2010 год с использованием [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) метод.

Следующий пример кода показывает, как использовать это свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
