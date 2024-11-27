---
title: Змінити стиль таблиці в документах Word
second_title: Aspose.Words для C++
articleTitle: Застосувати стиль таблиці
linktitle: Застосувати стиль таблиці
description: "Розширене форматування таблиці C++. Створіть стиль таблиці за допомогою C++. Застосуйте стиль таблиці C++."
type: docs
weight: 80
url: /uk/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Стиль таблиці визначає набір форматування, який можна легко застосувати до таблиці. Форматування, такі як межі, затінення, вирівнювання та шрифт, можуть бути встановлені в стилі таблиці та застосовані до багатьох таблиць для забезпечення рівномірного вигляду.

Aspose.Words підтримує застосування стилю таблиці до таблиці, а також читання властивостей будь-якого стилю таблиці. Стилі таблиць зберігаються під час завантаження та збереження наступними способами:

- Стилі таблиць у форматах DOCX та WordML зберігаються під час завантаження та збереження у цих форматах
- Стилі таблиць зберігаються під час завантаження та збереження у форматі DOC (але не в будь-якому іншому форматі)
- При експорті в інші формати, рендерингу або друку стилі таблиць розширюються для прямого форматування в таблиці, тому все форматування зберігається

## Створіть стиль таблиці

Користувач може створити новий стиль і додати його до колекції стилів. Метод [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) використовується для створення нового стилю таблиці.

Наступний приклад коду показує, як створити новий стиль таблиці користувача:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Скопіюйте існуючий стиль таблиці

Якщо потрібно, ви можете скопіювати стиль таблиці, який уже існує в певному документі, у свою колекцію стилів, використовуючи метод `AddCopy`.

Важливо знати, що при такому копіюванні також копіюються пов'язані стилі.

Наступний приклад коду показує, як імпортувати стиль з одного документа в інший:

EXAMPLE

## Застосуйте існуючий стиль таблиці

Aspose.Words надає [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/), успадкований від класу [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** дозволяє користувачеві застосовувати різні параметри стилю, такі як затінення, відступи, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) і [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/) і т. д.

Крім того, Aspose.Words надає клас [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) та кілька властивостей класу `Table`, щоб вказати, з яким стилем таблиці ми будемо працювати: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), і [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words також надає клас [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/), який представляє спеціальне форматування, застосоване до певної області таблиці з призначеним стилем таблиці, і [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/), який представляє колекцію з **ConditionalStyle** об'єктів. Ця колекція містить постійний набір елементів, що представляють по одному елементу для кожного значення типу перерахування [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). Перерахування **ConditionalStyleType** визначає всі можливі області таблиці, для яких може бути визначено умовне форматування в табличному стилі.

У цьому випадку умовне форматування може бути визначене для всієї можливої області таблиці, визначеної відповідно до типу перерахування ConditionalStyleType.

Наступний приклад коду показує, як визначити умовне форматування для рядка заголовка таблиці:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Ви також можете вибрати, до яких частин таблиці застосовувати стилі, наприклад, перший стовпець, останній стовпець, рядки з обмеженнями. Вони перераховані в перерахуванні [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) і застосовуються за допомогою властивості [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). Перерахування **TableStyleOptions** дозволяє комбінувати ці функції побітово.

Наступний приклад коду показує, як створити нову таблицю із застосованим стилем таблиці:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

На малюнках нижче показано представлення **Table Styles** у Microsoft Word та відповідних властивостей у Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Візьміть форматування зі стилю таблиці та застосуйте його як пряме форматування

Aspose.Words також надає метод [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/), що дозволяє використовувати форматування, знайдене в табличному стилі, і поширювати його на рядки та комірки таблиці як пряме форматування. Спробуйте поєднати форматування зі стилем таблиці та стилем комірок.

{{% alert color="primary" %}}

Цей метод не замінює жодне інше форматування, вже застосоване до таблиці за допомогою формату рядка або комірки.

{{% /alert %}}

Наступний приклад коду показує, як перенести форматування зі стилів у рядки таблиці та комірки як пряме форматування:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
