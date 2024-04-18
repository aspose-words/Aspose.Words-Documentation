---
title: Перетворення документа в Markdown
second_title: Aspose.Words для Python via .NET
articleTitle: Перетворення документа в Markdown
linktitle: Перетворення документа в Markdown
type: docs
description: "Перетворення документа в будь-якому форматі підтримуваного завантаження Markdown і навпаки за допомогою Pythonй"
keywords: how to convert a document to markdown python
weight: 40
url: /uk/python-net/convert-a-document-to-markdown/
---

Markdown є популярним форматом, який використовується для позначення тексту та його подальшого перетворення в HTML, PDF, DOCX або інші формати. Багато розробників вибирають цей формат для написання документації, підготовка статей до публікації на блогах, опис проектів, тощо.

Markdown є дуже популярним, тому що він легко працювати з цим форматом, а також він може бути досить просто перетворений на інші формати. З цієї причини, Aspose.Words надає можливість конвертувати документ у [будь-який підтримуваний формат навантаження](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) до Markdown і навпаки – Aspose.Words також підтримує найбільш популярні [зберігати формати](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)й

Тепер функціональність для роботи з Markdown Для зручності та комфортної роботи з документами активно розроблені формати.

## Конвертувати документ

Для перетворення документа в <span notrans="<span notrans=" Markdown"=""></span>, > Вам просто потрібно завантажити документ в будь-якому форматі підтримки або створити нову програму. Потім потрібно зберегти документ, щоб зберегти Markdown Формат.

Приклад наступного коду показує, як перетворити DOCX в Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Ви також можете вказати фізичну папку, в якій ви хочете зберегти зображення при експорті документа до Markdown Формат. За замовчуванням, Aspose.Words зберігає зображення в тій же папці, де збережено файл документа, але ви можете перевизначити цю поведінку за допомогою [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) майно.

Вкажіть папку через [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) також корисно, якщо ви зберігаєте документ на потік і Aspose.Words не має папки для збереження зображень.

Якщо зазначено [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) не існує, він буде створений автоматично.

Приклад наступного коду показує, як вказати папку для зображень при збереженні документа в потік:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Вкажіть параметри збереження при конвертації Markdown

Aspose.Words забезпечує можливість використання [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) клас для роботи з розширеними опціями при збереженні документа Markdown Формат. Більшість властивостей є спадковими або перевантажувальні властивості, які вже існують в інших країнах [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) класи. Крім них, ряд властивостей, які специфічні для них Markdown Додано формат. Наприклад, [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) майно для управління вирівнюванням вмісту в таблицях або [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) управляти де зберігаються зображення при конвертації документа в Markdown Формат.

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
* Столи представлені з [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) клас
* Ім'я * Посилання представлені як [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) клас

Наступний приклад показує, як створити документ з деякими стилями і зберегти його на Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Приклад даного коду показано нижче.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Корисні поради

Є кілька нюансів і цікавих випадків, які навчилися працювати з Markdown фото більш гнучко і зручно. Наприклад, існує можливість використання:

* SetextHeading, що дозволяє створювати багатолінійні заголовки в <span notrans="<span notrans=" Markdown"=""></span>, > при регулярних заголовках Markdown може бути тільки одноканальним. SetextHeading базується на стилі "Хайд Н" і його рівень може бути тільки 1 або 2. Якщо N в "Хайдінг N" більше або дорівнює 2, то відповідне SetextHeading базується на "Хайдинг 2", інакше на "Хайдінг 1".
* Різні маркери для першого рівня бюлетенів ("-", "+" або "*", маркер за замовчуванням - "-".
