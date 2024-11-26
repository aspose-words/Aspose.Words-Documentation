---
title: Работа со связанными TextBoxes в Java
second_title: Aspose.Words для Java
articleTitle: Работа со связанными TextBoxes
linktitle: Работа со связанными TextBoxes
description: "Введение в функцию связанных текстовых полей в Aspose.Words для Java."
type: docs
weight: 250
url: /ru/java/working-with-linked-textboxes/
timestamp: 2024-01-27-14-07-04
---

В Aspose.Words класс [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) используется для указания способа отображения текста внутри фигуры. Он предоставляет общедоступное свойство с именем Parent, позволяющее получить родительскую форму для текстового поля, чтобы пользователь мог найти linked [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) из linked **TextBox**.

## Создайте ссылку

Класс **TextBox** предоставляет метод [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox), чтобы проверить, может ли **TextBox** быть связан с целевым объектом **Textbox**.

В следующем примере кода показано, как проверить, можно ли связать `TextBox` с целевым текстовым полем:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Проверьте последовательность TextBox

Существует несколько способов отображения текста в форме. Символ [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) может быть началом, серединой или концом последовательности.

В следующем примере кода показано, как проверить, является ли **TextBox** началом, концом или серединой последовательности:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Разорвать связь

Используя метод [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink), вы можете разорвать ссылку на следующую **TextBox**.

В следующем примере кода показано, как разорвать ссылку для **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
