---
title: Работа с воден знак C++
second_title: Aspose.Words за C++
articleTitle: Работа с воден знак
linktitle: Работа с воден знак
type: docs
description: "Документ воден знак манипулация с C++."
weight: 340
url: /bg/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

Тази тема обсъжда как да се работи програмно с воден знак, използвайки Aspose.Words. Водният знак е фоново изображение, което се показва зад текста в документ. Водният знак може да съдържа текст или изображение, представлявано от класа [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Добавяне на воден знак към документ

В Microsoft Word воден знак може лесно да се вмъкне в документ с помощта на командата Вмъкване на воден знак. Aspose.Words осигурява класа [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) за добавяне или премахване на воден знак в документи. Aspose.Words осигурява [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)изброяване, дефиниращо три възможни типа водни знаци (текст, изображение и няма), с които да се работи.

### Добавяне На Текстов Воден Знак

Следващият пример за код показва как да вмъкнете текстов воден знак в документ, като дефинирате [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/), като използвате метода [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Добавяне На Воден Знак За Изображение

Следващият пример за код показва как да вмъкнете воден знак на изображение в документ, като дефинирате [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/), като използвате метода [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Водният знак също може да бъде вмъкнат, като се използва и клас на формата. Много е лесно да вмъкнете всяка форма или изображение в горен или долен колонтитул и по този начин да създадете воден знак от всякакъв вид. Следващият пример за код вмъква воден знак в документ Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Премахване на воден знак от документ

Клас [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) предоставя метод за премахване, за да премахнете водния знак от документ.

Следният пример за код показва как да премахнете воден знак от документи:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Ако водните знаци се добавят с помощта на обект [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) клас, тогава за да премахнете водния знак от документ, трябва да зададете само името на фигурата на водния знак по време на вмъкването и след това да премахнете фигурата на водния знак с зададено име.

Следващият пример за код ви показва как да зададете името на фигурата на водния знак и да я премахнете от документа:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Добавяне на воден знак в клетка на таблица

Понякога трябва да вмъкнете воден знак/изображение в клетката на таблицата и да го покажете извън таблицата, можете да използвате [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/) свойство. Това свойство получава или задава флаг, показващ дали фигурата се показва в таблица или извън нея. Обърнете внимание, че това свойство работи само когато оптимизирате документа за Microsoft Word 2010 г., като използвате метода [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Следният пример за код показва как да използвате това свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
