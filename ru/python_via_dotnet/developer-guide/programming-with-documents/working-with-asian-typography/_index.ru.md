---
title: Азиатская типография Python г
second_title: Aspose.Words для Python
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работайте с азиатской типографикой, используя Python. Отрегулируйте расстояние между азиатским и латинским текстом в Python."
type: docs
weight: 240
url: /ru/python-net/working-with-asian-typography/
---

Азиатская типография — это набор вариантов текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words поддерживает азиатскую типографику, используя класс [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) и некоторые его свойства.

## Автоматически корректировать пространство между азиатским и латинским текстом или цифрами

Если вы разрабатываете шаблон с восточноазиатским и латинским текстом и хотите улучшить внешний вид шаблона формы, управляя пробелами между обоими типами текста, вы можете настроить шаблон формы для автоматической регулировки пробелов между этими двумя типами текста.. Для этого можно использовать свойства [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) класса `ParagraphFormat`.

В следующем примере кода показано, как использовать свойства **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## Установить параметры разрыва строки

На вкладке "Азиатская типография" диалогового окна свойств абзаца в версии Microsoft Word имеется группа разрывов строк. Опции этой группы можно задать с помощью свойств [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/), [WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/), [HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) класса **ParagraphFormat**.

В следующем примере кода показано, как использовать эти свойства:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
