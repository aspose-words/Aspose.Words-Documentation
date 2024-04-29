---
title: Работа с Footnote и Endnote в Java
second_title: Aspose.Words для Java
articleTitle: Работа с Footnote и Endnote
linktitle: Работа с Footnote и Endnote
description: "Как манипулировать сносками и энднотами с помощью Java."
type: docs
weight: 160
url: /ru/java/working-with-footnote-and-endnote/
---

Aspose.Words Также предусмотрены некоторые классы, методы и свойства для работы со сносками и энднотами.

## Включить Endnote и Set Numbering Options

Если вы хотите вставить сноску или примечание в документ Word, пожалуйста, используйте [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) метод. Этот метод вставляет сноску или сноску в документ.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) Классы представляют собой варианты нумерации для сноски и сноски.

Следующий пример кода показывает, как вставить примечание в документ и установить его параметры нумерации:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Установить количество колонок сносок

Вы можете установить количество колонок макета сноски, используя [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) собственность. Если это свойство имеет значение 0, область сносок отформатирована рядом столбцов на основе количества столбцов на отображаемой странице.

Следующий пример кода показывает, как установить количество столбцов для макета сноски:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Установите позицию сноски и конечного примечания

Положение сноски может быть в нижней части каждой страницы или под текстом на каждой странице. Положение примечания может быть в конце раздела или в конце документа.

Следующий пример кода показывает, как установить положение сноски и сноски:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
