---
title: Робота з закладками Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з закладками
linktitle: Робота з закладками
description: "Як вставити, отримати, перемістити, показати або приховати закладки за допомогою Pythonй"
type: docs
weight: 180
url: /uk/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Визначаємо закладки в Microsoft Word документувати місця або фрагменти, які ви назвали і виявляти для подальшого посилання. Наприклад, ви можете використовувати закладку, щоб визначити текст, який ви хочете переглянути пізніше. Замість прокручування через документ, щоб знайти текст, ви можете перейти до нього, використовуючи діалогове вікно закладок Bookmark.

Дії, які можна виконувати за допомогою закладок Aspose.Words ті ж, як і ті, які можна виконати за допомогою Microsoft Wordй Ви можете вставити новий закладок, видалити, перемістити в закладку, отримати або встановити ім'я закладки, отримати або встановити текст, укладений в ньому. З Aspose.WordsВи також можете використовувати закладки в звітах або документах для вставки деяких даних в закладку або застосувати спеціальний формат до його вмісту. Ви також можете використовувати закладки для отримання тексту з певного розташування у вашому документі.

## Вставте закладку

Зареєструватися [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) і [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) створити закладку, розмітивши його початок і кінець, відповідно. Не забудьте пройти однакову назву закладки до обох способів. Замітки в документі можуть перекривати і пропускати будь-який діапазон. Погано сформовані закладки або закладки з дублікатів будуть ігноруватися, коли документ зберігається.

{{% alert color="primary" %}}

Всі білі пробіли в закладках були замінені на підноси. Це обмеження надійшло з форматів MS Word, оскільки закладки у форматах MS Word, такі як DOCX або DOC, не можуть мати білого простору. Однак PDF дозволяє такі закладки. Так тепер, якщо потрібно використовувати закладки в PDF або XPS ви можете використовувати їх з білими просторами.

{{% /alert %}}

Приклад коду показує, як створити новий закладок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Отримувати закладки

Іноді необхідно отримати збірку закладок до неї через закладки або для інших цілей. Використання [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) майно, піддану будь-яким документом, що повертає [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) об'єкт, що представляє частину документа, що міститься в цій вершині. Використовуйте цей об'єкт для отримання [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) а потім скористайтеся індексатором збору, щоб отримати конкретну закладку.

{{% alert color="primary" %}}

Ви можете завантажити файл зразок з цих прикладів [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx)й

{{% /alert %}}

Приклад коду показує, як отримати закладки з колекції закладок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Приклад коду показує, як отримати або встановити назву закладки та текст:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Приклад коду показує, як записати таблицю:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Якщо ви зміните ім'я закладки на ім'я, яка вже існує в документі, не буде сформована помилка і тільки перший заклад буде зберігатися при збереженні документа.

Зауважте, що деякі закладки в документі призначають у вигляді полів. Переміщення такої закладки та вставки тексту вводиться текст у форму поле коду. Хоча це не визнає поле форми, вставлений текст не буде видно, оскільки він стає частиною поля.

Приклад наступного коду показує, як отримати доступ до стовпців закладеного столу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Перемістити в закладку

Якщо вам необхідно вставити багатий контент (не просто звичайний текст) в закладку, необхідно використовувати [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) перемістити курсор в закладку, а потім використовувати [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) методи і властивості вставити вміст.

## Показати вміст закладок

Весь закладок (* в тому числі закладений вміст*) може бути інкапсульований в межах дійсної частини `IF` використання поля Aspose.Wordsй Це може бути таким чином, що `IF` поле містить гніздований поле Мержа в експресії (* Відправлення Оператора*) і в залежності від значення Поле Мерж, `IF` поле показує або приховує зміст закладки у документі Word.

Приклад коду показує, як показати / сховати закладки:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
