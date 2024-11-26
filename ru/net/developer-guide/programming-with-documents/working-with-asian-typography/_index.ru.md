---
title: Азиатская типография в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работа с азиатской типографикой с использованием C#. Настройка пространства между азиатским и латинским текстом C#."
type: docs
weight: 240
url: /ru/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Азиатская типография представляет собой набор вариантов текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words Азиатская типография с использованием [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) класса и некоторых его свойств.

## Автоматическая настройка пространства между азиатским и латинским текстом или цифрами

Если вы разрабатываете шаблон с восточноазиатским и латинским текстом и хотите улучшить внешний вид шаблона формы, управляя пространствами между двумя типами текста, вы можете настроить шаблон формы для автоматической настройки пространств между этими двумя типами текста. Для этого вы можете использовать [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) Свойства этого `ParagraphFormat` класс.

Следующий пример показывает, как использовать **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit** свойства:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Настройка линии Break Options

Азиатская вкладка Типография абзаца свойства диалогового окна в Microsoft Word Есть группа линейных разрывов. Варианты этой группы могут быть установлены с помощью [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) Свойства этого **ParagraphFormat** класс.

Следующий пример кода показывает, как использовать эти свойства:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
