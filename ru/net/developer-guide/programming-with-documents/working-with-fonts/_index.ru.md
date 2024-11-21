---
title: Работа с шрифтами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с шрифтами
linktitle: Работа с шрифтами
description: "Форматирование шрифтов в деталях с использованием C#. Отметка акцента в C#. Получите интервал строки шрифта с помощью C#."
type: docs
weight: 230
url: /ru/net/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Шрифт представляет собой набор символов с определенным размером, цветом и дизайном. Aspose.Words позволяет работать с шрифтами, используя [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) пространство имен и [Font](https://reference.aspose.com/words/net/aspose.words/font/) класс.

## Форматирование шрифта

Текущее форматирование шрифта представлено **Font** объект, возвращенный [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) собственность. The **Font** класс содержит широкий спектр свойств шрифта, реплицируя те, которые доступны в Microsoft Word.

Следующий пример кода показывает, как настроить форматирование шрифта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Свойства заполнения также доступны для шрифтов для настройки форматирования заполнения текста. Это позволяет изменить, например, цвет переднего плана или прозрачность заполнения текста.

## Получить Font Line Spacing

Расстояние между строками шрифта - это вертикальное расстояние между исходными линиями двух последовательных строк текста. Таким образом, расстояние между линиями включает в себя пустое пространство между линиями вместе с высотой самого персонажа.

The [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) имущество было передано в **Font** класс для получения этого значения, как показано в примере ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Шрифтовый акцентМарк

Некоторые восточноазиатские языки используют специальный знак для обозначения акцента. The **Font** Класс обеспечивает [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) собственность, чтобы получить или установить [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/) Перечислительные значения, которые должны применяться при форматировании.

Следующий пример кода показывает, как установить **EphasisMark** имущество:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
