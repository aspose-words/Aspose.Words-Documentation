﻿---
title: Робота зі стовпцями та рядками в C++
second_title: Aspose.Words для C++
articleTitle: Робота зі стовпцями і рядками
linktitle: Робота зі стовпцями і рядками
description: "Робота з частинами таблиці-рядками, стовпцями і осередками за допомогою C++. Вкажіть рядок заголовка C++."
type: docs
weight: 30
url: /uk/cpp/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Щоб краще контролювати роботу таблиць, дізнайтеся, як маніпулювати стовпцями та рядками.

## Знайдіть індекс елемента таблиці

Управління стовпцями, рядками і осередками здійснюється шляхом звернення до вибраного вузла документа за його індексом. Пошук індексу будь-якого вузла передбачає збір усіх дочірніх вузлів типу element з батьківського вузла, а потім використання методу [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) для пошуку індексу потрібного вузла в колекції.

### Знайдіть Індекс таблиці в документі

Іноді вам може знадобитися внести зміни до певної таблиці в документі. Для цього ви можете звернутися до таблиці за її індексом.

Наступний приклад коду показує, як отримати Індекс таблиці в документі:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Знайдіть Індекс рядка в таблиці {#find-the-index-of-a-row-in-a-table}

Аналогічно, вам може знадобитися внести зміни до певного рядка у вибраній таблиці. Для цього ви також можете звернутися до рядка за його індексом.

Наступний приклад коду показує, як отримати Індекс рядка в таблиці:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Знайдіть Індекс комірки в рядку {#find-the-index-of-a-cell-in-a-row}

Нарешті, вам може знадобитися внести зміни до певної комірки, і ви також можете зробити це за допомогою індексу комірки.

Наступний приклад коду показує, як отримати Індекс комірки в рядку:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Робота з колонками

В об'єктній моделі документа Aspose.Words (DOM) вузол [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) складається з [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) вузлів, а потім з [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) вузлів. Таким чином, в об'єктній моделі документа Aspose.Words `Document`, як і в документах Word, відсутнє поняття стовпця.

За задумом, рядки таблиці в Microsoft Word і Aspose.Words повністю незалежні, а основні властивості і операції містяться тільки в рядках і осередках таблиці. Це дає таблицям можливість мати деякі цікаві атрибути:

- Кожен рядок таблиці може містити абсолютно різну кількість комірок
- По вертикалі осередки кожного рядка можуть мати різну ширину
- Можна об'єднувати таблиці з різними форматами рядків і кількістю осередків

Будь-які операції, що виконуються зі стовпцями, насправді є "скороченнями", які виконують операцію, колективно змінюючи клітинки рядків таким чином, що виглядає так, ніби вони застосовуються до стовпців. Тобто ви можете виконувати операції зі стовпцями, просто повторюючи Індекс однієї комірки рядка таблиці.

Наступний приклад коду спрощує такі операції, демонструючи клас facade, який збирає комірки, що складають "стовпець" таблиці:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

Наступний приклад коду показує, як вставити порожній стовпець у таблицю:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

Наступний приклад коду показує, як видалити стовпець із таблиці в документі:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Вкажіть рядки як рядки заголовка

Ви можете повторити перший рядок таблиці як рядок заголовка лише на першій сторінці або на кожній сторінці, якщо таблиця розділена на кілька частин. У Aspose.Words ви можете повторити рядок заголовка на кожній сторінці, використовуючи властивість [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

Ви також можете позначити кілька рядків заголовка, якщо такі рядки розташовані один за одним на початку таблиці. Для цього вам потрібно застосувати до цих рядків властивості **HeadingFormat**.

{{% alert color="primary" %}}

Зверніть увагу, що рядки заголовка не працюють у вкладених таблицях. Тобто, якщо у вас є таблиця всередині іншої таблиці, це налаштування не матиме ефекту. Це обмеження Microsoft Word не дозволяє цього, а не Aspose.Words.

{{% /alert %}}

Наступний приклад коду показує, як створити таблицю, що містить рядки заголовка, які повторюються на наступних сторінках:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Слідкуйте за тим, щоб таблиці і рядки не розбивалися по сторінках

У деяких випадках вміст таблиці не повинно бути розділене по сторінках. Наприклад, якщо заголовок знаходиться над таблицею, заголовок і таблиця завжди повинні розташовуватися разом на одній сторінці, щоб зберегти належний зовнішній вигляд.

Є два окремі методи, які корисні для досягнення цієї функціональності:

- `Allow row break across pages`, який застосовується до рядків таблиці
- `Keep with next`, що застосовується до абзаців у клітинках таблиці

За замовчуванням вищевказані властивості відключені.

### Слідкуйте за тим, щоб рядки не розбивалися на сторінки {#keep-a-row-from-breaking-across-pages}

Це передбачає обмеження розбиття вмісту всередині комірок рядка на сторінки. У Microsoft Word це можна знайти у властивостях таблиці як параметр "Дозволити розбиття рядка на сторінки". В Aspose.Words ЦЕ знаходиться під об'єктом [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) з [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) як властивість [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

Наступний приклад коду показує, як вимкнути розбиття рядків на сторінки для кожного рядка таблиці:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Слідкуйте за тим, щоб таблиця не розбивалася на сторінки {#keep-a-table-from-breaking-across-pages}

Щоб таблиця не розбивалася на сторінки, нам потрібно вказати, що ми хочемо, щоб вміст, що міститься в таблиці, залишався єдиним.

Для цього в Aspose.Words використовується метод, який дозволяє користувачам вибирати таблицю та встановлювати для параметра [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) значення true для кожного абзацу в клітинках таблиці. Винятком є останній абзац у таблиці, для якого має бути встановлено значення false.

Наступний приклад коду показує, як налаштувати таблицю так, щоб вона залишалася разом на одній сторінці:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
