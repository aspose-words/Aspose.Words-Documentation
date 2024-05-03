---
title: Робота з параграфами Java
second_title: Aspose.Words для Java
articleTitle: Робота з пунктами
linktitle: Робота з пунктами
description: "Параграф практики маніпуляції вузлів за допомогою Javaй"
type: docs
weight: 210
url: /uk/java/working-with-paragraphs/
---

Пабзац є набором символів, що поєднуються в логічний блок і закінчуючи особливим характером – розбиттям *. У Aspose.Words, абзац представлений абзацом [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) клас.

## Вставлення пункту

Щоб вставити новий абзац в документ, по суті, потрібно вставити характер абзацу в нього. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) вставляє не тільки рядок тексту в документ, але і додає перерву абзаців.

Поточне форматування шрифтів також вказується [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) властивість, і форматування абзаців визначається [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) майно. У наступному розділі ми розглянемо докладніше про форматування абзаців.

Приклад наступного коду показує, як вставити абзац в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Формати

Поточний форматування абзаців представлений [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) об'єкт, який повертається [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) майно. Цей об'єкт інкапсулює різні параметри форматування абзаців, доступні в Microsoft Wordй Ви можете легко скидати форматування абзацу до його за замовчуванням – Нормальний стиль, вирівняний, не відступаючи, не відступаючи, не залишаючи кордонів, не затіняє – викликом [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting)й

Приклад коду показує, як встановити форматування абзаців:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Застосувати Параграф стиль

Деякі форматування об'єктів, таких як шрифт або ParagraphFormat стилі підтримки. Одномісний вбудований або користувацький стиль представлений [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) об'єкт, який містить відповідні властивості стилю, такі як ім'я, базовий стиль, шрифт і форматування абзаців стилю, і так далі.

До того ж, **Style** об'єкт забезпечує [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) майно, що повертає ідентифікатор локального стилю, представлений **StyleIdentifier** значення нумерації. Точка полягає в тому, що назви вбудованих стилів в Microsoft Word локалізуються для різних мов. Використовуючи ідентифікатор стилю, ви можете знайти правильний стиль незалежно від мови документа. Значення занурення відповідають значенням Microsoft Word вбудовані стилі, такі як *Normal*, *Дозволення 1*, *Дозволення 2* та ін. Всі стилі, призначені для користувача **СтильВиявлення. Вартість користувача**й

Приклад коду показує, як застосувати метод абзацу:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Вставити стиль сепаратора для розміщення різних стилів

Сепаратор стилю можна додавати до кінця абзацу за допомогою Ctrl + Alt + Enter Keyboard Shortcut в MS Word. Ця функція дозволяє два різних абзаців, які використовуються в одному логічному друкованому пункті. Якщо ви хочете зробити текст з початку конкретного заголовка, щоб з'явитися в таблиці змісту, але не хочете весь заголовок в таблиці змісту, ви можете використовувати цю функцію.

Наприклад, наступний код показує, як вставити роздільник стилю для розміщення різних абзаців:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Застосувати кордони та затінки до пункту

Кордони в Aspose.Words представлені [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) клас – це колекція [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) об'єкти, які доступні за індексом або за типом кордону. Про нас `Border` тип представлений методом [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) заохочення. Деякі значення генерації застосовуються до декількох або тільки одного елемента документа. Наприклад, **BorderType.Bottom** застосовується до абзацу або настільної комірки в той час як **BorderType.DiagonalDown** визначає діагональний кордон в таблиці тільки.

Як бордюрний збір, так і кожен окремий кордон має схожі атрибути, такі як колір, стиль лінії, ширина лінії, відстань від тексту, і додаткові тіні. Вони представлені властивостями тієї ж назви. Ви можете досягти різних типів кордонів, поєднуючи значення нерухомості. Крім того, як **BorderCollection** і **Border** об'єкти дозволяють скидати ці значення за замовчуванням, викликаючи [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) метод.

{{% alert color="primary" %}}

Зауважте, що при русі властивості скидаються до значень за замовчуванням, кордон невидимий.

{{% /alert %}}

Aspose.Words також має [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) Клас містить атрибути затінення для елементів документа. Ви можете встановити бажану текстуру затінення і кольори, які наносяться на фон і фон елемента.

Текстура затінення встановлюється з [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) значення нумерації, що дозволяє застосування різних візерунків до **Shading** об'єкт. Наприклад, для встановлення фонового кольору для елемента документа використовуйте `TextureIndex.TextureSolid` значення і встановити колір переднього затінення відповідно. Приклад коду, наведений нижче, показує, як застосувати кордони та затінки до пункту.

Приклад наступного коду показує, як застосувати кордони та затінки до пункту:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
