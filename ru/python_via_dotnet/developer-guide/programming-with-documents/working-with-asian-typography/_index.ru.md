---
title: Азиатская типография в Python
second_title: Aspose.Words для Python
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работа с азиатской типографикой с использованием Python. Настройка пространства между азиатским и латинским текстом Python."
type: docs
weight: 240
url: /ru/python-net/working-with-asian-typography/
---

Азиатская типография представляет собой набор вариантов текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words Азиатская типография с использованием [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) класса и некоторых его свойств.

## Автоматическая настройка пространства между азиатским и латинским текстом или цифрами

Если вы разрабатываете шаблон с восточноазиатским и латинским текстом и хотите улучшить внешний вид шаблона формы, управляя пространствами между двумя типами текста, вы можете настроить шаблон формы для автоматической настройки пространств между этими двумя типами текста. Для этого вы можете использовать [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) Свойства этого `ParagraphFormat` класс.

Следующий пример показывает, как использовать **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit** свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Настройка линии Break Options

Азиатская вкладка Типография абзаца свойства диалогового окна в Microsoft Word Есть группа линейных разрывов. Варианты этой группы могут быть установлены с помощью [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) Свойства этого **ParagraphFormat** класс.

Следующий пример кода показывает, как использовать эти свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
