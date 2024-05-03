---
title: Работа с закладками в Java
second_title: Aspose.Words для Java
articleTitle: Работа с закладками
linktitle: Работа с закладками
description: "Понимание концепций закладок и того, как закладки могут использоваться в вашей программе Java."
type: docs
weight: 180
url: /ru/java/working-with-bookmarks/
---

Закладки идентифицируют в Microsoft Word Документируйте места или фрагменты, которые вы называете и идентифицируете для будущей ссылки. Например, вы можете использовать закладку для идентификации текста, который вы хотите пересмотреть позже. Вместо того, чтобы прокручивать документ, чтобы найти текст, вы можете перейти к нему, используя диалоговое окно Закладки.

С Aspose.Words, Вы можете использовать закладки в отчетах или документах, чтобы вставить некоторые данные в закладку или применить специальное форматирование к ее содержанию. Вы также можете использовать закладки для извлечения текста из определенного места в вашем документе.

Действия, которые можно выполнять с помощью закладок Aspose.Words те же, которые вы можете использовать Microsoft Word. Вы можете вставить новую закладку, удалить, перейти в закладку, получить или установить имя закладки, получить или установить текст, заключенный в нее.

## Вставить закладку

Использовать [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) и [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) Создать закладку, отмечая ее начало и конец соответственно. Не забудьте передать одно и то же название закладки обоим методам. Закладки в документе могут перекрываться и охватывать любой диапазон. Плохо сформированные закладки или закладки с дублирующими именами будут игнорироваться при сохранении документа.

{{% alert color="primary" %}}

Все белые места в закладках были заменены на подчеркивания. Это ограничение исходило из форматов MS Word, поскольку закладки в форматах MS Word, таких как DOCX или DOC, не могут иметь белые пространства. Однако PDF позволяет такие закладки. Итак, если вам нужно использовать закладки в PDF, XPS или контуры SWF, можно использовать их с белыми пробелами.

{{% /alert %}}

Следующий пример кода показывает, как создать новую закладку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Получить закладки

Иногда необходимо получить коллекцию закладок для итерации через закладки или для других целей. Используйте **Node.getRange** свойство, раскрытое любым узлом документа, который возвращает **Range** объект, представляющий часть документа, содержащегося в этом узле. Используйте этот объект для извлечения **BookmarkCollection** Затем используйте индексатор сбора, чтобы получить конкретную закладку.

{{% alert color="primary" %}}

Вы можете скачать образец файла следующих примеров из [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Следующий пример кода показывает, как получить закладки из коллекции закладок:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Следующий пример кода показывает, как получить или установить имя закладки и текст:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Следующий пример кода показывает, как заложить таблицу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Если вы измените название закладки на имя, которое уже существует в документе, ошибка не будет сгенерирована, и только первая закладка будет сохранена при сохранении документа.

Обратите внимание, что некоторые закладки в документе назначаются для формирования полей. Переходя к такой закладке и вставляя текст там вставляет текст в код поля формы. Хотя это не отменяет поле формы, вставленный текст не будет виден, поскольку он становится частью кода поля.

Следующий пример кода показывает, как получить доступ к столбцам таблицы закладок:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Перейти к закладке

Если вам нужно вставить богатый контент (а не простой текст) в закладку, вы должны использовать [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) Переместить курсор в закладку, а затем использовать **DocumentBuilder** Способы и свойства для вставки контента.

## Показать скрытый контент закладки

Вся Закладка (* включая закладки) может быть инкапсулирована в пределах Истинной части Закладки. `IF` поле используя Aspose.Words. Это может быть таким образом, что `IF` поле содержит вложенное поле слияния в выражении (*Left of Operator*) и в зависимости от значения поля слияния, `IF` поле показывает или скрывает содержание закладки в Word Document.

Следующий пример кода показывает, как показывать / скрывать закладки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
