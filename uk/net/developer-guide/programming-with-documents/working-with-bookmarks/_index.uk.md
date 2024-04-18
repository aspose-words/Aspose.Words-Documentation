---
title: Робота з закладками C#
second_title: Aspose.Words для .NET
articleTitle: Робота з закладками
linktitle: Робота з закладками
description: "Розуміння концепцій закладок і як можна використовувати закладку у вашій програмі C#й"
type: docs
weight: 180
url: /uk/net/working-with-bookmarks/
---

Визначаємо закладки в Microsoft Word документувати місця або фрагменти, які ви назвали і виявляти для подальшого посилання. Наприклад, ви можете використовувати закладку, щоб визначити текст, який ви хочете переглянути пізніше. Замість прокручування через документ, щоб знайти текст, ви можете перейти до нього, використовуючи діалогове вікно закладок Bookmark.

Дії, які можна виконувати за допомогою закладок Aspose.Words ті ж, як і ті, які можна виконати за допомогою Microsoft Wordй Ви можете вставити новий закладок, видалити, перемістити в закладку, отримати або встановити ім'я закладки, отримати або встановити текст, укладений в ньому.

## Вставте закладку

Зареєструватися [StartBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/startbookmark/) і [EndBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endbookmark/) створити закладку, розмітивши його початок і кінець, відповідно. Не забудьте пройти однакову назву закладки до обох способів. Замітки в документі можуть перекривати і пропускати будь-який діапазон. Погано сформовані закладки або закладки з дублікатів будуть ігноруватися, коли документ зберігається.

{{% alert color="primary" %}}

Всі білі пробіли в закладках були замінені на підноси. Це обмеження надійшло Microsoft Word формати, так як закладки у форматах Word, такі як DOCX або DOC не можуть мати білого простору. Однак PDF дозволяє такі закладки. Так тепер, якщо потрібно використовувати закладки в PDF або XPS ви можете використовувати їх з білими просторами.

{{% /alert %}}

Приклад коду показує, як створити новий закладок:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cs" >}}

## Отримувати закладки

Іноді необхідно отримати збірку закладок до неї через закладки або для інших цілей. Використання [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) майно, піддану будь-яким документом, що повертає [Range](https://reference.aspose.com/words/net/aspose.words/range/) об'єкт, що представляє частину документа, що міститься в цій вершині. Використовуйте цей об'єкт для отримання [BookmarkCollection](https://reference.aspose.com/words/net/aspose.words/bookmarkcollection/) а потім скористайтеся індексатором збору, щоб отримати конкретну закладку.

Приклад коду показує, як отримати закладки з колекції закладок:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx)й

{{% /alert %}}


Приклад коду показує, як отримати або встановити назву закладки та текст:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Bookmarks.docx)й

{{% /alert %}}

Приклад коду показує, як записати таблицю:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cs" >}}

Якщо ви зміните ім'я закладки на ім'я, яка вже існує в документі, не буде сформована помилка і тільки перший заклад буде зберігатися при збереженні документа.

Зауважте, що деякі закладки в документі призначають у вигляді полів. Переміщення такої закладки та вставки тексту вводиться текст у форму поле коду. Хоча це не визнає поле форми, вставлений текст не буде видно, оскільки він стає частиною поля.

Приклад наступного коду показує, як отримати доступ до стовпців закладеного столу:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTableColumns.cs" >}}

## Перемістити в закладку

Якщо вам необхідно вставити багатий контент (не просто звичайний текст) в закладку, необхідно використовувати [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/) перемістити курсор в закладку, а потім використовувати [DocumentBuilder's](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) методи і властивості вставити вміст.

## Показати вміст закладок

Весь закладок (* в тому числі закладений вміст*) може бути інкапсульований в межах дійсної частини `IF` використання поля Aspose.Wordsй Це може бути таким чином, що `IF` поле містить гніздований поле Мержа в експресії (* Відправлення Оператора*) і в залежності від значення Поле Мерж, `IF` поле показує або приховує зміст закладки у документі Word.

Приклад коду показує, як показати / сховати закладки:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cs" >}}
