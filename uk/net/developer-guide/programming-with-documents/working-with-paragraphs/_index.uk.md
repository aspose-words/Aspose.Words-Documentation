---
title: Робота з пунктами C#
second_title: Aspose.Words для .NET
articleTitle: Робота з параграфами
linktitle: Робота з параграфами
description: "Вставте пункт в документ C#й Встановити стилі абзацу в C#й Робота з сепаратором абзацу C#й Маніпулювати вузол абзацу за допомогою C#й"
type: docs
weight: 210
url: /uk/net/working-with-paragraphs/
---

Пабзац є набором символів, що поєднуються в логічний блок і закінчуючи особливим характером – розбиттям *. У Aspose.Words, абзац представлений абзацом [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) клас.

## Вставте прапор

Щоб вставити новий абзац в документ, по суті, потрібно вставити характер абзацу в нього. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) вставляє не тільки рядок тексту в документ, але і додає перерву абзаців.

Поточне форматування шрифтів також вказується [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) властивість, і форматування абзаців визначається [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) майно. У наступному розділі ми розглянемо докладніше про форматування абзаців.

Приклад наступного коду показує, як вставити абзац в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Формати

Поточний форматування абзаців представлений [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) об'єкт, який повертається [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) майно. Цей об'єкт інкапсулює різні параметри форматування абзаців, доступні в Microsoft Wordй Ви можете легко скидати форматування абзацу до його за замовчуванням – Нормальний стиль, вирівняний, не відступаючи, не відступаючи, не залишаючи кордонів, не затіняє – викликом [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/)й

Приклад коду показує, як встановити форматування абзаців:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Застосувати Параграф стиль

Деякі форматування об'єктів, такі як **Font** або **ParagraphFormat**, стилі підтримки. Один вбудований або користувальницький стиль представлений [Style](https://reference.aspose.com/words/net/aspose.words/style/) об'єкт, який містить відповідні властивості стилю, такі як ім'я, базовий стиль, шрифт, форматування абзаців стилю і так далі.

Крім того, **Style** об'єкт визначає об'єкт [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) майно, що повертає ідентифікатор локального стилю, представлений [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) значення нумерації. Справа в тому, що імена вбудованих стилів в Microsoft Word локалізуються для різних мов. Використовуючи ідентифікатор стилю, ви можете знайти правильний стиль незалежно від мови документа. Значення занурення відповідають вбудованим Microsoft Word стилі, такі як *Normal*, *Дозволення 1*, *Дозволення 2* і так далі. Всі стилі користувача встановлюються до **StyleIdentifier.User** значення нумерації.

Приклад коду показує, як застосувати метод абзацу:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Вставити стиль сепаратора для розміщення різних стилів

Сепаратор стилю може бути доданий до кінця абзацу за допомогою клавішного ярлика Ctrl+Alt+Enter в Microsoft Wordй Ця функція дозволяє використовувати два різних стилі абзацу в одному логічному друкованому пункті. Якщо ви хочете якийсь текст з початку певного заголовка, щоб з'явитися в таблиці змісту, але не хочете, щоб весь заголовок показати в таблиці змісту, ви можете використовувати цю функцію.

Наприклад, наступний код показує, як вставити сепаратор стилю для розміщення різних абзаців:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Визначення пункту Стиль сепаратор

Aspose.Words виводить [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) громадська нерухомість на території `Paragraph` клас для визначення абзацу з роздільним стилем, як показано на прикладі нижче:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Застосувати кордони та затінки до пункту

Кордони в Aspose.Words представлені [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) клас – це колекція [Border](https://reference.aspose.com/words/net/aspose.words/border/) об'єкти, які доступні за індексом або за типом кордону. Тип кордону в свою чергу представлений [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) заохочення. Деякі значення конвертації застосовуються до декількох або тільки одного елемента документа. Наприклад, **BorderType.Bottom** відноситься до абзацу або столової комірки, при цьому **BorderType.DiagonalDown** визначає діагональний кордон в таблиці тільки.

Як бордюрний збір і кожен окремий кордон мають подібні атрибути, такі як колір, стиль лінії, ширина лінії, відстань від тексту, і додаткові тіні. Вони представлені властивостями тієї ж назви. Ви можете отримати різні типи кордонів, поєднуючи значення нерухомості. Крім того, **BorderCollection** і **Border** об'єкти дозволяють скидати ці значення до значень за замовчуванням за допомогою виклику [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) метод.

{{% alert color="primary" %}}

Зверніть увагу, що коли прикордонні властивості скидаються до значень за замовчуванням, кордон стає невидимимимим.

{{% /alert %}}

Aspose.Words також має [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) клас, який містить атрибути затінення для елементів документа. Ви можете встановити бажану текстуру та кольори, які наносяться на фон і фон елементу за допомогою елемента [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) значення нумерації. **TextureIndex** також дозволяє застосувати різні візерунки до **Shading** об'єкт. Наприклад, для встановлення фонового кольору для елемента документа використовуйте **TextureIndex.TextureSolid** значення і встановити колір фортепіано відповідно.

Приклад наступного коду показує, як застосувати кордони та затінки до пункту:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Розрахункові рядки

Якщо ви хочете підрахувати кількість рядків у пункті для будь-якого документа Word, можна використовувати наступний зразок коду:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}