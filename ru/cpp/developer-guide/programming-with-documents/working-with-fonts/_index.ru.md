---
title: Работа со шрифтами на C++
second_title: Aspose.Words для C++
articleTitle: Работа со шрифтами
linktitle: Работа со шрифтами
description: "Детальное форматирование шрифта с использованием C++."
type: docs
weight: 230
url: /ru/cpp/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт - это набор символов определенного размера, цвета и оформления. Aspose.Words позволяет работать со шрифтами, используя пространство имен [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) и класс [Font](https://reference.aspose.com/words/cpp/aspose.words/font/).

## Форматирование шрифта

Текущее форматирование шрифта представлено объектом **Font**, возвращаемым свойством [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/). Класс **Font** содержит широкий спектр свойств шрифта, аналогичных тем, которые доступны в Microsoft Word.

В следующем примере кода показано, как задать форматирование шрифта:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Свойства заливки теперь доступны и для шрифтов, чтобы задать форматирование заливки текста. Это дает возможность изменять, например, цвет переднего плана или прозрачность заливки текста.

## Получение межстрочного интервала между шрифтами

Межстрочный интервал шрифта - это расстояние по вертикали между базовыми линиями двух последовательных строк текста. Таким образом, межстрочный интервал включает в себя пробел между строками, а также высоту самого символа.

Свойство [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) было введено в класс **Font** для получения этого значения, как показано в примере ниже:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Знак подчеркивания шрифта

В некоторых восточноазиатских языках для обозначения ударения используется специальный знак. Класс **Font** предоставляет свойство [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/), позволяющее получить или задать значения перечисления `EmphasisMark`, которые будут применяться при форматировании.

В следующем примере кода показано, как установить свойство **EphasisMark**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
