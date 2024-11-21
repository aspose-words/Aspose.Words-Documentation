---
title: Робота з колонами та рядками Java
second_title: Aspose.Words для Java
articleTitle: Робота з колонами та рядками
linktitle: Робота з колонами та рядками
description: "Робота з частинами таблиці – рядами, стовпчиками та клітинами з використанням Javaй Вказати Header Row Javaй"
type: docs
weight: 30
url: /uk/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Для більшого контролю над роботою таблиць вивчіть, як маніпулювати стовпчики і рядки.

## Знайти Індекс елемента таблиці

Колонки, рядки та клітини керовані шляхом доступу до вибраного вузла документа індексом. Пошук індексу будь-якого вузла передбачає збирання всіх дочірніх вузлів елемента з материнської вершини, а потім використання [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) метод пошуку індексу необхідного вузла в збірнику.

### Знайти Індекс таблиці в документі

Іноді необхідно внести зміни до певного столу в документі. Для цього можна звернутися до таблиці за його індексом.

Приклад наступного коду показує, як отримати індекс таблиці в документі:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Знаходження Індексу Row в таблиці

Аналогічно можна внести зміни в конкретний ряд у вибраному столі. Щоб зробити це, ви також можете звернутися до ряду за його індексом.

Приклад наступного коду показує, як отримати індекс рядка в таблиці:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Знаходження Індексу клітини в рядку

Нарешті, ви можете змінити конкретну клітинку, і ви можете зробити це за допомогою індексу клітин.

Приклад наступного коду показує, як отримати індекс клітинки в рядку:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Робота з колонами

У Aspose.Words Document Object Model (Українська)DOMй [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) вузол складається з [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) вузли і потім [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) вершини. Так, в `Document` Модель об'єкта Aspose.Words, як у документах Word немає поняття стовпця.

По дизайну, таблиці рядків в Microsoft Word і Aspose.Words повністю самостійні, а основні властивості і операції містяться тільки в рядах і клітинах таблиці. Це дає таблиці можливість мати деякі цікаві атрибути:

- Кожний ряд таблиці може мати абсолютно різну кількість клітин
- Вертикально, клітини кожного ряду можуть мати різні ширини
- до Включити таблиці з різними форматами рядків і кількістю клітин

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Будь-які операції, які виконуються на стовпцях, насправді "коротки", які виконують роботу колективно змінними клітинами рядка таким чином, що вона виглядає, як вони наносяться на стовпці. Таким чином, ви можете виконувати операції по стовпцях, просто ітеруючи над тим же індексом клітинного рядка.

Прикладом такого коду спрощує такі операції, даючи фасадний клас, який збирає клітини, які складають "холодний" таблиці:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Приклад коду показує, як вставити порожній стовпчик в таблицю:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Приклад наступного коду показує, як видалити стовпчик з таблиці в документі:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Вказати рядки як головка

Ви можете вибрати для повторення першого ряду в таблиці як заголовок, тільки на першій сторінці або на кожній сторінці, якщо таблиця розщеплюється на кілька. У Aspose.Words, Ви можете повторити заголовок на кожній сторінці за допомогою сторінки [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) майно.

Ви також можете відмітити кілька рядків заголовка, якщо такі рядки розташовані один після іншого на початку столу. Для цього потрібно застосувати **HeadingFormat** властивості до цих рядів.

{{% alert color="primary" %}}

Зауважте, що головки не працюють в гніздових таблицях. Що це, якщо у вас є таблиця всередині іншого столу, це налаштування не буде ефектно. Це обмеження Microsoft Word що не дає цього, не Aspose.Wordsй

{{% /alert %}}

Приклад наступного коду показує, як побудувати таблицю, яка включає в себе Головні рядки, які повторюються на наступних сторінках:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Тримайте таблиці та рядки від Breaking Across Сторінки {#keep-tables-and-rows-from-breaking-across-pages}

Часом, де вміст таблиці не повинно бути розщеплення по сторінках. Наприклад, якщо заголовок вище таблиці, заголовок та таблиці завжди повинні зберігатися разом на одній сторінці для збереження належного зовнішнього вигляду.

Є дві окремі техніки, які корисні для досягнення цієї функціональності:

- до `Allow row break across pages`, який наноситься на рядки таблиці
- до `Keep with next`, який наноситься на абзаци в клітинах таблиці

За замовчуванням вищевказані властивості вимкнено.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Зберігати Row від Breaking Across Сторінки {#keep-a-row-from-breaking-across-pages}

Це передбачає обмеження вмісту всередині клітин рядка від розщеплення по всій сторінці. У Microsoft Word, Це може бути знайдений під Table Properties як варіант "Всі ряди для розбиття по сторінках". У Aspose.Words це знайдено під [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) об'єкт об'єкта [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) як майно [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages)й

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Наприклад, наступний код показує, як відключити розрив рядків по сторінках кожного ряду в таблиці:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Тримайте таблицю від перервованих сторінок Across {#keep-a-table-from-breaking-across-pages}

Щоб зупинити таблицю з розщеплення по сторінках, потрібно вказати, що ми хочемо, щоб вміст, що міститься в таблиці, щоб триматися разом.

Для цього Aspose.Words використовує метод, який дозволяє користувачам вибрати таблицю і увімкнути таблицю [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) параметр до true для кожного абзацу в клітинках таблиці. Виняток - останній пункт в таблиці, який повинен бути встановлений для falseй

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Приклад коду показує, як встановити таблицю, щоб триматися разом на одній сторінці:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
