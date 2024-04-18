---
title: Робота з стильами та темами
second_title: Aspose.Words для Python via .NET
articleTitle: Робота з стильами та темами
linktitle: Робота з стильами та темами
description: "Доступ і управління стилями і темами в документі за допомогою Pythonй"
type: docs
weight: 110
url: /uk/python-net/working-with-styles-and-themes/
---

Про нас [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) клас використовується для управління вбудованими та застосувати користувацькі налаштування до стилів.

## Стиль доступу

Ви можете отримати колекцію стилів, визначених у документі за допомогою [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) майно. Ця колекція має як вбудовані, так і призначені для користувача стилі в документі. Особливий стиль можна отримати за допомогою свого імені / псевдоніма, ідентифікатора стилю або індексу. Приклад коду показує, як отримати доступ до колекції стилів, визначених у документі.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Як витягувати контент на основі стилів

На простому рівні, що перерозподіляє вміст на основі стилів з документа Word, може бути корисним для ідентифікації, списку та підрахунку абзаців і рядків тексту, відформатованих певним стилем. Наприклад, для визначення окремих видів контенту в документі, таких як приклади, заголовки, посилання, ключові слова, імена фігур та приклади.

Для того, щоб зробити це кілька кроків далі, це також може бути використаний для важелювання структури документа, визначених стилях він використовує, для повторного використання документа для іншого виходу, наприклад HTML. Це насправді, як будується документація Aspose, що надходить Aspose.Words до тесту. Інструмент вбудований за допомогою Aspose.Words введіть документи Word і розбиває їх на теми на певних рівнях заголовка. Файл XML виробляється за допомогою Aspose.Words що використовується для побудови навігаційної деревини, ви можете побачити зліва. А потім Aspose.Words перетворює кожну тему в HTML.

Розчин для перерозподілу тексту, відформатований певними стилями в документі Word, як правило, економічним і прямим Aspose.Wordsй

### Рішення

Ілюструвати, як легко Aspose.Words ручка ретривування контенту на основі стилів, розглянемо приклад. У цьому прикладі ми будемо отримувати текстові форматування з певним стилем абзацу та стилем персонажа з зразка документа Word. На високому рівні це буде залучено:
- Відкриття документа Word за допомогою [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас.
- Отримання зібрань всіх абзаців і всіх проходжень у документі.
- Вибравши тільки потрібні абзаци і проходи. Зокрема, ми отримаємо текст, відформатований за допомогою пункту "Налаштування 1" та стилю "Intense Emphasis" з цього зразка документа Word.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


У цьому документі про зразок текст відформатований за допомогою пункту "Налаштування 1" є "Вставити вкладку", "Швидкі стилі" та "Theme", а текст відформатований стилем "Інтенсивний акцент" – це кілька екземплярів синього, ініціалізованого, сміливого тексту, таких як "галереї" та "загальний погляд".

### Код

Реалізація стильного запиту досить проста в Aspose.Words Модель об'єкта документа, як це просто використовує інструменти, які вже знаходяться в місці. Для цього рішення реалізуються два методи класу:
- до **JavaScript licenses API Веб-сайт Go1.13.8** до Цей метод отримує масив тих абзаців у документі, який має певну назву стилю.
- до **JavaScript licenses API Веб-сайт Go1.13.8** до Цей метод отримує масив тих, хто працює в документі, який має певну назву стилю. Обидва ці методи є дуже схожими, єдиними відмінностями є типи вузлів і представлення інформації стилю в абзаци і запускати вершини. Ось реалізація `paragraphs_by_style_name`: Нижче ви знайдете всі абзаци, відформатовані за допомогою вказаного стилю.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Ця реалізація також використовує [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод методу [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас, який повертає колекцію всіх вузлів з вказаним типом, що в цьому випадку в усіх пунктах.

Примітка, що другий параметр другого параметра [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод встановлюється до `True`й Це змушує [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) метод вибору з усіх вузлів дитини, що рекурсивно рекурсивно, а не вибору безпосередньої дитини.

{{% /alert %}}

Крім того, варто відзначити, що збір абзаців не створює безпосередній наклад, оскільки абзаци завантажуються в цю колекцію лише тоді, коли ви маєте доступ до них. Потім все, що вам потрібно зробити, щоб перейти через збірку, використовуючи стандарт длявчителя оператора і додати абзаци, які мають вказаний стиль на абзаци_сайловий масив. Про нас `Paragraph` Назва стилю можна знайти в [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) майно майна [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/) об'єкт. Реалізація реалізації **JavaScript licenses API Веб-сайт Go1.13.8** є майже однаковим, хоча ми зрозуміло використовуємо [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) для отримання вузла запуску. Про нас [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) нерухомість [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) об'єкт використовується для доступу до інформації про стиль [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) вершини. Нижче наведено приклад пошуку всіх трас, відформатованих за допомогою вказаного стилю.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Коли обидві запити реалізовані, все, що вам потрібно зробити, щоб передати об'єкт документа і вказати назви стилю, які ви хочете отримати: Нижче наведено запити та результати відображення. Ви можете завантажити файл шаблону цього прикладу з [Головна](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx)й

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Кінець Результат

Коли все зроблено, запустити зразок буде відображати наступний вихід:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Як ви можете побачити, це дуже простий приклад, показує кількість і текст зібраних абзаців і працює в інструкції документ Word.

## Скопіювати всі стилі з шаблону

Якщо ви хочете копіювати всі стилі з одного документа в інший. Ви можете використовувати [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) метод копіювання стилів з вказаного шаблону до документа. Коли стилі скопійовані з шаблону до документа, такі як названі стилі в документі перевизнаються, щоб відповідати описам стилів в шаблоні. Унікальні стилі з шаблону копіюються до документа. Унікальні стилі в документі залишаються незмінними. Початиlow code Приклад показує, як копіювати стилі з одного документа в інший.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Як маніпулювати Тематичні властивості

Ми додали основні API в Aspose.Words доступу до властивостей теми документів. Зараз це API включає в себе наступні об'єкти:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Ось як можна отримати тематичні властивості:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

І ось як можна встановити тематичні властивості:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
