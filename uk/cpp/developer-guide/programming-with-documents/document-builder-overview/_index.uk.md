---
title: Огляд конструктора документів в C++
second_title: Aspose.Words для C++
articleTitle: Огляд конструктора документів
linktitle: Огляд конструктора документів
type: docs
description: "DocumentBuilder дозволяє створювати динамічні документи з нуля або додавати нові елементи до існуючих за допомогою C++. DocumentBuilder надає методи вставки тексту, checkbox файлів, таблиць, зображень та інших елементів вмісту в C++."
weight: 30
url: /uk/cpp/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) - це потужний клас, який асоціюється з [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) і дозволяє створювати динамічні документи з нуля або додавати нові елементи до існуючих.

**DocumentBuilder**

## Конструктор документів або Aspose.Words DOM

**DocumentBuilder**

Операції, які можливі з **DocumentBuilder**, також можливі при безпосередньому використанні класів Aspose.Words DOM. Однак пряме використання класів Aspose.Words DOM зазвичай вимагає більше рядків коду, ніж використання **DocumentBuilder**.

## Навігація по документах

Навігація по документу заснована на концепції віртуального курсору, за допомогою якого ви можете переміщатися в інше місце документа, використовуючи різні методи **DocumentBuilder.MoveToXXX**, такі як [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) і [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Цей віртуальний курсор вказує, куди буде вставлений текст під час виклику методів [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), та інших.

Наступний приклад коду показує, як перейти до закладки:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Створення та модифікація документів

Aspose.Words API надає кілька класів, які відповідають за форматування різних елементів документа. Кожен із класів інкапсулює властивості форматування, що стосуються певного елемента документа, такого як текст, абзац, розділ та інші. Наприклад, клас [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) представляє властивості форматування символів, клас [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) представляє властивості форматування абзаців і т.д. Об'єкти цих класів повертаються відповідними властивостями **DocumentBuilder**, які мають ті ж імена, що і класи. Таким чином, ви можете отримати до них доступ і задати бажане форматування під час створення документа.

Ви також можете вставити текст, checkbox, об'єкт ole, зображення, закладки, поля форми та інші елементи документа в положення курсору, використовуючи метод `Write` або будь-який із методів **DocumentBuilder.InsertXXX**, таких як [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) та подібні методи.

Давайте подивимося, як створити простий документ за допомогою **DocumentBuilder**.

### Створіть документ за допомогою DocumentBuilder

Для початку вам потрібно створити **DocumentBuilder** і зв'язати його з об'єктом **Document**. Ви створюєте новий екземпляр **DocumentBuilder**, викликаючи його конструктор, і передаєте його об'єкту **Document** для приєднання до конструктора.

Щоб вставити текст, передайте рядок тексту, який потрібно вставити в документ, методу **Write**.

Наступний приклад коду показує, як створити простий документ за допомогою конструктора документів.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Вкажіть форматування документа

Властивість [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) визначає форматування тексту. Цей об'єкт містить різні атрибути шрифту (назва шрифту, розмір шрифту, колір і т.д.). Деякі важливі атрибути шрифту також представлені властивостями **DocumentBuilder**, що дозволяє отримати до них прямий доступ. Це логічні властивості [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) і [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

Наступний приклад коду показує, як вставити відформатований текст за допомогою **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) визначає форматування символів, яке буде застосовуватися до всього тексту, вставленого починаючи з поточної позиції в документі.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) визначає форматування абзацу для поточного та всіх інших абзаців, які будуть вставлені.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) встановлює властивості сторінки та розділу для поточного розділу та всього розділу, який буде вставлено.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) і [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) задають властивості форматування, які будуть застосовуватися до осередків і рядках таблиці, починаючи з поточної позиції в документі і далі.

У цій ситуації "поточний" означає позицію, абзац, розділ, комірку або рядок, в яких знаходиться курсор.

{{% /alert %}}

{{% alert color="primary" %}}

Зверніть увагу, що властивості **Font**, **ParagraphFormat** та **PageSetup** оновлюються щоразу, коли ви переходите до іншого місця в документі, щоб відобразити властивості форматування цього місця.

{{% /alert %}}
