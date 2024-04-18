---
title: Азиатска типография в Python
second_title: Aspose.Words вместо Python
articleTitle: Работа с азиатска типография
linktitle: Работа с азиатска типография
description: "Работа с азиатска типография с помощта на Python. Настройте пространството между азиатски и латински текст в Python."
type: docs
weight: 240
url: /bg/python-net/working-with-asian-typography/
---

Азиатската Tipography е набор от опции за текстови параграфи в документи, написани на азиатски езици.

Aspose.Words поддържа азиатската Typography с помощта на [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) класа и някои от неговите свойства.

## Автоматично регулиране на пространството между азиатски и латински текст или номера

Ако проектирате шаблон както с източноазиатски, така и с латински текст и искате да подобрите външния вид на формата си чрез контролиране на пространствата между двата вида текст, можете да конфигурирате формата си за автоматично регулиране на пространствата между тези два вида текст. За да постигнете това, можете да използвате [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) както и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) свойства на `ParagraphFormat` Клас.

Следният пример с код показва как да използвате **AddSpaceBetweenFarEastAndAlpha** както и **AddSpaceBetweenFarEastAndDigit** свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Настройки на прекъсване на линията

Азиатската Typography раздела на параграфа свойства диалогов прозорец в Microsoft Word Има група за прекъсване на линията. Възможностите на тази група могат да бъдат зададени чрез [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) свойства на **ParagraphFormat** Клас.

Следният пример за код показва как да използвате тези свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
