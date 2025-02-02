﻿---
title: Робота зі стилями в C++
second_title: Aspose.Words для C++
articleTitle: Робота зі стилями
linktitle: Робота зі стилями
description: "Розширені можливості форматування Microsoft Word, робота зі стилями і темами за допомогою C++."
type: docs
weight: 110
url: /uk/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

Клас [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) використовується для управління вбудованими та застосування налаштувань Користувача до стилів.

## Як витягти контент на основі стилів

На простому рівні вилучення вмісту на основі стилів із документа Word може бути корисним для ідентифікації, складання списку та підрахунку абзаців та фрагментів тексту, відформатованих у певному стилі. Наприклад, вам може знадобитися визначити певні типи вмісту в документі, такі як приклади, заголовки, посилання, ключові слова, назви малюнків та тематичні дослідження.

Якщо зробити ще кілька кроків вперед, це також може бути використано для вдосконалення структури документа, визначеної використовуваними стилями, для перепризначення документа для іншого виводу, наприклад HTML. Насправді саме так створюється документація Aspose, що дозволяє протестувати Aspose.Words. Інструмент, створений за допомогою Aspose.Words, бере оригінальні документи Word і розбиває їх на теми з певними рівнями заголовків. За допомогою Aspose.Words створюється файл XML, який використовується для побудови дерева навігації, яке ви можете бачити зліва. А потім Aspose.Words перетворює кожну тему на HTML.

Рішення для вилучення тексту, відформатованого за певними стилями, у документі Word, Як правило, є економічним та простим за допомогою Aspose.Words.

### Рішення

Щоб проілюструвати, як легко Aspose.Words обробляє пошук вмісту на основі стилів, давайте розглянемо приклад. У цьому прикладі ми збираємося витягти текст, відформатований за допомогою певного стилю абзацу та стилю символів, із зразка документа Word. На високому рівні це вимагатиме:
- Відкриття документа Word за допомогою класу `Document`.
- Отримання колекцій всіх абзаців і всіх прогонів в документі.
- Вибираємо тільки потрібні абзаци і запускаємо. Зокрема, ми витягуємо текст, відформатований у стилі абзацу "Heading 1" та стилі символів "інтенсивний акцент", із цього зразка документа Word.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


У цьому прикладі документа текст, відформатований у стилі абзацу "Heading 1", містить "вставка вкладки", "швидкі стилі" та "Тема", а текст, відформатований у стилі символів "інтенсивний акцент", - це кілька варіантів тексту, виділеного синім, курсивом, жирним шрифтом, наприклад 'галереї' та 'загальний вигляд'.

### Код

Реалізація запиту на основі стилю в об'єктній моделі документа Aspose.Words досить проста, оскільки вона просто використовує вже наявні інструменти. Для цього рішення реалізовано два методи класу:# **ParagraphsByStyleName** – цей метод витягує масив тих абзаців у документі, які мають певну назву стилю.# **RunsByStyleName** - цей метод витягує масив тих фрагментів у документі, які мають певну назву стилю. Обидва ці методи дуже схожі, єдиними відмінностями є типи вузлів та представлення інформації про стиль у вузлах абзацу та запуску. Ось реалізація ParagraphsByStyleName. У наведеному нижче прикладі знайдіть усі абзаци, відформатовані у вказаному стилі.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Ця реалізація також використовує метод `Document.GetChildNodes` класу `Document`, який повертає колекцію всіх вузлів із зазначеним типом, який у цьому випадку міститься у всіх абзацах.

Зверніть увагу, що другому параметру методу **Document.GetChildNodes** присвоєно значення true. Це змушує метод **Document.GetChildNodes** рекурсивно вибирати з усіх дочірніх вузлів, а не вибирати лише безпосередні дочірні вузли.

{{% /alert %}}

Варто також зазначити, що колекція paragraphs не створює негайних накладних витрат, оскільки абзаци завантажуються до цієї колекції лише тоді, коли ви отримуєте доступ до елементів у них. Потім все, що вам потрібно зробити, це переглянути колекцію, використовуючи стандарт для кожного оператора, і додати абзаци, що мають вказаний стиль, до масиву paragraphsWithStyle. Назву стилю `Paragraph` можна знайти у властивості Style. Name об'єкта `Paragraph.ParagraphFormat`. Реалізація RunsByStyleName майже однакова, хоча ми, очевидно, використовуємо `NodeType.Run` для вилучення вузлів запуску. Властивість `Font.Style` об'єкта `Run` використовується для доступу до інформації про стиль у вузлах **Run**. У прикладі below code знайдені всі прогони, відформатовані відповідно до зазначеного стилю.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Коли обидва запити будуть реалізовані, все, що вам потрібно зробити, це передати об'єкт document і вказати назви стилів вмісту, який ви хочете отримати: у наведеному нижче прикладі виконуйте запити та відображайте результати. Ви можете завантажити файл шаблону для цього прикладу тут.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Кінцевий результат

Коли все буде зроблено, при запуску прикладу відобразиться наступний результат:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Як бачите, це дуже простий приклад, що показує кількість та текст зібраних абзаців та прогонів у зразку документа Word.

## Інструкція по вставці поля змісту і роботі з ним

Часто доводиться працювати з документами, що містять Зміст (TOC). Використовуючи Aspose.Words, ви можете вставити власний зміст або повністю відновити існуючий зміст у документі, використовуючи лише кілька рядків коду. У цій статті описується, як працювати з полем змісту, і демонструється:

