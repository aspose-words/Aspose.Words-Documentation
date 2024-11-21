---
title: Введення та створення таблиць
second_title: Aspose.Words для Python via .NET
articleTitle: Введення та створення таблиць
linktitle: Введення та створення таблиць
description: "Створення та управління таблицями в документі Pythonй"
type: docs
weight: 10
url: /uk/python-net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words дозволяє користувачам створювати таблиці в документі з нуля, а також надає кілька різних методів для цього. У статті представлено деталі щодо додавання форматованих таблиць до вашого документа за допомогою кожного методу, а також порівняння кожного методу в кінці статті.

## За замовчуванням Стиль таблиці

Новий створений стіл дає значення за замовчуванням, аналогічні тим, хто використовується в Microsoft Word:

| Настільна нерухомість | За замовчуванням Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

У таблиці можна ввімкнути, якщо вона щільно позиціонується, або плаваючи, якщо вона може розташовуватися в будь-якому місці на сторінці. За замовчуванням, Aspose.Words завжди створює вбудовані таблиці.

{{% /alert %}}

## Створити таблицю з документобудуванням

У Aspose.Words, Користувачі можуть створити таблицю в документі за допомогою документа [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)й Основний алгоритм створення таблиці:

1,1 км Почати таблицю [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2,2 км Додати клітинку до столу за допомогою [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) – це автоматично запускає новий ряд
3. У Додатково використовуйте [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) властивість вказати форматування комірок
4. У Вставте вміст комірки за допомогою відповідного **DocumentBuilder** методи, такі як [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str), та інші
5. Умань Повторюємо кроки 2-4 до завершення ряду
6. Жнівень Дзякуй [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) до кінця поточного ряду
7. Навігація Додатково використовуйте [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) властивість вказати форматування рядків
8. У Повторюємо кроки 2-7 до завершення таблиці
9. Навігація Дзякуй [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) для завершення будівництва столу

{{% alert color="primary" %}}

Важливі деталі:

- до [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) також можна назвати всередині комірки, в якому випадку він запускає створення гніздованого столу в комірці.
- Після виклику [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/), Створено нову клітинку, і будь-який вміст, який ви додаєте за допомогою інших методів [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас буде додано в поточну комірку. Щоб створити нову клітинку на одному ряду, зателефонуйте **InsertCell** знову.
- Якщо **InsertCell** після [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) і кінець ряду, стіл триватиме на новому ряду.
- У [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) спосіб завершення таблиці слід назвати тільки після виклику **EndRow**й Дзвінки **EndTable** переміщує курсор з поточного осередку до положення відразу після столу.

{{% /alert %}}

Процес створення таблиці можна чітко побачити в наступному малюнку:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="creating-table-process" style="zoom:50%;" />

Приклад коду показує, як створити простий стіл за допомогою **DocumentBuilder** з форматуванням за замовчуванням:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

Приклад коду показує, як створити відформатований таблицю за допомогою DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

Приклад наступного коду показує, як вставити вкладений стіл за допомогою DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Створити таблицю через DOM (Українська)Document Object Modelй

Ви можете вставляти таблиці безпосередньо в DOM шляхом додавання нового [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) вузол в певному положенні.

Будь ласка, зауважте, що відразу після створення таблиці, сама таблиця буде повністю порожній, що вона ще не містить рядків і клітин. Щоб вставити ряди і клітини в таблицю, додайте відповідні [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) і [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) дочірні вузли до DOMй

{{% alert color="primary" %}}

Цей метод створення таблиці використовує однакові таблиці за замовчуванням, як при використанні таблиці **DocumentBuilder**й

{{% /alert %}}

Наприклад, наступний код показує, як побудувати новий стіл з нуля, додавши відповідні дочірні вершини до дерева документа:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create з HTML

Aspose.Words підтримує введення вмісту в документ з джерела HTML за допомогою [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) метод. Вхід може бути повним HTML-сторінок або просто частковим фрагментом.

Використання **InsertHtml** метод, користувачі можуть вставляти таблиці в документ через таблиці тегів, як `<table>`, `<tr>`, `<td>`й

Приклад наступного коду показує, як вставити таблицю в документ з рядка, що містить HTML теги:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Вставте Копію Existing Table

Часто необхідно створити таблицю на основі вже існуючого столу в документі. Найпростіший спосіб дублювати таблицю, зберігаючи всі форматування, щоб клонувати вузол таблиці за допомогою таблиці [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/) метод.

Така ж техніка може бути використана для додавання копій існуючого ряду або комірки до столу.

Приклад наступного коду показує, як дублювати таблицю за допомогою конструкторів вузлів:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)й

{{% /alert %}}

Наприклад, наступний код показує, як клонувати останній ряд таблиці і додавати його до таблиці:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)й

{{% /alert %}}

Якщо ви шукаєте створення таблиць у документі, що динамічно зростає з кожним записом з джерела даних, то вище метод не рекомендується. Замість бажаного виходу більш легко досягається за допомогою використання Mail merge з регіонами.

## Порівняйте способи створення таблиці

Aspose.Words надає декілька способів створення нових таблиць у документі. Кожен метод має свої переваги і недоліки, тому вибір яких часто залежить від конкретної ситуації.

Давайте розглянемо ці способи створення таблиць і порівняння їх плюсів і мінусів:

|  Мета | Переваги |  Недоліки |
|  :-  |  :-  |  :-  |
| English, Українська, Français. | Стандартний метод вставки таблиць та іншого вмісту документа | Іноді складно створити безліч сортів столів одночасно з тим же екземпляром будівель |
| Про нас DOM |  Підходить в краще з навколишнім кодом, який створює і вставляє вершини безпосередньо в DOM без використання **DocumentBuilder** | Стіл створений "empty": перед виконанням більшості операцій необхідно викликати [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) створити будь-які відсутні дочірні вузли |
| Від HTML | Може створити новий стіл з джерела HTML, використовуючи теги, такі як `<table>`, `<tr>`, `<td>` | Не всі можливі Microsoft Word формати таблиці можна застосувати до HTML |
| Покриття існуючого столу | Ви можете створити копію існуючого столу, зберігаючи всі рядки та форматування комірок | Для використання необхідно видалити відповідні дочірні вузли дитини до таблиці |
