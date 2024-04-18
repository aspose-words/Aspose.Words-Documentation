---
title: Робота з пунктами Python
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з параграфами
linktitle: Робота з параграфами
description: "Вставити абзац і вказати його форматування в документі за допомогою Pythonй"
type: docs
weight: 210
url: /uk/python-net/working-with-paragraphs/
---

Пабзац є набором символів, що поєднуються в логічний блок і закінчуючи особливим характером – розбиттям *. У Aspose.Words, абзац представлений абзацом [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) клас.

## Вставте прапор

Щоб вставити новий абзац в документ, по суті, потрібно вставити характер абзацу в нього. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) вставляє рядок тексту в документ, а також, крім того, він додає абзационну перерву.

Поточне форматування шрифтів також вказується [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) властивість та форматування абзаців визначається [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) майно.

Приклад наступного коду показує, як вставити абзац в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Формати

Поточний форматування абзаців представлений [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) об'єкт, який повертається [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) майно. Цей об'єкт інкапсулює різні параметри форматування абзаців, доступні в Microsoft Wordй Ви можете легко скидати форматування абзацу за замовчуванням до нормального стилю, вирівнюється зліва, не відступаючи, ні спати, ні кордони і ні затінки за допомогою виклику [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/)й

Приклад коду показує, як встановити форматування абзаців:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Застосувати Параграф стиль

Деякі форматування об'єктів, такі як [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) або [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) стилі підтримки. Одномісний вбудований або визначений стиль користувача представлений [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) об'єкт, який містить відповідні властивості стилю, такі як ім'я, базовий стиль, шрифт і форматування абзаців стилю, і так далі.

До того ж [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) об'єкт забезпечує [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) майно, що повертає ідентифікатор локального стилю, представлений [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) значення нумерації. Точка полягає в тому, що назви вбудованих стилів в Microsoft Word локалізуються для різних мов. Використовуючи ідентифікатор стилю, ви можете знайти правильний стиль незалежно від мови документа. Значення занурення відповідають значенням Microsoft Word вбудовані стилі, такі як Нормальний, Заголовок 1, Заголовок 2 і т.д. Всі стилі, призначені для користувача [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) значення

Приклад коду показує, як застосувати метод абзацу:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Вставити стиль сепаратора для розміщення різних стилів

Сепаратор стилю можна додавати до кінця абзацу за допомогою Ctrl + Alt + Enter Keyboard Shortcut в MS Word. Ця функція дозволяє два різних абзаців, які використовуються в одному логічному друкованому пункті. Якщо ви хочете зробити текст з початку конкретного заголовка, щоб з'явитися в таблиці змісту, але не хочете весь заголовок в таблиці змісту, ви можете використовувати цю функцію

Наприклад, наступний код показує, як вставити сепаратор стилю для розміщення різних абзаців:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Визначення пункту Стиль сепаратор

Aspose.Words надає комунальні послуги [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) в [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) клас дозволяє визначити параметри сепаратора стилю, як показано на прикладі нижче:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Застосувати кордони та затінки до пункту

Прикордони представлені [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/)й Це колекція [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) об'єкти, які доступні за індексом або за типом кордону. Тип кордону представлений [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) заохочення. Деякі значення генерації застосовуються до декількох або тільки одного елемента документа. Наприклад, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) застосовується до абзацу або настільної комірки при [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) визначає діагональний кордон в таблиці тільки.

У кожному окремому кордоні є подібні атрибути, такі як колір, стиль лінії, ширина лінії, відстань від тексту та додаткові тіні. Вони представлені властивостями тієї ж назви. Ви можете досягти різних типів кордонів, поєднуючи значення нерухомості. Крім того, як [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) і [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) об'єкти дозволяють скидати ці значення за замовчуванням, викликаючи [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) метод.

{{% alert color="primary" %}}

Зверніть увагу, що коли прикордонні властивості скидаються до значень за замовчуванням, кордон стає невидимимимим.

{{% /alert %}}

Aspose.Words також має [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) Клас містить атрибути затінення для елементів документа. Ви можете встановити бажану текстуру затінення і кольори, які наносяться на фон і фон елемента.

Текстура затінення встановлюється з [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) значення нумерації, що дозволяє застосувати різні візерунки до [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) об'єкт. Наприклад, для встановлення фонового кольору для елемента документа використовуйте [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) значення і встановити колір фортепіано відповідно. Нижче наведено, як застосувати кордони та затінки до абзацу.

Приклад наступного коду показує, як застосувати кордони та затінки до пункту:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