- Як вставити абсолютно новий `TOC`
- Оновіть нові або існуючі TOCs у документі.
- Вкажіть параметри для управління форматуванням і загальною структурою TOC.
- Як змінити стилі і зовнішній вигляд змісту.
- Як видалити все поле `TOC` разом з усіма записами з документа цілком.

### Вставити TC полів

Часто для `TOC` призначається певний рядок тексту, який позначається полем `TC`. Простий спосіб зробити це в MS Word - виділити текст і натиснути *ALT+SHIFT+O*. При цьому автоматично створюється поле `TC` з використанням виділеного тексту. Той самий метод може бути реалізований за допомогою коду. Наведений нижче код знайде текст, що відповідає введеним даним, і Вставить поле `TC` в тому ж місці, що і текст. Код заснований на тому ж методі, який використовувався в статті. У наведеному нижче прикладі показано, як знайти та вставити поле `TC` у текст документа.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Змінити зміст

#### Змініть форматування стилів

Форматування записів у `TOC` не використовує оригінальні стилі позначених записів, натомість кожен рівень форматується за допомогою еквівалентного стилю `TOC`. Наприклад, перший рівень в `TOC` відформатований в стилі **TOC1**, другий рівень відформатований в стилі **TOC2** і так далі. Це означає, що для зміни зовнішнього вигляду `TOC` ці стилі повинні бути змінені. У Aspose.Words ці стилі представлені незалежними від мови параметрами (`StyleIdentifier.TOC1` до `StyleIdentifier.TOC9`) і можуть бути вилучені з колекції `Document.Styles` за допомогою цих ідентифікаторів. Як тільки відповідний стиль документа буде отримано, форматування для цього стилю може бути змінено. Будь-які зміни в цих стилях будуть автоматично відображені в TOCs документі. У прикладі below code змінюється властивість форматування, що використовується в стилі першого рівня `TOC`.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

Також корисно зазначити, що будь-яке пряме форматування абзацу (визначене в самому абзаці, а не в стилі), позначене для включення як `TOC`, буде скопійовано до запису в TOC. Наприклад, якщо стиль Heading 1 використовується для виділення вмісту для `TOC`, і цей стиль має напівжирне оформлення, тоді як до абзацу також безпосередньо застосовується курсивне форматування. Отриманий запис `TOC` не буде виділений жирним шрифтом, оскільки це частина стилістичного оформлення, однак він буде виділений курсивом, оскільки він безпосередньо відформатований в абзаці. Ви також можете керувати форматуванням роздільників, що використовуються між кожним записом та номером сторінки. За замовчуванням це пунктирна лінія, яка перетинається з нумерацією сторінок за допомогою символу табуляції та правої точки табуляції, розташованої поруч із правим полем.

Використовуючи клас `Style`, отриманий для певного рівня `TOC`, який ви хочете змінити, ви також можете змінити його відображення в документі. Щоб змінити його відображення, спочатку потрібно викликати `Style.ParagraphFormat`, щоб отримати форматування абзацу для стилю. З цього можна витягти значення табуляції, викликавши команду `ParagraphFormat.TabStops` і змінивши відповідне значення табуляції. Використовуючи цей же метод, можна перемістити або повністю видалити саму табуляцію. У прикладі below code показано, як змінити положення правої кнопки табуляції в `TOC` відповідних абзацах. Ви можете завантажити файл шаблону для цього прикладу тут.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Видалення змісту з документа

Зміст можна видалити з документа, видаливши всі вузли, що знаходяться між вузлами `FieldStart` і FieldEnd поля `TOC`. Наведений нижче код демонструє це. Видалення поля `TOC` простіше, ніж звичайного поля, оскільки ми не відстежуємо вкладені поля. Натомість ми перевіряємо, що вузол `FieldEnd` має тип `FieldType.FieldTOC`, Що означає, що ми зіткнулися з кінцем поточного TOC. Цей метод можна використовувати в цьому випадку, не турбуючись про будь-які вкладені поля, оскільки ми можемо припустити, що будь-який добре сформований документ не матиме повністю вкладеного поля `TOC` всередині іншого поля `TOC`. Спочатку збираються і зберігаються вузли `FieldStart` кожного поля `TOC`. Вказаний `TOC` потім перераховується, щоб усі вузли в полі були відвідані та збережені. Потім вузли видаляються з документа. У прикладі below code показано, як видалити вказаний `TOC` з документа. Ви можете завантажити файл шаблону для цього прикладу тут.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Вставте роздільник стилів для розміщення різних стилів абзаців

Роздільник стилів можна додати до кінця абзацу за допомогою комбінації клавіш Ctrl + Alt + Enter у MS Word. Ця функція дозволяє використовувати два різні стилі абзацу в одному логічному друкованому абзаці. Якщо ви хочете, щоб зміст відображав текст із початку певного заголовка, але не весь заголовок, ви можете скористатися цією функцією. У прикладі below code показано, як вставити роздільник стилів, щоб використовувати різні стилі абзаців.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Скопіюйте всі стилі з шаблону

Бувають випадки, коли потрібно скопіювати всі стилі з одного документа в інший. Ви можете використовувати метод `Document.CopyStylesFromTemplate` для копіювання стилів із зазначеного шаблону в документ. При копіюванні стилів із шаблону в документ стилі з однаковими іменами в документі замінюються відповідно до описів стилів у шаблоні. Унікальні стилі з шаблону копіюються в документ. Унікальні стилі в документі залишаються незмінними. У прикладі below code показано, як копіювати стилі з одного документа в інший.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
