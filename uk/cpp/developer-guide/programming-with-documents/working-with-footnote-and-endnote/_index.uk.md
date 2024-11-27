---
title: Робота зі виноскою і завершенням в C++
second_title: Aspose.Words для C++
articleTitle: Робота зі виносками та висновком
linktitle: Робота зі виносками та висновком
description: "Як маніпулювати виносками та кінцевими примітками за допомогою C++."
type: docs
weight: 160
url: /uk/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words також надає деякі класи, методи та властивості для роботи з виносками та кінцевими примітками.

## Вставте виноску в кінці і задайте параметри нумерації

Якщо ви хочете вставити виноску або кінцеву виноску в документ Word, Будь ласка, використовуйте метод [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Цей метод дозволяє вставити виноску або кінцеву виноску в документ.

Класи [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) та [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) представляють варіанти нумерації для виноски та кінцевої виноски.

У наступному прикладі коду показано, як вставити кінцеву виноску в документ і задати параметри її нумерації:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Встановіть кількість стовпців макета виносок

Ви можете задати кількість стовпців для розміщення виносок, використовуючи властивість [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Якщо значення цієї властивості дорівнює 0, область виносок буде відформатована з кількістю стовпців, що відповідає кількості стовпців на сторінці, що відображається.

У наступному прикладі коду показано, як задати кількість стовпців для оформлення виносок:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Встановіть положення виноски та EndNote

Виноска може розташовуватися внизу кожної сторінки або під текстом на кожній сторінці. Виноска може розташовуватися в кінці розділу або в кінці документа.

Наступний приклад коду показує, як встановити положення виноски та кінцевої виноски:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
