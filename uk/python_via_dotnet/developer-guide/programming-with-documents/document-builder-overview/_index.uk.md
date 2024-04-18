---
title: Конструктор документів Огляд Python
second_title: Aspose.Words для Python via .NET
articleTitle: Огляд конструктора документів
linktitle: Огляд конструктора документів
type: docs
description: "DocumentBuilder дозволяє побудувати динамічні документи з нуля або додати нові елементи до існуючих Pythonй DocumentBuilder надає методи вставляти текст, прапорці, таблиці, зображення та інші елементи вмісту в Pythonй"
weight: 30
url: /uk/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) є потужним класом, який асоціюється з [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) і дозволяє будувати динамічні документи з нуля або додати нові елементи до існуючого.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) надає методи вставити текст, прапорці, оле об'єкти, абзаци, списки, таблиці, зображення та інші елементи вмісту. Ви можете вказати шрифти, пункт або форматування розділу та виконувати інші операції.

## Конструктор документів або Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) доповнює класи та методи, доступні в Aspose.Words Document Object Model (Українська)DOM) спростити найбільш поширені завдання з побудови документів. Таким чином, ви можете створити і змінити зміст документів як через Aspose.Words DOM, яка вимагає гарного розуміння структури дерева, а також використання DocumentBuilder. Про нас `DocumentBuilder` – "фасад" для комплексу **Document** структура, яка дозволяє швидко і легко вставляти вміст і форматування.

Операції, які можливо з [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) Можливі також при використанні занять Aspose.Words DOM прямо. Однак, використовуючи Aspose.Words DOM класи безпосередньо зазвичай вимагають більше рядків коду, ніж використання [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)й

## Навігація документів

Навігація документів базується на концепції віртуального курсора, за допомогою якого можна переходити в інше місце в документі, використовуючи різні **JavaScript licenses API Веб-сайт** методи, такі як [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) і [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/)й Цей віртуальний курсор вказує, де текст буде вставлятися при виклику методів [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/), та інші. Детальніше про віртуальний курсор читайте в розділі "Навігація з куратором".

Приклад коду показує, як орієнтуватися на закладку:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Будівництво документів та модифікація документів

Aspose.Words API надає кілька класів, які відповідають за форматування різних елементів документа. Кожен з класів визначає форматування властивостей, пов'язаних з певним елементом документа, таких як текст, абзац, розділ та інші. Наприклад, [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) клас являє собою характерні властивості форматування, [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) клас являє собою абзационно-форматні властивості, і так далі. Об’єкти цих класів повертаються відповідним [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) властивості, які мають однакові імена як класи. Таким чином, ви можете отримати доступ до них і встановити бажаний форматування під час складання документа.

Ви також можете вставляти текст, прапорець, ole об'єкт, зображення, закладки, форми поля та інші елементи документа на позиції курсора за допомогою пункту `Write` метод або будь-який з **JavaScript licenses API Веб-сайт** методи, такі як [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/), і подібні методи.

Давайте подивимося, як створити простий документ, використовуючи [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)й

### Створити документ за допомогою DocumentBuilder

Для початку необхідно створити [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) і пов'язувати його з [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт. Ви створюєте новий екземпляр [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) за викликом конструктора і перейде його до [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт для кріплення будівельника.

Щоб вставити текст, пропустіть рядок тексту, потрібно вставити в документ до [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/) метод.

Приклад коду показує, як створити простий документ за допомогою конструктора документів.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Вказати форматування документів

Про нас [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) властивість визначає форматування тексту. Цей об'єкт містить різні атрибути шрифтів (ім'я шрифту, розмір шрифту, колір тощо). Деякі важливі атрибути шрифтів також представлені [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) властивості, які дозволяють отримати доступ до них безпосередньо. Ці [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/), і [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/) булеві властивості.

Приклад коду показує, як вставити форматований текст за допомогою [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- до [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) визначає форматування символів, який буде застосовано до всіх текстових вставлених з поточного положення в документі.
- до [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) визначає форматування абзаців для поточного та всіх абзаців, які будуть вставлятися.
- до [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) визначає властивості сторінки та розділу для поточного розділу та всієї секції, яка буде вставлятися.
- до [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) і [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) вкажіть форматування властивостей, які будуть застосовуватися до комірок та рядків з поточного положення в документі.

У цій ситуації "поточний" означає позицію, абзац, розділ, клітинку або ряд, в якому курсор знаходиться.

{{% /alert %}}

{{% alert color="primary" %}}

Зверніть увагу, що [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/), і [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) властивості оновлюються, коли ви навігуєте на інше місце в документі для відображення форматування властивостей цього місця.

{{% /alert %}}
