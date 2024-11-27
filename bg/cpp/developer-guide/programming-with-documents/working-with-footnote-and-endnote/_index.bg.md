---
title: Работа с бележка под линия и бележка в края C++
second_title: Aspose.Words за C++
articleTitle: Работа с бележка под линия и бележка в края
linktitle: Работа с бележка под линия и бележка в края
description: "Как да манипулирате бележките под линия и бележките в края, като използвате C++."
type: docs
weight: 160
url: /bg/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words също така предоставя някои класове, методи и свойства за работа с бележки под линия и бележки в края.

## Вмъкване на бележка в края и задаване на опции за номериране

Ако искате да вмъкнете бележка под линия или бележка в края в документ Word, Моля, използвайте метода [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Този метод вмъква бележка под линия или бележка в края в документа.

Класовете [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) представляват Опции за номериране за бележка под линия и бележка в края.

Следващият пример за код показва как да вмъкнете бележка в края на документа и да зададете опциите му за номериране:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Задаване на броя на колоните за оформление под линия

Можете да зададете броя на колоните за оформление под линия, като използвате свойството [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Ако това свойство има стойност 0, областта за бележки под линия се форматира с брой колони въз основа на броя на колоните на показаната страница.

Следващият пример за код показва как да зададете броя на колоните за оформление на бележка под линия:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Задайте позицията на бележка под линия и EndNote

Позицията под линия може да бъде в долната част на всяка страница или под текста на всяка страница. Позицията на бележка в края може да бъде в края на раздела или в края на документа.

Следният пример за код показва как да зададете позицията на бележка под линия и бележка в края:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
