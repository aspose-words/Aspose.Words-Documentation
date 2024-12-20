﻿---
title: Работа со шрифтами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со шрифтами
linktitle: Работа со шрифтами
description: "Настройте параметры шрифта, используя Python."
type: docs
weight: 230
url: /ru/python-net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт - это набор символов определенного размера, цвета и оформления. Aspose.Words позволяет работать со шрифтами с помощью модуля [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) и класса [Font](https://reference.aspose.com/words/python-net/aspose.words/font/).

## Форматирование шрифта

Текущее форматирование шрифта представлено объектом **Font**, возвращаемым свойством [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/). Класс **Font** содержит широкий спектр свойств шрифта, повторяющих те, которые доступны в Microsoft Word.

В следующем примере кода показано, как задать форматирование шрифта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Свойства заливки теперь доступны и для шрифтов, чтобы задать форматирование заливки текста. Это дает возможность изменять, например, цвет переднего плана или прозрачность заливки текста.

## Получение межстрочного интервала между шрифтами

Межстрочный интервал шрифта - это расстояние по вертикали между базовыми линиями двух последовательных строк текста. Таким образом, межстрочный интервал включает в себя пробел между строками, а также высоту самого символа.

Свойство [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) было введено в класс [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) для получения этого значения, как показано в примере, приведенном ниже:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Шрифт EmphasisMark

В некоторых восточноазиатских языках для обозначения ударения используется специальный знак. Класс **Font** предоставляет свойство [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) для получения или задания значений перечисления [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/), которые будут применяться при форматировании.

В следующем примере кода показано, как установить свойство **EphasisMark**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
