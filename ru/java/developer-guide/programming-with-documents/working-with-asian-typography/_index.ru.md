---
title: Азиатская типография в Java
second_title: Aspose.Words для Java
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работа с азиатской типографикой Java. Настройка пространства между азиатским и латинским текстом Java."
type: docs
weight: 240
url: /ru/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

Азиатская типография представляет собой набор вариантов текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words Азиатская типография с использованием [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) класса и некоторых его свойств.

## Автоматическая настройка пространства между азиатским и латинским текстом или цифрами

Если вы разрабатываете шаблон с восточноазиатским и латинским текстом и хотите улучшить внешний вид шаблона формы, управляя пространствами между двумя типами текста, вы можете настроить шаблон формы для автоматической настройки пространств между этими двумя типами текста. Для этого вы можете использовать [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) свойство этих `ParagraphFormat` класс.

Следующий пример показывает, как использовать **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit** свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Настройка линии Break Options

Азиатская вкладка Типография абзаца свойства диалогового окна в Microsoft Word Есть группа линейных разрывов. Варианты этой группы могут быть установлены с помощью [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) свойство этих **ParagraphFormat** класс.

Следующий пример кода показывает, как использовать эти свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Изменить азиатское пространство и абзацы

Следующий пример кода показывает, как изменить интервалы и отступы азиатских абзацев:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
