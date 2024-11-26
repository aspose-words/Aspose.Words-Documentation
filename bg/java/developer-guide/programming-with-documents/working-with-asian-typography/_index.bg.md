---
title: Азиатска типография в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с азиатска типография
linktitle: Работа с азиатска типография
description: "Работа с азиатска типография с помощта на Java. Настройте пространството между азиатски и латински текст в Java."
type: docs
weight: 240
url: /bg/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

Азиатската Tipography е набор от опции за текстови параграфи в документи, написани на азиатски езици.

Aspose.Words поддържа азиатската Tipography с помощта на [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) класа и някои от неговите свойства.

## Автоматично регулиране на пространството между азиатски и латински текст или номера

Ако проектирате шаблон както с източноазиатски, така и с латински текст и искате да подобрите външния вид на формата си чрез контролиране на пространствата между двата вида текст, можете да конфигурирате формата си за автоматично регулиране на пространствата между тези два вида текст. За да постигнете това, можете да използвате [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) както и [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) свойства на `ParagraphFormat` Клас.

Следният пример с код показва как да използвате **AddSpaceBetweenFarEastAndAlpha** както и **AddSpaceBetweenFarEastAndDigit** свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Настройки за прекъсване на линията

Азиатската Typography раздела на параграфа свойства диалогов прозорец в Microsoft Word Има група за прекъсване на линията. Възможностите на тази група могат да бъдат зададени чрез [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) свойства на **ParagraphFormat** Клас.

Следният пример за код показва как да използвате тези свойства:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Промяна на азиатския абзац spacing and indents

Следният пример за код показва как да се промени разстоянието между азиатските параграфи и тиретата:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
