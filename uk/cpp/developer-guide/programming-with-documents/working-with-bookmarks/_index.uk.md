﻿---
title: Робота з закладками в C++
second_title: Aspose.Words для C++
articleTitle: Робота з закладками
linktitle: Робота з закладками
description: "Розуміння концепції закладок та того, як їх можна використовувати у вашій програмі за допомогою C++."
type: docs
weight: 180
url: /uk/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Закладки визначають у документі Microsoft Word місця або фрагменти, які ви вказуєте та ідентифікуєте для подальшого використання. Наприклад, ви можете використовувати закладку для визначення тексту, який ви хочете переглянути пізніше. Замість того, щоб прокручувати документ у пошуках потрібного тексту, ви можете перейти до нього за допомогою діалогового вікна "Закладки".

Дії, які можна виконати із закладками за допомогою Aspose.Words, подібні до тих, які можна виконати за допомогою Microsoft Word. Ви можете вставити нову закладку, Видалити, Перемістити в закладку, отримати або задати назву закладки, отримати або задати текст, укладений в ній. За допомогою Aspose.Words ви також можете використовувати закладки у звітах або документах, щоб вставити в них деякі дані або застосувати спеціальне форматування до їх вмісту. Ви також можете використовувати закладки для вилучення тексту з певного місця у вашому документі.

## Вставити закладку

Використовуйте [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) та [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) для створення закладки, позначивши її початок та кінець відповідно. Не забудьте вказати однакову назву закладки в обох методах. Закладки в документі можуть перекриватися і охоплювати будь-який діапазон. Неправильно оформлені закладки або закладки з повторюваними назвами будуть проігноровані при збереженні документа.

Наступний приклад коду показує, як створити нову закладку:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Отримувати закладки

Іноді необхідно отримати колекцію закладок для перебору закладок або для інших цілей. Використовуйте властивість [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/), надану будь-яким вузлом документа, який повертає об'єкт [Range](https://reference.aspose.com/words/cpp/aspose.words/range/), Що представляє частину документа, що міститься в цьому вузлі. Використовуйте цей об'єкт для вилучення [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/), а потім використовуйте індексатор колекції, щоб отримати певну закладку.

Наступний приклад коду показує, як отримати закладки з колекції закладок:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

У наступному прикладі коду показано, як отримати або задати назву закладки і текст:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Наступний приклад коду показує, як додати таблицю в закладки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Якщо ви зміните назву закладки на ім'я, яке вже існує в документі, помилка не буде згенерована, і при збереженні документа буде збережена тільки перша закладка.

{{% alert color="primary" %}}

Зверніть увагу, що деякі закладки в документі призначені полям форми. При переході до такої закладки і вставці тексту в неї текст буде вставлений в код поля форми. Хоча це не призведе до анулювання поля форми, вставлений текст не буде видно, оскільки він стане частиною коду поля.

{{% /alert %}}

## Перейти до закладки

Якщо вам потрібно вставити розширений вміст (а не просто звичайний текст) у закладку, Вам слід використовувати [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) для переміщення курсору на закладку, а потім використовувати методи та властивості [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) для вставки вмісту.

## Показувати і приховувати вміст закладок

Вся закладка (*including the bookmarked content*) може бути укладена в істинну частину поля `IF` за допомогою Aspose.Words. Це може бути так, що поле `IF` містить вкладене поле об'єднання у виразі (*Left of Operator*), і залежно від значення поля об'єднання поле `IF` відображає або приховує вміст закладки в документі Word.

Наступний приклад коду показує, як показувати / приховувати закладки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}