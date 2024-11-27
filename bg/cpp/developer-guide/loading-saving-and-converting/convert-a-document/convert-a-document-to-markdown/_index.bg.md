---
title: Конвертиране на документ в Markdown в C++
second_title: Aspose.Words за C++
articleTitle: Конвертиране на документ в Markdown
linktitle: Конвертиране на документ в Markdown
type: docs
description: "Конвертирайте документ във всеки поддържан формат на натоварване до Markdown и обратно, като използвате C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /bg/cpp/convert-a-document-to-markdown/
timestamp: 2024-10-21-08-52-03
---

Markdown е популярен формат, използван за маркиране на текст и по-нататъшното му конвертиране в HTML, PDF, DOCX, или други формати. Много разработчици избират този формат за писане на документация, подготовка на статии за публикуване в блогове, описване на проекти и т.н.

Markdown е толкова популярен, защото е лесно да се работи с този формат, както и тя може да бъде доста просто конвертирани в други формати. Поради тази причина Aspose.Words осигурява възможност за конвертиране на документ от [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) в Markdown и обратно – Aspose.Words поддържа и най-популярния [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Сега функционалността за работа с Markdown формат се разработва активно, за да ви предостави повече възможности за удобна и комфортна работа с документи.

## Конвертиране на документ

За да конвертирате документ в Markdown, просто трябва да заредите документ във всеки поддържан формат или да създадете нов програмно. След това трябва да запишете документа във формат Markdown.

Следващият пример за код показва как да конвертирате DOCX в Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Можете също да укажете физическата папка, в която искате да запишете изображения, когато експортирате документ във формат Markdown. По подразбиране Aspose.Words записва изображения в същата папка, където е записан файлът на документа, но можете да заместите това поведение, като използвате свойството [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Задаването на папка чрез **ImagesFolder** също е полезно, ако запишете документ в поток и Aspose.Words няма папка за записване на изображения.

Ако зададеното **ImagesFolder** не съществува, то ще бъде създадено автоматично.

Следващият пример за код показва как да зададете папка за изображения, когато записвате документ в поток:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Задайте опциите за записване при конвертиране в Markdown

Aspose.Words предоставя възможност за използване на класа [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) за работа с разширени опции при записване на документ във формат Markdown. Повечето свойства са наследяване или претоварване свойства, които вече съществуват в рамките на други [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/) Пространство от имена класове. В допълнение към тях са добавени редица свойства, които са специфични за Markdown формат. Например свойство [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) за управление на подравняването на съдържание в таблици или [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) и [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) за управление на начина на записване на изображения при конвертиране на документ във формат Markdown.

## Поддържани Markdown Функции

Aspose.Words в момента поддържа следните Markdown функции, които най-често следват спецификацията `CommonMark` в Aspose.Words API и са представени като подходящи стилове или директно форматиране:

* Заглавията са параграфи с Heading 1 - Heading 6 стилове
* Блоковете са параграфи с "цитат" в името на стила
* IndentedCode са параграфи с" IndentedCode " в името на стила
* FencedCode са параграфи с" FencedCode " в името на стила
* InlineCode се изпълняват с "InlineCode " в името на стила `Font`
* Хоризонталните правила са параграфи с форма `HorizontalRule`
* Удебелен акцент
* Курсив акцент
* StrikeThrough форматиране
* Списъците са номерирани или водещи параграфи
* Таблиците са представени с клас `Table`
* Връзките са представени като `FieldHyperlink` клас

Следващият пример показва как да създадете документ с някои стилове и да го запишете на Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Резултатът от този пример за код е показан по-долу.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Полезни Съвети

Има няколко нюанса и интересни случаи, след като сте научили, че можете да работите с Markdown файлове по-гъвкаво и удобно. Например, способността да се използва:

* SetextHeading това ви позволява да създавате многоредови заглавия във Markdown, докато обикновените заглавия във Markdown могат да бъдат само едноредови. SetextHeading се основава на стил "Заглавие Н" и нивото му може да бъде само 1 или 2. Ако Н в "позиция Н" е по-голяма или равна на 2, тогава съответното SetextHeading се основава на "Heading 2", в противен случай на "Heading 1".
* Различни маркери за първото ниво на списъци с водещи символи ("-", "+" или "*", маркерът по подразбиране е "-".) и различни видове номериране за подредени списъци ("." или ")", маркерът по подразбиране е ".").
