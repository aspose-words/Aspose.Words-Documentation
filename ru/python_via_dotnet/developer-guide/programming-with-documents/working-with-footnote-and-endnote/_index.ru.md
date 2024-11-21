---
title: Работа с Footnote и Endnote
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с Footnote и Endnote
linktitle: Работа с Footnote и Endnote
description: "Вставить сноски или эндноты в документ и указать его варианты с использованием Python."
type: docs
weight: 160
url: /ru/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Также предусмотрены некоторые классы, методы и свойства для работы со сносками и энднотами.

## Включить Endnote и Set Numbering Options

Если вы хотите вставить сноску или примечание в документ Word, пожалуйста, используйте [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) метод. Этот метод вставляет сноску или сноску в документ.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) Классы представляют собой варианты нумерации для сноски и сноски.

Следующий пример кода показывает, как вставить примечание в документ и установить его параметры нумерации:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Установить количество колонок сносок

Вы можете установить количество колонок макета сноски, используя [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) собственность. Если это свойство имеет значение 0, область сносок отформатирована рядом столбцов на основе количества столбцов на отображаемой странице.

Следующий пример кода показывает, как установить количество столбцов для макета сноски:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Установите позицию сноски и конечного примечания

Положение сноски может быть в нижней части каждой страницы или под текстом на каждой странице. Положение примечания может быть в конце раздела или в конце документа.

Следующий пример кода показывает, как установить положение сноски и сноски:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
