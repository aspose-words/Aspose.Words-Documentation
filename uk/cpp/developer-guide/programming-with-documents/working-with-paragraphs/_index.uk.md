---
title: Робота з абзацами в C++
second_title: Aspose.Words для C++
articleTitle: Робота з абзацами
linktitle: Робота з абзацами
description: "Методи маніпулювання вузлами абзацу виконуються за допомогою C++."
type: docs
weight: 210
url: /uk/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Абзац - це набір символів, об'єднаних в логічний блок і закінчуються спеціальним символом *paragraph break*. В Aspose.Words абзац представлений класом [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Вставити абзац

Щоб вставити в документ новий абзац, насправді, вам потрібно вставити в нього символ розриву абзацу. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) вставляє в документ не тільки рядок тексту, але і додає розрив абзацу.

Поточне форматування шрифту також визначається властивістю [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/), а поточне форматування абзацу визначається властивістю [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). У наступному розділі ми детальніше розглянемо форматування абзацу.

Наступний приклад коду показує, як вставити абзац у документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Форматувати абзац

Поточне форматування абзацу представлено об'єктом **ParagraphFormat**, який повертається властивістю **ParagraphFormat**. Цей об'єкт інкапсулює різні властивості форматування абзацу, доступні в Microsoft Word. Ви можете легко змінити форматування абзацу за замовчуванням на звичайний стиль, вирівняний за лівим краєм, без відступів, без інтервалів, без меж і без затінення, викликавши команду [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

У наступному прикладі коду показано, як задати форматування абзацу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Застосувати стиль абзацу

Деякі об'єкти форматування, такі як шрифт або ParagraphFormat, підтримують стилі. Окремий вбудований або визначений користувачем стиль представлений об'єктом `Style`, який містить відповідні властивості стилю, такі як назва, базовий стиль, форматування шрифту та абзацу стилю тощо.

Крім того, об'єкт **Style** надає властивість [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/), яка повертає незалежний від мови ідентифікатор стилю, представлений значенням перерахування **StyleIdentifier**. Справа в тому, що назви вбудованих стилів в Microsoft Word локалізовані для різних мов. Використовуючи ідентифікатор стилю, ви можете знайти правильний стиль незалежно від мови документа. Значення перерахування відповідають вбудованим стилям Microsoft Word, таким як *Normal*, *Heading 1*, *Heading 2* і т.д. всім призначеним для користувача стилям присвоюється значення **StyleIdentifier.User**.

Наступний приклад коду показує, як застосувати стиль абзацу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Вставте роздільник стилів для розміщення різних стилів абзаців

Роздільник стилів можна додати до кінця абзацу за допомогою комбінації клавіш Ctrl + Alt + Enter у MS Word. Ця функція дозволяє використовувати два різні стилі абзацу в одному логічному друкованому абзаці. Якщо ви хочете, щоб якийсь текст із початку певного заголовка відображався у змісті, але не весь заголовок, ви можете скористатися цією функцією.

Наступний приклад коду показує, як вставити роздільник стилів, щоб відповідати різним стилям абзаців:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Визначте роздільник стилів абзаців

` `Aspose.Words надає загальнодоступну властивість [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) для класу `Paragraph`, що дозволяє ідентифікувати абзац-роздільник стилів, як показано в прикладі, наведеному нижче:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Застосуйте межі та затінення до абзацу

Межі в Aspose.Words представлені класом [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – це колекція об'єктів [Border](https://reference.aspose.com/words/cpp/aspose.words/border/), доступ до яких здійснюється за індексом або за типом кордону. Тип кордону представлений перерахуванням `BorderType`. Деякі значення перерахування стосуються кількох або лише одного елемента документа. Наприклад, **BorderType.Bottom** застосовується до абзацу або комірки таблиці, тоді як **BorderType.DiagonalDown** визначає діагональну межу лише в комірці таблиці.

Як колекція кадрів, так і кожна окрема межа мають подібні атрибути, такі як колір, стиль лінії, ширина лінії, відстань від тексту та необов'язкова тінь. Вони представлені однойменними властивостями. Поєднуючи значення властивостей, ви можете створювати різні типи меж. Крім того, обидва об'єкти **BorderCollection** і **Border** дозволяють скинути ці значення до значень за замовчуванням, викликавши метод [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Зверніть увагу, що коли властивості кордону скидаються до значень за замовчуванням, межа стає невидимою.

{{% /alert %}}

Aspose.Words також містить клас [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/), що містить атрибути затінення для елементів документа. Ви можете задати бажану текстуру затінення і кольору, які будуть застосовуватися до фону і переднього плану елемента.

Текстура затінення задається значенням перерахування [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/), яке дозволяє застосовувати різні шаблони до об'єкта **Shading**. Наприклад, щоб встановити колір фону для елемента документа, використовуйте значення [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) і відповідно встановіть колір затінення переднього плану.

Наступний приклад коду показує, як застосувати межі та затінення до абзацу:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
