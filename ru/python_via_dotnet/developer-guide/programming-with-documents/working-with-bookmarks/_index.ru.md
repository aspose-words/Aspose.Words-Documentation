---
title: Работа с закладками в Python
second_title: Aspose.Words за Python via .NET
articleTitle: Работа с закладками
linktitle: Работа с закладками
description: "Как вставлять, получать, перемещать, показывать или скрывать закладки с помощью Python."
type: docs
weight: 180
url: /ru/python-net/working-with-bookmarks/
---

Закладки идентифицируют в документе Microsoft Word места или фрагменты, которые вы называете и идентифицируете для дальнейшего использования. Например, вы можете использовать закладку для обозначения текста, который вы хотите изменить позже. Вместо прокрутки документа в поисках текста вы можете перейти к нему с помощью диалогового окна "Закладка".

Действия, которые можно выполнять с закладками с помощью Aspose.Words, такие же, как с помощью Microsoft Word. Вы можете вставить новую закладку, удалить, перейти к закладке, получить или установить имя закладки, получить или установить заключенный в ней текст.. С помощью Aspose.Words вы также можете использовать закладки в отчетах или документах, чтобы вставлять в закладку некоторые данные или применять специальное форматирование к ее содержимому. Вы также можете использовать закладки для извлечения текста из определенного места в документе.

## Вставить закладку

Используйте [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) и [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/), чтобы создать закладку, отметив ее начало и конец соответственно. Не забудьте передать обоим методам одно и то же имя закладки. Закладки в документе могут перекрываться и охватывать любой диапазон. Закладки неправильного формата или закладки с повторяющимися именами будут игнорироваться при сохранении документа.

{{% alert color="primary" %}}

Все пробелы в закладках заменены подчеркиваниями. Это ограничение связано с форматами MS Word, поскольку закладки в форматах MS Word, таких как DOCX или DOC, не могут иметь пробелов. Однако PDF допускает такие закладки. Итак, теперь, если вам нужно использовать закладки в PDF или контурах XPS, вы можете использовать их с пробелами.

{{% /alert %}}

В следующем примере кода показано, как создать новую закладку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Получить закладки

Иногда необходимо получить коллекцию закладок для перебора закладок или для других целей. Используйте свойство [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/), предоставляемое любым узлом документа, которое возвращает объект [Range](https://reference.aspose.com/words/python-net/aspose.words/range/), представляющий часть документа, содержащуюся в этом узле. Используйте этот объект для получения [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/), а затем используйте индексатор коллекции для получения определенной закладки.

{{% alert color="primary" %}}

Вы можете скачать образец файла этих примеров по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

В следующем примере кода показано, как получить закладки из коллекции закладок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

В следующем примере кода показано, как получить или установить имя и текст закладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

В следующем примере кода показано, как добавить таблицу в закладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Если вы измените имя закладки на имя, которое уже существует в документе, ошибка не возникнет, и при сохранении документа будет сохранена только первая закладка.

Обратите внимание, что некоторые закладки в документе закреплены за полями формы. Переход к такой закладке и вставка туда текста вставляет текст в код поля формы. Хотя это не приведет к аннулированию поля формы, вставленный текст не будет виден, поскольку он станет частью кода поля.

В следующем примере кода показано, как получить доступ к столбцам таблицы с закладками:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Перейти к закладке

Если вам нужно вставить в закладку расширенное содержимое (а не только обычный текст), вам следует использовать [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/), чтобы переместить курсор к закладке, а затем использовать методы и свойства [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) для вставки содержимого.

## Показать скрыть содержимое закладки

Всю закладку (*включая содержимое закладки*) можно инкапсулировать в истинной части поля `IF` с помощью Aspose.Words. Это может быть таким образом, что поле `IF` будет содержать вложенное поле слияния в выражении (*слева от оператора* ) и в зависимости от значения поля слияния поле `IF` отображает или скрывает содержимое закладки в документе Word.

В следующем примере кода показано, как показать/скрыть закладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
