---
title: Работа с Footnote и Endnote в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с Footnote и Endnote
linktitle: Работа с Footnote и Endnote
description: "Как манипулировать сносками и энднотами с помощью C#."
type: docs
weight: 160
url: /ru/net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Также предусмотрены некоторые классы, методы и свойства для работы со сносками и энднотами.

## Включить Endnote и Set Numbering Options

Если вы хотите вставить сноску или примечание в документ Word, пожалуйста, используйте [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) метод. Этот метод вставляет сноску или сноску в документ.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) Классы представляют собой варианты нумерации для сноски и сноски.

Следующий пример кода показывает, как вставить примечание в документ и установить его параметры нумерации:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Установить количество колонок сносок

Вы можете установить количество колонок макета сноски, используя [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) собственность. Если это свойство имеет значение 0, область сносок отформатирована рядом столбцов на основе количества столбцов на отображаемой странице.

Следующий пример кода показывает, как установить количество столбцов для макета сноски:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Установите позицию сноски и конечного примечания

Положение сноски может быть в нижней части каждой страницы или под текстом на каждой странице. Положение примечания может быть в конце раздела или в конце документа.

Следующий пример кода показывает, как установить положение сноски и сноски:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
