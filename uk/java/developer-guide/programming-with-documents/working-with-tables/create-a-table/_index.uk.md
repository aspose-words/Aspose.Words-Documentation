---
title: Як створити таблицю в Java
second_title: Aspose.Words для Java
articleTitle: Створення таблиці
linktitle: Створення таблиці
description: "Різні способи створення таблиць у вашому документі Javaй"
type: docs
weight: 20
url: /uk/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words дозволяє користувачам створювати таблиці в документі з нуля, а також надає кілька різних методів для цього. У статті представлено деталі щодо додавання форматованих таблиць до вашого документа за допомогою кожного методу, а також порівняння кожного методу в кінці статті.

## За замовчуванням Стиль таблиці

Новий створений стіл дає значення за замовчуванням, аналогічні тим, хто використовується в Microsoft Word:

| На продажу | За замовчуванням Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Прикордонний колір |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

У таблиці можна ввімкнути, якщо вона щільно позиціонується, або плаваючи, якщо вона може розташовуватися в будь-якому місці на сторінці. За замовчуванням, Aspose.Words завжди створює вбудовані таблиці.

{{% /alert %}}

## Створити таблицю з документобудуванням

У Aspose.Words, Користувачі можуть створити таблицю в документі за допомогою документа [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)й Основні алгоритми створення таблиці:

1,1 км Почати таблицю [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2,2 км Додати клітинку до столу за допомогою [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – це автоматично запускає новий ряд
3. У Додатково використовуйте [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) властивість вказати форматування комірок
4. У Вставте вміст комірки за допомогою відповідного **DocumentBuilder** методи, такі як [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), та інші
5. Умань Повторюємо кроки 2-4 до завершення ряду
6. Жнівень Дзякуй [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) до кінця поточного ряду
7. Навігація Додатково використовуйте [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) властивість вказати форматування рядків
8. У Повторюємо кроки 2-7 до завершення таблиці
9. Навігація Дзякуй [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) для завершення будівництва столу

{{% alert color="primary" %}}

Важливі деталі:

- до [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) також можна назвати всередині комірки, в якому випадку він починає створення гніздового столу в комірці.
- Після виклику [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), Створено нову клітинку, і будь-який контент, який ви додаєте за допомогою інших методів [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) Клас буде додано в поточну комірку. Щоб створити нову клітинку на одному ряду, зателефонуйте **InsertCell** знову.
- Якщо **InsertCell** після [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) і кінець ряду, стіл триватиме на новому ряду.
- У [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) спосіб завершення таблиці слід назвати тільки після виклику **EndRow**й Дзвінки **EndTable** переміщує курсор з поточного осередку до положення відразу після столу.

{{% /alert %}}

Процес створення таблиці можна чітко побачити на наступному малюнку:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Приклад коду показує, як створити простий стіл за допомогою **DocumentBuilder** з форматуванням за замовчуванням:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Приклад коду показує, як створити форматований столик за допомогою DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Приклад наступного коду показує, як вставити вкладений стіл за допомогою DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Створити таблицю через DOM (Українська)Document Object Modelй

Ви можете вставляти таблиці безпосередньо в DOM шляхом додавання нового [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) вузол в певній позиції.

Будь ласка, зверніть увагу, що відразу після створення таблиці сама таблиця буде повністю порожньою, що вона ще не містить рядків і клітин. Щоб вставити ряди і клітини в таблицю, додайте відповідні [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) і [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) дочірні вузли до DOMй

{{% alert color="primary" %}}

Цей метод створення таблиці використовує однакові таблиці за замовчуванням, як при використанні таблиці **DocumentBuilder**й

{{% /alert %}}

Приклад коду показує, як побудувати новий стіл з нуля, додавши відповідні дочірні вузли до дерева документа:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Створення таблиці з HTML

Aspose.Words підтримує вставку вмісту в документ з джерела HTML за допомогою [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) метод. Вхід може бути повним HTML-сторінок або просто частковим фрагментом.

Використання **InsertHtml** метод, користувачі можуть вставляти таблиці в документ через таблиці тегів, як `<table>`, `<tr>`, `<td>`й

Приклад наступного коду показує, як вставити таблицю в документ з рядка, що містить HTML теги:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Вставте Копію Existing Table

Часто необхідно створити таблицю на основі вже існуючого столу в документі. Найпростіший спосіб дублювання таблиці, зберігаючи всі форматування, щоб клонувати вузол таблиці за допомогою таблиці [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) метод.

Така ж техніка можна використовувати для додавання копій існуючого ряду або комірки до столу.

Приклад коду показує, як дублювати таблицю за допомогою конструкторів вузлів:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)й

{{% /alert %}}

Наприклад, наступний код показує, як клонувати останній ряд таблиці і додавати його до таблиці:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)й

{{% /alert %}}

Якщо ви шукаєте створення таблиць у документі, що динамічно зростає з кожним записом з джерела даних, то вище метод не рекомендується. Замість бажаного виходу більш легко досягається за допомогою використання Mail merge з регіонами. Дізнатися більше про цю техніку можна в [Mail Merge з регіонами](/words/java/types-of-mail-merge-operations/) секція.

## Порівняйте способи створення таблиці

Aspose.Words надає декілька способів створення нових таблиць у документі. Кожен метод має свої переваги і недоліки, тому вибір яких часто залежить від конкретної ситуації.

Давайте розглянемо ці способи створення таблиць і порівняння їх плюсів і мінусів:

|  Мета | Переваги |  Недоліки |
|  :-  |  :-  |  :-  |
| Про нас `DocumentBuilder` | Стандартний метод вставки таблиць та іншого вмісту документа | Іноді складно створити безліч сортів столів одночасно з тим же екземпляром будівель |
| Про нас DOM |  Підходить у краще з зовнішнім кодом, який створює і вставляє вершини безпосередньо в DOM без використання **DocumentBuilder** | Стіл створений "empty": перед виконанням більшості операцій необхідно викликати [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) створити будь-які відсутні дочірні вузли |
| Від HTML | Може створити новий стіл з джерела HTML, використовуючи теги, такі як `<table>`, `<tr>`, `<td>` | Не всі можливі Microsoft Word формати таблиці можна застосувати до HTML |
| Слонування існуючого столу | Ви можете створити копію існуючого столу, зберігаючи всі рядки та форматування комірок | Для використання необхідно видалити відповідні дочірні вузли дитини до таблиці |
