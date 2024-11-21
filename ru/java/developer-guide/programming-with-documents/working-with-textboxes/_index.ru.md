---
title: Работа со связанными текстовыми окнами в Java
second_title: Aspose.Words для Java
articleTitle: Работа с Linked TextBoxs
linktitle: Работа с Linked TextBoxs
description: "Введение в связанные текстовые ящики в Aspose.Words для Java."
type: docs
weight: 250
url: /ru/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

В Aspose.Words, тот [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) Класс используется для определения того, как текст отображается внутри формы. Он предоставляет общественную собственность, называемую Родителем, чтобы получить форму родителя для текстового поля, чтобы клиент мог найти связанную форму. [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) связанный **TextBox**.

## Создайте ссылку

The **TextBox** Класс обеспечивает [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) Для того, чтобы проверить, является ли **TextBox** могут быть связаны с целью **Textbox**.

Следующий пример кода показывает, как проверить `TextBox` Можно связать с целевым текстовым ящиком:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Проверьте текст Коробочная последовательность

Существует несколько способов отображения текста в форме. The [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) Это может быть голова, средний или хвост последовательности.

Следующий пример показывает, как проверить, **TextBox** Это голова, хвост или середина последовательности:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Разорвать связь

Используя [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) Способ, которым вы можете разорвать ссылку на следующий **TextBox**.

Следующий пример кода показывает, как разорвать ссылку для **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
