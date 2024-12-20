﻿---
title: Работа с отметки в C++
second_title: Aspose.Words за C++
articleTitle: Работа с отметки
linktitle: Работа с отметки
description: "Разбиране на понятията за отметки и как отметката може да се използва във вашата програма, използвайки C++."
type: docs
weight: 180
url: /bg/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Отметките идентифицират в документ Microsoft Word местоположенията или фрагментите, които именувате и идентифицирате за бъдеща справка. Например можете да използвате отметка, за да идентифицирате текста, който искате да прегледате по-късно. Вместо да превъртате през документа, за да намерите текста, можете да отидете до него, като използвате диалоговия прозорец отметка.

Действията, които могат да се извършват с отметки, използващи Aspose.Words, са същите като тези, които можете да извършвате с Microsoft Word. Можете да вмъкнете нов маркер, да изтриете, да преминете към маркер, да получите ИЛИ да зададете име на маркер, да получите ИЛИ да зададете текст, приложен в него. С Aspose.Words можете също да използвате отметки в отчети или документи, за да вмъкнете някои данни в отметката или да приложите специално форматиране към съдържанието му. Можете също да използвате отметки, за да извличате текст от определено местоположение във вашия документ.

## Вмъкване на отметка

Използвайте [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) и [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/), За да създадете отметка, като маркирате съответно нейното начало и край. Не забравяйте да предадете едно и също име на отметка и на двата метода. Отметките в документ могат да се припокриват и обхващат всеки диапазон. Лошо оформени отметки или отметки с дублирани имена ще бъдат игнорирани, когато документът се записва.

Следният пример за код показва как да създадете нова отметка:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Получаване На Отметки

Понякога е необходимо да се получи колекция от отметки, за да се итерира чрез отметки или за други цели. Използвайте свойството [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/), изложено от всеки възел на документ, който връща [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) обект, представляващ частта от документа, съдържаща се в този възел. Използвайте този обект, за да извлечете [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) и след това използвайте индексатора на колекцията, за да получите конкретна отметка.

Следният пример за код показва как да получите отметки от колекция от отметки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

Следващият пример за код показва как да получите или зададете име на отметка и текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Следващият пример за код показва как да маркирате таблица:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Ако промените името на отметка на име, което вече съществува в документа, няма да се генерира грешка и само първата отметка ще се съхранява, когато запишете документа.

{{% alert color="primary" %}}

Обърнете внимание, че някои отметки в документа са присвоени на полета на формуляр. Преминаването към такъв маркер и вмъкването на текст там вмъква текста в кода на полето на формуляра. Въпреки че това няма да обезсили полето на формуляра, вмъкнатият текст няма да бъде видим, защото става част от кода на полето.

{{% /alert %}}

## Преместване в Отметка

Ако трябва да вмъкнете богато съдържание (не само обикновен текст) в отметка, трябва да използвате [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/), за да преместите курсора в отметката и след това да използвате [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) методи и свойства, за да вмъкнете съдържание.

## Скриване На Съдържанието На Отметките

Цялата отметка (*including the bookmarked content*) може да бъде капсулирана в истинската част на полето `IF`, като се използва Aspose.Words. Тя може да бъде по такъв начин, че полето `IF` съдържа вложено Обединено поле в израза (*Left of Operator*) и в зависимост от стойността на полето за обединяване, полето `IF` показва или скрива съдържанието на отметката в документа Word.

Следващият пример за код показва как да се показват / скриват отметките:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
