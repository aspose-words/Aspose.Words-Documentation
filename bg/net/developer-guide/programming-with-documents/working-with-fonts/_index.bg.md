---
title: Работа с шрифтове в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с шрифтове
linktitle: Работа с шрифтове
description: "Форматиране на шрифта в детайли, използвайки C#. Маркировка на ударението C#. Получаване на разстояние между шрифтовете C#."
type: docs
weight: 230
url: /bg/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт е набор от символи с определен размер, цвят и дизайн. Aspose.Words ви позволява да работите с шрифтове с помощта на [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) пространство за име и [Font](https://reference.aspose.com/words/net/aspose.words/font/) Клас.

## Форматиране на шрифта

Текущото форматиране на шрифта е представено от **Font** обект, върнат от [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) собственост. На **Font** клас съдържа голямо разнообразие от свойства на шрифта, възпроизвеждане на наличните в Microsoft Word.

Следният пример с код показва как да зададете форматиране на шрифта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Попълнете свойства също са на разположение за шрифтове, за да зададете текст попълване форматиране. Това позволява да се промени например цвета на преден план или прозрачността на текста.

## Получаване на шрифт Line Spacing

Разстоянието между редовете на шрифта е вертикалното разстояние между изходните линии на два последователни реда текст. Така че разстоянието между линиите включва празното пространство между линиите заедно с височината на самия символ.

На [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) собственост е въведена в **Font** клас, за да получите тази стойност, както е показано в примера по-долу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Акцент върху шрифта Mark

Някои източноазиатски езици използват специален акцент, за да покажат акцент. На **Font** Класът осигурява [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) собственост, за да получите или да зададете [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) стойностите за изброяване, които се прилагат при форматиране.

Следният пример с код показва как да зададете **EphasisMark** собственост:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
