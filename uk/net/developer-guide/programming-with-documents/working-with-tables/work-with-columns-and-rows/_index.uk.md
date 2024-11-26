---
title: Робота з колонами та рядками C#
second_title: Aspose.Words для .NET
articleTitle: Робота з колонами та рядками
linktitle: Робота з колонами та рядками
description: "Робота з частинами таблиці – рядами, стовпчиками та клітинами з використанням C#й Вказати заголовок Row C#й"
type: docs
weight: 30
url: /uk/net/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Для більшого контролю над тим, як працюють таблиці, вивчіть, як маніпулювати стовпчики і рядки.

## Знайти Індекс елемента таблиці {#find-the-index-of-table-elements}

Колонки, рядки та клітини керовані шляхом доступу до вибраного вузла документа індексом. Пошук індексу будь-якого вузла передбачає збирання всіх дочірніх вузлів елемента з материнської вершини, а потім використання [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) метод пошуку індексу необхідного вузла в збірнику.

### Знайти Індекс таблиці в документі {#find-the-index-of-table-in-a-document}

Іноді необхідно внести зміни до певного столу в документі. Для цього можна звернутися до таблиці за його індексом.

Приклад наступного коду показує, як отримати індекс таблиці в документі:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Знайти Індекс Рів у таблиці {#find-the-index-of-a-row-in-a-table}

Аналогічно можна внести зміни в конкретний ряд у вибраному столі. Для цього можна також звернутися до ряду за його індексом.

Приклад наступного коду показує, як отримати індекс рядка в таблиці:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Знайти Індекс клітинки в рядку {#find-the-index-of-a-cell-in-a-row}

Нарешті, ви можете змінити певну клітинку, і ви можете зробити це за допомогою індексу клітин.

Приклад наступного коду показує, як отримати індекс клітинки в рядку:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Робота з колонами {#work-with-columns}

У Aspose.Words Document Object Model (Українська)DOMй [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) вузол складається з [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) вузли і потім [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) вершини. Так, в `Document` Модель об'єкта Aspose.Words, як у документах Word немає поняття стовпця.

По дизайну, таблиці рядків в Microsoft Word і Aspose.Words повністю самостійні, а основні властивості і операції містяться тільки в рядах і клітинах таблиці. Це дає таблиці можливість мати деякі цікаві атрибути:

- Кожний ряд таблиці може мати абсолютно різну кількість клітин
- Вертикально, клітини кожного ряду можуть мати різні ширини
- до Включити таблиці з різними форматами рядків і кількістю клітин

Будь-які операції, які виконуються на стовпцях, насправді "коротки", які виконують роботу колективно змінними клітинами рядка таким чином, що вона виглядає, як вони наносяться на стовпці. Таким чином, ви можете виконувати операції по стовпцях, просто ітеруючи над тим же індексом клітинного рядка.

Приклад наступного коду спрощує такі операції, даючи фасадний клас, який збирає клітини, які складають "холодний" таблиці:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

Приклад наступного коду показує, як вставити порожній стовпчик в таблицю:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

Приклад наступного коду показує, як видалити стовпчик з таблиці в документі:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Вказати рядки як головка

Ви можете вибрати для повторення першого ряду в таблиці як заголовок, тільки на першій сторінці або на кожній сторінці, якщо таблиця розщеплюється на кілька. У Aspose.Words, Ви можете повторити заголовок на кожній сторінці за допомогою сторінки [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/) майно.

Ви також можете відмітити кілька рядків заголовка, якщо такі рядки розташовані один після іншого на початку столу. Для цього потрібно застосувати **HeadingFormat** властивості до цих рядків.

{{% alert color="primary" %}}

Зауважте, що головки не працюють в гніздових таблицях. Що таке, якщо у вас є таблиця в іншому столі, це налаштування не буде ефектно. Це обмеження Microsoft Word що не дає цього, не Aspose.Wordsй

{{% /alert %}}

Приклад наступного коду показує, як побудувати таблицю, яка включає в себе Головні рядки, які повторюються на наступних сторінках:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Тримайте таблиці та рядки від Breaking Across Сторінки {#keep-tables-and-rows-from-breaking-across-pages}

Часом, де вміст таблиці не повинно бути розщеплення по сторінках. Наприклад, якщо заголовок вище таблиці, заголовок та таблиці завжди слід тримати разом на одній сторінці, щоб зберегти правильний вигляд.

Є дві окремі техніки, які корисні для досягнення цієї функціональності:

- до `Allow row break across pages`, який наноситься на рядки таблиці
- до `Keep with next`, який наноситься на абзаци в клітинах таблиці

За замовчуванням вищевказані властивості вимкнено.

### Зберігати Row від Breaking Across Сторінки {#keep-a-row-from-breaking-across-pages}

Це передбачає обмеження вмісту всередині клітин рядка від розщеплення по всій сторінці. У Microsoft Word, Це може бути знайдений під Table Properties як варіант "Дозволений рядок для розбиття сторінок". У Aspose.Words це знайдено під [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) об'єкт об'єкта [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) як майно [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages)й

Приклад наступного коду показує, як відключити розрив рядків по сторінках кожного ряду в таблиці:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)й

{{% /alert %}}

### Тримайте таблицю з розірвання сторінок Across {#keep-a-table-from-breaking-across-pages}

Щоб зупинити таблицю з розщеплення по сторінках, потрібно вказати, що ми хочемо, щоб вміст, що міститься в таблиці, щоб триматися разом.

Для цього Aspose.Words використовує метод, який дозволяє користувачам вибрати таблицю і увімкнути таблицю [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) параметр до true для кожного абзацу в клітинках таблиці. Виняток є останню абзацу в таблиці, яка повинна бути встановлена до falseй

Приклад наступного коду показує, як встановити таблицю, щоб триматися разом на одній сторінці:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx)й

{{% /alert %}}
