---
title: Азиатска типография в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с азиатска типография
linktitle: Работа с азиатска типография
description: "Работа с азиатска типография с помощта на C#. Настройте пространството между азиатски и латински текст в C#."
type: docs
weight: 240
url: /bg/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Азиатската Tipography е набор от опции за текстови параграфи в документи, написани на азиатски езици.

Aspose.Words поддържа азиатската Typography с помощта на [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) класа и някои от неговите свойства.

## Автоматично регулиране на пространството между азиатски и латински текст или номера

Ако проектирате шаблон както с източноазиатски, така и с латински текст и искате да подобрите външния вид на формата си чрез контролиране на пространствата между двата вида текст, можете да конфигурирате формата си за автоматично регулиране на пространствата между тези два вида текст. За да постигнете това, можете да използвате [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) както и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) свойства на `ParagraphFormat` Клас.

Следният пример с код показва как да използвате **AddSpaceBetweenFarEastAndAlpha** както и **AddSpaceBetweenFarEastAndDigit** свойства:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Настройки на прекъсване на линията

Азиатската Typography раздела на параграфа свойства диалогов прозорец в Microsoft Word Има група за прекъсване на линията. Възможностите на тази група могат да бъдат зададени чрез [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) свойства на **ParagraphFormat** Клас.

Следният пример за код показва как да използвате тези свойства:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
