---
title: Азиатская типография в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работайте с азиатской типографикой, используя C#. Отрегулируйте расстояние между азиатским и латинским текстом в C#."
type: docs
weight: 240
url: /ru/net/working-with-asian-typography/
---

Азиатская типография — это набор вариантов текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words поддерживает азиатскую типографику, используя класс [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) и некоторые его свойства.

## Автоматически корректировать пространство между азиатским и латинским текстом или цифрами

Если вы разрабатываете шаблон с восточноазиатским и латинским текстом и хотите улучшить внешний вид шаблона формы, управляя пробелами между обоими типами текста, вы можете настроить шаблон формы для автоматической регулировки пробелов между этими двумя типами текста.. Для этого можно использовать свойства [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) класса `ParagraphFormat`.

В следующем примере кода показано, как использовать свойства **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Установить параметры разрыва строки

На вкладке "Азиатская типография" диалогового окна свойств абзаца в Microsoft Word есть группа разрывов строк. Параметры этой группы можно задать с помощью свойств [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) класса **ParagraphFormat**.

В следующем примере кода показано, как использовать эти свойства:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
