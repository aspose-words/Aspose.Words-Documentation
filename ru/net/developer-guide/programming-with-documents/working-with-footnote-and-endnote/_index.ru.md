---
title: Работа со сносками и концевыми сносками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа со сносками и концевыми сносками
linktitle: Работа со сносками и концевыми сносками
description: "Как манипулировать сносками и концевыми сносками с помощью C#."
type: docs
weight: 160
url: /ru/net/working-with-footnote-and-endnote/
---

Aspose.Words также предоставляет некоторые классы, методы и свойства для работы со сносками и концевыми сносками.

## Вставка концевой сноски и установка параметров нумерации

Если вы хотите вставить сноску или концевую сноску в документ Word, используйте метод [InsertFootnote](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/insertfootnote/). Этот метод вставляет в документ сноску или концевую сноску.

Классы [EndnoteOptions](https://reference.aspose.com/words/ru/net/aspose.words.notes/endnoteoptions/) и [FootnoteOptions](https://reference.aspose.com/words/ru/net/aspose.words.notes/footnoteoptions/) представляют варианты нумерации сносок и концевых сносок.

В следующем примере кода показано, как вставить концевую сноску в документ и установить параметры нумерации:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Установить количество столбцов макета сноски

Вы можете установить количество столбцов макета сносок, используя свойство [Columns](https://reference.aspose.com/words/ru/net/aspose.words.notes/footnoteoptions/columns/). Если это свойство имеет значение 0, область сносок форматируется с использованием количества столбцов в зависимости от количества столбцов на отображаемой странице.

В следующем примере кода показано, как задать количество столбцов для макета сноски:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Установите положение сноски и EndNote

Положение сноски может находиться внизу каждой страницы или под текстом на каждой странице. Позиция концевой сноски может находиться в конце раздела или в конце документа.

В следующем примере кода показано, как установить положение сноски и концевой сноски:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
