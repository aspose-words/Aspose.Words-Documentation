---
title: Конструктор документів Огляд C#
second_title: Aspose.Words для .NET
articleTitle: Огляд конструктора документів
linktitle: Огляд конструктора документів
type: docs
description: "DocumentBuilder дозволяє побудувати динамічні документи з нуля або додати нові елементи до існуючих C#й DocumentBuilder надає методи вставляти текст, прапорці, таблиці, зображення та інші елементи вмісту в .NETй"
weight: 30
url: /uk/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) є потужним класом, який асоціюється з [Document](https://reference.aspose.com/words/net/aspose.words/document/) і дозволяє будувати динамічні документи з нуля або додати нові елементи до існуючого.

**DocumentBuilder** надає методи вставити текст, прапорці, оле об'єкти, абзаци, списки, таблиці, зображення та інші елементи вмісту. Ви можете вказати шрифти, пункт або форматування розділу та виконувати інші операції.

## Конструктор документів або Aspose.Words DOM

**DocumentBuilder** доповнює класи та методи, доступні в Aspose.Words Document Object Model (Українська)DOM) спростити найбільш поширені завдання з побудови документів. Таким чином, ви можете створити і змінити зміст документів як через Aspose.Words DOM, яка вимагає гарного розуміння структури дерева, а також використання DocumentBuilder. Про нас `DocumentBuilder` – "фасад" для комплексу **Document** структура, яка дозволяє швидко і легко вставляти вміст і форматування.

Операції, які можливо з **DocumentBuilder** Можливі також при використанні занять Aspose.Words DOM прямо. Однак, використовуючи Aspose.Words DOM класи безпосередньо зазвичай вимагають більше рядків коду, ніж використання **DocumentBuilder**й

## Навігація документів

Навігація документів базується на концепції віртуального курсора, за допомогою якого можна переходити в інше місце в документі, використовуючи різні **DocumentBuilder.MoveToXXX** методи, такі як [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) і [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/)й Цей віртуальний курсор вказує, де текст буде вставлятися при виклику методів [Write](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertbreak/), та інші. Детальніше про віртуальний курсор читайте в розділі "Навігація з куратором".

Приклад коду показує, як орієнтуватися на закладку:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Будівництво документів та модифікація документів

Aspose.Words API надає кілька класів, які відповідають за форматування різних елементів документа. Кожен з класів визначає форматування властивостей, пов'язаних з певним елементом документа, таких як текст, абзац, розділ та інші. Наприклад, [Font](https://reference.aspose.com/words/net/aspose.words/font/) клас являє собою характерні властивості форматування, [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) клас являє собою абзационно-форматні властивості, і так далі. Об’єкти цих класів повертаються відповідним **DocumentBuilder** властивості, які мають однакові імена як класи. Таким чином, ви можете отримати доступ до них і встановити бажаний форматування під час складання документа.

Ви також можете вставляти текст, прапорець, ole об'єкт, зображення, закладки, форми поля та інші елементи документа на позиції курсора за допомогою пункту `Write` метод або будь-який з **DocumentBuilder.InsertXXX** методи, такі як [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/#inserthtml/), і подібні методи.

Давайте подивимося, як створити простий документ, використовуючи **DocumentBuilder**й

### Створити документ за допомогою DocumentBuilder

Для початку необхідно створити **DocumentBuilder** і пов'язувати його з **Document** об'єкт. Ви створюєте новий екземпляр **DocumentBuilder** за викликом конструктора і перейде його до **Document** об'єкт для кріплення будівельника.

Щоб вставити текст, пропустіть рядок тексту, потрібно вставити в документ до **Write** метод.

Приклад коду показує, як створити простий документ за допомогою конструктора документів.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Вказати форматування документів

Про нас [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) властивість визначає форматування тексту. Цей об'єкт містить різні атрибути шрифтів (ім'я шрифту, розмір шрифту, колір тощо). Деякі важливі атрибути шрифтів також представлені **DocumentBuilder** властивості, які дозволяють отримати доступ до них безпосередньо. Ці [Font.Bold](https://reference.aspose.com/words/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/net/aspose.words/font/italic/), і [Font.Underline](https://reference.aspose.com/words/net/aspose.words/font/underline/) булеві властивості.

Приклад коду показує, як вставити форматований текст за допомогою **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- до [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) визначає форматування символів, який буде застосовано до всіх текстових вставлених з поточного положення в документі.
- до [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) визначає форматування абзаців для поточного та всіх абзаців, які будуть вставлятися.
- до [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/) визначає властивості сторінки та розділу для поточного розділу та всієї секції, яка буде вставлятися.
- до [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) і [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) вкажіть форматування властивостей, які будуть застосовуватися до комірок та рядків з поточного положення в документі.

У цій ситуації "поточний" означає позицію, абзац, розділ, клітинку або ряд, в якому курсор знаходиться.

{{% /alert %}}

{{% alert color="primary" %}}

Зверніть увагу, що **Font**, **ParagraphFormat**, і **PageSetup** властивості оновлюються, коли ви навігуєте на інше місце в документі для відображення форматування властивостей цього місця.

{{% /alert %}}
