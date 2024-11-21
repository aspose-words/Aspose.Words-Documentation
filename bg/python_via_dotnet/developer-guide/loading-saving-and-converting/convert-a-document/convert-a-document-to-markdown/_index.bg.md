---
title: Преобразуване на документ в Markdown
second_title: Aspose.Words вместо Python via .NET
articleTitle: Преобразуване на документ в Markdown
linktitle: Преобразуване на документ в Markdown
type: docs
description: "Конвертиране на документ във всеки поддържан формат на натоварване Markdown и обратно използване Python."
keywords: how to convert a document to markdown python
weight: 40
url: /bg/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown е популярен формат, използван за маркиране на текст и неговото допълнително преобразуване в HTML, PDF, DOCX или други формати. Много разработчици избират този формат за писане на документация, изготвяне на статии за публикуване на блогове, описание на проекти и т.н.

Markdown е толкова популярен, защото е лесно да се работи с този формат, както и тя може да бъде съвсем просто конвертирани в други формати. Поради тази причина, Aspose.Words осигурява възможност за преобразуване на документ в [всеки поддържан формат на товара](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) до Markdown и обратното. Aspose.Words също така поддържа най-популярните [Запис на формати](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Сега функционалността за работа с Markdown форматът е активно разработен, за да ви предостави повече възможности за удобна и удобна работа с документи.

## Конвертиране на документ

За да конвертирате документ в <span notrans="<span notrans=" Markdown"=""></span>,"> просто трябва да заредите документ във всеки поддържан формат или да създадете нов програмен формат. Тогава трябва да запазите документа за Markdown формат.

Следният пример за код показва как да се превърне DOX да Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Можете също така да посочите физическата папка, в която искате да запишете изображения при експортиране на документ Markdown формат. По подразбиране, Aspose.Words запазва изображения в същата папка, където файлът с документи е записан, но можете да отмените това поведение с помощта на [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) собственост.

Определяне на папка чрез [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) е също полезно, ако записвате документ към поток и Aspose.Words няма папка за запис на изображения.

Ако е посочено [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) не съществува, той ще бъде създаден автоматично.

Следният пример за код показва как да се зададе папка за изображения при запис на документ към поток:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Посочване на настройките при преобразуване в Markdown

Aspose.Words дава възможност за употреба на [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) клас за работа с напреднали опции при запис на документ Markdown формат. Повечето свойства са наследяване или претоварване свойства, които вече съществуват в рамките на други [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/) Класове. В допълнение към тях, редица свойства, които са специфични за Markdown Освен това беше добавен формат. Например, [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) собственост за контрол на привеждането в съответствие на съдържанието в таблици, или [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) да контролира къде се съхраняват изображенията при конвертиране на документ към Markdown формат.

## Поддържани Markdown Характеристики

Aspose.Words в момента поддържа следното: Markdown особености, които най-вече следват `CommonMark` спецификация в Aspose.Words API и са представени като подходящи стилове или директни формати:

* Оферти са параграфи с Noright 1. .
* Блокквоти са параграфи с "Quote" в името на стила
* IndentedCode са параграфи с "IndentedCode" в името на стила
* Ограда Код са параграфи с "FencedCode" в името на стила
* InlineCode са работи с "InlineCode" в `Font` Име на стила
* Хоризонтални правила са параграфи с `HorizontalRule` форма
* Смел акцент
* Italic акцент
* StrikeThrough форматиране
* Списъците са номерирани или куршумирани параграфи
* Масите са представени с [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) клас
* Връзките са представени като [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/) клас

Следният пример показва как да се създаде документ с някои стилове и да го запазите Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Резултатът от този пример с код е показан по-долу.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Полезни съвети

Има няколко нюанса и интересни случаи, след като сте научили с които можете да работите Markdown файлове по-гъвкаво и удобно. Например, има възможност за употреба:

* SetextHeading, който ви позволява да създадете мулти-линейни заглавия в <span notrans="<span notrans=" Markdown"=""></span>,"> докато редовните заглавия в Markdown може да бъде само с една линия. SetextHeading е базиран на стила "heading N," а нивото му може да бъде само 1 или 2. Ако N в "глава N" е по-голяма или равна на 2, тогава съответната Setextheading се основава на "глава 2," в противен случай на "глава 1."
* Различни маркери за първото ниво на списъка с куршуми ("-," "+" или "*," по подразбиране маркера е горно- гол.) и различни видове номерация за поръчани списъци ("- или ") ," по подразбиране маркерът е ").
