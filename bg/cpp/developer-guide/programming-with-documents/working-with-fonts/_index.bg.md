---
title: Работа с шрифтове в C++
second_title: Aspose.Words за C++
articleTitle: Работа с шрифтове
linktitle: Работа с шрифтове
description: "Форматиране на шрифта в детайли с C++."
type: docs
weight: 230
url: /bg/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифтът е набор от знаци с определен размер, цвят и дизайн. Aspose.Words Позволява ви да работите с шрифтове, като използвате [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) пространство от имена и [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) клас.

## Форматиране На Шрифта

Текущото форматиране на шрифта е представено от обекта **Font**, върнат от свойството [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). **Font** класът съдържа голямо разнообразие от свойства на шрифта, като копира тези, налични в Microsoft Word.

Следващият пример за код показва как да зададете форматиране на шрифта:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Свойствата на запълване вече са налични и за шрифтове, за да зададете форматиране на запълване на текст. Тя дава възможност за промяна, например, цвета на преден план или прозрачността на запълване на текст.

## Получаване На Разредка На Шрифта

Разредка на редовете на шрифта е вертикалното разстояние между изходните линии на два последователни реда текст. Така редовата разредка включва празното пространство между редовете заедно с височината на самия знак.

Свойството [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) е въведено в класа **Font**, За да се получи тази стойност, както е показано в примера по-долу.:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Шрифт EmphasisMark

Някои източноазиатски езици използват специален знак за акцентиране, за да посочат акцент. Класът **Font** предоставя свойството [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/), за да получите или зададете стойностите на изброяването `EmphasisMark`, които да се прилагат при форматиране.

Следният пример за код показва как да зададете свойството **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
