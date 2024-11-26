---
title: Работа с отметки в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с отметки
linktitle: Работа с отметки
description: "Как да вмъкнете, получите, преместите, покажете или скриете отметките, използвайки Python."
type: docs
weight: 180
url: /bg/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Отметките се идентифицират в Microsoft Word документира местата или фрагментите, които назовавате и идентифицирате за бъдеща справка. Например, може да използвате отметки, за да идентифицирате текста, който искате да преразгледате по - късно. Вместо да превъртате през документа, за да намерите текста, можете да отидете до него, като използвате диалоговия прозорец "Отметки."

Действията, които могат да се извършват с отметки Aspose.Words са същите като тези, които можете да изпълните, използвайки Microsoft Word. Можете да поставите нова отметка, да изтриете, да преминете към отметките, да получите или да зададете име на отметките, да получите или да зададете текст, който е затворен в тях. С Aspose.Words, Можете също така да използвате отметки в доклади или документи, за да въведете някои данни в отметките или да приложите специален форматиране на съдържанието му. Можете също така да използвате отметки, за да извлечете текст от определено място във вашия документ.

## Вмъкване на отметка

Използване [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) както и [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) да се създаде отметки, като се маркира неговото начало и край съответно. Не забравяйте да предадете едно и също име от отметки на двата метода. Отметките в един документ могат да се припокриват и обхващат всеки обхват. Лошо образувани отметки или отметки с дублиращи се имена ще бъдат игнорирани, когато документът е записан.

{{% alert color="primary" %}}

Всички бели пространства в отметките бяха заменени с подчертани. Това ограничение идва от MS Word формати, тъй като отметките в MS Word формати, като DOX или DOC, не могат да имат бели пространства. PDF обаче позволява такива отметки. Така че сега, ако имате нужда да използвате отметки в PDF или XPS очертания, можете да ги използвате с бели пространства.

{{% /alert %}}

Следният пример за код показва как да се създаде нова отметка:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Получаване на отметки

Понякога е необходимо да се получи колекция от отметки за итериране чрез отметки или за други цели. Използвайте [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) собственост, изложена на всеки документен възел, който връща [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) обект, представляващ частта от документа, съдържаща се в този възел. Използвайте този обект, за да изтеглите [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) и след това използвате индекса за събиране, за да получите конкретна отметки.

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на тези примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Следният пример за код показва как да се получат отметки от колекция от отметки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Следният пример с код показва как да получите или зададете име и текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Следният пример за код показва как да маркирате таблица:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Ако промените името на отметките на име, което вече съществува в документа, няма да се генерира грешка и само първата отметка ще бъде съхранена, когато запишете документа.

Имайте предвид, че някои отметки в документа са предназначени да образуват полета. Преместването към такава отметки и вмъкването на текст там вмъква текста във формата на полевия код. Въпреки че това няма да обезвреди полето на формата, въведеният текст няма да бъде видим, защото става част от кода на полето.

Следният пример за код показва как да получите достъп до колоните на отметките в таблицата:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Преместване в отметка

Ако трябва да вмъкнете богато съдържание (не само обикновен текст) в отметки, трябва да използвате [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) да преместите курсора в отметките и след това да използвате [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) методи и свойства за вмъкване на съдържание.

## Показване съдържанието на отметките

Цялата отметки (* включително отметките) могат да бъдат капсулирани в рамките на True част на `IF` поле за използване Aspose.Words. Може да бъде по такъв начин, че `IF` поле съдържа гнездящо сливане поле в израза (* Left of Operator*) и в зависимост от стойността на Сливане поле, `IF` полето показва или скрива съдържанието на Отметките в Word Document.

Следният пример с код показва как да се показват/ скрият отметките:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
