---
title: Работа с закладками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа с закладками
linktitle: Работа с закладками
description: "Понимание концепций закладок и того, как можно использовать закладки в вашей программе с помощью C#."
type: docs
weight: 180
url: /ru/net/working-with-bookmarks/
---

Закладки идентифицируют в документе Microsoft Word места или фрагменты, которые вы называете и идентифицируете для дальнейшего использования. Например, вы можете использовать закладку для обозначения текста, который вы хотите изменить позже. Вместо того, чтобы прокручивать документ в поисках текста, вы можете перейти к нему с помощью диалогового окна "Закладка".

Действия, которые можно выполнять с закладками с помощью Aspose.Words, такие же, как те, которые можно выполнять с помощью Microsoft Word. Вы можете вставить новую закладку, удалить, перейти к закладке, получить или установить имя закладки, получить или установить заключенный в ней текст. .

## Вставить закладку

Используйте [StartBookmark](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/startbookmark/) и [EndBookmark](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/endbookmark/), чтобы создать закладку, отметив ее начало и конец соответственно. Не забудьте передать обоим методам одно и то же имя закладки. Закладки в документе могут перекрываться и охватывать любой диапазон. Закладки неправильного формата или закладки с повторяющимися именами будут игнорироваться при сохранении документа.

{{% alert color="primary" %}}

Все пробелы в закладках заменены подчеркиваниями. Это ограничение возникло из-за форматов Microsoft Word, поскольку закладки в форматах Word, таких как DOCX или DOC, не могут иметь пробелов. Однако PDF допускает такие закладки. Итак, теперь, если вам нужно использовать закладки в PDF или контурах XPS, вы можете использовать их с пробелами.

{{% /alert %}}

В следующем примере кода показано, как создать новую закладку:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Получить закладки

Иногда необходимо получить коллекцию закладок для перебора закладок или для других целей. Используйте свойство [Node.Range](https://reference.aspose.com/words/ru/net/aspose.words/node/range/), предоставляемое любым узлом документа, которое возвращает объект [Range](https://reference.aspose.com/words/ru/net/aspose.words/range/), представляющий часть документа, содержащуюся в этом узле. Используйте этот объект для получения [BookmarkCollection](https://reference.aspose.com/words/ru/net/aspose.words/bookmarkcollection/), а затем используйте индексатор коллекции для получения определенной закладки.

В следующем примере кода показано, как получить закладки из коллекции закладок:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по номеру [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}


В следующем примере кода показано, как получить или установить имя и текст закладки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по адресу [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

В следующем примере кода показано, как добавить таблицу в закладки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Если вы измените имя закладки на имя, которое уже существует в документе, ошибка не возникнет, и при сохранении документа будет сохранена только первая закладка.

Обратите внимание, что некоторые закладки в документе закреплены за полями формы. Переход к такой закладке и вставка туда текста вставляет текст в код поля формы. Хотя это не приведет к аннулированию поля формы, вставленный текст не будет виден, поскольку он станет частью кода поля.

В следующем примере кода показано, как получить доступ к столбцам таблицы с закладками:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Перейти к закладке

Если вам нужно вставить в закладку расширенное содержимое (а не только обычный текст), вам следует использовать [MoveToBookmark](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/movetobookmark/), чтобы переместить курсор к закладке, а затем использовать методы и свойства [DocumentBuilder's](https://reference.aspose.com/words/ru/net/aspose.words/documentbuilder/) для вставки содержимого.

## Показать скрыть содержимое закладки

Всю закладку (*включая содержимое закладки*) можно инкапсулировать в истинной части поля `IF` с помощью Aspose.Words. Это может быть таким образом, что поле `IF` будет содержать вложенное поле слияния в выражении (*слева от оператора* ) и в зависимости от значения поля слияния поле `IF` отображает или скрывает содержимое закладки в документе Word.

В следующем примере кода показано, как показать/скрыть закладки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
