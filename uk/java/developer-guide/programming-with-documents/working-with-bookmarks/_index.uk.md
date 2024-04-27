---
title: Робота з закладками Java
second_title: Aspose.Words для Java
articleTitle: Робота з закладками
linktitle: Робота з закладками
description: "Розуміння концепцій закладок і як можна використовувати закладку у вашій програмі Javaй"
type: docs
weight: 180
url: /uk/java/working-with-bookmarks/
---

Визначаємо закладки в Microsoft Word документувати місця або фрагменти, які ви назвали і виявляти для подальшого посилання. Наприклад, ви можете використовувати закладку, щоб визначити текст, який ви хочете переглянути пізніше. Замість прокручування через документ, щоб знайти текст, ви можете перейти до нього, використовуючи діалогове вікно закладок Bookmark.

З Aspose.Words, Ви можете використовувати закладки в звітах або документах, щоб вставляти деякі дані в закладку або застосувати спеціальний формат до його змісту. Ви також можете використовувати закладки для отримання тексту з певного розташування у вашому документі.

Дії, які можна виконувати за допомогою закладок Aspose.Words ті ж, як і ті, які можна виконати за допомогою Microsoft Wordй Ви можете вставити новий закладок, видалити, перемістити в закладку, отримати або встановити ім'я закладки, отримати або встановити текст, укладений в ньому.

## Вставте закладку

Зареєструватися [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) і [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) створити закладку, розмітивши його початок і кінець, відповідно. Не забудьте пройти однакову назву закладки до обох способів. Замітки в документі можуть перекривати і пропускати будь-який діапазон. Погано сформовані закладки або закладки з дублікатів будуть ігноруватися, коли документ зберігається.

{{% alert color="primary" %}}

Всі білі пробіли в закладках були замінені на підноси. Цей обмеження надійшов з форматів MS Word, оскільки закладки у форматах MS Word, такі як DOCX або DOC, не можуть мати білого простору. Однак PDF дозволяє такі закладки. Отже, якщо потрібно використовувати закладки в PDF, XPS або SWF контури, ви можете використовувати їх з білими пробілами.

{{% /alert %}}

Приклад коду показує, як створити новий закладок:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Отримувати закладки

Іноді необхідно отримати збірку закладок до неї через закладки або для інших цілей. Використання **Нод.getRange** майно, що піддається будь-якому документу, що повертає **Range** об'єкт, що представляє частину документа, що міститься в цій вершині. Використовуйте цей об'єкт для отримання **BookmarkCollection** а потім скористайтеся індексатором збору для отримання конкретної закладки.

{{% alert color="primary" %}}

Ви можете завантажити файл зразок з наступних прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx)й

{{% /alert %}}

Приклад коду показує, як отримати закладки з колекції закладок:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Приклад коду показує, як отримати або встановити назву закладки та текст:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Приклад коду показує, як записати таблицю:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Якщо ви зміните ім'я закладки на ім'я, яка вже існує в документі, не буде сформована помилка і тільки перший заклад буде зберігатися при збереженні документа.

Зауважте, що деякі закладки в документі присвоєно для формування полів. Переміщення такої закладки та вставки тексту вводиться текст у форму поле коду. Хоча це не визнає поле форми, вставлений текст не буде видно, оскільки він стає частиною поля.

Приклад коду показує, як отримати доступ до стовпців зауваженого столу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Перемістити в закладку

Якщо вам необхідно вставити багатий вміст (не просто звичайний текст) в закладку, необхідно використовувати [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) перемістити курсор в закладку, а потім використовувати **DocumentBuilder** методи і властивості вставити вміст.

## Показати вміст закладок

Весь закладок (* в тому числі закладений вміст*) може бути інкапсульований в межах дійсної частини `IF` використання поля Aspose.Wordsй Це може бути таким чином, що `IF` поле містить в собі поле Мерге в виразі (* Відправлення Оператора*) і в залежності від значення Поле Мерж, `IF` поле показує або приховує зміст закладки у документі Word.

Приклад коду показує, як показати / приховати закладки.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
