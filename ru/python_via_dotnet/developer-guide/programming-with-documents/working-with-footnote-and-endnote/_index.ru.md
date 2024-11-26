---
title: Работа со сносками и заключением
second_title: Aspose.Words для Python via .NET
articleTitle: Работа со сносками и заключением
linktitle: Работа со сносками и заключением
description: "Вставьте сноски в конце документа и укажите их параметры, используя Python."
type: docs
weight: 160
url: /ru/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words также предоставляет некоторые классы, методы и свойства для работы со сносками и концевыми примечаниями.

## Вставьте сноску в конце и задайте параметры нумерации

Если вы хотите вставить сноску или концевое примечание в документ Word, пожалуйста, используйте метод [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Этот метод позволяет вставить сноску или концевое примечание в документ.

Классы [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) представляют варианты нумерации для сноски и концевой сноски.

В следующем примере кода показано, как вставить концевую сноску в документ и задать параметры ее нумерации:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Установите количество столбцов макета сносок

Вы можете задать количество столбцов разметки сносок, используя свойство [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Если это свойство имеет значение 0, область сносок будет отформатирована с количеством столбцов, основанным на количестве столбцов на отображаемой странице.

В следующем примере кода показано, как задать количество столбцов для оформления сносок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Установите положение сноски и EndNote

Сноска может располагаться внизу каждой страницы или под текстом на каждой странице. Сноска может располагаться в конце раздела или в конце документа.

В следующем примере кода показано, как задать положение сноски и концевой сноски:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
