---
title: Работа с бележка под линия и крайна бележка
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с бележка под линия и крайна бележка
linktitle: Работа с бележка под линия и крайна бележка
description: "Въведете ffotnotes или endnotes в документ и уточнете неговите опции, като използвате Python."
type: docs
weight: 160
url: /bg/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words Също така предоставя някои класове, методи и свойства за работа с бележки под линия и крайни бележки.

## Вмъкване на настройки за Endnote и задаване на номериране

Ако искате да въведете бележка под линия или бележка под линия в документ Word, моля, използвайте [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/) метод. Този метод съдържа бележка под линия или бележка под линия в документа.

[EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) както и [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) класовете представляват опции за номериране на бележка под линия и бележка под линия.

Следният пример за код показва как да вмъкнете крайна бележка в документа и да зададете неговите опции за номериране:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Задаване на брой колони за подреждане под линия

Можете да зададете броя на колоните за оформление на бележките под линия с помощта на [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/) собственост. Ако това свойство има стойност от 0, зоната под линия се форматира с няколко колони, базирани на броя колони на показваната страница.

Следният пример за код показва как да се зададе броят на колоните за оформление на бележките под линия:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Задаване на позицията на бележка под линия и край

Позицията под линия може да бъде в долната част на всяка страница или под текста на всяка страница. Крайната позиция може да бъде в края на раздела или в края на документа.

Следният пример за код показва как да се определи позицията на бележка под линия и бележка под линия:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
