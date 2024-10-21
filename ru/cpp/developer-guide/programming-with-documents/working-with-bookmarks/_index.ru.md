﻿---
title: Работа с закладками в C++
second_title: Aspose.Words для C++
articleTitle: Работа с закладками
linktitle: Работа с закладками
description: "Понимание концепции закладок и того, как их можно использовать в вашей программе на C++."
type: docs
weight: 180
url: /ru/cpp/working-with-bookmarks/
---

Закладки определяют места или фрагменты документа Microsoft Word, которые вы указываете и определяете для дальнейшего использования. Например, вы можете использовать закладку для определения текста, который хотите просмотреть позже. Вместо того чтобы прокручивать документ в поисках нужного текста, вы можете перейти к нему с помощью диалогового окна "Закладки".

Действия, которые можно выполнить с закладками с помощью Aspose.Words, аналогичны тем, которые вы можете выполнить с помощью Microsoft Word. Вы можете вставить новую закладку, удалить, переместить в закладку, получить или задать название закладки, получить или задать текст, заключенный в ней. С помощью Aspose.Words вы также можете использовать закладки в отчетах или документах, чтобы вставить в них некоторые данные или применить специальное форматирование к их содержимому. Вы также можете использовать закладки для извлечения текста из определенного места в вашем документе.

## Вставить закладку

Используйте [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) и [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) для создания закладки, отметив ее начало и конец соответственно. Не забудьте указать одинаковое имя закладки в обоих методах. Закладки в документе могут перекрываться и охватывать любой диапазон. Неправильно оформленные закладки или закладки с повторяющимися названиями будут проигнорированы при сохранении документа.

В следующем примере кода показано, как создать новую закладку:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Получать закладки

Иногда необходимо получить коллекцию закладок для перебора закладок или для других целей. Используйте свойство [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/), предоставляемое любым узлом документа, которое возвращает объект [Range](https://reference.aspose.com/words/cpp/aspose.words/range/), представляющий часть документа, содержащуюся в этом узле. Используйте этот объект для извлечения [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/), а затем используйте индексатор коллекции, чтобы получить определенную закладку.

В следующем примере кода показано, как получить закладки из коллекции закладок:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

В следующем примере кода показано, как получить или задать название закладки и текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

В следующем примере кода показано, как добавить таблицу в закладки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Если вы измените название закладки на имя, которое уже существует в документе, ошибка сгенерирована не будет, и при сохранении документа будет сохранена только первая закладка.

{{% alert color="primary" %}}

Обратите внимание, что некоторые закладки в документе назначены полям формы. При переходе к такой закладке и вставке текста в нее текст будет вставлен в код поля формы. Хотя это не приведет к аннулированию поля формы, вставленный текст не будет виден, поскольку он станет частью кода поля.

{{% /alert %}}

## Перейти к закладке

Если вам нужно вставить расширенный контент (а не просто обычный текст) в закладку, вы должны использовать [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) для перемещения курсора на закладку, а затем использовать методы и свойства [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) для вставки содержимого.

## Показывать и скрывать содержимое закладок

Вся закладка (*including the bookmarked content*) может быть заключена в истинную часть поля `IF` с помощью Aspose.Words. Это может быть сделано таким образом, что поле `IF` содержит вложенное поле объединения в выражении (*Left of Operator*), и в зависимости от значения поля объединения поле `IF` отображает или скрывает содержимое закладки в документе Word.

В следующем примере кода показано, как показывать/ скрывать закладки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}