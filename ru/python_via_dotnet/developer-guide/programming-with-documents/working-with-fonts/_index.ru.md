---
title: Работа с шрифтами в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с шрифтами
linktitle: Работа с шрифтами
description: "Настройка настроек шрифта с помощью Python."
type: docs
weight: 230
url: /ru/python-net/working-with-fonts/
---

Шрифт представляет собой набор символов с определенным размером, цветом и дизайном. Aspose.Words позволяет работать с шрифтами, используя [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) модуль и его [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) класс.

## Форматирование шрифта

Текущее форматирование шрифта представлено **Font** объект, возвращенный [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) собственность. The **Font** класс содержит широкий спектр свойств шрифта, реплицируя те, которые доступны в Microsoft Word.

Следующий пример кода показывает, как настроить форматирование шрифта:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Свойства заполнения теперь также доступны для шрифтов для настройки форматирования текста. Это дает возможность изменять, например, цвет переднего плана или прозрачность заполнения текста.

## Получить Font Line Spacing

Расстояние между строками шрифта - это вертикальное расстояние между исходными линиями двух последовательных строк текста. Таким образом, расстояние между линиями включает в себя пустое пространство между линиями вместе с высотой самого персонажа.

The [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) Имущество было введено в [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) класс для получения этого значения, как показано в приведенном ниже примере:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Шрифтовый акцентМарк

Некоторые восточноазиатские языки используют специальный знак для обозначения акцента. The **Font** Класс обеспечивает [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) собственность получить или установить [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) Перечислительные значения, которые должны быть применены в форматировании.

Следующий пример кода показывает, как установить **EphasisMark** имущество:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
