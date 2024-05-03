---
title: Робота з настільними стильами в Java
second_title: Aspose.Words для Java
articleTitle: Застосовувати стиль столу
linktitle: Застосовувати стиль столу
description: "Розширений форматування таблиці Javaй Створення стилю таблиці за допомогою Javaй Вступ до розширеного форматування таблиці, стилі таблиці за допомогою Javaй"
type: docs
weight: 80
url: /uk/java/working-with-tablestyle/
---

Стиль таблиці визначає набір форматування, який можна легко застосувати до таблиці. Форматування таких як бордюри, гойдалки, вирівнювання та шрифт можна встановити в стилі таблиці та нанести на багато таблиць для послідовного зовнішнього вигляду.

Aspose.Words підтримує нанесення стилю таблиці до столу, а також читання властивостей будь-якого стилю столу. Стилі таблиці зберігаються під час завантаження та збереження за наступними способами:

- Стилі таблиці у форматах DOCX та WordML зберігаються при завантаженні та збереженні цих форматів
- Стилі таблиці зберігаються при завантаженні та збереженні у форматі DOC (але не до будь-якого іншого формату)
- до При експорті в інші формати, рендерингу або друку, стилі таблиці розширюються для прямого форматування в таблиці, тому всі форматування зберігаються

## Створити стиль таблиці

Користувач може створити новий стиль і додати його до колекції стилю. Про нас [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) метод використовується для створення нового стилю столу.

Приклад коду показує, як створити новий стиль таблиці користувача:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Статус на сервери

Якщо необхідно, ви можете копіювати стиль таблиці, який вже існує в певному документі в збірку вашого стилю, використовуючи `AddCopy` метод.

Важливо знати, що з цим копіюванням, пов'язані стилі також копіюються.

Приклад коду показує, як імпортувати стиль з одного документа в інший документ:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Застосувати зовнішній стиль таблиці

Aspose.Words надає послуги [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) У спадку [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) клас. **TableStyle** полегшує користувача застосовувати різні варіанти стилю, такі як затінення, оббивка, відступ, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) і [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), і т.д.

Додатково Aspose.Words забезпечує [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) клас і кілька властивостей `Table` Ми працюємо з: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), і [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int)й

Aspose.Words також надає [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) клас, який являє собою спеціальне форматування, нанесене на певну площу столу з призначеним стилем столу, і [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) що представляє колекцію **ConditionalStyle** об'єкти. Ця колекція містить постійний набір предметів, що представляють один елемент для кожного значення [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) тип анумуляції. Про нас **ConditionalStyleType** нумерація визначає всі можливі таблиці зони, до яких умовне форматування може бути визначено в стилі таблиці.

У цьому випадку умовне форматування може бути визначений для всіх можливих настільних зон, визначених за типом кондиціонального стилю.

Приклад наступного коду показує, як визначити умовний форматування заголовка рядка таблиці:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Ви також можете вибрати які частини таблиці, щоб застосувати стилі, такі як перший стовпчик, останній стовпчик, смуговані рядки. Вони вказані в [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) занурення і наноситься через [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) майно. Про нас **TableStyleOptions** анумуляція дозволяє трохи поєднувати ці функції.

Наприклад, наступний код показує, як створити новий стіл з нанеском таблиці:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Фотографії нижче показують уявлення про представлення **Table Styles** в Microsoft Word і їх відповідні властивості Aspose.Wordsй

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Увімкніть форматування таблиці та застосуйте його як прямий форматування

Aspose.Words також надає [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) спосіб вжити форматування, знайденого на стилі таблиці і розширює його на рядки і клітинки столу як прямий форматування. Спробуйте поєднувати форматування з стильом та стилем комірки.

{{% alert color="primary" %}}

Цей метод не перейде на будь-який інший формат вже наноситься на таблицю через ряд або формат комірки.

{{% /alert %}}

Приклад коду показує, як розширити форматування з стилів на настільні рядки та клітинки як прямий форматування:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}