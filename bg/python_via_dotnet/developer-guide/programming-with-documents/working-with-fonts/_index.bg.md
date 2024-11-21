---
title: Работа с шрифтове в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с шрифтове
linktitle: Работа с шрифтове
description: "Потребителски настройки на шрифта Python."
type: docs
weight: 230
url: /bg/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт е набор от символи с определен размер, цвят и дизайн. Aspose.Words ви позволява да работите с шрифтове с помощта на [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) модул и [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) Клас.

## Форматиране на шрифта

Текущото форматиране на шрифта е представено от **Font** обект, върнат от [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) собственост. На **Font** клас съдържа голямо разнообразие от свойства на шрифта, възпроизвеждане на наличните в Microsoft Word.

Следният пример с код показва как да зададете форматиране на шрифта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Попълнете свойства сега са на разположение и за шрифтове, за да зададете попълване форматиране на текста. Тя дава възможност да се промени, например, цвета на преден план или прозрачността на попълването на текста.

## Получаване на шрифт Line Spacing

Разстоянието между редовете на шрифта е вертикалното разстояние между изходните линии на два последователни реда текст. Така че разстоянието между линиите включва празното пространство между линиите заедно с височината на самия символ.

На [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) собственост е въведена в [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) клас за получаване на тази стойност, както е показано в примера по-долу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Акцент върху шрифта Mark

Някои източноазиатски езици използват специален акцент, за да покажат акцент. На **Font** Класът осигурява [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) имот, за да получите или настроите [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) стойностите за изброяване, които се прилагат във форматирането.

Следният пример с код показва как да зададете **EphasisMark** собственост:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
