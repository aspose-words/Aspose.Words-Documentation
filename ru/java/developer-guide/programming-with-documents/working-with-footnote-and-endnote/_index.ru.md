---
title: Работа со сноской и завершением в Java
second_title: Aspose.Words для Java
articleTitle: Работа со сносками и заключением
linktitle: Работа со сносками и заключением
description: "Как манипулировать сносками и концевыми примечаниями, используя Java."
type: docs
weight: 160
url: /ru/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words также предоставляет некоторые классы, методы и свойства для работы со сносками и концевыми примечаниями.

## Вставьте сноску в конце и задайте параметры нумерации

Если вы хотите вставить сноску или концевое примечание в документ Word, пожалуйста, используйте метод [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). Этот метод позволяет вставить сноску или концевое примечание в документ.

Классы [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) представляют варианты нумерации для сноски и концевой сноски.

В следующем примере кода показано, как вставить концевую сноску в документ и задать параметры ее нумерации:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Установите количество столбцов макета сносок

Вы можете задать количество столбцов разметки сносок, используя свойство [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). Если это свойство имеет значение 0, область сносок будет отформатирована с количеством столбцов, основанным на количестве столбцов на отображаемой странице.

В следующем примере кода показано, как задать количество столбцов для оформления сносок:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Установите положение сноски и EndNote

Сноска может располагаться внизу каждой страницы или под текстом на каждой странице. Сноска может располагаться в конце раздела или в конце документа.

В следующем примере кода показано, как задать положение сноски и концевой сноски:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
