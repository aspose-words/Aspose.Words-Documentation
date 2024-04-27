---
title: Робота з Linked TextBoxs в Java
second_title: Aspose.Words для Java
articleTitle: Робота з Linked TextBoxs
linktitle: Робота з Linked TextBoxs
description: "Вступ до пов'язаних функцій текстових скриньок у Aspose.Words для Javaй"
type: docs
weight: 250
url: /uk/java/working-with-linked-textboxes/
---

У Aspose.Words, Про нас [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) клас використовується для визначення тексту, що відображається всередині форми. Він надає громадську властивість, яка називається Парентом, щоб отримати батьківську форму для текстової коробки, щоб дозволити клієнту знайти пов'язаний [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) від пов'язаних **TextBox**й

## Створити посилання

Про нас **TextBox** клас забезпечує [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) спосіб перевірити, чи є **TextBox** може бути пов'язаний з метою **Textbox**й

Приклад наступного коду показує, як перевірити, якщо `TextBox` може бути підключений до цільової текстової скриньки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Перевірити текст Коробка Sequence

Існує кілька способів відображення тексту у формі. Про нас [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) може бути керівником, середнім або в’язкою послідовності.

Приклад наступного коду показує, як перевірити, якщо **TextBox** - голова, в’язниця або середина послідовності:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Перевірити посилання

Використання [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) метод ви можете розбити посилання на наступний **TextBox**й

Приклад наступного коду показує, як зламати посилання для **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
