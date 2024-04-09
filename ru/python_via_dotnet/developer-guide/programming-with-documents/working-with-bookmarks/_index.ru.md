---
title: Работа с закладками в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с закладками
linktitle: Работа с закладками
description: "Как вставить, получить, переместить, показать или скрыть закладки с помощью Python."
type: docs
weight: 180
url: /ru/python-net/working-with-bookmarks/
---

Закладки идентифицируют в Microsoft Word Документируйте места или фрагменты, которые вы называете и идентифицируете для будущей ссылки. Например, вы можете использовать закладку для идентификации текста, который вы хотите пересмотреть позже. Вместо того, чтобы прокручивать документ, чтобы найти текст, вы можете перейти к нему, используя диалоговое окно Bookmark.

Действия, которые можно выполнять с помощью закладок Aspose.Words те же, которые вы можете использовать Microsoft Word. Вы можете вставить новую закладку, удалить, перейти в закладку, получить или установить имя закладки, получить или установить текст, заключенный в нее. с Aspose.WordsВы также можете использовать закладки в отчетах или документах, чтобы вставить некоторые данные в закладку или применить специальное форматирование к ее содержанию. Вы также можете использовать закладки для извлечения текста из определенного места в вашем документе.

## Вставить закладку

Использовать [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) и [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) Создать закладку, отмечая ее начало и конец соответственно. Не забудьте передать одно и то же название закладки обоим методам. Закладки в документе могут перекрываться и охватывать любой диапазон. Плохо сформированные закладки или закладки с дублирующими именами будут игнорироваться при сохранении документа.

{{% alert color="primary" %}}

Все белые места в закладках были заменены на подчеркивания. Это ограничение исходило из форматов MS Word, поскольку закладки в форматах MS Word, таких как DOCX или DOC, не могут иметь белые пространства. Однако PDF позволяет такие закладки. Итак, если вам нужно использовать закладки в PDF или XPS Вы можете использовать их с белыми пространствами.

{{% /alert %}}

Следующий пример кода показывает, как создать новую закладку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Получить закладки

Иногда необходимо получить коллекцию закладок для итерации через закладки или для других целей. Используйте [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) свойство, раскрытое любым узлом документа, который возвращает [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) объект, представляющий часть документа, содержащегося в этом узле. Используйте этот объект для извлечения [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) Затем используйте индексатор сбора, чтобы получить конкретную закладку.

{{% alert color="primary" %}}

Вы можете скачать образец файла этих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Следующий пример кода показывает, как получить закладки из коллекции закладок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Следующий пример кода показывает, как получить или установить имя закладки и текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Следующий пример кода показывает, как заложить таблицу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Если вы измените название закладки на имя, которое уже существует в документе, ошибка не будет сгенерирована, и только первая закладка будет сохранена при сохранении документа.

Обратите внимание, что некоторые закладки в документе назначаются для формирования полей. Переходя к такой закладке и вставляя текст там вставляет текст в код поля формы. Хотя это не отменяет поле формы, вставленный текст не будет виден, потому что он становится частью кода поля.

Следующий пример кода показывает, как получить доступ к столбцам таблицы закладок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Перейти к закладке

Если вам нужно вставить богатый контент (а не простой текст) в закладку, вы должны использовать [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) Переместить курсор в закладку, а затем использовать [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Способы и свойства для вставки контента.

## Показать скрытый контент закладки

Вся Закладка (включая закладки) может быть инкапсулирована в пределах Истинной части Закладки. `IF` поле используя Aspose.Words. Это может быть таким образом, что `IF` поле содержит вложенное поле слияния в выражении (*Left of Operator*) и в зависимости от значения поля слияния, `IF` поле показывает или скрывает содержание закладки в Word Document.

Следующий пример кода показывает, как показывать / скрывать закладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
