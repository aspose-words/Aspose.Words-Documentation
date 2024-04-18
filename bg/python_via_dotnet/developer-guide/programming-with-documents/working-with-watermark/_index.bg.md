---
title: Работа с воден знак в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с воден знак
linktitle: Работа с воден знак
description: "Създаване и управление на водни знаци в документ, използвайки Python."
type: docs
weight: 340
url: /bg/python-net/working-with-watermark/
---

Тази тема обсъжда как да се работи програмично с воден знак използване Aspose.Words. Воден знак е фоново изображение, което показва зад текста в документ. Воден знак може да съдържа текст или изображение, представено от [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) Клас.

{{% alert color="primary" %}}

**Опитай онлайн**

Можете да опитате тази функционалност с нашия [Безплатен онлайн документ воден знак](https://products.aspose.app/words/watermark).

{{% /alert %}}

## Как да добавите воден знак към документ

В Microsoft Word, може лесно да се постави воден знак в документ, като се използва командата "Вмъкни воден знак." Aspose.Words осигурява [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) клас за добавяне или премахване на воден знак в документи. Aspose.Words осигурява [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) изброяване, определящо три възможни вида водни знаци ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image), както и [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none)) да работи с

### Добавяне на текстов воден знак

Следният пример за код показва как да се постави текстов воден знак в документ чрез определяне [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) с помощта на [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/) метод.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Добавяне на изображение воден знак

Следният пример за код показва как да се постави изображение воден знак в документ чрез определяне [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) с помощта на [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/) метод:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Водният знак може да бъде поставен и с помощта на клас форма. Много е лесно да вмъкнете всяка форма или изображение в заглавна част или стъпало и по този начин да създадете воден знак от всеки въображаем тип.

Следният пример за код вмъква воден знак в Word документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Тук](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Премахване на воден знак от документ

На [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) клас осигурява метода за премахване на водния знак от документ.

Следният пример с код показва как да се премахне воден знак от документите:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Ако водните знаци се добавят с помощта на [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) обект клас след това, за да премахнете водния знак от документ, трябва да зададете само името на формата на воден знак по време на вмъкване и след това да премахнете формата на воден знак с определено име.

Следният пример с код ви показва как да зададете името на формата на водния знак и да го премахнете от документа:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Добавяне на воден знак в клетка на таблицата

Понякога трябва да поставите воден знак / изображение в клетка на масата и да го покажете извън масата, можете да използвате [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) собственост. Това свойство получава или поставя флаг, показващ дали формата се показва в таблица или извън нея. Имайте предвид, че този имот работи само когато оптимизирате документа за Microsoft Word 2010 с помощта на [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) метод.

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
