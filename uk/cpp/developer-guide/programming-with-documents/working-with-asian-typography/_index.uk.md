---
title: Азіатська типографіка в C++
second_title: Aspose.Words для C++
articleTitle: Робота з азіатською типографікою
linktitle: Робота з азіатською типографікою
description: "Працюйте з азіатською типографікою, використовуючи C++. Змініть інтервал між азіатським та латинським текстом у C++."
type: docs
weight: 240
url: /uk/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Азіатська типографіка-це набір опцій для оформлення текстових абзаців в документах, написаних на азіатських мовах.

Aspose.Words підтримує азіатську типографіку, використовуючи клас [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) та деякі його властивості.

## Автоматичне налаштування інтервалу між текстом або цифрами азіатською та латинською мовами

Якщо ви розробляєте шаблон, що містить як східноазіатський, так і латинський текст, і хочете покращити зовнішній вигляд шаблону форми, регулюючи пробіли між обома типами тексту, ви можете налаштувати шаблон форми таким чином, щоб він автоматично коригував пробіли між цими двома типами тексту. Для досягнення цієї мети ви можете використовувати властивості [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) та [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) класу `ParagraphFormat`.

Наступний приклад коду показує, як використовувати властивості **AddSpaceBetweenFarEastAndAlpha** та **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Встановіть параметри розриву рядка

На вкладці "Азіатська типографіка" діалогового вікна "Властивості абзацу" в Microsoft Word є група "розрив рядка". Параметри цієї групи можна задати за допомогою [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) властивостей класу **ParagraphFormat**.

Наступний приклад коду показує, як використовувати ці властивості:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
