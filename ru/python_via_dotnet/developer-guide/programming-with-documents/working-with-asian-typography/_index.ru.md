---
title: Азиатская типографика в Python
second_title: Aspose.Words для Python
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работайте с азиатской типографикой, используя Python. Измените интервал между азиатским и латинским текстом в Python."
type: docs
weight: 240
url: /ru/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

Азиатская типографика - это набор опций для оформления текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words поддерживает азиатскую типографику, используя класс [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) и некоторые его свойства.

## Автоматическая настройка интервала между текстом или цифрами на азиатском и латинском языках

Если вы разрабатываете шаблон, содержащий как восточноазиатский, так и латинский текст, и хотите улучшить внешний вид вашего шаблона формы, регулируя пробелы между обоими типами текста, вы можете настроить свой шаблон формы таким образом, чтобы он автоматически корректировал пробелы между этими двумя типами текста. Для достижения этой цели вы можете использовать свойства [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) класса `ParagraphFormat`.

В следующем примере кода показано, как использовать свойства **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Установите параметры разрыва строки

На вкладке "Азиатская типографика" диалогового окна "Свойства абзаца" в Microsoft Word есть группа "Разрыв строки". Параметры этой группы можно задать с помощью [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) свойств класса **ParagraphFormat**.

В следующем примере кода показано, как использовать эти свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
