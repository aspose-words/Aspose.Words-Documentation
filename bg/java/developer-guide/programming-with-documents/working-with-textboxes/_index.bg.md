---
title: Работа с свързани текстови полета в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с свързани текстови полета
linktitle: Работа с свързани текстови полета
description: "Въведение в свързани текстови кутии Aspose.Words вместо Java."
type: docs
weight: 250
url: /bg/java/working-with-linked-textboxes/
---

В Aspose.Words, на [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) Класът се използва, за да се уточни как текст се показва във форма. Тя осигурява публичен имот, наречен Родител, за да получите формата на родител за текстовата кутия, за да може клиентът да намери свързани [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) от свързани **TextBox**.

## Създаване на връзка

На **TextBox** клас осигурява [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) метод за проверка дали **TextBox** може да бъде свързан с целта **Textbox**.

Следният пример с код показва как да се провери дали `TextBox` може да бъде свързан с целевата текстова кутия:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Проверка на текст Поредица от клетки

Има няколко начина да се покаже текст във форма. На [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) може да бъде главата, средата, или опашката на редица.

Следният пример за код показва как да се провери дали **TextBox** е глава, опашка или средата на поредицата:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Прекъсване на връзката

Използване на [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) метод можете да прекъснете връзката към следващия **TextBox**.

Следният пример с код показва как да прекъснете връзка за a **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
