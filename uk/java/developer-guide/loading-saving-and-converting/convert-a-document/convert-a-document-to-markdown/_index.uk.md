---
title: Перетворення документа в Markdown в Java
second_title: Aspose.Words для Java
articleTitle: Перетворення документа в Markdown
linktitle: Перетворення документа в Markdown
type: docs
description: "Перетворення документа в будь-якому форматі підтримуваного завантаження Markdown і навпаки за допомогою Javaй"
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /uk/java/convert-a-document-to-markdown/
---

Markdown є популярним форматом, який використовується для розмітки тексту і він далі перетворюється в HTML, PDF, DOCX або інші формати. Багато розробників вибирають цей формат для написання документації, підготовка статей до публікації на блогах, опис проектів, тощо.

Markdown є дуже популярним, тому що він легко працювати з цим форматом, а також він може бути досить просто перетворений на інші формати. З цієї причини, Aspose.Words надає можливість конвертувати документ у [будь-який підтримуваний формат навантаження](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) до Markdown і навпаки – Aspose.Words також підтримує найбільш популярні [зберігати формати](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)й

Тепер функціональність для роботи з Markdown Для зручності та комфортної роботи з документами активно розроблені формати.

## Перетворення документа в Markdown

Для перетворення документа в <span notrans="<span notrans=" Markdown"=""></span>, > Ви просто повинні завантажити документ в будь-якому форматі підтримки або створити нову програму. Потім потрібно зберегти документ для збереження Markdown Формат.

Приклад наступного коду показує, як перетворити DOCX в Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Вкажіть параметри збереження при конвертації Markdown

Aspose.Words забезпечує можливість використання [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) клас для роботи з розширеними опціями при збереженні документа Markdown Формат. Крім інших спадкових або перевантажувальних властивостей, ряд властивостей, які специфічні для Markdown Додано формат. Наприклад, [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) майно для управління вирівнюванням вмісту в таблицях або [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) і [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) щоб контролювати, як зображення зберігаються при конвертації документа в Markdown Формат.

## Підтримувані Markdown Особливості

Aspose.Words В даний час ми підтримуємо наступні дії Markdown особливості, які переважно слідують `CommonMark` специфікація в Aspose.Words API і представлені як відповідні стилі або прямі форматування:

* Заголовки є абзаци з заголовуванням 1 - Заголовок 6 стилів
* Блокноти є абзаци з "Quote" в назві стилю
* ВизначеніКод є абзаци з "IndentedCode" в назві стилю
* Зареєстрований Код є абзаци з "FencedCode" в назві стилю
* InlineCode працює з "InlineCode" в `Font` Назва стилю
* Горизонтальні правила є абзаци з `HorizontalRule` форма
* Золотий акцент
* Цілий акцент
* Форматування удару
* Списки занурюються або приклеюються абзаци
* Столи представлені з `Table` клас
* Ім'я * Посилання представлені як `FieldHyperlink` клас

Наступний приклад показує, як створити документ з деякими стилями і зберегти його на Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Приклад даного коду відображається нижче.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Корисні поради

Є кілька нюансів і цікавих випадків, які навчилися працювати з Markdown фото більш гнучко і зручно. Наприклад, існує можливість використання:

* SetextHeading, що дозволяє створювати багатолінійні заголовки в <span notrans="<span notrans=" Markdown"=""></span>, > при регулярних заголовках Markdown може бути єдиним. SetextHeading базується на стилі "Хайд Н" і його рівень може бути тільки 1 або 2. Якщо N в "Хайдінг N" більше або дорівнює 2, то відповідне SetextHeading базується на "Хайдинг 2", інакше на "Хайдінг 1".
* Різні маркери для першого рівня бюлетенів ("-", "+" або "*", маркер за замовчуванням - "-".
