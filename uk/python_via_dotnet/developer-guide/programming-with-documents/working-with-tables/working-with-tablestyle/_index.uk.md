---
title: Зміна стиль таблиці в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Застосовувати стиль столу
linktitle: Застосовувати стиль столу
description: "Розширений форматування таблиці C#й Створення стилю таблиці за допомогою Pythonй Застосувати стиль столу Pythonй"
type: docs
weight: 80
url: /uk/python-net/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Стиль таблиці визначає набір форматування, який можна легко застосувати до таблиці. Форматування таких як бордюри, гойдалки, вирівнювання та шрифт можна встановити в стилі таблиці та нанести на багато таблиць для послідовного зовнішнього вигляду.

Aspose.Words підтримує нанесення стилю таблиці до столу, а також читання властивостей будь-якого стилю столу. Стилі таблиці зберігаються під час завантаження та збереження за наступними способами:

- Стилі таблиці у форматах DOCX та WordML зберігаються при завантаженні та збереженні цих форматів
- Стилі таблиці зберігаються при завантаженні та збереженні у форматі DOC (але не до будь-якого іншого формату)
- до При експорті в інші формати, рендерингу або друку, стилі таблиці розширюються для прямого форматування в таблиці, тому всі форматування зберігаються

## Створити стиль таблиці

Користувач може створити новий стиль і додати його до колекції стилю. Про нас [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) метод використовується для створення нового стилю столу.

Приклад коду показує, як створити новий стиль таблиці користувача:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Статус на сервери

Якщо необхідно, ви можете скопіювати стиль таблиці, який вже існує в певному документі в збірку стилю за допомогою `AddCopy` метод.

Важливо знати, що з цим копіюванням, пов'язані стилі також копіюються.

Приклад коду показує, як імпортувати стиль з одного документа в інший документ:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Застосувати зовнішній стиль таблиці

Aspose.Words надає послуги [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) У спадку [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) клас. **TableStyle** полегшує користувача застосовувати різні варіанти стилю, такі як затінки, насип, відступ, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) і [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), і т.д.

Додатково Aspose.Words забезпечує [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) клас і кілька властивостей `Table` Ми працюємо з: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/), і [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/)й

Aspose.Words також надає [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) клас, який являє собою спеціальний форматування, що наноситься на певну площу столу з призначеним стилем столу, і [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) що представляє колекцію **ConditionalStyle** об'єкти. Ця колекція містить постійний набір предметів, що представляють один елемент для кожного значення [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/) тип занурення. Про нас **ConditionalStyleType** нумерація визначає всі можливі таблиці зони, до яких умовне форматування може бути визначено в стилі таблиці.

У цьому випадку умовне форматування може бути визначений для всіх можливих площ таблиці, визначених за типом Кондиціонерного стилю.

Приклад наступного коду показує, як визначити умовний форматування заголовка рядка таблиці:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Ви також можете вибрати які частини таблиці, щоб застосувати стилі, такі як перший стовпчик, останній стовпчик, смуговані рядки. Вони вказані в [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) занурення і наноситься через [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/) майно. Про нас **TableStyleOptions** анумація дозволяє трохи поєднувати ці функції.

Наприклад, наступний код показує, як створити новий стіл з нанеском таблиці:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Фотографії нижче показують уявлення про представлення **Table Styles** в Microsoft Word і їх відповідні властивості Aspose.Wordsй

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Робота з настільними стильами

Стиль таблиці визначає набір форматування, який можна легко застосувати до таблиці. Форматування таких як бордюри, гойдалки, вирівнювання та шрифт можна встановити в стилі таблиці та нанести на багато таблиць для послідовного зовнішнього вигляду.

Aspose.Words підтримує нанесення стилю таблиці до столу, а також читання властивостей будь-якого стилю столу. Стилі таблиці зберігаються під час завантаження та збереження за наступними способами:

- Стилі таблиці у форматах DOCX та WordML зберігаються при завантаженні та збереженні цих форматів.
- Стилі таблиці зберігаються при завантаженні та збереженні у форматі DOC (але не до будь-якого іншого формату).
- При експорті в інші формати, рендерінгу або друку таблиці стилі розширюються для прямого форматування на столі, щоб всі форматування зберігаються.

В даний час ви не можете створювати нові стилі таблиці. Ви можете застосувати лише в вбудованих стилів таблиці або користувацьких стилів таблиці, які вже існують в документі до таблиці

## Увімкніть форматування таблиці та застосуйте його як прямий форматування

Aspose.Words також надає [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) спосіб вжити форматування, знайденого на стилі таблиці і розширює його на ряди і клітини таблиці як прямий форматування. Спробуйте поєднувати форматування з стильом таблиці та стилем комірки.

{{% alert color="primary" %}}

Цей метод не перейде на будь-який інший формат вже наноситься на таблицю через ряд або формат комірки.

{{% /alert %}}

Приклад наступного коду показує, як розширити форматування з стилів на настільні рядки та клітинки як прямий форматування:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}
