---
title: Тайпографія в Азії C#
second_title: Aspose.Words для .NET
articleTitle: Робота з азіатською типографії
linktitle: Робота з азіатською типографії
description: "Робота з азіатською типографією C#й Регулювання простору між азіатським і латинським текстом C#й"
type: docs
weight: 240
url: /uk/net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Азій Тайпографія - це набір варіантів для текстових абзаців у документах, написаних на мовах азіатських мов.

Aspose.Words підтримує Азіатська типографія за допомогою [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) клас і деякі його властивості.

## Автоматично регульований простір між азіатськими та латинськими текстами або номерами

Якщо ви розробляєте шаблон з як східним, так і латинським текстом, і хочете підвищити зовнішній вигляд шаблону форми, контролюючи пробіли між різними типами тексту, ви можете налаштувати шаблон форми для автоматичного регулювання просторів між цими двома видами тексту. Для цього можна використовувати [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) і [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) властивості `ParagraphFormat` клас.

Приклад наступного коду показує, як використовувати **AddSpaceBetweenFarEastAndAlpha** і **AddSpaceBetweenFarEastAndDigit** властивості:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## Комплект Параметри лінійних розривів

Вкладка азіатського типографії діалогове вікно властивостей абзаців в Microsoft Word має групу розривів лінії. Параметри цієї групи можна встановити за допомогою [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) властивості **ParagraphFormat** клас.

Приклад коду показує, як використовувати ці властивості:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
