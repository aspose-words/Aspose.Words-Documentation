---
title: Работа с закладками в Java
second_title: Aspose.Words для Java
articleTitle: Работа с закладками
linktitle: Работа с закладками
description: "Понимание концепции закладок и того, как их можно использовать в вашей программе с помощью Java."
type: docs
weight: 180
url: /ru/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Закладки определяют в документе Microsoft Word местоположения или фрагменты, которые вы указываете и идентифицируете для дальнейшего использования. Например, вы можете использовать закладку для определения текста, который хотите просмотреть позже. Вместо того чтобы прокручивать документ в поисках нужного текста, вы можете перейти к нему с помощью диалогового окна "Закладки".

С помощью Aspose.Words вы можете использовать закладки в отчетах или документах, чтобы вставить в них некоторые данные или применить специальное форматирование к их содержимому. Вы также можете использовать закладки для извлечения текста из определенного места в вашем документе.

Действия, которые можно выполнить с закладками с помощью Aspose.Words, аналогичны тем, которые вы можете выполнить с помощью Microsoft Word. Вы можете вставить новую закладку, удалить, переместить в закладку, получить или задать название закладки, получить или задать текст, заключенный в ней.

## Вставить закладку

Используйте [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) и [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) для создания закладки, отметив ее начало и конец соответственно. Не забудьте указать одинаковое название закладки в обоих методах. Закладки в документе могут перекрываться и охватывать любой диапазон. Неправильно оформленные закладки или закладки с повторяющимися названиями будут проигнорированы при сохранении документа.

{{% alert color="primary" %}}

Все пробелы в закладках были заменены символами подчеркивания. Это ограничение возникло из-за форматов MS Word, поскольку закладки в форматах MS Word, таких как DOCX или DOC, не могут содержать пробелов. Однако в PDF такие закладки разрешены. Итак, теперь, если вам нужно использовать закладки в контурах PDF, XPS или SWF, вы можете использовать их с пробелами.

{{% /alert %}}

В следующем примере кода показано, как создать новую закладку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Получать закладки

Иногда необходимо получить коллекцию закладок для перебора закладок или для других целей. Используйте свойство **Node.getRange**, предоставляемое любым узлом документа, которое возвращает объект **Range**, представляющий часть документа, содержащуюся в этом узле. Используйте этот объект для извлечения **BookmarkCollection**, а затем используйте индексатор коллекции, чтобы получить определенную закладку.

{{% alert color="primary" %}}

Вы можете скачать примерный файл со следующими примерами по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

В следующем примере кода показано, как получить закладки из коллекции закладок:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

В следующем примере кода показано, как получить или задать название закладки и текст:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

В следующем примере кода показано, как добавить таблицу в закладки:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Если вы измените название закладки на имя, которое уже существует в документе, ошибка сгенерирована не будет, и при сохранении документа будет сохранена только первая закладка.

Обратите внимание, что некоторые закладки в документе назначены полям формы. При переходе к такой закладке и вставке текста в нее текст будет вставлен в код поля формы. Хотя это не приведет к аннулированию поля формы, вставленный текст не будет виден, поскольку он станет частью кода поля.

В следующем примере кода показано, как получить доступ к столбцам таблицы с закладками:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Перейти к закладке

Если вам нужно вставить расширенный контент (не только обычный текст) в закладку, вы должны использовать [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) для перемещения курсора на закладку, а затем использовать **DocumentBuilder** методы и свойства для вставки содержимого.

## Показывать и скрывать содержимое закладок

Вся закладка (*including the bookmarked content*) может быть заключена в истинную часть поля `IF` с помощью Aspose.Words. Это может быть сделано таким образом, что поле `IF` содержит вложенное поле объединения в выражении (*Left of Operator*), и в зависимости от значения поля объединения поле `IF` отображает или скрывает содержимое закладки в документе Word.

В следующем примере кода показано, как показывать/ скрывать закладки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
