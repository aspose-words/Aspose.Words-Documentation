---
title: Тайпографія в Азії Java
second_title: Aspose.Words для Java
articleTitle: Робота з азіатською типографії
linktitle: Робота з азіатською типографії
description: "Робота з азіатською типографією Javaй Регулювання простору між азіатським і латинським текстом Javaй"
type: docs
weight: 240
url: /uk/java/working-with-asian-typography/
---

Азій Тайпографія - це набір варіантів для текстових абзаців у документах, написаних на мовах азіатських мов.

Aspose.Words підтримує Азіатська типографія за допомогою [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) клас і деякі його властивості.

## Автоматично регульований простір між азіатською та латинською текстом або номерами

Якщо ви розробляєте шаблон як зі східним, так і латинським текстом, і хочете підвищити зовнішній вигляд шаблону форми, контролюючи пробіли між різними типами тексту, ви можете налаштувати шаблон форми для автоматичного регулювання просторів між цими двома видами тексту. Для цього можна використовувати [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha) і [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit) властивості `ParagraphFormat` клас.

Приклад коду показує, як використовувати **AddSpaceBetweenFarEastAndAlpha** і **AddSpaceBetweenFarEastAndDigit** властивості:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## Комплект Параметри лінійних розривів

Вкладка азіатського типографії діалогове вікно властивостей абзаців в Microsoft Word має групу розривів лінії. Варіанти цієї групи можна встановити за допомогою [FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) властивості **ParagraphFormat** клас.

Приклад коду показує, як використовувати ці властивості:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Зміна Азіатська Paragraph Spacing і відступи

Наприклад, наступний код показує, як змінити абзац абзаців і відступів:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}