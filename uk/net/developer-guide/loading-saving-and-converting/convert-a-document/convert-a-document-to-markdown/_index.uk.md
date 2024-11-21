---
title: Перетворення документа в Markdown в C#
second_title: Aspose.Words для .NET
articleTitle: Перетворення документа в Markdown
linktitle: Перетворення документа в Markdown
type: docs
description: "Перетворення документа в будь-якому форматі підтримуваного завантаження Markdown і навпаки за допомогою C#й"
keywords: how to convert a document to markdown c#
weight: 40
url: /uk/net/convert-a-document-to-markdown/
timestamp: 2024-07-10-08-10-45
---

Markdown є популярним форматом, який використовується для позначення тексту та його подальшого перетворення в HTML, PDF, DOCX або інші формати. Багато розробників вибирають цей формат для написання документації, підготовка статей до публікації на блогах, опис проектів, тощо.

Markdown є дуже популярним, тому що він легко працювати з цим форматом, а також він може бути досить просто перетворений на інші формати. З цієї причини, Aspose.Words надає можливість конвертувати документ у [будь-який підтримуваний формат навантаження](https://reference.aspose.com/words/net/aspose.words/loadformat/) до Markdown і навпаки – Aspose.Words також підтримує найбільш популярні [зберігати формати](https://reference.aspose.com/words/net/aspose.words/saveformat/)й

Тепер функціональність для роботи з Markdown Для зручності та комфортної роботи з документами активно розроблені формати.

## Конвертувати документ

Для перетворення документа в <span notrans="<span notrans=" Markdown"=""></span>, > Вам просто потрібно завантажити документ в будь-якому форматі підтримки або створити нову програму. Потім потрібно зберегти документ, щоб зберегти Markdown Формат.

Приклад наступного коду показує, як перетворити DOCX в Markdown:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cs" >}}

Ви також можете вказати фізичну папку, в якій ви хочете зберегти зображення при експорті документа до Markdown Формат. За замовчуванням, Aspose.Words зберігає зображення в тій же папці, де збережено файл документа, але ви можете перевизначити цю поведінку за допомогою [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) майно.

Вкажіть папку через **ImagesFolder** також корисно, якщо ви зберігаєте документ на потік і Aspose.Words не має папки для збереження зображень.

Якщо зазначено **ImagesFolder** не існує, він буде створений автоматично.

Приклад наступного коду показує, як вказати папку для зображень при збереженні документа в потік:

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cs" >}}

## Вкажіть параметри збереження при конвертації Markdown

Aspose.Words забезпечує можливість використання [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) клас для роботи з розширеними опціями при збереженні документа Markdown Формат. Більшість властивостей є спадковими або перевантажувальні властивості, які вже існують в інших країнах [Aspose.Words.Saving](https://reference.aspose.com/words/net/aspose.words.saving/) Ім'я Крім них, ряд властивостей, які специфічні для них Markdown Додано формат. Наприклад, [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) майно для управління вирівнюванням вмісту в таблицях або [ImageSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesavingcallback/) і [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolder/) щоб контролювати, як зображення зберігаються при конвертації документа в Markdown Формат.

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

**.NET**
{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cs" >}}

Приклад даного коду показано нижче.

![markdown-example-aspose-words-net](/words/net/convert-a-document-to-markdown/markdown-example.png)

## Корисні поради

Є кілька нюансів і цікавих випадків, які навчилися працювати з Markdown фото більш гнучко і зручно. Наприклад, існує можливість використання:

* SetextHeading, що дозволяє створювати багатолінійні заголовки в <span notrans="<span notrans=" Markdown"=""></span>, > при регулярних заголовках Markdown може бути тільки одноканальним. SetextHeading базується на стилі "Хайд Н" і його рівень може бути тільки 1 або 2. Якщо N в "Хайдінг N" більше або дорівнює 2, то відповідне SetextHeading базується на "Хайдинг 2", інакше на "Хайдінг 1".
* Різні маркери для першого рівня бюлетенів ("-", "+" або "*", маркер за замовчуванням - "-".
