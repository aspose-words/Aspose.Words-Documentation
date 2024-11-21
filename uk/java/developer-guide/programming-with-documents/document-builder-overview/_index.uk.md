---
title: Конструктор документів Огляд Java
second_title: Aspose.Words для Java
articleTitle: Огляд конструктора документів
linktitle: Огляд конструктора документів
type: docs
description: "DocumentBuilder дозволяє побудувати динамічні документи з нуля або додати нові елементи до існуючих. DocumentBuilder надає методи вставляти текст, прапорці, таблиці, зображення та інші елементи вмісту в Javaй"
weight: 30
url: /uk/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) є потужним класом, який асоціює з [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) і дозволяє будувати динамічні документи з нуля або додати нові елементи до існуючого.

**DocumentBuilder** надає методи вставити текст, прапорці, оле об'єкти, абзаци, списки, таблиці, зображення та інші елементи вмісту. Ви можете вказати шрифти, пункт або форматування розділу та виконувати інші операції.

## Конструктор документів або Aspose.Words DOM

**DocumentBuilder** доповнює класи та методи, доступні в Aspose.Words Document Object Model (Українська)DOM) спростити найбільш поширені завдання з побудови документів. Таким чином, ви можете створити і змінити зміст документів як через Aspose.Words DOM, яка вимагає гарного розуміння структури дерева і використання DocumentBuilder. Про нас `DocumentBuilder` – "фасад" для комплексу **Document** структура дозволяє швидко і легко вставляти вміст і форматування.

Операції, які можливо з **DocumentBuilder** Можливі також при використанні занять Aspose.Words DOM прямо. Однак, використовуючи Aspose.Words DOM класи безпосередньо зазвичай вимагають більше рядків коду, ніж за допомогою **DocumentBuilder**й

## Навігація документів

Навігація документів базується на концепції віртуального курсора, за допомогою якого можна переходити в інше місце в документі, використовуючи різні **DocumentBuilder.MoveToXXX** методи, такі як [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) і [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean)й Цей віртуальний курсор вказує, де текст буде вставлятися при виклику методів [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), та інші. Детальніше про віртуальний курсор читайте в розділі "Навігація з куратором".

Приклад коду показує, як орієнтуватися на закладку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Будівництво документів та модифікація документів

Aspose.Words API надає кілька класів, які відповідають за форматування різних елементів документа. Кожен з класів визначає форматування властивостей, пов'язаних з певним елементом документа, таких як текст, абзац, розділ та інші. Наприклад, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) клас являє собою характерні властивості форматування, [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) клас являє собою абзационно-форматні властивості, і так далі. Об’єкти цих класів повертаються відповідним **DocumentBuilder** властивості, які мають однакові імена як класи. Таким чином, ви можете отримати доступ до них і встановити бажаний форматування під час складання документа.

Ви також можете вставляти текст, прапорець, ole об'єкт, зображення, закладки, форми поля та інші елементи документа на позиції курсора за допомогою пункту `Write` метод або будь-який з **DocumentBuilder.InsertXXX** методи, такі як [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), і подібні методи.

Давайте подивимося, як створити простий документ, використовуючи **DocumentBuilder**й

### Створити документ за допомогою DocumentBuilder

Для початку необхідно створити **DocumentBuilder** і пов'язувати його з **Document** об'єкт. Ви створюєте новий екземпляр **DocumentBuilder** за викликом конструктора і перейде його до **Document** об'єкт для кріплення будівельника.

Щоб вставити текст, пропустіть рядок тексту, потрібно вставити в документ до **Write** метод.

Приклад коду показує, як створити простий документ за допомогою конструктора документів.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Вказати форматування документів

Про нас [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) майно визначає форматування тексту. Цей об'єкт містить різні атрибути шрифту (ім'я шрифту, розмір шрифту, колір тощо). Деякі важливі атрибути шрифтів також представлені **DocumentBuilder** властивості, які дозволяють отримати доступ до них безпосередньо. Ці [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), і [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) булеві властивості.

Приклад коду показує, як вставити форматований текст за допомогою **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- до [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) визначає форматування символів, який буде застосовано до всіх текстових вставлених з поточного положення в документі.
- до [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) визначає форматування абзаців для поточного та всіх абзаців, які будуть вставлятися.
- до [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) визначає властивості сторінки та розділу для поточного розділу та всієї секції, яка буде вставлятися.
- до [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) і [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) вкажіть форматування властивостей, які будуть застосовуватися до комірок та рядків з поточного положення в документі.

У цій ситуації "поточний" означає позицію, абзац, розділ, клітинку або ряд, в якому курсор знаходиться.

{{% /alert %}}

{{% alert color="primary" %}}

Зверніть увагу, що **Font**, **ParagraphFormat**, і **PageSetup** властивості оновлюються, коли ви навігуєте на інше місце в документі для відображення форматування властивостей цього місця.

{{% /alert %}}
