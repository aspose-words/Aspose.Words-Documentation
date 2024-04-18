---
title: Работа с бележка под линия и бележка в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с бележка под линия и крайна бележка
linktitle: Работа с бележка под линия и крайна бележка
description: "Как да се манипулират бележки под линия и крайни бележки, използвайки C#."
type: docs
weight: 160
url: /bg/net/working-with-footnote-and-endnote/
---

Aspose.Words Също така предоставя някои класове, методи и свойства за работа с бележки под линия и крайни бележки.

## Вмъкване на настройки за Endnote и задаване на номериране

Ако искате да въведете бележка под линия или бележка под линия в Word документ, моля използвайте [InsertFootnote](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfootnote/) метод. Този метод съдържа бележка под линия или бележка под линия в документа.

[EndnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/endnoteoptions/) както и [FootnoteOptions](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/) класовете представляват опции за номериране на бележка под линия и бележка под линия.

Следният пример за код показва как да вмъкнете крайна бележка в документа и да зададете неговите опции за номериране:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Задаване на брой колони за подреждане под линия

Можете да зададете броя на колоните за оформление на бележките под линия с помощта на [Columns](https://reference.aspose.com/words/net/aspose.words.notes/footnoteoptions/columns/) собственост. Ако това свойство има стойност от 0, зоната под линия се форматира с няколко колони, базирани на броя колони на показваната страница.

Следният пример за код показва как да се зададе броят на колоните за оформление на бележките под линия:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Задаване на позицията на бележка под линия и край

Позицията под линия може да бъде в долната част на всяка страница или под текста на всяка страница. Крайната позиция може да бъде в края на раздела или в края на документа.

Следният пример за код показва как да се определи позицията на бележка под линия и бележка под линия:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
