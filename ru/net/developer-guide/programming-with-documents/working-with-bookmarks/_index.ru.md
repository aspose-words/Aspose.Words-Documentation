---
title: Работа с закладками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с закладками
linktitle: Работа с закладками
description: "Понимание концепций закладок и того, как закладки могут использоваться в вашей программе C#."
type: docs
weight: 180
url: /ru/net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Закладки идентифицируют в Microsoft Word Документируйте места или фрагменты, которые вы называете и идентифицируете для будущей ссылки. Например, вы можете использовать закладку для идентификации текста, который вы хотите пересмотреть позже. Вместо того, чтобы прокручивать документ, чтобы найти текст, вы можете перейти к нему, используя диалоговое окно Bookmark.

Действия, которые можно выполнять с помощью закладок Aspose.Words те же, которые вы можете использовать Microsoft Word. Вы можете вставить новую закладку, удалить, перейти в закладку, получить или установить имя закладки, получить или установить текст, заключенный в нее.

## Вставить закладку

Использовать [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) и [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) Создать закладку, отмечая ее начало и конец соответственно. Не забудьте передать одно и то же название закладки обоим методам. Закладки в документе могут перекрываться и охватывать любой диапазон. Плохо сформированные закладки или закладки с дублирующими именами будут игнорироваться при сохранении документа.

{{% alert color="primary" %}}

Все белые места в закладках были заменены на подчеркивания. Это ограничение пришло из Microsoft Word Закладки в форматах Word, таких как DOCX или DOC, не могут иметь белых пространств. Однако PDF позволяет такие закладки. Итак, если вам нужно использовать закладки в PDF или XPS Вы можете использовать их с белыми пространствами.

{{% /alert %}}

Следующий пример кода показывает, как создать новую закладку:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Получить закладки

Иногда необходимо получить коллекцию закладок для итерации через закладки или для других целей. Используйте [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) свойство, раскрытое любым узлом документа, который возвращает [Range](https://reference.aspose.com/words/net/aspose.words/range/) объект, представляющий часть документа, содержащегося в этом узле. Используйте этот объект для извлечения [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) Затем используйте индексатор сбора, чтобы получить конкретную закладку.

Следующий пример кода показывает, как получить закладки из коллекции закладок:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


Следующий пример кода показывает, как получить или установить имя закладки и текст:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Следующий пример кода показывает, как заложить таблицу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Если вы измените название закладки на имя, которое уже существует в документе, ошибка не будет сгенерирована, и только первая закладка будет сохранена при сохранении документа.

Обратите внимание, что некоторые закладки в документе назначаются для формирования полей. Переходя к такой закладке и вставляя текст там вставляет текст в код поля формы. Хотя это не отменяет поле формы, вставленный текст не будет виден, потому что он становится частью кода поля.

Следующий пример кода показывает, как получить доступ к столбцам таблицы закладок:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Перейти к закладке

Если вам нужно вставить богатый контент (а не простой текст) в закладку, вы должны использовать [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) Переместить курсор в закладку, а затем использовать [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) Способы и свойства для вставки контента.

## Показать скрытый контент закладки

Вся Закладка (включая закладки) может быть инкапсулирована в пределах Истинной части Закладки. `IF` поле используя Aspose.Words. Это может быть таким образом, что `IF` поле содержит вложенное поле слияния в выражении (*Left of Operator*) и в зависимости от значения поля слияния, `IF` поле показывает или скрывает содержание закладки в Word Document.

Следующий пример кода показывает, как показывать / скрывать закладки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
