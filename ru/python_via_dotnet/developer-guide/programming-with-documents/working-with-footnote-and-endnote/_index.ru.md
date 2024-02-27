---
title: Работа со сносками и концевыми сносками
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со сносками и концевыми сносками
linktitle: Работа со сносками и концевыми сносками
description: "Вставьте ffotnotes или концевые сноски в документ и укажите его параметры, используя Python."
type: docs
weight: 160
url: /ru/python-net/working-with-footnote-and-endnote/
---

Aspose.Words также предоставляет некоторые классы, методы и свойства для работы со сносками и концевыми сносками.

## Вставка концевой сноски и установка параметров нумерации

Если вы хотите вставить сноску или концевую сноску в документ Word, используйте метод [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Этот метод вставляет в документ сноску или концевую сноску.

Классы [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) представляют варианты нумерации сносок и концевых сносок.

В следующем примере кода показано, как вставить концевую сноску в документ и установить параметры нумерации:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Установить количество столбцов макета сноски

Вы можете установить количество столбцов макета сносок, используя свойство [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Если это свойство имеет значение 0, область сносок форматируется с использованием количества столбцов в зависимости от количества столбцов на отображаемой странице.

В следующем примере кода показано, как задать количество столбцов для макета сноски:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Установите положение сноски и EndNote

Положение сноски может находиться внизу каждой страницы или под текстом на каждой странице. Позиция концевой сноски может находиться в конце раздела или в конце документа.

В следующем примере кода показано, как установить положение сноски и концевой сноски:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
