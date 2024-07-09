---
title: Работа с отметки в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с отметки
linktitle: Работа с отметки
description: "Разбиране на понятията за отметки и как отметките могат да се използват във вашата програма Java."
type: docs
weight: 180
url: /bg/java/working-with-bookmarks/
---

Отметките се идентифицират в Microsoft Word документира местата или фрагментите, които назовавате и идентифицирате за бъдеща справка. Например, може да използвате отметки, за да идентифицирате текста, който искате да преразгледате по - късно. Вместо да превъртате през документа, за да намерите текста, можете да отидете до него, като използвате диалоговия прозорец Bookmark.

С Aspose.Words, Можете да използвате отметки в доклади или документи, за да въведете някои данни в отметките или да приложите специален формат към съдържанието им. Можете също така да използвате отметки за извличане на текст от определено място във вашия документ.

Действията, които могат да се извършват с отметки, като се използват Aspose.Words са същите като тези, които можете да изпълните, използвайки Microsoft Word. Можете да поставите нова отметка, да изтриете, да преминете към отметка, да получите или да зададете име на отметките, да получите или да зададете текст в нея.

## Вмъкване на отметки

Използване [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) както и [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) да създадете отметки, като маркирате неговия старт и край съответно. Не забравяйте да предадете едно и също име от отметки на двата метода. Отметките в един документ могат да се припокриват и обхващат всеки обхват. Лошо оформени отметки или отметки с дублиращи се имена ще бъдат игнорирани, когато документът е записан.

{{% alert color="primary" %}}

Всички бели пространства в отметките бяха заменени с акценти. Това ограничение идва от MS Word формати, тъй като отметки в MS Word формати, като DOX или DOC, не могат да имат бели пространства. PDF обаче позволява такива отметки. Така че сега, ако трябва да използвате отметки в PDF, XPS или SWF очертания, можете да ги използвате с бели пространства.

{{% /alert %}}

Следният пример за код показва как да се създаде нова отметка:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Получаване на отметки

Понякога е необходимо да се получи колекция от отметки за итерация чрез отметки или за други цели. Използвайте **Node.getRange** собственост, изложена на всеки документен възел, който връща **Range** обект, представляващ частта от документа, съдържаща се в този възел. Използвайте този обект, за да изтеглите **BookmarkCollection** и след това използвайте индексатора за събиране, за да получите конкретна отметки.

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на следните примери от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Следният пример за код показва как да получите отметки от колекция от отметки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Следният пример с код показва как да получите или зададете име и текст:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Следният пример за код показва как да маркирате таблица:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Ако промените името на отметките на име, което вече съществува в документа, няма да бъде генерирана грешка и само първата отметка ще бъде съхранена при запис на документа.

Имайте предвид, че някои отметки в документа са предназначени да образуват полета. Преместване към такава отметки и вмъкване на текст там вмъква текста във формата поле код. Въпреки че това няма да обезвреди полето на формата, въведеният текст няма да бъде видим, защото става част от кода на полето.

Следният пример за код показва как да получите достъп до колоните от таблицата с отметки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Преместване в отметки

Ако трябва да въведете богато съдържание (не само обикновен текст) в отметките, трябва да използвате [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) да преместите курсора в отметките и след това да използвате **DocumentBuilder** методи и свойства за вмъкване на съдържание.

## Показване съдържанието на отметките

Цялата отметки (* включително отметките*) могат да бъдат капсулирани в рамките на True част на `IF` поле за използване Aspose.Words. Тя може да бъде по такъв начин, че `IF` поле съдържа гнездене Сливане поле в израза (* Left of Operator*) и в зависимост от стойността на Сливане поле, `IF` полето показва или скрива съдържанието на Отметките в Word Document.

Следният пример с код показва как да показвате/ криете отметки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
