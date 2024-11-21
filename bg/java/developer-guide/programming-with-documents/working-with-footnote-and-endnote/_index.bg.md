---
title: Работа с бележка под линия и бележка в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с бележки и бележки
linktitle: Работа с бележки и бележки
description: "Как да манипулирате бележки под линия и крайни бележки, използвайки Java."
type: docs
weight: 160
url: /bg/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Също така предоставя някои класове, методи и свойства за работа с бележки под линия и крайни бележки.

## Вмъкване на настройки за Endnote и задаване на номериране

Ако искате да въведете бележка под линия или бележка в документ на Word, моля използвайте [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) метод. Този метод съдържа бележка под линия или бележка под линия в документа.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) както и [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) класовете представляват опции за номериране за бележка под линия и бележка под линия.

Следният пример за код показва как да вмъкнете крайна бележка в документа и да зададете неговите опции за номериране:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Брой колони за подреждане под линия

Можете да зададете броя на колоните за оформление на бележките под линия [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) собственост. Ако този имот има стойност от 0, зоната под линия се форматира с редица колони, базирани на броя колони на показваната страница.

Следният пример за код показва как да зададете броя на колоните за оформление на бележките под линия:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Задаване на позицията на бележка под линия и край

Позицията под линия може да бъде в долната част на всяка страница или под текста на всяка страница. Крайната позиция може да бъде в края на раздела или в края на документа.

Следният пример за код показва как да се определи позицията на бележка под линия и бележка под линия:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
