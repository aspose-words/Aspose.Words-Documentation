---
title: Работа со сносками и концевыми примечаниями в C++
second_title: Aspose.Words для C++
articleTitle: Работа со сносками и заключением
linktitle: Работа со сносками и заключением
description: "Как манипулировать сносками и концевыми примечаниями с помощью C++."
type: docs
weight: 160
url: /ru/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words также предоставляет некоторые классы, методы и свойства для работы со сносками и концевыми примечаниями.

## Вставьте сноску в конце и задайте параметры нумерации

Если вы хотите вставить сноску или концевое примечание в документ Word, пожалуйста, используйте метод [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Этот метод позволяет вставить сноску или концевое примечание в документ.

Классы [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) представляют варианты нумерации для сноски и концевой сноски.

В следующем примере кода показано, как вставить концевую сноску в документ и задать параметры ее нумерации:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Установите количество столбцов макета сносок

Вы можете задать количество столбцов для размещения сносок, используя свойство [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Если это свойство имеет значение 0, область сносок будет отформатирована с количеством столбцов, основанным на количестве столбцов на отображаемой странице.

В следующем примере кода показано, как задать количество столбцов для оформления сносок:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Установите положение сноски и концевой сноски

Сноска может располагаться внизу каждой страницы или под текстом на каждой странице. Сноска может располагаться в конце раздела или в конце документа.

В следующем примере кода показано, как задать положение сноски и концевой сноски:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
