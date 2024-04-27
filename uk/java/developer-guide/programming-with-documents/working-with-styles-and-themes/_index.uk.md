---
title: Робота з стильами та темами
second_title: Aspose.Words для Java
articleTitle: Робота з стильами та темами
linktitle: Робота з стильами та темами
description: "Підвищений Microsoft Word форматування функцій, робота з стилями та темами, використовуючи Javaй"
type: docs
weight: 110
url: /uk/java/working-with-styles-and-themes/
---

Про нас [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) Клас використовується для керування вбудованими та застосувати користувацькі налаштування до стилів.

## Як витягувати контент на основі стилів

На простому рівні, перерозподілу вмісту на основі стилів з документа Word може бути корисним для ідентифікації, списку та підрахунку абзаців та рядків тексту, відформатованих певним стилем. Наприклад, для визначення окремих видів контенту в документі, таких як приклади, заголовки, посилання, ключові слова, імена фігур та приклади.

Для того, щоб зробити це кілька кроків далі, це також може бути використаний для важелювання структури документа, визначених стилях він використовує, для повторного використання документа для іншого виходу, наприклад HTML. Це насправді, як будується документація Aspose, що надходить Aspose.Words до тесту. Інструмент вбудований за допомогою Aspose.Words введіть документи Word і розбиває їх на теми на певних рівнях заголовка. Файл XML виробляється за допомогою Aspose.Words що використовується для побудови навігаційної деревини, ви можете побачити на лівому. А потім Aspose.Words перетворює кожну тему в HTML. Розчин для перерозподілу тексту, відформатований певними стилями в документі Word, як правило, економічним і прямим Aspose.Wordsй

Ілюструвати, як легко Aspose.Words ручка ретривування контенту на основі стилів, розглянемо приклад. У цьому прикладі ми будемо отримувати текстові форматування з певним стилем абзацу та стилем персонажа з зразка документа Word.

На високому рівні це буде залучено:

1,1 км Відкриття документа Word за допомогою [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) клас.
1,1 км Отримання зібрань всіх абзаців і всіх проходжень у документі.
1,1 км Вибравши тільки потрібні абзаци і проходи.

Зокрема, ми отримаємо текст, відформатований за допомогою пункту "Налаштування 1" та стилю "Intense Emphasis" з цього зразка документа Word

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

У цьому документі про зразок текст відформатований за допомогою пункту "Налаштування 1" є "Вставити вкладку", "Швидкі стилі" та "Theme", а текст відформатований за стилем "Intense акцент" – це кілька екземплярів синього, italicized, сміливого тексту, таких як "галереї" та "загальний погляд".

Реалізація стильного запиту досить проста в Aspose.Words Модель об'єкта документа, як це просто використовує інструменти, які вже знаходяться в місці. Для цього рішення реалізуються два методи класу:

1,1 км **ParagraphsByStyleName** до Цей метод отримує масив тих абзаців у документі, який має певну назву стилю.
1,1 км **RunsByStyleName** до Цей метод отримує масив тих, хто працює в документі, який має певну назву стилю.

Обидва ці методи дуже схожі, єдиними відмінностями є типи вузлів і представлення інформації стилю в абзаци і запускати вузли. Тут є імплементація ParagraphsByStyleName, що відображається в прикладі коду, наведеному нижче, щоб знайти всі абзаци, відформатовані за допомогою вказаного стилю.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Ця реалізація також використовує [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) метод методу `Document` клас, який повертає колекцію всіх негайних вузлів дитини.

Крім того, варто відзначити, що збір абзаців не створює безпосередній наклад, оскільки абзаци завантажуються в цю колекцію лише тоді, коли ви маєте доступ до них. Потім все, що потрібно зробити, щоб перейти через збірку, використовуючи стандарт длявчителя оператора і додати абзаци, які мають вказаний стиль на абзаци Стильовий масив. Про нас `Paragraph` Назва стилю можна знайти в [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) майно майна [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) об'єкт.

Реалізація RunsByStyleName практично однакова, хоча ми, очевидно, використовуємо `NodeType.Run` для отримання вузла запуску. Про нас [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) майно нерухомості [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) об'єкт використовується для доступу до інформації про стиль **Run** вершини

Наприклад, наступний код знаходить всі траси, відформатовані за вказаним стилем.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Коли обидві запити реалізовані, все, що вам потрібно зробити, щоб передати об'єкт документа і вказати назви стилю, які ви хочете отримати:

{{% /alert %}}

Приклад запустіть запити та результати відображення.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Коли все зроблено, запустити зразок буде відображати наступний вихід:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Як ви можете побачити, це дуже простий приклад, показує кількість і текст зібраних абзаців і ведеться в зразка документа Word.

## Вставити стиль сепаратора для розміщення різних стилів

Сепаратор стилю можна додавати до кінця абзацу за допомогою Ctrl + Alt + Enter Keyboard Shortcut в MS Word. Ця функція дозволяє два різних абзаців, які використовуються в одному логічному друкованому пункті. Якщо ви хочете якийсь текст з початку конкретного заголовка, щоб з'явитися в таблиці змісту, але не хочете весь заголовок в таблиці змісту, ви можете використовувати цю функцію

Наприклад, наступний код показує, як вставити роздільник стилю, щоб покласти різні абзаци

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Скопіювати всі стилі з шаблону

Якщо ви хочете копіювати всі стилі з одного документа в інший. Ви можете використовувати `Document.CopyStylesFromTemplate` метод копіювання стилів з вказаного шаблону до документа. Коли стилі скопійовані з шаблону до документа, такі як названі стилі в документі перевизначені, щоб відповідати описам стилів в шаблоні. Унікальні стилі з шаблону копіюються до документа. Унікальні стилі в документі залишаються незмінними

Приклад коду показує, як копіювати стилі з одного документа в інший.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Як маніпулювати Тематичні властивості

Ми додали основні API в Aspose.Words доступу до властивостей теми документів. Зараз це API включає такі публічні об'єкти:

- до Головна
- ТемиФонтс
- Теми

Ось як можна отримати тематичні властивості:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

І ось як можна встановити тематичні властивості:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
