---
title: Работа со шрифтами в C#
second_title: Aspose.Words для .NET
articleTitle: Работа со шрифтами
linktitle: Работа со шрифтами
description: "Подробное форматирование шрифта с помощью C#. Знак ударения — C#. Получите межстрочный интервал шрифта, используя C#."
type: docs
weight: 230
url: /ru/net/working-with-fonts/
---

Шрифт — это набор символов определенного размера, цвета и дизайна. Aspose.Words позволяет работать со шрифтами, используя пространство имен [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) и класс [Font](https://reference.aspose.com/words/net/aspose.words/font/).

## Форматирование шрифта

Текущее форматирование шрифта представлено объектом **Font**, возвращаемым свойством [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/). Класс **Font** содержит множество свойств шрифта, повторяющих те, которые доступны в Microsoft Word.

В следующем примере кода показано, как установить форматирование шрифта:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Для шрифтов также доступны свойства заливки, позволяющие задать форматирование заливки текста. Это дает возможность изменить, например, цвет переднего плана или прозрачность текстовой заливки.

## Получение межстрочного интервала шрифта

Межстрочный интервал шрифта — это расстояние по вертикали между базовыми линиями двух последовательных строк текста. Таким образом, межстрочный интервал включает в себя пустое пространство между строками и высоту самого символа.

Свойство [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) было введено в класс **Font** для получения этого значения, как показано в примере ниже:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Маркировка шрифта

В некоторых восточноазиатских языках для обозначения ударения используется специальный знак ударения. Класс **Font** предоставляет свойство [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) для получения или установки значений перечисления [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/emphasismark/), которые будут применяться при форматировании.

В следующем примере кода показано, как установить свойство **EphasisMark**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
