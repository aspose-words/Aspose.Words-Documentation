---
title: Перетворити документ на Markdown з C++
second_title: Aspose.Words для C++
articleTitle: Перетворити документ на Markdown
linktitle: Перетворити документ на Markdown
type: docs
description: "Перетворіть документ у будь-якому підтримуваному форматі завантаження на Markdown і навпаки, використовуючи C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /uk/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown - популярний формат, який використовується для розмітки тексту і його подальшого перетворення в HTML, PDF, DOCX, або інші формати. Багато розробників вибирають цей формат для написання документації, підготовки статей для публікації в блогах, опису проектів і так далі.

Markdown настільки популярний, оскільки з цим форматом легко працювати, а також його можна досить просто перетворити в інші формати. З цієї причини Aspose.Words надає можливість конвертувати документ з [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) в Markdown і навпаки – Aspose.Words також підтримує найбільш популярний [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Зараз активно розвивається функціонал для роботи з форматом Markdown, щоб надати вам більше можливостей для зручної і комфортної роботи з документами.

## Перетворення документа

Щоб перетворити документ у формат Markdown, вам просто потрібно завантажити документ у будь-якому підтримуваному форматі або Створити новий програмно. Потім потрібно зберегти документ у форматі Markdown.

Наступний приклад коду показує, як перетворити DOCX на Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Ви також можете вказати фізичну папку, куди потрібно зберегти зображення, експортуючи документ у формат Markdown. За замовчуванням Aspose.Words зберігає зображення в тій самій папці, де збережено файл документа, але ви можете змінити цю поведінку, використовуючи властивість [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Вказівка папки за допомогою **ImagesFolder** також корисна, якщо ви зберігаєте документ у потоці, а в Aspose.Words немає папки для збереження зображень.

Якщо вказаний параметр **ImagesFolder** не існує, він буде створений автоматично.

Наступний приклад коду показує, як вказати папку для зображень під час збереження документа в потоці:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Вкажіть параметри збереження при перетворенні в Markdown

Aspose.Words надає можливість використовувати клас [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) для роботи з розширеними параметрами при збереженні документа у форматі Markdown. Більшість властивостей успадковують або перевантажують властивості, які вже існують в інших класах простору імен [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). На додаток до них також був доданий ряд властивостей, специфічних для формату Markdown. Наприклад, властивість [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) для управління вирівнюванням вмісту в таблицях або [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) і [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) для управління збереженням зображень при перетворенні документа в формат Markdown.

## Підтримувані функції Markdown

Aspose.Words в даний час підтримує наступні Markdown функції, які в основному відповідають специфікації `CommonMark` в Aspose.Words API і представлені у вигляді відповідних стилів або прямого форматування:

* Заголовки-це абзаци зі стилями Heading 1 - Heading 6
* Блок-лапки - це абзаци з написом "Quote" у назві стилю
* IndentedCode - це абзаци з "IndentedCode " у назві стилю
* FencedCode - це абзаци з "FencedCode " у назві стилю
* InlineCode - це запуски з "InlineCode " у назві стилю `Font`
* Горизонтальні правила-це абзаци з формою `HorizontalRule`
* Жирний акцент
* Виділено курсивом
* StrikeThrough форматування
* Списки являють собою пронумеровані або марковані абзаци
* Таблиці представлені за допомогою класу `Table`
* Посилання представлені у вигляді класу `FieldHyperlink`

Наступний приклад показує, як створити документ з деякими стилями та зберегти його в Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Результат виконання цього прикладу коду показаний нижче.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Корисна порада

Є кілька нюансів і цікавих кейсів, дізнавшись які, ви зможете працювати з файлами Markdown більш гнучко і зручно. Наприклад, є можливість використовувати:

* SetextHeading це дозволяє створювати багаторядкові заголовки в Markdown, тоді як звичайні заголовки в Markdown можуть бути лише однорядковими. SetextHeading заснований на стилі "Заголовок N", і його рівень може бути лише 1 або 2. Якщо N в " товарній позиції N "більше або дорівнює 2, то відповідний SetextHeading заснований на" Heading 2", в іншому випадку - на"Heading 1".
* Різні маркери для першого рівня маркованих списків ("-", "+" або "*", маркер за замовчуванням "-".) та різні типи нумерації для упорядкованих списків ("." або ")", маркер за замовчуванням ".").
