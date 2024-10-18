---
title: Азиатская типографика на C++
second_title: Aspose.Words для C++
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работайте с азиатской типографикой, используя C++. Измените интервал между текстом на азиатском и латинском языках в C++."
type: docs
weight: 240
url: /ru/cpp/working-with-asian-typography/
---

Азиатская типографика - это набор опций для оформления текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words поддерживает азиатскую типографику, используя класс [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) и некоторые его свойства.

## Автоматическая настройка интервала между текстом или цифрами на азиатском и латинском языках

Если вы разрабатываете шаблон, содержащий как восточноазиатский, так и латинский текст, и хотите улучшить внешний вид вашего шаблона формы, регулируя пробелы между обоими типами текста, вы можете настроить свой шаблон формы таким образом, чтобы он автоматически корректировал пробелы между этими двумя типами текста. Для достижения этой цели вы можете использовать свойства [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) класса `ParagraphFormat`.

В следующем примере кода показано, как использовать свойства **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Установите параметры разрыва строки

На вкладке "Азиатская типографика" диалогового окна "Свойства абзаца" в Microsoft Word есть группа "Разрыв строки". Параметры этой группы можно задать с помощью [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) свойств класса **ParagraphFormat**.

В следующем примере кода показано, как использовать эти свойства:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
