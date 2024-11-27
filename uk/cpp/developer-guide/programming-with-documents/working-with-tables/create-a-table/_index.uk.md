---
title: Як створити таблицю в C++
second_title: Aspose.Words для C++
articleTitle: Створіть таблицю
linktitle: Створіть таблицю
description: "Різні способи створення таблиць за допомогою C++. Створіть таблицю в C++ для вашого документа. Додайте таблицю до C++."
type: docs
weight: 20
url: /uk/cpp/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words дозволяє користувачам створювати таблиці в документі з нуля і надає кілька різних методів для цього. У цій статті наведено детальну інформацію про те, як додати відформатовані таблиці до документа за допомогою кожного з методів, а також порівняння кожного методу в кінці статті.

## Стилі таблиць за замовчуванням

Новоствореній таблиці присвоюються значення за замовчуванням, подібні до тих, що використовуються в Microsoft Word:

| Властивість таблиці | Значення за замовчуванням в Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 пт |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Таблиця може бути вбудованою, якщо вона розташована щільно, або плаваючою, якщо її можна розмістити в будь-якому місці сторінки. За замовчуванням Aspose.Words завжди створює вбудовані таблиці.

{{% /alert %}}

## Створіть таблицю з DocumentBuilder

У Aspose.Words користувачі можуть створити таблицю в документі за допомогою [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Основний алгоритм створення таблиці наступний:

1. Почніть таблицю з [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Додайте клітинку до таблиці за допомогою [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) - це автоматично почне новий рядок
3. При необхідності використовуйте властивість [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/), щоб задати форматування осередків
4. Вставте вміст комірки, використовуючи відповідні методи **DocumentBuilder**, такі як [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) та інші
5. Повторюйте кроки 2-4, поки рядок не буде завершено
6. Викличте [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/), щоб завершити поточний рядок
7. При необхідності використовуйте властивість [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/), щоб задати форматування рядків
8. Повторюйте кроки 2-7, поки таблиця не буде заповнена
9. Викличте [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/), щоб завершити побудову таблиці

{{% alert color="primary" %}}

Важливі деталі:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) також може бути викликаний всередині комірки, і в цьому випадку він запускає створення вкладеної таблиці всередині комірки.
- Після виклику [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) створюється нова комірка, і будь-який вміст, доданий за допомогою інших методів класу [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), буде додано до поточної комірки. Щоб створити нову клітинку в тому ж рядку, знову зателефонуйте **InsertCell**.
- Якщо **InsertCell** викликається відразу після [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) і в кінці рядка, таблиця буде продовжена в новому рядку.
- Метод [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) для завершення роботи з таблицею слід викликати лише один раз після виклику **EndRow**. Виклик **EndTable** переміщує курсор з поточної комірки в позицію, розташовану відразу за таблицею.

{{% /alert %}}

Процес створення таблиці можна наочно побачити на наступному малюнку:

![creating-table-process](creating-table-process.jpg)

Наступний приклад коду показує, як створити просту таблицю за допомогою **DocumentBuilder** із форматуванням за замовчуванням:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Наступний приклад коду показує, як створити відформатовану таблицю за допомогою DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Наступний приклад коду показує, як вставити вкладену таблицю за допомогою DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Створіть таблицю за допомогою DOM (об'єктна модель документа)

Ви можете вставити таблиці безпосередньо в DOM, додавши новий вузол [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) у певному місці.

Зверніть увагу, що відразу після створення вузла таблиці сама таблиця буде повністю порожній, тобто в ній ще не буде рядків і осередків. Щоб вставити рядки та клітинки в таблицю, додайте відповідні дочірні вузли [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) та [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) до DOM.

{{% alert color="primary" %}}

При цьому методі створення таблиці використовуються ті ж значення за замовчуванням, що і при використанні параметра **DocumentBuilder**.

{{% /alert %}}

Наступний приклад коду показує, як створити нову таблицю з нуля, додавши відповідні дочірні вузли до дерева документа:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Створіть таблицю з HTML

Aspose.Words підтримує вставку вмісту в документ із джерела HTML за допомогою методу [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). Вхідними даними можуть бути повна сторінка HTML або лише частковий фрагмент.

Використовуючи метод **InsertHtml**, користувачі можуть вставляти таблиці в документ за допомогою тегів таблиць, таких як `<table>`, `<tr>`, `<td>`.

Наступний приклад коду показує, як вставити таблицю в документ із рядка, що містить теги HTML:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Вставте копію існуючої таблиці

Часто виникає необхідність створити таблицю на основі вже існуючої таблиці в документі. Найпростіший спосіб скопіювати таблицю, зберігаючи все форматування, - це клонувати вузол таблиці за допомогою методу [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

Той самий метод можна використовувати для додавання копій існуючого рядка або комірки до таблиці.

Наступний приклад коду показує, як дублювати таблицю за допомогою конструкторів вузлів:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Наступний приклад коду показує, як клонувати останній рядок таблиці та додати його до таблиці:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Якщо ви плануєте створювати таблиці в документі, які динамічно розширюються з кожним записом з вашого джерела даних, то описаний вище метод не рекомендується. Натомість бажаний результат легше отримати, використовуючи Mail merge з регіонами. Ви можете дізнатися більше про цей метод у [Mail Merge з регіонами](/words/cpp/types-of-mail-merge-operations/) розділ.

## Порівняйте способи створення таблиці

Aspose.Words надає кілька методів для створення нових таблиць у документі. Кожен метод має свої переваги та недоліки, тому вибір, який із них використовувати, часто залежить від конкретної ситуації.

Давайте докладніше розглянемо ці способи створення таблиць і порівняємо їх плюси і мінуси:

| Метод | Перевага | Недостатки |
| :- | :- | :- |
| `DocumentBuilder` | Стандартний метод вставки таблиць та іншого вмісту документа | Іноді може бути важко створити багато різновидів таблиць одночасно за допомогою одного екземпляра конструктора |
| Через DOM | Краще вписується в навколишній код, який створює та вставляє вузли безпосередньо в DOM без використання **DocumentBuilder** | Таблиця створюється "порожньою": перш ніж виконувати більшість операцій, ви повинні викликати [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/), щоб створити всі відсутні дочірні вузли |
| З HTML | Можна створити нову таблицю з джерела HTML, використовуючи такі теги, як `<table>`, `<tr>`, `<td>` | Не всі можливі формати таблиць Microsoft Word можна застосувати до HTML |
| Клонування існуючої таблиці | Ви можете створити копію існуючої таблиці, зберігаючи всі форматування рядків і комірок | Відповідні дочірні вузли повинні бути видалені, перш ніж таблиця буде готова до використання |
