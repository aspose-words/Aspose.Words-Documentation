---
title: Азиатски Типография в C++
second_title: Aspose.Words за C++
articleTitle: Работа с азиатска типография
linktitle: Работа с азиатска типография
description: "Работете с азиатска типография, като използвате C++. Коригирайте разстоянието между азиатския и латинския текст в C++."
type: docs
weight: 240
url: /bg/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Азиатската типография е набор от опции за текстови параграфи в документи, написани на азиатски езици.

Aspose.Words поддържа Азиатска типография, използвайки [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) класа и някои от неговите свойства.

## Автоматично регулиране на разстоянието между азиатския и латинския текст или числа

Ако проектирате шаблон с източноазиатски и латински текст и искате да подобрите облика на вашия шаблон на формуляр, като контролирате интервалите между двата типа текст, можете да конфигурирате вашия шаблон на формуляр да коригира автоматично интервалите между тези два типа текст. За да постигнете това, можете да използвате [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/) свойствата на `ParagraphFormat` класа.

Следният пример за код показва как да използвате **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit** свойства:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## Задаване На Опции За Прекъсване На Линия

Разделът Азиатска типография на диалоговия прозорец Свойства на абзаца в Microsoft Word има група прекъсване на реда. Опциите на тази група могат да бъдат зададени с помощта на [FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) свойства на клас **ParagraphFormat**.

Следващият пример за код показва как да използвате тези свойства:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
