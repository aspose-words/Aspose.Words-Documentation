---
title: Преобразуване на документ в Markdown в Java
second_title: Aspose.Words вместо Java
articleTitle: Преобразуване на документ в Markdown
linktitle: Преобразуване на документ в Markdown
type: docs
description: "Конвертиране на документ във всеки поддържан формат на натоварване Markdown и обратно използване Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /bg/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown е популярен формат, използван за маркиране на текст и допълнително се превръща в HTML, PDF, DOCX или други формати. Много разработчици избират този формат за писане на документация, изготвяне на статии за публикуване на блогове, описание на проекти и т.н.

Markdown е толкова популярен, защото е лесно да се работи с този формат, както и тя може да бъде съвсем просто конвертиран в други формати. Поради тази причина, Aspose.Words осигурява възможност за преобразуване на документ в [всеки поддържан формат на товара](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) до Markdown и обратно Aspose.Words също подкрепя най-популярните [Запис на формати](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Сега функционалността за работа с Markdown форматът се разработва активно, за да ви предостави повече възможности за удобна и удобна работа с документи.

## Преобразуване на документ в Markdown

За да конвертирате документ в Markdown просто трябва да заредите документ във всеки поддържан формат или да създадете нов програмен формат. Тогава трябва да запазите документа за Markdown форматиране.

Следният пример за код показва как да конвертирате DOX към Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Посочване на настройките при преобразуване в Markdown

Aspose.Words дава възможност за употреба на [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) клас за работа с напреднали опции при запис на документ Markdown форматиране. В допълнение към други свойства на наследяване или претоварване, редица свойства, които са специфични за Markdown Освен това беше добавен формат. Например, [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) свойство за контрол на привеждането в съответствие на съдържанието в таблици, или [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) както и [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) да контролира как се съхраняват изображенията при конвертиране на документ към Markdown форматиране.

## Поддържани Markdown Характеристики

Aspose.Words в момента поддържа следното: Markdown особености, които най-вече следват `CommonMark` спецификация в Aspose.Words API и са представени като подходящи стилове или директни формати:

* Оферти са параграфи с Notection 1 по-долу 6 стилове
* Blockquotes are paragraphs with год
* IndentedCode са параграфи с "IndentedCode" в името на стила
* Ограда Код са параграфи с "FencedCode" в името на стила
* InlineCode са работи с "InlineCode" в `Font` име на стила
* Хоризонтални правила са параграфи с `HorizontalRule` форма
* Смел акцент
* Italic акцент
* StrikeThrough форматиране
* Списъците са номерирани или куршумирани параграфи
* Таблици са представени с `Table` клас
* Връзките са представени като `FieldHyperlink` клас

Следващият пример показва как да се създаде документ с някои стилове и да го запазите Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Резултатът от този пример с код е показан по-долу.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Полезни съвети

Има няколко нюанса и интересни случаи, след като сте научили с които можете да работите Markdown файлове по-гъвкаво и удобно. Например, има способността да се използва:

* SetextHeading, който ви позволява да създадете мулти-линейни заглавия в Markdown по време на редовните смени в Markdown могат да бъдат само еднопосочни. SetextHeading е базиран на стила "Heading N," а нивото му може да бъде само 1 или 2. Ако N в "Глава N" е по-голяма или равна на 2, тогава съответният Setextheading се основава на "Глава 2," в противен случай на "Глава 1."
* Различни маркери за първото ниво на списъка с куршуми ("-," "+" или "*," по подразбиране маркерът е горно.) и различни видове номерация за поръчани списъци ("- или ") ," по подразбиране маркерът е ").
