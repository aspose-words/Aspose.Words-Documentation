---
title: Азиатская типографика в Java
second_title: Aspose.Words для Java
articleTitle: Работа с азиатской типографикой
linktitle: Работа с азиатской типографикой
description: "Работайте с азиатской типографикой, используя Java. Измените интервал между азиатским и латинским текстом в Java."
type: docs
weight: 240
url: /ru/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

Азиатская типографика - это набор опций для оформления текстовых абзацев в документах, написанных на азиатских языках.

Aspose.Words поддерживает азиатскую типографику, используя класс [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) и некоторые его свойства.

## Автоматическая настройка интервала между текстом или цифрами на азиатском и латинском языках

Если вы разрабатываете шаблон, содержащий как восточноазиатский, так и латинский текст, и хотите улучшить внешний вид вашего шаблона формы, регулируя пробелы между обоими типами текста, вы можете настроить свой шаблон формы таким образом, чтобы он автоматически корректировал пробелы между этими двумя типами текста. Для достижения этой цели вы можете использовать свойства [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) класса `ParagraphFormat`.

В следующем примере кода показано, как использовать свойства **AddSpaceBetweenFarEastAndAlpha** и **AddSpaceBetweenFarEastAndDigit**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Установите параметры разрыва строки

На вкладке "Азиатская типографика" диалогового окна "Свойства абзаца" в Microsoft Word есть группа "Разрыв строки". Параметры этой группы можно задать с помощью [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) свойств класса **ParagraphFormat**.

В следующем примере кода показано, как использовать эти свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Измените азиатский интервал между абзацами и отступы

В следующем примере кода показано, как изменить азиатский интервал между абзацами и отступы:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
